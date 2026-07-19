# 13.8 Top Level Statements — 跨语言行为差异及规范一致性报告

## 2026-07-17 编译验证

| ID | 问题 | 用例 | @expect | 实际 | 状态 |
|----|------|------|---------|------|------|
| D3 | 顶层语句中使用声明前的变量未报错 | NSM_13_08_004_FAIL_TOP_LEVEL_USE_BEFORE_DECLARE | compile-fail | ACCEPTED | 🔴 未修复 |

Spec §13.8 规定顶层语句若引用文本位置在其后的声明则产生 compile-time error。编译器未实现此检查。
