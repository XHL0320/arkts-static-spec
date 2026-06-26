# 06 Contexts and Conversions 审查报告

## 审查范围
- 章节：06 Contexts and Conversions
- 用例目录：`06_Contexts_Conversions/ets_cases/`
- 用例总数：253（compile-pass: 111, compile-fail: 60, runtime: 82）
- 小节数：11
- 审查日期：2026-06-26
- 审查人：opencode 自动化审查

## 执行结果
- **测试执行：未执行**。本地环境为 Windows，runner `run_contexts_conversions_cases_wsl.sh` 为 WSL bash 脚本，依赖 `es2panda` 和 `ark` 工具链（`~/arkcompiler/...`），本地无法直接运行。此差异属于本地审查环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成全部静态检查。
- **交付件可消费性**：manifest 合法，元数据整体一致（247/253 正确），`@expect` 和 `@section` 全部正确。

## 总体结论
**条件性可验收，主要风险为 @id 元数据不一致（6处）和 spec 文档不完整（spec_original.md / Examples.md 为占位符）。** 需修复 @id 后确认，issue_report 中 10 项 D 类不一致需跟踪 spec 和编译器演进。

## 问题清单

### 1. [阻塞] 6 处 `@id` 与文件名不一致
**现象**：审计脚本发现 6 个 .ets 文件的 `@id` 与文件名不匹配，影响平台化追踪和报告。
**证据**：
| 文件 | @id | 应匹配为 |
|------|-----|---------|
| `CON_06_02_011_FAIL_VOID_STRING_CONCAT.ets` | `CON_06_02_011_FAIL_NO_STRING_OPERAND` | `CON_06_02_011_FAIL_VOID_STRING_CONCAT` |
| `CON_06_02_012_FAIL_BOOL_BOOL_PLUS.ets` | `CON_06_02_012_FAIL_UNDEFINED_UNDEFINED_PLUS` | `CON_06_02_012_FAIL_BOOL_BOOL_PLUS` |
| `CON_06_03_01_015_FAIL_STRING_ENUM_RELATIONAL.ets` | `CON_06_03_01_015_FAIL_BOOL_LONG_RELATIONAL` | `CON_06_03_01_015_FAIL_STRING_ENUM_RELATIONAL` |
| `CON_06_03_01_006_PASS_FLOAT_DOUBLE_RELATIONAL.ets` | `CON_06_03_01_006_PASS_LONG_DOUBLE_RELATIONAL` | `CON_06_03_01_006_PASS_FLOAT_DOUBLE_RELATIONAL` |
| `CON_06_03_01_009_PASS_INT_FLOAT_RELATIONAL.ets` | `CON_06_03_01_009_PASS_INT_DOUBLE_LE_GE` | `CON_06_03_01_009_PASS_INT_FLOAT_RELATIONAL` |
| `CON_06_04_03_013_FAIL_INT_ENUM_TO_SHORT.ets` | `CON_06_04_03_013_FAIL_INT_ENUM_TO_FLOAT` | `CON_06_04_03_013_FAIL_INT_ENUM_TO_SHORT` |
**影响**：自动化工具无法将执行结果回关联到正确用例，降低交付件可消费性。
**建议**：统一以文件名为准，修正对应 .ets 中的 `@id` 值。

### 2. [重要] `spec_original.md` 和 `Contexts_Conversions_Examples.md` 为占位符
**现象**：spec_original.md 仅列出章节标题，无任何规范文本；Examples.md 仅有一句保留说明。
**影响**：新 reviewers 无法在本目录内对照 spec 原文审查用例覆盖完整性，需外部翻阅 spec 文档。
**建议**：提取 spec 原文/翻译到 `spec_original.md`，补充 minimal 示例到 `Examples.md`。

### 3. [信息] `test_manifest.json` 无每用例粒度 id
**现象**：MANIFEST_ID_COUNT=0，manifest 只有章节级汇总统计，没有按用例粒度列出 id。
**影响**：作为章节级摘要，结构合理；但不支持按用例级别做自动化验证追踪。
**建议**：如果平台化需要，可考虑在 manifest 中增加 `cases` 数组列明每个用例的 id。

### 4. [信息] issue_report.md 记录 10 项 D 类 Spec 不一致
**现象**：文档清晰记录了 10 项 D 类问题（Spec 与实现/文档不一致），包括：
- D-6.01-01：float 字面量类型歧义（MEDIUM）
- D-6.01-02：数值 `as` cast 废弃（MEDIUM）
- D-6.02-01：`void + string` 编译通过（MEDIUM）
- D-6.02-02：浮点零字符串化丢失 `.0`（LOW）
- D-6.02-03：`Box` 类名冲突（LOW）
- D-6.03-01：string enum 关系比较（LOW）
- D-6.03-02：char 无符号范围未说明（LOW）
- D-6.04-01：widening to union 规则过严（MEDIUM）
- D-6.04-02：数值字面量到 union 歧义（MEDIUM）
- D-6.04-03：subtyping match 被计入候选（LOW）
**影响**：此类问题不会阻塞当前用例验收，但应在 spec 更新或编译器版本迭代时持续跟踪。
**建议**：保留 issue_report，在新编译器版本验证后更新状态。

## 覆盖评价

| 小节 | compile-pass | compile-fail | runtime | 总 | 覆盖评价 |
|------|:---:|:---:|:---:|:---:|---------|
| 6.1 Assignment-like Contexts | 15 | 15 | 12 | 42 | 覆盖声明/赋值/调用/返回/composite literal/widening/narrowing 全场景 |
| 6.2 String Operator Contexts | 10 | 5 | 10 | 25 | 涵盖 int/float/bool/null/undefined/enum/reference/union 字符串转换及反例 |
| 6.3 Numeric Operator Contexts | 12 | 6 | 9 | 27 | 涵盖 unary/exponent/multiplicative/additive/shift/bitwise/compound 及 enum 场景 |
| 6.3.1 Numeric Relational/Equality | 12 | 6 | 10 | 28 | 涵盖 int/long/double/short/byte/float/enum 组合，含边界值和负数 |
| 6.3.2 char Relational/Equality | 12 | 5 | 9 | 26 | 涵盖 char 与 byte/int/long/double/char 全组合 |
| 6.4 Implicit Conversions | 10 | 5 | 8 | 23 | 涵盖 widening/enum/union/chain/nullish/boolean 场景 |
| 6.4.1 Widening Numeric | 10 | 5 | 8 | 23 | 覆盖 byte→short→int→long→float→double 所有路径 + 反例 |
| 6.4.2 Widening Numeric to Union | 8 | 4 | 4 | 16 | 涵盖 literal inference/subtyping/唯一成员/歧义场景 |
| 6.4.3 Enum to Numeric | 9 | 4 | 4 | 17 | 涵盖 int/double enum→int/long/double/number/union/call/return/arithmetic |
| 6.4.4 Enum to string | 5 | 3 | 2 | 10 | 涵盖 string enum→string/union/call/return/assignment |
| 6.5 Numeric Casting | 8 | 2 | 6 | 16 | 涵盖 .toInt/.toLong/.toFloat/.toDouble/.toByte/链式转换 |
| **Total** | **111** | **60** | **82** | **253** | **全章节覆盖完整** |

**总体覆盖评价**：所有 11 个小节均有至少 10 个用例（最少 6.4.4 有 10 个，最多 6.1 有 42 个），compile-pass/compile-fail/runtime 三类均有覆盖。设计思维导图和目录与实际情况一致。未发现 spec 明确要求的规则缺失覆盖。

**已知覆盖不足**（源于编译器限制，非用例设计问题）：
- float 字面量直接初始化（issue D-6.01-01）
- numeric `as` cast（issue D-6.01-02）
- `void` 的 string conversion（issue D-6.02-01）

## 整改建议

1. **必须修复**：修正 6 个 .ets 文件的 `@id` 与文件名一致（参见问题 1）
2. **建议补充**：填充 `spec_original.md` 为可用的 spec 原文/翻译，填充 `Contexts_Conversions_Examples.md` 为 minimal 示例
3. **持续跟踪**：issue_report.md 中 10 项 D 类问题应在下个编译器版本验证后更新状态
4. **可选增强**：manifest 若用于平台化，考虑增加用例粒度 id 列表
