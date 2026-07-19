# 13.3 Namespace Declarations — 跨语言行为差异及规范一致性报告

## 2026-07-17 编译验证

| ID | 问题 | 用例 | @expect | 实际 | 状态 |
|----|------|------|---------|------|------|
| D2 | 合并namespace多初始化器未报错 | NSM_13_03_011_FAIL_NAMESPACE_MULTIPLE_INITIALIZER | compile-fail | ACCEPTED | 🔴 未修复 |

Spec §13.3 规定合并的 namespace 中只能有一个有初始化器。编译器未实现此检查。
