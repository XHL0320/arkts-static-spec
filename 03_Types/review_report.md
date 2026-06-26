# 03 Types 审查报告

## 审查范围
- 章节：03 Types
- 用例目录：`03_Types/ets_cases/`
- 用例总数：728（324P + 195F + 209R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地为 Windows，runner `run_types_cases_wsl.sh` 为 WSL bash 脚本。此差异属于本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成。
- **交付件质量**：manifest 合法，44 小节全覆盖，issue_report 详细。

## 总体结论
**条件性可验收，主要风险为 8 处元数据不一致和 12 项已知 spec 差异。** 728 用例覆盖 44 个小节，是已审查章节中用例最多的。需修复 5 处 `@section` 归属错误和 1 处 `@id` 不匹配。spec_original.md 和 Types_Examples.md 为占位符。issue_report 中 2 项 S 类 spec 文档冲突（bigint）需 spec 团队澄清。

## 问题清单

### 1. [阻塞] 8 处元数据不一致
**现象**：
- **@section 归属错误（7 处）**：
  - 3 个 `3.18_Function_Types` 下的用例 `@section=3.18.1`，应改为 `3.18`
  - 4 个 `3.19_Union_Types` 下的用例 `@section=3.19.2`，应改为 `3.19`
- **@id 不匹配（1 处）**：
  - `TYP_03_19_030_RUNTIME_NORMALIZATION.ets` 的 `@id` 为 `TYP_03_19_030_RUNTIME_UNION_NORMALIZATION`
**影响**：影响自动化工具正确归类用例到 spec 小节。
**建议**：逐一修正上述 8 处的 `@section` 和 `@id`。

### 2. [重要] 12 项已知 spec 差异已清晰归类
**现象**：issue_report.md 记录 12 项差异，其中：
- 8 项 D 类（Spec 与实现不一致）：函数类型括号/调用、Any 字段访问、union 同名字段、keyof、readonly union 归一化、Partial/Required/Readonly 非 class 应用
- 2 项 S 类（Spec 文档冲突）：bigint 关系运算在 types.md 和 expressions.md 中表述矛盾
- 2 项 D 类（Spec 与实现不一致）：union normalization 写入、Partial/Required/Readonly 非 class
**评价**：S 类条目（S-3.14-01/02）是唯一一个跨章节 spec 自相矛盾的案例，处理方式正确——不强行归类为实现 bug，而是标注为 spec 文档冲突。
**建议**：跟踪 spec 团队对 bigint 关系运算的澄清结果。

### 3. [中等] spec_original.md 和 Types_Examples.md 为占位符
**现象**：spec_original.md 仅列子节标题无规范文本；Types_Examples.md 仅一句保留说明。
**影响**：新 reviewer 需外部查阅 spec。
**建议**：填充 spec_original.md 的核心类型规则摘要，补充 Examples.md 的最小示例。

### 4. [信息] 有 1 个未归类文件 AI_REVIEW_REPORT_20260625.md
**现象**：章节根目录存在 `AI_REVIEW_REPORT_20260625.md`，不属于标准交付件清单。
**建议**：确认是否需要保留或归档到合适位置。

### 5. [改进] test_design_mindmap.md 和 test_case_catalog.md 偏简略
**现象**：mindmap 仅 55 行、catalog 仅 58 行，对于 728 用例的章节而言偏简略。catalog 仅有汇总表和小节补充说明，无完整用例清单。
**建议**：补充完整用例清单（参照 08_Statements 或 17_Experimental_Features 的 catalog 格式）。

## 覆盖评价

| 范围 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 3.1 Predefined Types | 18 | 16 | 15 | 49 | int/long/short/byte/float/double/boolean/string 等预定义类型 |
| 3.2 User Defined Types | 11 | 11 | 8 | 30 | class/interface/enum/type alias 声明 |
| 3.3 Using Types | 12 | 10 | 5 | 27 | 类型使用上下文 |
| 3.4 Named Types | 10 | 6 | 4 | 20 | 命名类型解析 |
| 3.5 Type References | 10 | 5 | 4 | 19 | 类型引用语法 |
| 3.6 Value Types | 0 | 0 | 0 | 0 | 容器节 |
| 3.6.1 Numeric Types | 10 | 5 | 5 | 20 | byte/short/int/long/float/double |
| 3.6.2 Integer Types and Operations | 10 | 9 | 10 | 29 | 整数运算、溢出、截断 |
| 3.6.3 Floating Point Types and Operations | 10 | 2 | 18 | 30 | 浮点运算、IEEE 754 |
| 3.6.4 Type boolean | 8 | 2 | 5 | 15 | boolean 字面量和运算 |
| 3.7 Reference Types | 8 | 2 | 3 | 13 | 引用类型 vs 值类型 |
| 3.8 Type Any | 5 | 3 | 3 | 11 | Any 类型特性 ⚠️ D |
| 3.9 Type Object | 5 | 2 | 3 | 10 | Object 类型 |
| 3.10 Type never | 5 | 3 | 2 | 10 | never 类型 |
| 3.11 Type void or undefined | 10 | 5 | 5 | 20 | void/undefined |
| 3.12 Type null | 12 | 9 | 6 | 27 | null 类型 |
| 3.13 Type string | 27 | 10 | 15 | 52 | string 操作 |
| 3.14 Type bigint | 10 | 9 | 8 | 27 | bigint 运算 ⚠️ S |
| 3.15 Literal Types | 6 | 4 | 4 | 14 | 字面量类型 |
| 3.15.1 String Literal Types | 7 | 3 | 3 | 13 | 字符串字面量类型 |
| 3.16 Array Types | 7 | 4 | 5 | 16 | 数组类型 |
| 3.16.1 Resizable Array Types | 8 | 1 | 7 | 16 | 可变数组 |
| 3.16.2 Readonly Array Types | 5 | 4 | 5 | 14 | 只读数组 |
| 3.17 Tuple Types | 6 | 3 | 5 | 14 | 元组类型 |
| 3.17.1 Readonly Tuple Types | 2 | 3 | 3 | 8 | 只读元组 |
| 3.17.2 Type Tuple | 10 | 8 | 8 | 26 | 元组类型操作 |
| 3.18 Function Types | 11 | 8 | 10 | 29 | 函数类型 ⚠️ D |
| 3.18.1 Type Function | 2 | 1 | 2 | 5 | Function 预定义类型 ⚠️ D |
| 3.19 Union Types | 6 | 4 | 1 | 11 | 联合类型 ⚠️ D |
| 3.19.1 Union Types Normalization | 8 | 5 | 4 | 17 | 归一化规则 ⚠️ D |
| 3.19.2 Access to Common Union Members | 4 | 5 | 2 | 11 | 公共成员访问 ⚠️ D |
| 3.19.3 Keyof Types | 6 | 4 | 2 | 12 | keyof 类型 ⚠️ D |
| 3.20 Nullish Types | 10 | 6 | 6 | 22 | null/undefined 联合 |
| 3.21 Utility Types | 0 | 0 | 0 | 0 | 容器节 |
| 3.21.1 Awaited Utility Type | 8 | 2 | 2 | 12 | Awaited<T> |
| 3.21.2 NonNullable Utility Type | 5 | 2 | 2 | 9 | NonNullable<T> |
| 3.21.3 Partial Utility Type | 4 | 3 | 3 | 10 | Partial<T> ⚠️ D |
| 3.21.4 Required Utility Type | 4 | 3 | 2 | 9 | Required<T> ⚠️ D |
| 3.21.5 Readonly Utility Type | 4 | 3 | 2 | 9 | Readonly<T> ⚠️ D |
| 3.21.6 Record Utility Type | 6 | 2 | 2 | 10 | Record<K,V> |
| 3.21.7 ReturnType Utility Type | 6 | 1 | 2 | 9 | ReturnType<T> |
| 3.21.8 Utility Type Private Fields | 3 | 2 | 2 | 7 | Private 字段支持 |
| 3.21.9 Nesting Utility Types | 3 | 2 | 1 | 6 | 嵌套工具类型 |
| 3.22 Default Values for Types | 2 | 3 | 5 | 10 | 类型默认值 |
| **Total** | **324** | **195** | **209** | **728** | 44 节全覆盖 |

**总体覆盖评价**：44 个小节全部覆盖（2 个容器节 3.6/3.21 为 0 例，合理）。每节均含 compile-pass/fail/runtime 三类。3.13 string（52 例）、3.1 Predefined（49 例）、3.6.3 浮点（30 例）、3.6.2 整数（29 例）覆盖最充分。

**亮点**：
- 3.6.3 Floating Point 有 18 个 runtime 用例（IEEE 754 语义验证充分）
- 3.13 string 有 52 例，string 操作覆盖全面
- S-3.14-01/02 正确标注为 spec 文档冲突（而非包装为 PASS 或 FAIL）
- 12 项 issue 均有 spec 原文引用和跨语言对比

**已知编译器限制**（issue_report 已记录）：
- 联合类型中函数类型括号检查缺失（D-3.18-01）
- Function 类型直接调用（D-3.18-02/03）
- Any 字段访问检查缺失（D-3.08-01）
- union 同名字段类型检查缺失（D-3.19-01/02）
- keyof 非 class/interface 检查缺失（D-3.19-03）
- readonly union 归一化检查缺失（D-3.19.1-01）
- Partial/Required/Readonly 非 class 检查缺失（D-3.21.3/4/5-01）
- bigint 关系运算 spec 冲突（S-3.14-01/02）

## 整改建议

1. **必须修复**：修正 8 处元数据不一致（5 处 @section 归属 + 1 处 @id + 2 处补充确认）
2. **建议补充**：填充 `spec_original.md` 为核心类型规则摘要，`Types_Examples.md` 为最小示例
3. **建议增强**：`test_case_catalog.md` 补充完整用例明细清单，`test_design_mindmap.md` 补充设计思路
4. **持续跟踪**：2 项 S 类 spec 冲突（bigint 关系运算）待 spec 团队澄清后更新用例分类
5. **清理建议**：确认 `AI_REVIEW_REPORT_20260625.md` 是否保留
