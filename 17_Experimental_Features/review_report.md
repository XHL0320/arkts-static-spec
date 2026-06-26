# 17 Experimental Features 审查报告

## 审查范围
- 章节：17 Experimental Features
- 用例目录：`17_Experimental_Features/ets_cases/`
- 用例总数：**533**（238 compile-pass + 161 compile-fail + 134 runtime）
- 子节数：38
- 审查日期：2026-06-26
- 工具链：es2panda `--extension=ets` + ark `--load-runtimes=ets`（`/home/nnd/projects/arkts/arkcompiler/` 本地编译产物，Linux native）

## 执行结果

### 跑测（本地全量实测）

```
Total: 533, Pass: 516, Fail: 17  →  Pass rate: 96.8%
```

| 类别 | 预期 | OK | Unexpected | 通过率 |
|------|:----:|:--:|:----------:|:------:|
| compile-pass | 238 | 237 | **1** | 99.6% |
| compile-fail | 161 | 151 | **10** | 93.8% |
| runtime | 134 | 128 | **6** | 95.5% |
| **合计** | **533** | **516** | **17** | **96.8%** |

### 失败明细

**⚠️ FAIL_PASSED — 预期编译失败，实际编译通过（10 例）：**

| # | 用例 | 编译器未实现的检查 |
|---|------|-------------------|
| 1 | `EXP2_17_01_01_009_FAIL_INVALID_ESCAPE` | `c'\q'` 非法转义序列 |
| 2 | `EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT` | ValueArray 参数数量错误 |
| 3 | `EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE` | 类型参数元素类型 |
| 4 | `EXP2_17_09_1_009_FAIL_FUNCOVERLOAD_EMPTY` | 空 overload `{}` |
| 5 | `EXP2_17_09_5_008_FAIL_CTOROVERLOAD_EMPTYLIST` | 空 constructor overload 列表 |
| 6 | `EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER` | int 作 receiver type |
| 7 | `EXP2_17_13_2_008_FAIL_PRIMITIVE_STRING_RECEIVER` | string 作 receiver type |
| 8 | `EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT` | receiver 参数数量错误 |
| 9 | `EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER` | primitive receiver lambda |
| 10 | `EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH` | instanceof 不兼容类型 |

**❌ FAIL — 预期通过，实际失败（7 例）：**

| # | 用例 | 类别 | 症状 |
|---|------|------|------|
| 1 | `EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY` | compile-pass | 编译失败 ESE0127 |
| 2 | `EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY` | runtime | 编译失败 ESE0127 |
| 3 | `EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS` | runtime | 负索引编译期拒绝 ESE0247 |
| 4 | `EXP2_17_02_01_022_RUNTIME_OUT_OF_BOUNDS` | runtime | 负索引编译期拒绝 ESE0247 |
| 5 | `EXP2_17_03_023_RUNTIME_OUT_OF_BOUNDS` | runtime | 负索引编译期拒绝 ESE0247 |
| 6 | `EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE` | runtime | length 赋值编译期拒绝 ESE0024 |
| 7 | `EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR` | runtime | 预期 `LinkerUnresolvedMethodError`，实际 exit=0 |

### 静态审计

| 检查项 | 结果 |
|--------|------|
| `.ets` 文件总数 | 533 |
| Manifest JSON 合法性 | ✅ 合法 |
| Manifest `id` 数量 | 533 |
| Manifest vs 实际文件 ID 差异 | **0** |
| `@id` 与文件名不一致 | **0** |
| `@expect` 与目录不一致 | **0** |
| `@section` 与父目录不一致 | **0** |
| Catalog 统计 vs 实际文件 | 完全一致 |
| Mindmap 节数 vs 实际 | 38 / 38 ✅ |

**元数据质量：完美，0 项不一致。**

## 总体结论

**可验收。** 533 用例覆盖 38 小节，元数据 0 不一致，实测通过率 96.8%。17 项异常均为编译器实现差异——编译器未实现 spec 检查（10 项 FAIL_PASSED）或 spec/实现行为不一致（7 项 FAIL），属已知问题，已在 issue_report 中准确记录。**issue_report 维护良好**，过期项已清理至"已解决"节，新增项已补充。

## 问题清单

### 1. [已知 — 编译器未实现] 10 项 compile-fail 编译器未实现检查

编译器未对以下 spec 要求产生编译错误，导致 compile-fail 用例误判通过：

- D-17.1.1-01：char 非法转义 `\q`
- D-17.2.1-01：ValueArray 参数数量
- D-17.4-03：类型参数元素类型
- D-17.13.2-01：int/string receiver type（×2）
- D-17.13.3-01：receiver 参数数量
- D-17.13.4-02：primitive receiver lambda
- D-17.16-01：instanceof 不兼容类型
- C-17.9.1-01：空 overload `{}`
- C-17.9.5-01：空 constructor overload 列表

### 2. [已知 — spec/实现不一致] 6 项编译/运行异常

| ID | 用例数 | 症状 |
|----|:------:|------|
| C-17.4-02 | 2 | 函数类型数组 ESE0127 编译失败 |
| D-17.2-01 | 3 | 负索引常量编译期拒绝（spec 预期 runtime error） |
| D-17.2-02 | 1 | length 赋值编译期拒绝（spec 预期 runtime 不可变） |

### 3. [🆕 新发现] native 函数运行时预期异常未抛出

`EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR` 调用无实现的 `native function unimplementedNative()`，预期 `LinkerUnresolvedMethodError`，实际 exit=0。已在 issue_report 中记录为 NEW-17.10.1-01。

### 4. [信息] manifest 格式与其他章节不统一

使用 `"cases": [{id, section, category, description}]` 数组（per-case 描述），其他章节使用 `"stats"` 对象格式。不影响可消费性。

## 覆盖评价

38 小节全覆盖，每节含 compile-pass / compile-fail / runtime 三类用例。命名统一 `EXP2_` 前缀。元数据完美。

异常集中在少数小节（17.2/17.2.1/17.3/17.4/17.9.1/17.9.5/17.13.2-17.13.4/17.16/17.1.1/17.10.1），其余 28 个小节全部通过（100% pass rate）。

| 异常小节 | 异常数 | 根因 |
|---------|:------:|------|
| 17.4 Resizable Array | 3 | 函数类型数组 + 类型参数 |
| 17.2/17.2.1 Fixed Array | 3 | 编译期提前拒绝 |
| 17.13.2 Receiver Type | 2 | int/string receiver 未拒绝 |
| 17.9.1/17.9.5 Overload | 2 | 空 overload 未拒绝 |
| 17.13.3/17.13.4 Receiver | 2 | 参数/primitive 未检查 |
| 17.3 Value Array | 1 | 编译期提前拒绝 |
| 17.16 Pattern Matching | 1 | instanceof 仅警告 |
| 17.1.1 char Literals | 1 | 非法转义未拒绝 |
| 17.10.1 Native | 1 | 异常未抛出 🆕 |

## 整改建议

1. **无需立即行动**：issue_report 已维护良好（过期项已清理，新项已补充），无阻塞问题
2. **持续跟踪**：10 项 FAIL_PASSED + 6 项 FAIL 随 es2panda 版本更新复测
3. **排查**：NEW-17.10.1-01 中 native 函数的链接行为
4. **建议评估**：D-17.2-01/02 的编译期提前拒绝是否合理——若合理，更新 spec；若不合理，调整编译器
5. **建议统一**：全仓库 manifest 格式
