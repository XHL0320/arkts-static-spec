# 02 Lexical Elements Test Case Catalog

**总用例数：** 720（410P + 176F + 210R）

| Section | compile-pass | compile-fail | runtime | Total |
|---|---:|---:|---:|---:|
| 2.1 Use of Unicode Characters | 20 | 12 | 14 | 46 |
| 2.2 Lexical Input Elements | 17 | 6 | 11 | 34 |
| 2.3 White Spaces | 26 | 11 | 10 | 47 |
| 2.4 Line Separators | 27 | 3 | 11 | 41 |
| 2.5 Tokens | 33 | 4 | 11 | 48 |
| 2.6 Identifiers | 29 | 12 | 8 | 49 |
| 2.7 Keywords | 49 | 50 | 9 | 108 |
| 2.8 Operators and Punctuators | 18 | 6 | 15 | 39 |
| 2.9 Literals (container) | 0 | 0 | 0 | 0 |
| 2.9.1 Numeric Literals | 21 | 5 | 14 | 40 |
| 2.9.2 Integer Literals | 13 | 4 | 13 | 30 |
| 2.9.3 Floating Point Literals | 13 | 5 | 13 | 31 |
| 2.9.4 Bigint Literals | 7 | 5 | 13 | 25 |
| 2.9.5 Boolean Literals | 10 | 2 | 11 | 23 |
| 2.9.6 String Literals | 13 | 5 | 13 | 31 |
| 2.9.7 Multiline String Literal | 8 | 1 | 7 | 16 |
| 2.9.8 Undefined Literal | 10 | 1 | 9 | 20 |
| 2.9.9 Null Literal | 10 | 1 | 10 | 21 |
| 2.10 Comments | 16 | 1 | 2 | 19 |
| 2.11 Semicolons | 8 | 1 | 2 | 11 |
| **Total** | **410** | **176** | **210** | **720** |

## 本次整改

- 补全 `test_manifest.json`「cases」数组为 720 条覆盖全部用例
- 重命名 `LEX_02_01_018_FAIL_CHAR_RELATIONAL_OP.ets` → `_PASS_`
- 重命名 `LEX_02_01_019_FAIL_CHAR_COMPARE_NUMBER.ets` → `_PASS_`
- 新增覆盖缺口：整数下划线边界（016/017）、bigint 下划线边界（014）、char `\u{FFFFF}`（040）、字符串 `\2` / `\9`（013/014）
