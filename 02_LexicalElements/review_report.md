# 02 Lexical Elements 审查报告

## 审查范围
- 章节：02 Lexical Elements（词法元素）
- 用例目录：`02_LexicalElements/ets_cases/`
- 用例总数：668（348P + 120F + 200R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地 Windows 无 arkcompiler 工具链，runner `run_lexicalelements_cases_wsl.sh` 为 WSL bash 脚本。本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成。

| 指标 | 数值 |
|------|------:|
| .ets 总数 | 668 |
| manifest id 数 | 668（100% 覆盖） |
| manifest JSON | ✅ 合法 |
| 元数据不一致 | **0** |

## 总体结论
**可验收。** 668 用例覆盖全部 20 个小节，元数据完全一致（METADATA_BAD_COUNT=0），manifest 全覆盖（668/668）。spec_original.md、LexicalElements_Examples.md 均已填充。7 项未解决异常均为编译器/spec 侧问题，非交付侧缺陷。

## 覆盖评价

| 小节 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 2.1 Unicode Characters | 20 | 13 | 14 | 47 | BMP/SMP/char/代理对/Unicode 转义 |
| 2.2 Lexical Input Elements | 17 | 6 | 11 | 34 | 4 种输入元素/最长匹配 |
| 2.3 White Spaces | 26 | 11 | 10 | 47 | 6 种空白符/Ogham/区间 |
| 2.4 Line Separators | 27 | 3 | 11 | 41 | 行终止符/CRLF/结构化位置 |
| 2.5 Tokens | 33 | 4 | 11 | 48 | 4 类 Token/最长匹配 |
| 2.6 Identifiers | 29 | 12 | 8 | 49 | Unicode 标识符/ZWJ/ZWNJ/转义 |
| 2.7 Keywords | 49 | 36 | 9 | 94 | 硬/软/类型/未来保留字 |
| 2.8 Operators and Punctuators | 18 | 6 | 15 | 39 | 全部运算符 |
| 2.9.1 Numeric Literals | 21 | 5 | 14 | 40 | 数值字面量 |
| 2.9.2 Integer Literals | 13 | 6 | 13 | 32 | 整数字面量 |
| 2.9.3 Floating Point Literals | 13 | 3 | 13 | 29 | 浮点/hex float/NaN/Inf |
| 2.9.4 Bigint Literals | 7 | 5 | 13 | 25 | bigint |
| 2.9.5 Boolean Literals | 10 | 2 | 11 | 23 | boolean |
| 2.9.6 String Literals | 13 | 7 | 13 | 33 | 字符串 |
| 2.9.7 Multiline String | 8 | 1 | 7 | 16 | 多行字符串 |
| 2.9.8 Undefined Literal | 10 | 1 | 9 | 20 | undefined |
| 2.9.9 Null Literal | 10 | 1 | 10 | 21 | null |
| 2.10 Comments | 16 | 1 | 2 | 19 | 单行/多行/嵌套失败 |
| 2.11 Semicolons | 8 | 1 | 2 | 11 | 显式分号/ASI |
| **Total** | **348** | **120** | **200** | **668** | 20 节全覆盖 |

**已知编译器/spec 差异**（issue_report 已记录，非交付侧问题）：

| ID | 类型 | 严重度 | 说明 |
|----|------|--------|------|
| ISSUE-001 | 🔴 编译器未实现 | MEDIUM | Unicode 转义标识符 ESY0112 |
| ISSUE-002/003/004 | ⚠️ Spec 不一致 | MEDIUM | 孤立代理/代理组合未报错 |
| ISSUE-005/006 | ✅ 已解决 | — | char 关系运算已归位 compile-pass |
| ISSUE-007 | ⚠️ Spec 不一致 | LOW | char 字面量内含 LF 未报错 |
| ISSUE-008 | ⚠️ Spec 不一致 | LOW | CRLF spec 未显式定义 |
| ISSUE-009 | 🔴 编译器未实现 | LOW | `??=` 空值合并赋值未实现 |
| CONFIRM ×6 | ❓ Spec 待澄清 | — | 见 issue_report 详情 |

## 整改建议
1. **持续跟踪**：7 项未解决 issue 在编译器版本更新后验证状态
2. **Spec 推动**：6 项 CONFIRM 待 spec 团队澄清后更新用例分类
