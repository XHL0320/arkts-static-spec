# 13.7.2 Single Export Directive — 跨语言行为差异及规范一致性报告

## 2026-07-17 编译验证

| ID | 问题 | 用例 | @expect | 实际 | 状态 |
|----|------|------|---------|------|------|
| D6 | export default expression中未导出类型被要求导出 | NSM_13_07_2_007_FAIL_EXPORT_DEFAULT_EXPR_UNEXPORTED_TYPE | compile-pass（Spec认为合法）| REJECTED | 🔴 用例设计问题 |

Spec §13.7.2 示例显示 `class A { foo(){} } export default new A` 在 A 未导出时合法（default export expression 创建匿名常量）。但 es2panda 要求 A 必须导出。
