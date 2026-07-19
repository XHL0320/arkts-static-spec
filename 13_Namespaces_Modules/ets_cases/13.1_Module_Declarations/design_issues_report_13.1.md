# 13.1 Module Declarations — 跨语言行为差异及规范一致性报告

## 2026-07-17 编译验证

| ID | 问题 | 用例 | @expect | 实际 | 状态 |
|----|------|------|---------|------|------|
| D5 | ambient与非ambient声明混合未报错 | NSM_13_01_004_FAIL_AMBIENT_MIXED | compile-fail | ACCEPTED | 🔴 未修复 |
| ~~C1~~ | module + import 外部路径（已修复） | NSM_13_01_002_PASS_MODULE_WITH_IMPORT | compile-pass | ACCEPTED | ✅ 已修复 |

**D5** — Spec §13.1 要求模块中若有一个顶层 ambient 声明，则所有声明必须为 ambient。编译器未实现此检查。

**C1（已修复）** — 用例已改为自包含内联定义，编译通过。
