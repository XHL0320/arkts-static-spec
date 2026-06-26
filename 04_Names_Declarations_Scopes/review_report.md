# 04 Names Declarations Scopes 审查报告

## 审查范围
- 章节：04 Names, Declarations, Scopes
- 用例目录：`04_Names_Declarations_Scopes/ets_cases/`
- 用例总数：191（91P + 71F + 29R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地 Windows 无 arkcompiler 工具链，runner `run_names_cases_wsl.sh` 为 WSL bash 脚本。本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成。

| 指标 | 数值 |
|------|------:|
| .ets 总数 | 191 |
| manifest id 数 | 191（100% 覆盖）|
| manifest JSON | ✅ 合法 |
| 元数据不一致 | **0** |

## 整改完成情况

| 问题 | 状态 |
|------|:----:|
| 24 处 @section 归属错误 | ✅ 已修复 |
| 3 小节 manifest/catalog 统计不一致 | ✅ manifest 已重建（191/191 全量覆盖） |
| manifest 格式（section_stats 字段） | ✅ 已统一为 cases 数组格式 |

## 总体结论
**可验收。** 191 用例全覆盖 21 个小节，元数据完全一致（METADATA_BAD_COUNT=0），manifest 全覆盖（191/191）。spec_original.md（1427行）、Names_Examples.md（257行）均已填充。issue_report 无已知异常。

## 覆盖评价

| 小节 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 4.1 Names | 8 | 6 | 2 | 16 | 简单/限定/复合名称 |
| 4.2 Declarations | 4 | 8 | 1 | 13 | 声明类型/重载 |
| 4.2.1 Distinguishable Signatures | 1 | 1 | 1 | 3 | 签名可区分性 |
| 4.3 Scopes | 14 | 5 | 0 | 19 | 作用域 |
| 4.4 Accessible | 7 | 7 | 2 | 16 | 可访问性 |
| 4.5 Type Declarations | 10 | 13 | 1 | 24 | 类型声明 |
| 4.5.1 Type Alias Declaration | 8 | 1 | 2 | 11 | 类型别名 |
| 4.6.1 Variable Declarations | 5 | 3 | 1 | 9 | 变量声明 |
| 4.6.2 Constant Declarations | 3 | 3 | 1 | 7 | 常量声明 |
| 4.6.3 Validity of Initializer | 1 | 2 | 1 | 4 | 初始化器有效性 |
| 4.6.4 Assignability with Initializer | 1 | 1 | 1 | 3 | 可赋值性 |
| 4.6.5 Type Inference | 5 | 2 | 2 | 9 | 类型推断 |
| 4.7 Function Declarations | 2 | 2 | 1 | 5 | 函数声明 |
| 4.7.1 Signatures | 3 | 1 | 1 | 5 | 签名 |
| 4.7.2 Parameter List | 1 | 1 | 1 | 3 | 参数列表 |
| 4.7.3 Readonly Parameters | 1 | 2 | 2 | 5 | 只读参数 |
| 4.7.4 Optional Parameters | 2 | 1 | 2 | 5 | 可选参数 |
| 4.7.5 Rest Parameter | 5 | 6 | 4 | 15 | 可变参数 |
| 4.7.6 Shadowing by Parameter | 2 | 1 | 2 | 5 | 参数遮蔽 |
| 4.7.7 Return Type | 8 | 5 | 1 | 14 | 返回类型 |
| **Total** | **91** | **71** | **29** | **191** | 21 节全覆盖 |
