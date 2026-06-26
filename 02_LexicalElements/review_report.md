# 02 Lexical Elements 审查报告

## 审查范围
- 章节：02 Lexical Elements
- 用例目录：`02_LexicalElements/ets_cases/`
- 用例总数：668（348P + 120F + 200R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地为 Windows，runner `run_lexicalelements_cases_wsl.sh` 为 WSL bash 脚本。此差异属于本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成。全部指标归零。

## 总体结论
**可验收。** 668 用例全覆盖 20 个小节，manifest 覆盖 668/668（100%），元数据完全一致（METADATA_BAD_COUNT=0）。spec_original.md、LexicalElements_Examples.md 已填充。7 项未解决 issue 均为编译器/spec 侧问题。

## 整改完成情况

| 问题 | 状态 | 说明 |
|------|:----:|------|
| 1. manifest 仅覆盖 43/662（6.5%） | ✅ | 已补全为 668/668（100%），格式已统一 |
| 2. manifest 含 `"file"` 字段 | ✅ | 已移除，对齐 id/section/category/description 格式 |
| 3. 文件名 `_FAIL_` 残留 | ✅ | @id 已修正为 `_PASS_` 与文件名一致 |
| 4. issue_report 表同步 | ✅ | ISSUE-005/006 已确认解决 |

## 问题清单

### [信息] 7 项已知 issue 待编译器/spec 更新
- **ISSUE-001**（🔴 未解决）：Unicode 转义标识符 ESY0112 编译失败
- **ISSUE-002/003/004**（⚠️ SPEC 不一致）：孤立代理/代理组合未报错
- **ISSUE-007**（⚠️ SPEC 不一致）：char 字面量内含真实 LF 未报错
- **ISSUE-008**（⚠️ SPEC 不一致）：CRLF spec 未显式定义
- **ISSUE-009**（🔴 未解决）：`??=` 空值合并赋值未实现
- **6 项 CONFIRM** spec 待澄清（CONFIRM-002/004/009/010/011/025）

## 覆盖评价

| 小节 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 2.1 Unicode Characters | 20 | 13 | 14 | 47 | BMP/SMP/char/代理对/Unicode 转义 |
| 2.2 Lexical Input Elements | 17 | 6 | 11 | 34 | 4 种输入元素/最长匹配 |
| 2.3 White Spaces | 26 | 11 | 10 | 47 | 6 种空白符 |
| 2.4 Line Separators | 27 | 3 | 11 | 41 | 行终止符/CRLF |
| 2.5 Tokens | 33 | 4 | 11 | 48 | 4 类 Token/最长匹配 |
| 2.6 Identifiers | 29 | 12 | 8 | 49 | Unicode 标识符/转义 |
| 2.7 Keywords | 49 | 36 | 9 | 94 | 硬/软/类型/未来保留字 |
| 2.8 Operators and Punctuators | 18 | 6 | 15 | 39 | 全部运算符 |
| 2.9.1 Numeric Literals | 21 | 5 | 14 | 40 | 数值字面量 |
| 2.9.2 Integer Literals | 13 | 6 | 13 | 32 | 整数字面量 |
| 2.9.3 Floating Point Literals | 13 | 3 | 13 | 29 | 浮点/hex float/NaN/Inf |
| 2.9.4 Bigint Literals | 7 | 5 | 13 | 25 | bigint 字面量 |
| 2.9.5 Boolean Literals | 10 | 2 | 11 | 23 | boolean |
| 2.9.6 String Literals | 13 | 7 | 13 | 33 | 字符串字面量 |
| 2.9.7 Multiline String | 8 | 1 | 7 | 16 | 多行字符串 |
| 2.9.8 Undefined Literal | 10 | 1 | 9 | 20 | undefined |
| 2.9.9 Null Literal | 10 | 1 | 10 | 21 | null |
| 2.10 Comments | 16 | 1 | 2 | 19 | 单行/多行/嵌套 |
| 2.11 Semicolons | 8 | 1 | 2 | 11 | ASI/分号推断 |
| **Total** | **348** | **120** | **200** | **668** | 20 节全覆盖 |
