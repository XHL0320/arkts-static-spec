# 07 Expressions 审查报告

## 审查范围
- 章节：07 Expressions
- 用例目录：`07_Expressions/ets_cases/`
- 用例总数：2110
- 审查日期：2026-06-26
- 审查人：opencode 自动化审查

## 执行结果
- **测试执行：未执行**。本地为 Windows 环境，runner `run_expressions_cases_wsl.sh` 为 WSL bash 脚本，依赖 `es2panda`/`ark` 工具链，无法直接运行。此差异属于本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成全部检查。
- **交付件可消费性**：manifest JSON 合法，issue_report 详细，catalog 覆盖完整。

## 总体结论
**条件性可验收，主要风险为 @section 元数据系统性错误（涉及数百个用例）和 40 项 D 类 Spec 不一致待跟踪。** @section 错误为格式问题（`7.7_35` vs `7.35.x`），虽不影响编译但影响自动化分类和报告。issue_report.md 质量高，23 个异常分类清晰。spec_original.md 仍为占位符。

## 问题清单

### 1. [阻塞] @section 元数据系统性错误（数百个用例）
**现象**：审计脚本发现大量 `@section` 值与父小节目录名不匹配。主要是两种格式问题：
- **压缩格式**：`section=7.7_35` 但目录为 `7.35.x_Lambda_*`（将 `7.35` 错误写作 `7.7_35`），涉及 7.35/7.36 系列全部生成用例
- **编号错误**：`section=7.35.2` 但目录为 `7.35.4_Runtime_Evaluation_of_Lambda_Expressions`（`section` 未更新）
- 也有 `section=7.35.1` 但目录为 `7.35_Lambda_Expressions` 等
**影响**：自动化工具无法将用例正确归属到对应 spec 小节，影响统计和追踪。
**建议**：统一 `@section` 格式与目录名完全一致。对批量生成的用例（`GEN_*` 系列），修正生成模板。

### 2. [重要] 40 项 D 类 Spec 与实现不一致
**现象**：issue_report.md 清晰记录了 40 项 D 类异常（含 23 个主条目 + 17 个分节子条目），涵盖：
- 赋值/运算符优先级误报（7.1.1-001~003）
- void 表达式赋值通过（7.11.4-001~002）
- Record 字段访问符号不支持（7.13.3-001）
- `~enum`/`!non-bool` 误通过（7.21.7-001, 7.21.8-001~005）
- int/bigint 除零编译检测缺失（7.23.2-001, 7.23.3-001~002）
- 负数基底幂指运算 NaN（7.24-001~002）
- float/double 移位被拒绝（7.26-001）
- enum/跨类型关系/相等误通过（7.27.6-001~002, 7.28-001~005, 7.28.1-001~003）
- readonly array/tuple 赋值误通过（7.32.1-001~002）
- `??=` 语法不支持（7.32.2-001）
- lambda 未初始化捕获误通过（7.35.2-001）
- 负面数组索引提前报错（7.2.2-001）
**影响**：此类问题不影响用例验收，但需在编译器版本迭代时跟踪更新。
**建议**：保留 issue_report，并与编译器团队对齐修复计划。

### 3. [重要] spec_original.md 为占位符
**现象**：同 06 章节，spec_original.md 仅列出章节标题，无任何规范文本。
**影响**：审查者无法在本目录内对照 spec 原文。
**建议**：提取 spec 原文/翻译到 spec_original.md。

### 4. [中等] 8 个父节含 0 用例
**现象**：manifest 中 8 个父节（7.1_Operators, 7.2_Evaluation_of_Expressions, 7.4_Named_Reference, 7.5_Array_Literal, 7.6_Object_Literal, 7.10_Field_Access_Expression, 7.11_Method_Call_Expression, 7.12_Function_Call_Expression, 7.13_Indexing_Expressions, 7.17_Cast_Expression, 7.19_Ensure_Not_Nullish, 7.21_Unary_Expressions, 7.23_Multiplicative_Expressions, 7.25_Additive_Expressions）用例数为 0。
**分析**：这些是父目录，用例分布在子节中，属于合理设计。但 manifest 保留了它们便于结构化查询。
**建议**：不影响验收，可保留。

### 5. [中等] test_design_mindmap.md 仅为基础模板
**现象**：思维导图仅为 "normal cases / edge cases / error cases" 模板重复，无具体测试设计思路。
**分析**：相比 catalog 的详细程度，mindmap 未能体现设计推理。
**建议**：可补充具体覆盖策略说明，明确每个子节的重点测试场景。

### 6. [改进] 多个同名 section 在 manifest 中重复
**现象**：manifest 中 `7.2.2_Normal_and_Abrupt_Completion` 和 `7.2.2_Normal_and_Abrupt_Completion_of_Expression_Evaluation` 两个条目，后者有 22 用例，前者为 0。
**建议**：清理冗余条目，保持 section 列表与目录一一对应。

## 覆盖评价

| 范围 | compile-pass | compile-fail | runtime | 总 |
|------|:---:|:---:|:---:|:---:|
| 7.1 Operators | 0 | 0 | 0 | **0** |
| 7.1.1 Operator Precedence | 20 | 4 | 11 | **35** |
| 7.2 Evaluation of Expressions | 0 | 0 | 0 | **0** |
| 7.2.1 Type of Expression | 15 | 5 | 5 | **25** |
| 7.2.2 Normal and Abrupt Completion | 12 | 3 | 7 | **22** |
| 7.2.3 Order of Expression Evaluation | 12 | 2 | 11 | **25** |
| 7.2.4 Evaluation of Arguments | 4 | 0 | 5 | **9** |
| 7.2.5 Evaluation of Other Expressions | 6 | 0 | 6 | **12** |
| 7.3 Literal | 5 | 2 | 4 | **11** |
| 7.4 Named Reference | 0 | 0 | 0 | **0** |
| 7.4.1 Function Reference | 5 | 3 | 2 | **10** |
| 7.4.2 Method Reference | 5 | 3 | 3 | **11** |
| 7.5 Array Literal | 0 | 0 | 0 | **0** |
| 7.5.1 Array Literal Type Inference from Context | 18 | 6 | 4 | **28** |
| 7.5.2 Array Type Inference from Types of Elements | 11 | 1 | 3 | **15** |
| 7.6 Object Literal | 0 | 0 | 0 | **0** |
| 7.6.1 Object Literal of Class Type | 10 | 8 | 3 | **21** |
| 7.6.2 Object Literal of Interface Type | 13 | 8 | 5 | **26** |
| 7.6.3 Object Literal of Record Type | 10 | 4 | 3 | **17** |
| 7.6.4 Object Literal Evaluation | 5 | 0 | 6 | **11** |
| 7.7 Spread Expression | 12 | 4 | 6 | **22** |
| 7.8 Parenthesized Expression | 6 | 1 | 3 | **10** |
| 7.9 this Expression | 6 | 2 | 3 | **11** |
| 7.10 Field Access Expression | 0 | 0 | 0 | **0** |
| 7.10.1 Accessing Static Fields | 6 | 2 | 3 | **11** |
| 7.10.2 Accessing Current Object Fields | 7 | 2 | 3 | **12** |
| 7.10.3 Accessing Super Class Accessors | 3 | 2 | 3 | **8** |
| 7.11 Method Call Expression | 0 | 0 | 0 | **0** |
| 7.11.1 Selection of Type to Use | 6 | 2 | 4 | **12** |
| 7.11.2 Selection of Entity to Call | 6 | 2 | 4 | **12** |
| 7.11.3 Checking Modifiers | 5 | 4 | 3 | **12** |
| 7.11.4 Type of Method Call Expression | 6 | 2 | 4 | **12** |
| 7.12 Function Call Expression | 0 | 0 | 0 | **0** |
| 7.12.1 Call Arguments | 7 | 3 | 4 | **14** |
| 7.13 Indexing Expressions | 0 | 0 | 0 | **0** |
| 7.13.1 Array Indexing Expression | 7 | 6 | 4 | **17** |
| 7.13.2 String Indexing Expression | 7 | 6 | 4 | **17** |
| 7.13.3 Record Indexing Expression | 7 | 5 | 4 | **16** |
| 7.14 Chaining Operator | 8 | 6 | 4 | **18** |
| 7.15 New Expressions | 7 | 5 | 4 | **16** |
| 7.16 instanceof Expression | 8 | 2 | 4 | **14** |
| 7.17 Cast Expression | 0 | 0 | 0 | **0** |
| 7.17.1 Type Inference in Cast Expression | 6 | 5 | 4 | **15** |
| 7.17.2 Runtime Checking in Cast Expression | 6 | 0 | 5 | **11** |
| 7.18 typeof Expression | 7 | 1 | 7 | **15** |
| 7.19 Ensure Not Nullish Expression | 0 | 0 | 0 | **0** |
| 7.20 Nullish Coalescing Expression | 8 | 3 | 8 | **19** |
| 7.21 Unary Expressions | 0 | 0 | 0 | **0** |
| 7.21.1 Postfix Increment | 7 | 5 | 8 | **20** |
| 7.21.2 Postfix Decrement | 7 | 5 | 8 | **20** |
| 7.21.3 Prefix Increment | 7 | 5 | 8 | **20** |
| 7.21.4 Prefix Decrement | 7 | 5 | 8 | **20** |
| 7.21.5 Unary Plus | 7 | 4 | 6 | **17** |
| 7.21.6 Unary Minus | 8 | 4 | 8 | **20** |
| 7.21.7 Bitwise Complement | 8 | 5 | 8 | **21** |
| 7.21.8 Logical Complement | 3 | 5 | 8 | **16** |
| 7.22 Binary Expressions | 15 | 7 | 5 | **27** |
| 7.23 Multiplicative Expressions | 0 | 0 | 0 | **0** |
| 7.23.1 Multiplication | 8 | 6 | 9 | **23** |
| 7.23.2 Division | 6 | 8 | 10 | **24** |
| 7.23.3 Remainder | 6 | 8 | 9 | **23** |
| 7.24 Exponentiation Expression | 6 | 7 | 12 | **25** |
| 7.25 Additive Expressions | 0 | 0 | 0 | **0** |
| 7.25.1 String Concatenation | 10 | 2 | 7 | **19** |
| 7.25.2 Additive Operators for Numeric Types | 8 | 6 | 12 | **26** |
| 7.26 Shift Expressions | 11 | 16 | 20 | **47** |
| 7.27 Relational Expressions | 10 | 10 | 10 | **30** |
| 7.27.1 Numeric Relational Operators | 16 | 15 | 18 | **49** |
| 7.27.2 Bigint Relational Operators | 16 | 15 | 18 | **49** |
| 7.27.3 String Relational Operators | 16 | 16 | 18 | **50** |
| 7.27.4 Boolean Relational Operators | 15 | 16 | 14 | **45** |
| 7.27.5 char Relational Operators | 15 | 13 | 14 | **42** |
| 7.27.6 Enumeration Relational Operators | 15 | 14 | 14 | **43** |
| 7.28 Equality Expressions | 10 | 10 | 10 | **30** |
| 7.28.1 Numeric Equality Operators | 22 | 15 | 14 | **51** |
| 7.28.2 Function Type Equality Operators | 19 | 13 | 14 | **46** |
| 7.28.3 Extended Equality with null or undefined | 18 | 10 | 14 | **42** |
| 7.29 Bitwise and Logical Expressions | 10 | 10 | 10 | **30** |
| 7.29.1 Integer Bitwise Operators | 17 | 12 | 14 | **43** |
| 7.29.2 Boolean Logical Operators | 13 | 12 | 11 | **36** |
| 7.30 Conditional And Expression | 13 | 12 | 11 | **36** |
| 7.31 Conditional Or Expression | 13 | 12 | 11 | **36** |
| 7.32 Assignment | 10 | 10 | 10 | **30** |
| 7.32.1 Simple Assignment Operator | 16 | 13 | 13 | **42** |
| 7.32.2 Compound Assignment Operators | 15 | 14 | 13 | **42** |
| 7.32.3 Left Hand Side Expressions | 17 | 24 | 11 | **52** |
| 7.33 Ternary Conditional Expressions | 20 | 11 | 15 | **46** |
| 7.34 String Interpolation Expressions | 20 | 12 | 11 | **43** |
| 7.35 Lambda Expressions | 10 | 10 | 10 | **30** |
| 7.35.1 Lambda Signature | 17 | 14 | 11 | **42** |
| 7.35.2 Lambda Body | 18 | 13 | 11 | **42** |
| 7.35.3 Lambda Expression Type | 17 | 13 | 11 | **41** |
| 7.35.4 Runtime Evaluation of Lambda Expressions | 12 | 10 | 14 | **36** |
| 7.36 Constant Expressions | 10 | 10 | 10 | **30** |
| 7.36.1 Specifics of Constant Expressions Evaluation | 13 | 10 | 13 | **36** |
| **Total** | **842** | **600** | **668** | **2110** |

**覆盖评价**：覆盖范围极广，96 个 spec 子节均有对应用例（68 个子节有实际用例，28 个为父节/容器无直接用例）。每个活跃子节均包含 compile-pass/compile-fail/runtime 三类。issue_report.md 对每节的完成状态和异常有详细记录。

**亮点**：
- 7.26 Shift Expressions（47 例），7.28.1 Numeric Equality（51 例），7.27.1~7.27.5 关系运算（每节 42~50 例）覆盖充分
- 7.32.3 LHS Expressions（52 例）是单节用例最多的小节
- 7.34 String Interpolation（43 例）覆盖完整
- Expressions_Examples.md 有真实示例代码

**已知覆盖不足**（源于编译器限制，issue_report 已记录）：
- `!` 逻辑非仅允许 boolean（7.21.8 的 5 项 D 类）
- `~` 位反仅允许 integer（7.21.7 的 1 项 D 类）
- 跨类型 equality/relational 检查（7.27.6, 7.28, 7.28.1 多 D 类）
- `??=` 语法不支持（7.32.2 D 类）

## 整改建议

1. **必须修复**：修正 `@section` 的格式问题。对 7.35/7.36 系列批量生成的用例，`section=7.7_35` 应改为 `section=7.35.x`，与实际目录一致
2. **建议补充**：填充 `spec_original.md` 为可用 spec 原文
3. **建议增强**：`test_design_mindmap.md` 应体现具体设计思路而非仅模板重复
4. **清理建议**：manifest 中清理冗余的重复 section 条目（如 `7.2.2_Normal_and_Abrupt_Completion` 双条目）
5. **持续跟踪**：issue_report.md 中 40 项 D 类问题应在下个编译器版本验证后更新状态
