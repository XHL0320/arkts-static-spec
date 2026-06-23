# 07 表达式 - 测试用例目录

**生成日期：** 2026-06-22
**执行日期：** 2026-06-22（第二次扩展 2026-06-22）
**总用例数：** **900**（306P + 294F + 300R）
**通过率：** **100%**（900/900）
**编译器：** es2panda + ark VM (Linux native)
**覆盖章节：** §7.26-§7.36.1（30 个子章节，每节各 10P+10F+10R）

---

## 子章节用例分布与执行结果

| 章节 | 标题 | P | F | R | 合计 | 结果 |
|------|------|---|---|---|------|------|
| §7.26 | Shift Expressions | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.27 | Relational Expressions | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.27.1 | Numeric Relational Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.27.2 | Bigint Relational Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.27.3 | String Relational Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.27.4 | Boolean Relational Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.27.5 | char Relational Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.27.6 | Enumeration Relational Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.28 | Equality Expressions | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.28.1 | Numeric Equality Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.28.2 | Function Type Equality Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.28.3 | Extended Equality with null/undefined | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.29 | Bitwise and Logical Expressions | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.29.1 | Integer Bitwise Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.29.2 | Boolean Logical Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.30 | Conditional-And Expression | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.31 | Conditional-Or Expression | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.32 | Assignment | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.32.1 | Simple Assignment Operator | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.32.2 | Compound Assignment Operators | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.32.3 | Left-Hand-Side Expressions | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.33 | Ternary Conditional Expressions | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.34 | String Interpolation Expressions | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.35 | Lambda Expressions | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.35.1 | Lambda Signature | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.35.2 | Lambda Body | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.35.3 | Lambda Expression Type | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.35.4 | Runtime Evaluation of Lambda | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.36 | Constant Expressions | 10 | 10 | 10 | 30 | ✅ 100% |
| §7.36.1 | Specifics of Constant Expression Evaluation | 10 | 10 | 10 | 30 | ✅ 100% |
| **合计** | | **300** | **300** | **300** | **900** | **✅ 100%** |

---

## 已知 Spec 与实现差异

详见 [issue_report.md](issue_report.md) 中的 EXP-I1 ~ EXP-I7：

| ID | 描述 | 严重性 |
|----|------|--------|
| EXP-I1 | &&= / \|\|= 复合赋值 es2panda 不支持 | MEDIUM |
| EXP-I2 | 常量表达式 ++/-- es2panda 未拒绝 | LOW |
| EXP-I3 | 常量表达式引用 let es2panda 未拒绝 | LOW |
| EXP-I4 | 三元条件接受非 boolean es2panda 未拒绝 | LOW |
| EXP-I5 | 枚举 vs int 关系比较 es2panda 未拒绝 | LOW |
| EXP-I6 | Lambda 捕获未初始化变量 es2panda 未检查 | LOW |
| EXP-I7 | nullish 类型移位 es2panda 未拒绝 | LOW |

---

## 命名规范

| 元素 | 格式 | 示例 |
|------|------|------|
| 前缀 | EXP_ | EXP_07_26_001_PASS_INT_SHIFT_BASIC.ets |
| 分类 | PASS / FAIL / RUNTIME | |
| 编号 | 子章节内连续（001 起）| PASS→FAIL→RUNTIME |
| 目录 | `<子章节>/compile-pass/` `<子章节>/compile-fail/` `<子章节>/runtime/` | |
