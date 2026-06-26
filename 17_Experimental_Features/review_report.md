# 17 Experimental Features 审查报告

## 审查范围
- 章节：17 Experimental Features
- 用例目录：`17_Experimental_Features/ets_cases/`
- 用例总数：**570**（254 compile-pass + 173 compile-fail + 143 runtime），**40** 个子节目录
- 审查日期：2026-06-26
- 工具链：es2panda `--extension=ets` + ark `--load-runtimes=ets`（`/home/nnd/projects/arkts/arkcompiler/` 本地编译产物，Linux native）

## 执行结果

### 跑测（本地全量实测）

```
Total: 570, Pass: 552, Fail: 18  →  Pass rate: 96.8%
```

| 类别 | 预期 | OK | Unexpected | 通过率 |
|------|:----:|:--:|:----------:|:------:|
| compile-pass | 254 | 253 | **1** | 99.6% |
| compile-fail | 173 | 162 | **11** | 93.6% |
| runtime | 143 | 137 | **6** | 95.8% |
| **合计** | **570** | **552** | **18** | **96.8%** |

### 失败明细

**⚠️ FAIL_PASSED — 预期编译失败，实际编译通过（11 例）：**

| # | 用例 | 涉及检查 | Issue |
|---|------|---------|-------|
| 1 | `EXP2_17_01_01_009_FAIL_INVALID_ESCAPE` | `c'\q'` 非法转义 | D-17.1.1-01 |
| 2 | `EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT` | ValueArray 参数数量 | D-17.2.1-01 |
| 3 | `EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE` | 类型参数元素类型 | D-17.4-03 |
| 4 | `EXP2_17_09_1_009_FAIL_FUNCOVERLOAD_EMPTY` | 空 overload `{}` | C-17.9.1-01 |
| 5 | `EXP2_17_09_5_008_FAIL_CTOROVERLOAD_EMPTYLIST` | 空 constructor overload | C-17.9.5-01 |
| 6 | `EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER` | int receiver type | D-17.13.2-01 |
| 7 | `EXP2_17_13_2_008_FAIL_PRIMITIVE_STRING_RECEIVER` | string receiver type | D-17.13.2-01 |
| 8 | `EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT` | receiver 参数数量 | D-17.13.3-01 |
| 9 | `EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER` | primitive receiver lambda | D-17.13.4-02 |
| 10 | `EXP2_17_13_011_COMPILE_FAIL_RECEIVER_PRIMITIVE` | primitive receiver（17.13 父节） | NEW-17.13-01 🆕 |
| 11 | `EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH` | instanceof 不兼容类型 | D-17.16-01 |

**❌ FAIL — 预期通过，实际失败（7 例）：**

| # | 用例 | 类别 | 症状 | Issue |
|---|------|------|------|-------|
| 1 | `EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY` | compile-pass | 编译失败 ESE0127 | C-17.4-02 |
| 2 | `EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY` | runtime | 编译失败 ESE0127 | C-17.4-02 |
| 3 | `EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS` | runtime | 负索引编译期拒绝 | D-17.2-01 |
| 4 | `EXP2_17_02_01_022_RUNTIME_OUT_OF_BOUNDS` | runtime | 负索引编译期拒绝 | D-17.2-01 |
| 5 | `EXP2_17_03_023_RUNTIME_OUT_OF_BOUNDS` | runtime | 负索引编译期拒绝 | D-17.2-01 |
| 6 | `EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE` | runtime | length 赋值编译期拒绝 | D-17.2-02 |
| 7 | `EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR` | runtime | 预期异常未抛出，exit=0 | NEW-17.10.1-01 |

### 静态审计

| 检查项 | 结果 |
|--------|------|
| `.ets` 文件总数 | **570** |
| Manifest `total_cases` | **570** ✅ |
| Manifest `stats` 节计数 vs 实际 | **全部一致** ✅ |
| `@id` 与文件名不一致 | **0** |
| `@expect` 与目录不一致 | **0** |
| `@section` 与父目录不一致 | **0** |
| 5-tag 头完整率 | 570/570 ✅ |

**元数据质量：完美（0 项不一致）。所有交付件同步。**

## 总体结论

**可验收，无阻塞问题。** 570 用例覆盖 40 个小节，元数据 0 不一致，实测通过率 96.8%。所有交付件（manifest/mindmap/issue_report/catalog）均已同步至 570。18 项异常均为编译器实现差异（编译器未实现 spec 检查或 spec/实现行为不一致），issue_report 中 14 条 issue 分类清晰（C/D/待确认 + 严重程度），与新发现项均已补充。

## 问题清单

### 1. [编译器 — 持续] 11 项 compile-fail 编译器未实现检查

编译器未对以下 spec 要求产生编译错误：

| 分类 | 数量 | 涉及 |
|------|:----:|------|
| C 类（编译器未实现） | 2 | 空 overload `{}`、空 constructor overload |
| D 类（spec/实现不一致） | 9 | 非法转义、参数数量、receiver type、instanceof 等 |

全为已知问题，issue_report 中 14 条 issue 覆盖了全部 18 个异常用例（含 7 项 FAIL）。

### 2. [编译器 — 持续] 6 项 compile-pass/runtime 编译/运行异常

| Issue | 用例数 | 症状 |
|-------|:------:|------|
| C-17.4-02 | 2 | 函数类型数组 ESE0127 |
| D-17.2-01 | 3 | 负索引常量编译期拒绝（spec 预期 runtime error） |
| D-17.2-02 | 1 | length 赋值编译期拒绝 |
| NEW-17.10.1-01 | 1 | native 函数预期异常未抛出 |

### 3. [✅ 已处理] mindmap 异常计数微差 — 已同步为 18

mindmap 覆盖汇总行已更新为"异常 18 项"。

## 覆盖评价

40 个小节全覆盖，每节含 P/F/R 三类用例。命名统一 `EXP2_` 前缀。元数据完美。

| 状态 | 小节数 | 说明 |
|:----:|:------:|------|
| ✅ 100% pass | 28 | 全部用例符合预期 |
| ⚠️ 部分异常 | 12 | 集中在 receiver、overload、array 等实验特性 |

12 个异常小节：17.1.1、17.2、17.2.1、17.3、17.4、17.9.1、17.9.5、17.10.1、17.13、17.13.2、17.13.3、17.13.4、17.16。

## 整改建议

1. **无需立即行动**：所有交付件已同步至 570，issue_report 已更新（含 NEW-17.13-01）
2. **✅ 已处理** ~~微调 mindmap~~：异常计数已同步为 18 项
3. **持续跟踪**：18 项异常随编译器版本更新复测
4. **排查**：NEW-17.10.1-01 native 函数为何未触发 LinkerUnresolvedMethodError
5. **建议评估**：D-17.2-01/02 的编译期提前拒绝行为——若合理则更新 spec，否则调整编译器
