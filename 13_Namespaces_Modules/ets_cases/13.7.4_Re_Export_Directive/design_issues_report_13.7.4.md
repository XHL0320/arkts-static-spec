# 13.7.4 Re-Export Directive — 跨语言行为差异及规范一致性报告

## 2026-07-17 编译验证

| ID | 问题 | 用例 | @expect | 实际 | 状态 |
|----|------|------|---------|------|------|
| C20 | re-export all 外部路径不支持 | NSM_13_07_4_001_PASS_RE_EXPORT_ALL | compile-pass | F0014 | 🔴 未修复 |
| C21 | re-export selective 外部路径不支持 | NSM_13_07_4_002_PASS_RE_EXPORT_SELECTIVE | compile-pass | F0014 | 🔴 未修复 |

根本原因：es2panda 单文件编译无法解析外部模块路径（Fatal error F0014），需要构建系统支持。
