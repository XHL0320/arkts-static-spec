# 13.2 Module Header — 跨语言行为差异及规范一致性报告

## 2026-07-17 编译验证

| ID | 问题 | 用例 | @expect | 实际 | 状态 |
|----|------|------|---------|------|------|
| C2 | export module 语法不支持 | NSM_13_02_001_PASS_EXPORT_MODULE | compile-pass | ESY0279 | 🔴 未修复 |
| C3 | declare module 语法不支持 | NSM_13_02_002_PASS_DECLARE_MODULE | compile-pass | ESY0331 | 🔴 未修复 |
| C4 | module string name 语法不支持 | NSM_13_02_004_PASS_MODULE_STRING_NAME | compile-pass | ESY0279 | 🔴 未修复 |
| C5 | module header runtime 不支持 | NSM_13_02_005_RUNTIME_MODULE_HEADER | runtime | ESY0279 | 🔴 未修复 |

根本原因：es2panda 不支持 `module` 关键字作为 module header 语法。
