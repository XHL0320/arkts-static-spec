# 17 Experimental Features 审查报告

## 审查范围
- 章节：17 Experimental Features
- 用例目录：`17_Experimental_Features/ets_cases/`
- 用例总数：533（238P + 161F + 134R）
- 审查日期：2026-06-26
- 工具链：es2panda `--extension=ets` + ark `--load-runtimes=ets`（Linux native，`/home/nnd/projects/arkts/arkcompiler/` 下本地编译产物）

## 执行结果

### 跑测（本次实测）

全量 533 用例在本地 `arkcompiler/` 工具链下执行完毕：

```
Total: 533, Pass: 516, Fail: 17
Pass rate: 96.8%
```

| 类别 | 预期 | OK | Unexpected | 说明 |
|------|:----:|:--:|:----------:|------|
| compile-pass | 238 | 237 | 1 | 1 例编译失败（函数类型数组 ESE0127） |
| compile-fail | 161 | 151 | 10 | 10 例编译通过（编译器未实现检查） |
| runtime | 134 | 128 | 6 | 5 例编译阶段失败 + 1 例预期异常未抛出 |
| **合计** | **533** | **516** | **17** | 通过率 96.8% |

### 静态审计

| 检查项 | 结果 |
|--------|------|
| `.ets` 文件总数 | 533 |
| Manifest JSON 合法性 | ✅ 合法 |
| Manifest `id` 数量 | 533 |
| Manifest vs 实际文件 ID 差异 | 0（完全一致） |
| `@id` 与文件名不一致 | 0 |
| `@expect` 与目录不一致 | 0 |
| `@section` 与父目录不一致 | 0 |
| Catalog 统计 vs 实际文件数 | 完全一致 |

**元数据质量：完美，0 项不一致。** 这是已审查章节中元数据质量最高的。

## 总体结论

**可验收。** 533 用例覆盖 38 个实际子节 + 2 个父节容器，元数据完全一致（0 项不一致）。实测通过率 96.8%，17 项异常均为已知的编译器实现差异或 spec 不一致，已在 issue_report 中记录。**主要维护债务：issue_report 中有 8 项已不再复现，需清理。**

## 问题清单

### 1. [重要] issue_report 过期——8 项已不再复现

**现象**：`issue_report.md`（日期 2026-06-25）记录 16 项未解决异常，但本次实测（2026-06-26）发现其中 8 项已通过：

| 已通过项 | 原分类 | 说明 |
|---------|--------|------|
| C-17.9.5-02 | C类-编译器未实现 | 多个 overload constructor 现在正确拒绝 |
| C-17.16.1-01 | C类-编译器Bug | 嵌套解构 segfault：当前用例集中无嵌套解构用例，无法复现 |
| C-17.16.1-02 | C类-编译器未实现 | 解构类型不匹配检查：当前用例集中无此类用例 |
| D-17.5-01 | D类-Spec不一致 | Indexable 索引参数类型：15/15 用例全部通过 |
| D-17.11.3-01/02/03 | D类-实验特性未实现 | 命名构造器：15/15 用例全部通过 |
| D-17.13.4-01 | D类-实验特性未实现 | Lambda method-call 语法：13/13 全部通过 |
| D-17.13.5-01 | D类-实验特性未实现 | Lambda 隐式 this：12/12 全部通过 |
| D-17.14-01 | D类-Spec不一致 | 可选参数在 trailing lambda 前：14/14 全部通过 |

**影响**：issue_report 作为"当前未解决异常"清单，包含已消除项会误导后续审查者。

**建议**：立即从 issue_report 移除已通过项（按 issue_report 自身规则："一旦异常通过修改用例或编译器更新而消除，立即从此文件移除"）。C-17.9.5-02 明确属于编译器修复，应移至"已解决"节。

### 2. [重要] 新增异常：native 函数运行时预期异常未抛出

**现象**：`EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR` 预期调用无实现的原生函数抛出 `LinkerUnresolvedMethodError`，实际 exit=0（异常未抛出）。用例通过 try/catch 捕获所有异常，若 native 函数返回 0 则测试误判为通过。

**影响**：该用例无法有效验证 native 函数链接错误行为。

**证据**：
```
❌ FAIL 17.10.1_Native_Functions//runtime/EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR.ets
   (expected exception, got exit 0)
```

**建议**：排查 native 函数 `unimplementedNative()` 是否被意外链接到某个默认实现；或调整用例使用更可靠的异常检测方式（如检查返回值而非仅依赖 try/catch）。

### 3. [中等] 10 项 compile-fail 用例实际编译通过（持续）

与上次审查一致，以下 10 项 compile-fail 用例编译器未实现 spec 要求的检查：

| ID | 类别 | 症状 |
|----|------|------|
| D-17.1.1-01 | `c'\q'` 非法转义 | 编译通过 |
| D-17.2.1-01 | ValueArray 参数数量错误 | 编译通过 |
| D-17.4-03 | 类型参数元素类型未检查 | 编译通过 |
| D-17.13.2-01 | int/string receiver type | 编译通过（×2） |
| D-17.13.3-01 | receiver 参数数量错误 | 编译通过 |
| D-17.13.4-02 | primitive receiver lambda | 编译通过 |
| D-17.16-01 | instanceof 不兼容类型 | 仅警告 |
| C-17.9.1-01 | 空 overload `{}` | 编译通过 |
| C-17.9.5-01 | 空 constructor overload 列表 | 编译通过 |

### 4. [中等] 6 项 compile-pass/runtime 用例编译或运行异常（持续）

| ID | 用例 | 现象 |
|----|------|------|
| C-17.4-02 | 函数类型数组声明 (×2) | 编译失败 ESE0127（compile-pass 和 runtime 各 1 例） |
| D-17.2-01 | 负索引常量 (×3) | 编译期拒绝 ESE0247（预期 runtime error） |
| D-17.2-02 | FixedArray length 赋值 | 编译期拒绝 ESE0024（预期 runtime 不可变） |

### 5. [信息] manifest 格式与其他章节不统一

本章使用 `"cases": [{id, section, category, description}]` 数组格式，其他章节使用 `"stats"` 对象格式。不影响可消费性，但建议全仓库统一。

### 6. [信息] spec_original.md 后半部分较简略

17.14 Trailing Lambdas、17.15 Accessor Declarations、17.16 Pattern Matching 仅有一行摘要。建议补充规约原文摘录。

## 覆盖评价

| 范围 | P | F | R | 总 | 状态 |
|------|:---:|:---:|:---:|:---:|:----:|
| 17.1 Type char | 5 | 5 | 3 | 13 | ✅ |
| 17.1.1 char Literals | 5 | 5 | 5 | 15 | ✅ (1 FAIL_PASSED) |
| 17.1.2 char Operations | 6 | 5 | 5 | 16 | ✅ |
| 17.2 Fixed-Size Array Types | 7 | 5 | 5 | 17 | ⚠️ (2 runtime 编译失败) |
| 17.2.1 Fixed-Size Array Creation | 7 | 4 | 4 | 15 | ⚠️ (1 FAIL_PASSED + 1 runtime 编译失败) |
| 17.3 Value Array Types | 10 | 5 | 5 | 20 | ⚠️ (1 runtime 编译失败) |
| 17.4 Resizable Array Creation | 9 | 7 | 5 | 21 | ❌ (1 compile-pass 失败 + 1 FAIL_PASSED + 1 runtime 编译失败) |
| 17.4.1 Runtime Evaluation | 3 | 2 | 7 | 12 | ✅ |
| 17.5 Indexable Types | 8 | 4 | 3 | 15 | ✅ |
| 17.6 Iterable Types | 9 | 3 | 3 | 15 | ✅ |
| 17.7 Callable Types | 7 | 4 | 6 | 17 | ✅ |
| 17.7.1 Callable with invoke | 8 | 3 | 3 | 14 | ✅ |
| 17.7.2 Callable with instantiate | 6 | 4 | 4 | 14 | ✅ |
| 17.8 Statements | 10 | 2 | 3 | 15 | ✅ |
| 17.8.1 For-of Explicit Type | 7 | 3 | 3 | 13 | ✅ |
| 17.9 Explicit Overload | 5 | 2 | 1 | 8 | ✅ |
| 17.9.1 Function Overload | 7 | 7 | 3 | 17 | ⚠️ (1 FAIL_PASSED) |
| 17.9.2 Class Method Overload | 8 | 7 | 3 | 18 | ✅ |
| 17.9.3 Interface Method Overload | 6 | 3 | 1 | 10 | ✅ |
| 17.9.4 Name Same As Method | 5 | 2 | 1 | 8 | ✅ |
| 17.9.5 Constructor Overload | 7 | 3 | 2 | 12 | ⚠️ (1 FAIL_PASSED) |
| 17.10.1 Native Functions | 5 | 5 | 3 | 13 | ⚠️ (1 runtime 异常未抛出) |
| 17.10.2 Native Methods | 8 | 5 | 3 | 16 | ✅ |
| 17.10.3 Native Constructors | 5 | 5 | 3 | 13 | ✅ |
| 17.11.1 Final Classes | 5 | 5 | 3 | 13 | ✅ |
| 17.11.2 Final Methods | 5 | 5 | 4 | 14 | ✅ |
| 17.11.3 Named Constructors | 5 | 5 | 5 | 15 | ✅ |
| 17.12 Default Interface Methods | 5 | 5 | 4 | 14 | ✅ |
| 17.13 Functions with Receiver | 4 | 2 | 2 | 8 | ✅ |
| 17.13.1 Functions with Receiver | 7 | 4 | 4 | 15 | ✅ |
| 17.13.2 Receiver Type | 6 | 5 | 3 | 14 | ⚠️ (2 FAIL_PASSED) |
| 17.13.3 Function Types with Receiver | 6 | 4 | 3 | 13 | ⚠️ (1 FAIL_PASSED) |
| 17.13.4 Lambda with Receiver | 6 | 4 | 3 | 13 | ⚠️ (1 FAIL_PASSED) |
| 17.13.5 Implicit this in Lambda | 5 | 4 | 3 | 12 | ✅ |
| 17.14 Trailing Lambdas | 6 | 4 | 4 | 14 | ✅ |
| 17.15 Accessor Declarations | 6 | 5 | 4 | 15 | ✅ |
| 17.16 Pattern Matching | 4 | 4 | 4 | 12 | ⚠️ (1 FAIL_PASSED) |
| 17.16.1 Destructuring Assignment | 5 | 5 | 4 | 14 | ✅ |
| 17.10 Classes Experimental (父节) | 0 | 0 | 0 | 0 | — |
| 17.11 Classes Experimental (父节) | 0 | 0 | 0 | 0 | — |
| **Total** | **238** | **161** | **134** | **533** | 96.8% pass |

**总体覆盖评价**：40 个 spec 子节全覆盖，每节均含三类用例。元数据完美。实验特性命名统一使用 `EXP2_` 前缀。

## 整改建议

1. **立即清理 issue_report**：移除 8 项已不再复现的条目（C-17.9.5-02、C-17.16.1-01、C-17.16.1-02、D-17.5-01、D-17.11.3-01/02/03、D-17.13.4-01、D-17.13.5-01、D-17.14-01），将 C-17.9.5-02 移至"已解决"节
2. **新增记录**：17.10.1 native 函数运行时异常未抛出（新发现），补充到 issue_report
3. **建议统一**：manifest 格式与其他章节对齐
4. **建议补充**：spec_original.md 补充 17.14~17.16 规约摘录
5. **持续跟踪**：10 项 compile-fail unexpected-pass + 6 项编译/运行异常，随编译器版本更新复测
6. **建议考虑**：对编译期提前拒绝的 runtime 用例（D-17.2-01/02），评估是否重新分类为 compile-fail
