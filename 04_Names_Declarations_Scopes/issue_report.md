# 04 Names Declarations Scopes Issue Report

## 测试结果（2026-06-19）

| 章节 | 用例数 | 通过 | 失败 | 说明 |
|------|:--:|:--:|:--:|------|
| 4.1_Names | 15 | 14 | 1 | NAM_04_01_020 runtime 入口找不到类 |
| 4.2_Declarations | 13 | 13 | 0 | (NAM_04_02_017 已修复 — 补充测试代码) |
| 4.3_Scopes | 15 | 15 | 0 | |
| 4.4_Accessible | 12 | 12 | 0 | |
| 4.5_Type_Declarations | 23 | 23 | 0 | |
| 4.6_Variable_Constant_Declarations | 25 | 25 | 0 | |
| 4.7_Function_Declarations | 29 | 28 | 1 | NAM_04_07_027 runtime ETSGLOBAL 入口问题 |
| **总计** | **132** | **131** | **1** | |

## ⚠️ 规范-实现 Gap

无确认的规范-实现 Gap。以下失败均非编译器行为背离规范：

| 用例 | 失败原因 | 分类 |
|------|---------|------|
| NAM_04_01_020 | runtime entrypoint 找不到类（编译正常，ABC 入口问题） | 测试框架 |
| NAM_04_07_027 | runtime 执行失败（Cannot find class ETSGLOBAL），预存运行时环境问题 | 测试框架 |
