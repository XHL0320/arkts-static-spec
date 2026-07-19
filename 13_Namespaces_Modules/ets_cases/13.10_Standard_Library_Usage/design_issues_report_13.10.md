# 13.10 Standard Library Usage — 跨语言行为差异及规范一致性报告

## 2026-07-17 编译验证

| ID | 问题 | 用例 | @expect | 实际 | 状态 |
|----|------|------|---------|------|------|
| D1 | 标准库名重定义未报错 | NSM_13_10_002_FAIL_STDLIB_NAME_REUSE | compile-fail | ACCEPTED | 🔴 未修复 |

Spec §13.10 规定在模块作用域使用标准库名作为用户定义实体名会导致 compile-time error。编译器未实现此检查。
