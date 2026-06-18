# 8.15 try 语句 - ArkTS 设计问题发现报告

**报告日期：** 2026-06-18
**测试用例数：** 12
**目的：** 通过用例执行（编译期 + 运行时）+ 跨语言对比，识别 ArkTS 静态语言的设计问题。

---

## 一、新发现的设计问题（基于规范分析）

未发现设计问题。所有行为均与 ArkTS 规范 8.15 节一致。

### 理由

测试套件（共 12 个用例，涵盖编译通过、编译失败和运行时三类）已全部执行，所有用例均按预期通过。以下方面已验证并与规范一致：

1. **语法规则强制执行（规范 8.15 语法规则）**：规范定义 `tryStatement: 'try' block catchClause? finallyClause?`，并强制要求 catchClause 或 finallyClause 至少存在其一。用例 `STM_08_15_006_FAIL_try_no_catch_no_finally` 确认了裸 `try { }`（既无 catch 亦无 finally）会产生编译时错误，与规范完全一致。

2. **运行时语义**：
   - 当 try 块正常完成时，catch 子句不执行（由 `STM_08_15_010_RUNTIME_try_catch_no_error` 验证）。
   - 当 try 块中抛出错误时，控制权转移到 catch 子句（由 `STM_08_15_011_RUNTIME_try_catch_error` 验证）。
   - finally 子句始终执行，无论是否抛出错误（由 `STM_08_15_012_RUNTIME_try_finally_always` 验证）。

3. **ArkTS 在 try/catch/finally 块中的通用限制**：编译失败用例（`007`-`009`）测试了 ArkTS 对局部类、局部类型别名和嵌套函数的全局限制在 try/catch/finally 块中同样生效。这些并非 try 语句的特定设计问题；它们是对 ArkTS 语言级简化约束的一致应用。编译器正确拒绝了所有三种模式。

4. **嵌套与控制流**：嵌套 try 语句以及包含 return 语句的 try 块均按预期编译和运行（`004`、`005`）。

---

## 二、已验证 ArkTS 行为（与规范一致）

| 用例 ID | 行为描述 | 状态 |
|---------|----------|------|
| STM_08_15_004_PASS_nested_try_with_catch | 嵌套 try-catch 语句正确编译 | ✅ 通过 |
| STM_08_15_005_PASS_try_block_with_return | try 块中包含 return 语句正确编译 | ✅ 通过 |
| STM_08_15_006_FAIL_try_no_catch_no_finally | 裸 try {} 无 catch/finally 被编译器拒绝 | ✅ 通过 |
| STM_08_15_007_FAIL_local_class_in_try | try 块中局部类被编译器拒绝 | ✅ 通过 |
| STM_08_15_008_FAIL_local_type_alias_in_try | try 块中局部类型别名被编译器拒绝 | ✅ 通过 |
| STM_08_15_009_FAIL_nested_function_in_try | try 块中嵌套函数被编译器拒绝 | ✅ 通过 |
| STM_08_15_010_RUNTIME_try_catch_no_error | 无错误时 catch 子句不执行 | ✅ 通过 |
| STM_08_15_011_RUNTIME_try_catch_error | 错误被抛出时 catch 子句捕获 | ✅ 通过 |
| STM_08_15_012_RUNTIME_try_finally_always | finally 子句始终执行 | ✅ 通过 |

---

## 三、严重性等级总览

| 严重性 | 数量 | 涉及用例 |
|--------|------|----------|
| ⭐ HIGH | 0 | — |
| ⭐ MEDIUM | 0 | — |
| ⭐ LOW | 0 | — |

本节未发现设计问题，所有用例行为均符合 ArkTS 静态语言规范 8.15 节。

---

## 四、跨语言对比结论

| 对比维度 | ArkTS (8.15) | Java (JLS SE21 §14.20) | Swift (5.x) |
|----------|-------------|----------------------|-------------|
| 异常类型层次 | 单一 `Error` 基类型 | `Throwable` 层次（受检 + 非受检） | `Error` 协议 |
| 多 catch 块 | 不支持 | 支持 | catch 中的模式匹配 |
| 受检异常 | 不适用 | 强制 throws 声明 | 不适用 |
| try-with-resources | 不支持 | 支持（`try`-with-resources） | 不支持 |
| defer / finally | `finally` 子句 | `finally` 子句 | `defer` 语句（基于作用域） |
| 必须存在 catch 或 finally | 至少一个必选 | 至少一个必选 | 至少一个 catch 必选 |
| 块内局部声明 | 受限（禁止局部类/类型别名/嵌套函数） | 允许 | 允许 |

ArkTS 的设计有意做了简化：无受检异常、无多 catch 块、无 try-with-resources。这是 ArkTS 生态的刻意设计选择，不构成设计问题。

---

## 五、改进方向建议

本节（8.15 try 语句）未发现需要改进的设计问题。ArkTS 实现正确执行了规范中描述的语法规则和运行时语义。三个编译失败用例表明，规范特定规则（缺少 catch/finally）和 ArkTS 通用语言限制（try 语句块内禁止局部声明）均得到了正确的强制执行。

- **短期**：无需行动。当前实现与规范完全一致。
- **中期**：无需行动。try 语句的简化设计符合 ArkTS 有意为之的语言设计理念。
- **长期**：可关注生态需求变化。若未来开发者对多 catch 块或 try-with-resources 模式的需求显著增加，可考虑在规范层面评估引入这些特性的可行性，但当前简化设计完全满足目标场景。
