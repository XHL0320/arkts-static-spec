# 08 语句 - 测试用例目录

**生成日期：** 2026-06-22
**执行日期：** 2026-06-22
**总用例数：** 557（223P + 154F + 180R）
**通过率：** **100%**（557/557）
**编译器：** es2panda + ark VM (Linux native)
**覆盖章节：** §8.1-§8.15.3（18 个子章节）

---

## 子章节用例分布与执行结果

| 章节 | 标题 | P | F | R | 合计 | 结果 |
|------|------|---|---|---|------|------|
| §8.1 | Normal/Abrupt Execution | 12 | 8 | 10 | 30 | ✅ 100% |
| §8.2 | Expression Statements | 12 | 8 | 10 | 30 | ✅ 100% |
| §8.3 | Block | 10 | 10 | 10 | 30 | ✅ 100% |
| §8.4 | Constant/Variable Declarations | 10 | 10 | 10 | 30 | ✅ 100% |
| §8.5 | if Statements | 22 | 4 | 10 | 36 | ✅ 100% |
| §8.6 | Loop Statements | 10 | 10 | 10 | 30 | ✅ 100% |
| §8.7 | while/do Statements | 22 | 4 | 10 | 36 | ✅ 100% |
| §8.8 | for Statements | 18 | 5 | 10 | 33 | ✅ 100% |
| §8.9 | for-of Statements | 10 | 10 | 10 | 30 | ✅ 100% |
| §8.10 | break Statements | 10 | 10 | 10 | 30 | ✅ 100% |
| §8.11 | continue Statements | 10 | 10 | 10 | 30 | ✅ 100% |
| §8.12 | return Statements | 10 | 10 | 10 | 30 | ✅ 100% |
| §8.13 | switch Statements | 12 | 10 | 10 | 32 | ✅ 100% |
| §8.14 | throw Statements | 10 | 10 | 10 | 30 | ✅ 100% |
| §8.15 | try Statements | 10 | 10 | 10 | 30 | ✅ 100% |
| §8.15.1 | catch Clause | 11 | 9 | 10 | 30 | ✅ 100% |
| §8.15.2 | finally Clause | 12 | 8 | 10 | 30 | ✅ 100% |
| §8.15.3 | try Execution | 12 | 8 | 10 | 30 | ✅ 100% |
| **合计** | | **223** | **154** | **180** | **557** | **✅ 100%** |

---

## 已知 Spec 与实现差异

详见 [issue_report.md](issue_report.md)：

| ID | 描述 | 分类 |
|----|------|------|
| STM-S1 | Block 内 type declaration — Spec 措辞歧义 | Spec 措辞待澄清 |
| STM-G1 | Loop label 未使用 — es2panda 未检查 | 编译器待完善 |
| STM-D1 | Extended Conditional Expressions 允许非 boolean 条件 | 语言差异点 |

---

## 命名规范

| 元素 | 格式 |
|------|------|
| 前缀 | STM_ |
| 编号 | 子章节内连续（001 起） |
| 分类 | PASS / FAIL / RUNTIME |
| 目录 | `<子章节>/compile-pass/` `<子章节>/compile-fail/` `<子章节>/runtime/` |
