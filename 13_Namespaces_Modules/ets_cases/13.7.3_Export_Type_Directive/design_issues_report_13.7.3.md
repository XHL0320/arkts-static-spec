# 13.7.3 Export Type Directive — 跨语言行为差异及规范一致性报告

## 2026-07-17 编译验证

| ID | 问题 | 用例 | @expect | 实际 | 状态 |
|----|------|------|---------|------|------|
| D4 | export type 引用非 type 未报错 | NSM_13_07_3_002_FAIL_EXPORT_TYPE_NON_TYPE | compile-fail | ACCEPTED | 🔴 未修复 |

Spec §13.7.3 规定 `export type { binding }` 中 binding 必须引用 type。编译器未实现此检查。
