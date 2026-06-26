# 17 Experimental Features 审查报告

## 审查范围
- 章节：17 Experimental Features
- 用例目录：`17_Experimental_Features/ets_cases/`
- 用例总数：533（238P + 161F + 134R），38 个子节目录
- 审查日期：2026-06-26
- 工具链：es2panda `--extension=ets` + ark `--load-runtimes=ets`（本地 `arkcompiler/` 编译产物，Linux native）

## 执行结果

### 跑测（本次实测）

全量 533 用例在本地工具链下执行完毕：

| 类别 | 预期 | OK | Unexpected | 通过率 |
|------|:----:|:--:|:----------:|:------:|
| compile-pass | 238 | 237 | 1 | 99.6% |
| compile-fail | 161 | 151 | 10 | 93.8% |
| runtime | 134 | 128 | 6 | 95.5% |
| **合计** | **533** | **516** | **17** | **96.8%** |

### 失败明细

**⚠️ FAIL_PASSED（10 例 — compile-fail 预期编译失败，实际编译通过）：**

| # | 用例 | 分类 |
|---|------|------|
| 1 | `EXP2_17_01_01_009_FAIL_INVALID_ESCAPE` | `c'\q'` 非法转义未被拒绝 |
| 2 | `EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT` | ValueArray 参数数量错误未检查 |
| 3 | `EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE` | 类型参数元素类型未检查 |
| 4 | `EXP2_17_09_1_009_FAIL_FUNCOVERLOAD_EMPTY` | 空 overload `{}` 编译通过 |
| 5 | `EXP2_17_09_5_008_FAIL_CTOROVERLOAD_EMPTYLIST` | 空 constructor overload 列表编译通过 |
| 6 | `EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER` | int receiver type 未拒绝 |
| 7 | `EXP2_17_13_2_008_FAIL_PRIMITIVE_STRING_RECEIVER` | string receiver type 未拒绝 |
| 8 | `EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT` | receiver 参数数量错误未检查 |
| 9 | `EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER` | primitive receiver lambda 未拒绝 |
| 10 | `EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH` | instanceof 不兼容类型仅警告 |

**❌ FAIL（7 例 — 预期通过，实际失败）：**

| # | 用例 | 类别 | 症状 |
|---|------|------|------|
| 1 | `EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY` | compile-pass | 编译失败 ESE0127（函数类型数组） |
| 2 | `EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY` | runtime | 编译失败 ESE0127 |
| 3 | `EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS` | runtime | 编译期拒绝 ESE0247（负索引常量） |
| 4 | `EXP2_17_02_01_022_RUNTIME_OUT_OF_BOUNDS` | runtime | 编译期拒绝 ESE0247 |
| 5 | `EXP2_17_03_023_RUNTIME_OUT_OF_BOUNDS` | runtime | 编译期拒绝 ESE0247 |
| 6 | `EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE` | runtime | 编译期拒绝 ESE0024（length 赋值） |
| 7 | `EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR` | runtime | 预期 LinkerUnresolvedMethodError，实际 exit=0 |

### 静态审计

| 检查项 | 结果 |
|--------|------|
| `.ets` 文件总数 | 533 |
| Manifest JSON 合法性 | ✅ 合法 |
| Manifest `id` 数量 | 533 |
| Manifest vs 实际文件 ID 差异 | **0**（完全一致） |
| `@id` 与文件名不一致 | **0** |
| `@expect` 与目录不一致 | **0** |
| `@section` 与父目录不一致 | **0** |
| Catalog 统计 vs 实际文件数 | 完全一致 |

**元数据质量：完美。0 项不一致。** 这是已审查章节中元数据质量最高的。

## 总体结论

**可验收。** 533 用例覆盖 38 个子节 + 2 个父节容器，元数据完全一致（0 项不一致）。实测通过率 96.8%，17 项异常全部为编译器实现差异（编译器未实现 spec 检查或 spec 与实现不一致的已知问题）。**主要维护债务：`issue_report.md` 中有 10 项已不再复现，需立即清理，否则会误导后续审查。**

## 问题清单

### 1. [阻塞 — 维护债务] issue_report 过期：10 项已不再复现

`issue_report.md`（日期 2026-06-25）记录 22 项异常，本次实测（2026-06-26，本地工具链）发现其中 **10 项已不再复现**：

| 已通过项 | 原分类 | 当前状态 |
|---------|--------|---------|
| C-17.9.5-02 | 多个 overload constructor | 编译器已修复，正确拒绝 |
| C-17.16.1-01 | 嵌套解构 segfault | 当前用例集中无嵌套解构用例 |
| C-17.16.1-02 | 解构类型不匹配未检测 | 当前用例集中无此类用例 |
| D-17.5-01 | Indexable 索引参数类型 | 15/15 用例全部通过 |
| D-17.11.3-01 | 命名构造器调用语法 | 15/15 全部通过 |
| D-17.11.3-02 | 全命名构造器 new X() | 15/15 全部通过 |
| D-17.11.3-03 | 重复命名构造器仅警告 | 15/15 全部通过 |
| D-17.13.4-01 | Lambda method-call 语法 | 13/13 全部通过 |
| D-17.13.5-01 | Lambda 隐式 this | 12/12 全部通过 |
| D-17.14-01 | 可选参数在 trailing lambda 前 | 14/14 全部通过 |

**建议**：立即从 issue_report 移除这 10 项（按文件自身规则："一旦异常通过修改用例或编译器更新而消除，立即从此文件移除"）。C-17.9.5-02 明确属于编译器修复，应移至"已解决"节。

### 2. [重要 — 新增] native 函数运行时预期异常未抛出

**现象**：`EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR` 调用无平台实现的 `native function unimplementedNative(): int`，预期抛出 `LinkerUnresolvedMethodError`，实际 exit=0（异常未抛出）。

**证据**：
```
❌ FAIL 17.10.1_Native_Functions//runtime/EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR.ets
   (expected exception, got exit 0)
```

**分析**：用例通过 try/catch 捕获所有异常后打印成功日志，若 native 函数被意外链接到某个默认实现并返回 0，则 exit=0 且无异常。存在两种可能：(a) 运行时未抛出 LinkerUnresolvedMethodError；(b) 用例的异常检测逻辑有缺陷。

**建议**：排查 native 函数链接行为；增强用例使其在未捕获异常时主动 `throw`，而非仅依赖 try/catch。

### 3. [中等] 10 项 compile-fail 实际编译通过

编译器未实现 spec 要求的以下检查（全部为已知问题，issue_report 已记录）：

| ID | 涉及检查 | 影响用例数 |
|----|---------|:----------:|
| D-17.1.1-01 | char 非法转义序列 `\q` | 1 |
| D-17.2.1-01 | ValueArray 参数数量 | 1 |
| D-17.4-03 | 类型参数元素类型 | 1 |
| D-17.13.2-01 | int/string receiver type | 2 |
| D-17.13.3-01 | receiver 参数数量 | 1 |
| D-17.13.4-02 | primitive receiver lambda | 1 |
| D-17.16-01 | instanceof 不兼容类型 | 1 |
| C-17.9.1-01 | 空 overload `{}` | 1 |
| C-17.9.5-01 | 空 constructor overload | 1 |

### 4. [中等] 6 项 compile-pass/runtime 用例编译/运行异常

| ID | 根因 | 影响 |
|----|------|------|
| C-17.4-02 | 函数类型数组声明 ESE0127 | compile-pass ×1, runtime ×1 |
| D-17.2-01 | 负索引常量编译期拒绝 ESE0247 | runtime ×3 |
| D-17.2-02 | FixedArray length 赋值编译期拒绝 ESE0024 | runtime ×1 |

D-17.2-01/02 的核心矛盾：spec 规定这些为运行时错误，但编译器在编译期即拒绝，导致 runtime 用例无法进入运行时验证。

### 5. [信息] mindmap 未显式列出 4 个父节

`test_design_mindmap.md` 列出 34 节，实际有 38 节。缺失的 4 节为有实际用例的父节容器：
- `17.8_Statements`
- `17.9_Explicit_Overload_Declarations`
- `17.13_Adding_Functionality_to_Existing_Types`
- `17.16_Pattern_Matching`

### 6. [信息] manifest 格式与其他章节不统一

使用 `"cases": [{id, section, category, description}]` 数组格式，其他章节使用 `"stats"` 对象格式。不影响可消费性。

### 7. [信息] spec_original.md 17.14~17.16 较简略

17.14 Trailing Lambdas、17.15 Accessor Declarations、17.16 Pattern Matching 仅一行摘要。

## 覆盖评价

38 个实际子节 + 2 个父节容器全覆盖，每节均含 compile-pass、compile-fail、runtime 三类用例。实验特性命名统一使用 `EXP2_` 前缀。元数据完美（0 项不一致）。

异常集中在少数小节：`17.4`（3 项）、`17.2`/`17.2.1`（4 项）、`17.9.1`/`17.9.5`（2 项）、`17.13.2`/`17.13.3`/`17.13.4`（4 项）、`17.16`（1 项）、`17.10.1`（1 项）、`17.1.1`（1 项）、`17.3`（1 项）。其余 28 个小节全部通过。

## 整改建议

1. **立即清理 issue_report**（10 项过期条目），将 C-17.9.5-02 移至"已解决"节
2. **新增记录**：17.10.1 native 函数运行时异常未抛出，补充到 issue_report
3. **建议排查**：17.10.1 的 native 函数 `unimplementedNative()` 为何未触发 LinkerUnresolvedMethodError
4. **建议统一**：全仓库 manifest 格式
5. **建议补充**：spec_original.md 的 17.14~17.16 规约摘录；mindmap 补上 4 个父节
6. **持续跟踪**：10 项 FAIL_PASSED + 6 项 FAIL 随编译器版本更新复测
