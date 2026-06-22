# 07 表达式 - 设计问题报告

记录 07 表达式（Expressions）章节 §7.26-§7.36.1 子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

*暂无 — 所有测试用例已生成，待 WSL 环境（es2panda + ark VM）实际编译运行后方可记录异常*

| ID | Case | Symptom | Expected | Actual | Status |
|---|---|---|---|---|---|

---

## 已知潜在关注点（基于 Spec 分析预判）

以下为基于 §7.26-§7.36.1 规范分析预判的可能存在 Spec 与实现差异的关注点，待实际编译验证：

### EXP-P1：bigint >>> 无符号右移禁止 — 待验证
- **Spec §7.26：** `A compile-time error occurs if '>>>' (unsigned right shift) is applied to operands of type bigint.`
- **预判：** 需验证 es2panda 是否正确拒绝 `bigint >>> bigint`
- **用例：** EXP_07_26_007_FAIL_BIGINT_UNSIGNED_RIGHT

### EXP-P2：bigint 与 numeric 移位混合 — 待验证
- **Spec §7.26：** `A compile-time error occurs if one operand is type bigint, and the other one is a numeric type.`
- **预判：** 需验证 es2panda 是否正确拒绝 bigint+numeric 混合移位
- **用例：** EXP_07_26_008_FAIL_BIGINT_NUMERIC_MIXED

### EXP-P3：bigint == numeric 应返回 false — 待验证
- **Spec §7.28.1：** `If one operand is of type bigint, and the other is of a numeric type, then the result is false.`
- **预判：** 需验证是否正确返回 false（非编译错误）
- **用例：** EXP_07_28_01_007_RUNTIME_BIGINT_VS_NUMERIC

### EXP-P4：NaN 相等行为 — 待验证
- **Spec §7.28.1：** IEEE 754: NaN != NaN
- **预判：** 需验证 `NaN == NaN` 返回 `false`
- **用例：** EXP_07_28_01_006_RUNTIME_NAN_EQ

### EXP-P5：复合赋值 lhs 只求值一次 — 待验证
- **Spec §7.32.2：** `lhsExpression is evaluated only once`
- **预判：** 需验证副作用行为
- **用例：** EXP_07_32_02_005_PASS_COMPOUND_LHS_ONCE

### EXP-P6：常量表达式 ++/-- 禁止 — 待验证
- **Spec §7.36：** 常量表达式不允许 `++` 和 `--`
- **预判：** 需验证 es2panda 是否正确拒绝
- **用例：** EXP_07_36_005_FAIL_CONST_INCREMENT, EXP_07_36_006_FAIL_CONST_DECREMENT

---

## 历史已解决异常

*暂无*

---

## 章节执行统计

| 指标 | 值 |
|------|-----|
| 子章节数 | 30 |
| 总用例 | 189 |
| compile-pass | 85 |
| compile-fail | 55 |
| runtime | 49 |
| 当前未解决异常 | 0 |
| 待验证关注点 | 6 |
| 执行状态 | **待 WSL 实际编译运行** |

---

## 注

- 所有 189 个测试用例的 `@expect` 标签基于 Spec 预期设定
- 实际编译运行结果需在 WSL 环境中使用 `run_expressions_cases_wsl.sh` 验证
- 任何 Spec 与实现差异将记录为 EXP-I 系列异常
