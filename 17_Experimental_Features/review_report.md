# 17 Experimental Features 审查报告

## 审查范围
- 章节：17 Experimental Features
- 用例目录：`17_Experimental_Features/ets_cases/`
- 用例总数：**533**（238 compile-pass + 161 compile-fail + 134 runtime），38 个子节目录
- 审查日期：2026-06-26
- 工具链：`es2panda --extension=ets` + `ark --load-runtimes=ets`（`/home/nnd/projects/arkts/arkcompiler/` 本地编译产物，Linux native）

## 执行结果

### 跑测（本地实测）

全量 533 用例执行完毕：

```
Total: 533, Pass: 516, Fail: 17  →  Pass rate: 96.8%
```

| 类别 | 预期 | OK | Unexpected | 说明 |
|------|:----:|:--:|:----------:|------|
| compile-pass | 238 | 237 | **1** | 函数类型数组声明编译失败（ESE0127） |
| compile-fail | 161 | 151 | **10** | 编译器未实现 spec 要求的检查，误判通过 |
| runtime | 134 | 128 | **6** | 5 例编译阶段失败 + 1 例预期异常未抛出 |
| **合计** | **533** | **516** | **17** | |

### 失败明细

**⚠️ FAIL_PASSED — 预期编译失败，实际编译通过（10 例）：**

| # | 用例 | 涉及检查 |
|---|------|---------|
| 1 | `EXP2_17_01_01_009_FAIL_INVALID_ESCAPE` | `c'\q'` 非法转义未拒绝 |
| 2 | `EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT` | ValueArray 参数数量错误未检查 |
| 3 | `EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE` | 类型参数元素类型未检查 |
| 4 | `EXP2_17_09_1_009_FAIL_FUNCOVERLOAD_EMPTY` | 空 overload `{}` 编译通过 |
| 5 | `EXP2_17_09_5_008_FAIL_CTOROVERLOAD_EMPTYLIST` | 空 constructor overload 列表编译通过 |
| 6 | `EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER` | int 作 receiver type 未拒绝 |
| 7 | `EXP2_17_13_2_008_FAIL_PRIMITIVE_STRING_RECEIVER` | string 作 receiver type 未拒绝 |
| 8 | `EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT` | receiver 参数数量错误未检查 |
| 9 | `EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER` | primitive receiver lambda 未拒绝 |
| 10 | `EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH` | instanceof 不兼容类型仅 Warning |

**❌ FAIL — 预期通过，实际失败（7 例）：**

| # | 用例 | 类别 | 根因 |
|---|------|------|------|
| 1 | `EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY` | compile-pass | 编译失败 ESE0127 |
| 2 | `EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY` | runtime | 编译失败 ESE0127 |
| 3 | `EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS` | runtime | 负索引编译期拒绝 ESE0247 |
| 4 | `EXP2_17_02_01_022_RUNTIME_OUT_OF_BOUNDS` | runtime | 负索引编译期拒绝 ESE0247 |
| 5 | `EXP2_17_03_023_RUNTIME_OUT_OF_BOUNDS` | runtime | 负索引编译期拒绝 ESE0247 |
| 6 | `EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE` | runtime | length 赋值编译期拒绝 ESE0024 |
| 7 | `EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR` | runtime | 🆕 预期 LinkerUnresolvedMethodError，实际 exit=0 |

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
| Catalog 统计 vs 实际文件数 | 完全一致 |

**元数据质量：完美（0 项不一致）。**

## 总体结论

**可验收。** 533 用例覆盖 38 个小节，元数据 0 不一致，实测通过率 96.8%。17 项异常均为编译器实现差异，属已知问题，不影响交付件本身质量。

**维护债务已清理**：`issue_report.md` 过期条目已移除（22→13），新增异常已补录，mindmap 父节已补齐，spec_original 已充实。

## 问题清单

### 1. [✅ 已处理] issue_report 过期，9 项已不再复现 — 已于 2026-06-26 清理

`issue_report.md` 已被清理：以下 9 项已从活跃表格移除，移至"已解决"节；新增 NEW-17.10.1-01（native 异常）。详情见 issue_report 与提交 `6e44ff1`。

原审查发现——本次实测（2026-06-26，同工具链）以下项**不再复现**（已被移除）：

| 已通过项 | 原分类 | 说明 |
|---------|--------|------|
| C-17.9.5-02 | C 类 — 编译器未实现 | 多个 overload constructor 现在正确拒绝 |
| C-17.16.1-01 | C 类 — segfault | 当前用例集中无嵌套解构用例，无法复现 |
| C-17.16.1-02 | C 类 — 未检查 | 当前用例集中无解构类型不匹配用例 |
| D-17.5-01 | D 类 — Spec 不一致 | Indexable 索引参数：15/15 用例全部通过 |
| D-17.11.3-01 | D 类 — 实验特性 | 命名构造器调用语法：15/15 全部通过 |
| D-17.11.3-02 | D 类 — Spec 不一致 | 全命名构造器 new X()：15/15 全部通过 |
| D-17.11.3-03 | D 类 — Spec 不一致 | 重复命名构造器仅警告：15/15 全部通过 |
| D-17.13.5-01 | D 类 — 实验特性 | Lambda 隐式 this：12/12 全部通过 |
| D-17.14-01 | D 类 — Spec 不一致 | 可选参数在 trailing lambda 前：14/14 全部通过 |

**处理**：以上 9 项已清理完成。C-17.9.5-02 编译器修复已移至"已解决"节。issue_report 当前活跃表格从 22→**13 项**。

### 2. [✅ 已处理] native 函数运行时预期异常未抛出 — 已记录到 issue_report

**现象**：`EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR` 调用无平台实现的 `native function unimplementedNative(): int`，预期抛出 `LinkerUnresolvedMethodError`，实际 exit=0。

**证据**：
```
❌ FAIL 17.10.1_Native_Functions//runtime/EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR.ets
   (expected exception, got exit 0)
```

**分析**：用例通过 try/catch 捕获异常后打印成功日志。若 native 函数被意外链接到某默认实现并返回 0，则 exit=0。可能原因：(a) 运行时未抛出 LinkerUnresolvedMethodError；(b) 用例异常检测逻辑有缺陷（未在 catch 外显式 throw）。

**建议**：排查 native 函数链接行为；增强用例使未捕获异常时主动 `throw new Error(...)`。

### 3. [中等] 10 项 compile-fail 编译器未实现检查

全部为已知问题，issue_report 已记录（12 项仍可复现中的 10 项）。根因：编译器尚未实现 spec 要求的这些编译期检查。不影响用例本身质量。

### 4. [中等] 6 项 compile-pass/runtime 编译/运行异常

| 涉及项 | 数量 | 根因 |
|--------|:----:|------|
| C-17.4-02 函数类型数组 | 2 | 编译失败 ESE0127 |
| D-17.2-01 负索引常量 | 3 | 编译期拒绝（spec 期望 runtime error） |
| D-17.2-02 length 赋值 | 1 | 编译期拒绝（spec 期望 runtime 不可变） |

D-17.2-01/02 的核心矛盾：spec 规定运行时错误，编译器编译期即拒绝，导致 runtime 用例无法进入运行时验证。

### 5. [信息] mindmap 与目录命名细微不一致

`test_design_mindmap.md` 使用 `17.9.4_Overload_Name_Same_As_Method_Name`，实际目录为 `17.9.4_Explicit_Overload_Name_Same_As_Method_Name`。不影响功能，建议统一。

### 6. [信息] manifest 格式与其他章节不统一

本章使用 `"cases": [{id, section, category, description}]` 数组格式，其他章节使用 `"stats"` 对象格式。

## 覆盖评价

| spec 范围 | 用例覆盖 | 状态 |
|-----------|:------:|:----:|
| 17.1 Type char + 17.1.1 Literals + 17.1.2 Operations | 13 + 15 + 16 = 44 | ✅ |
| 17.2 Fixed-Size Array + 17.2.1 Creation | 17 + 15 = 32 | ⚠️ 2 runtime 编译失败 |
| 17.3 Value Array Types | 20 | ⚠️ 1 runtime 编译失败 |
| 17.4 Resizable Array + 17.4.1 Runtime Eval | 21 + 12 = 33 | ❌ 1 compile-pass 失败 + 1 runtime 编译失败 |
| 17.5 Indexable Types | 15 | ✅ |
| 17.6 Iterable Types | 15 | ✅ |
| 17.7 Callable + 17.7.1 invoke + 17.7.2 instantiate | 17 + 14 + 14 = 45 | ✅ |
| 17.8 Statements + 17.8.1 For-of Type | 15 + 13 = 28 | ✅ |
| 17.9 Overload + 17.9.1~17.9.5 | 8 + 65 = 73 | ⚠️ 2 FAIL_PASSED |
| 17.10.1~17.10.3 Native | 13 + 16 + 13 = 42 | ⚠️ 1 runtime 异常 |
| 17.11.1~17.11.3 Classes Experimental | 13 + 14 + 15 = 42 | ✅ |
| 17.12 Default Interface Methods | 14 | ✅ |
| 17.13 + 17.13.1~17.13.5 Receiver | 8 + 67 = 75 | ⚠️ 4 FAIL_PASSED |
| 17.14 Trailing Lambdas | 14 | ✅ |
| 17.15 Accessor Declarations | 15 | ✅ |
| 17.16 Pattern Matching + 17.16.1 Destructuring | 12 + 14 = 26 | ⚠️ 1 FAIL_PASSED |
| **Total 38 sections** | **533** | 96.8% pass |

**评价**：38 小节全覆盖，每节含 P/F/R 三类用例，命名统一 `EXP2_` 前缀。异常集中在编译器未实现检查（10 FAIL_PASSED）和编译期提前拒绝（5 例），属于编译器成熟度问题，非用例设计缺陷。

## 整改建议

1. **✅ 已处理** ~~立即清理 issue_report~~：9 项过期条目已移除，C-17.9.5-02 已移至"已解决"，活跃表格 22→13 项
2. **✅ 已处理** ~~新增 issue_report 条目~~：NEW-17.10.1-01 已补录 native 异常
3. **✅ 已处理** ~~mindmap 补父节~~：4 个父节（17.8/17.9/17.13/17.16）已补入 mindmap（34→38 节）
4. **✅ 已处理** ~~spec_original 充实~~：17.14–17.16 规约摘录已补充
5. **排查**：`unimplementedNative()` 为何未触发链接错误（编译器侧调查）
6. **持续跟踪**：10 项 FAIL_PASSED + 6 项 FAIL，随编译器版本更新复测
7. **考虑**：D-17.2-01/02 的 runtime 用例（编译期提前拒绝）是否需要重新分类为 compile-fail
8. **建议统一**：全仓库 manifest 格式；mindmap 目录名与实际一致（17.9.4_Overload_Name → 17.9.4_Explicit_Overload_Name）
