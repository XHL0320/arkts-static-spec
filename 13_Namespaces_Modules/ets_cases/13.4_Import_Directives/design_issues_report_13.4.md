# 13.4 Import Directives — 跨语言行为差异及规范一致性报告

## 2026-07-17 编译验证

| ID | 问题 | 用例 | @expect | 实际 | 状态 |
|----|------|------|---------|------|------|
| C6 | import basic 外部路径不支持 | NSM_13_04_001_PASS_IMPORT_BASIC | compile-pass | F0014 | 🔴 未修复 |
| C7 | import init runtime 外部路径不支持 | NSM_13_04_005_RUNTIME_IMPORT_INIT | runtime | F0014 | 🔴 未修复 |

根本原因：es2panda 单文件编译无法解析外部模块路径（Fatal error F0014），需要构建系统支持。
