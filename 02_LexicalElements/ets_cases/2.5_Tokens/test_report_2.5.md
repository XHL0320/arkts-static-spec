# 2.5 Tokens - 测试执行报告（v2 - 含真实 runtime 执行）

**测试日期：** 2026-06-15
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04
**运行脚本：** `02_LexicalElements/run_lexicalelements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 26 | 26 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| **runtime（真实执行）** | **5** | **5** | **0** | **100%** |
| **总计** | **35** | **35** | **0** | **100%** |

---

## 4 类 Token 覆盖矩阵

| Token 类别 | 用例编号 | 覆盖范围 |
|-----------|---------|---------|
| Identifiers | 001~004 | 简单/含数字/含 $/含 _ |
| Keywords | 005~008 | 声明/控制流/类型声明/跳转 |
| Operators | 009~013 | 算术/比较/逻辑/赋值/位运算 |
| Punctuators | 014 | () [] {} , ; : . |
| Literals | 015~019 | 整数/浮点/字符串/布尔/null-undefined |

---

## 最长匹配（Longest Match）覆盖

| 场景 | 用例 | 验证 Token |
|------|------|-----------|
| 三等于 | 020 | `===` 不拆 `==` `=` |
| 无符号右移 | 021 | `>>>` 不拆 `>>` `>` |
| 空值合并/可选链 | 022 | `??` `?.` |
| 箭头函数 | 023 | `=>` |
| 自增自减 | 024 | `++` `--` |

---

## 详细结果

### compile-pass（26 个，001~026）

| 编号 | 文件 | 验证内容 |
|------|------|---------|
| 001 | PASS_IDENTIFIER_SIMPLE | 简单字母标识符 |
| 002 | PASS_IDENTIFIER_WITH_DIGITS | 含数字标识符 |
| 003 | PASS_IDENTIFIER_DOLLAR | 含 $ 标识符 |
| 004 | PASS_IDENTIFIER_UNDERSCORE | 含 _ 标识符 |
| 005 | PASS_KEYWORD_DECLARATION | let/const 关键字 |
| 006 | PASS_KEYWORD_CONTROL_FLOW | if/else/while/for |
| 007 | PASS_KEYWORD_TYPE_DECL | class/interface/enum |
| 008 | PASS_KEYWORD_RETURN_BREAK | return/break/continue |
| 009 | PASS_OP_ARITHMETIC | + - * / % |
| 010 | PASS_OP_COMPARISON | == != < > <= >= |
| 011 | PASS_OP_LOGICAL | && \|\| ! |
| 012 | PASS_OP_ASSIGNMENT | = += -= *= /= %= |
| 013 | PASS_OP_BITWISE | & \| ^ ~ << >> >>> |
| 014 | PASS_PUNCTUATORS | () [] {} , ; : . |
| 015 | PASS_LITERAL_INTEGER | 十进制/十六进制/八进制/二进制 |
| 016 | PASS_LITERAL_FLOAT | 3.14, 1e10, f 后缀 |
| 017 | PASS_LITERAL_STRING | 单引号/双引号/模板 |
| 018 | PASS_LITERAL_BOOLEAN | true/false |
| 019 | PASS_LITERAL_NULL_UNDEFINED | null/undefined |
| 020 | PASS_LONGEST_MATCH_TRIPLE_EQ | === |
| 021 | PASS_LONGEST_MATCH_SHIFT | >>> |
| 022 | PASS_LONGEST_MATCH_NULLISH | ?? ?. |
| 023 | PASS_LONGEST_MATCH_ARROW | => |
| 024 | PASS_LONGEST_MATCH_INC_DEC | ++ -- |
| 025 | PASS_TOKENS_DIRECT_CONNECT | a+b*(c-d)/e%f |
| 026 | PASS_TOKEN_STREAM_MIXED | 4 类 Token 混合 |

### compile-fail（4 个，027~030）

| 编号 | 文件 | 验证内容 | 编译器报错 |
|------|------|---------|-----------|
| 027 | FAIL_NUMBER_THEN_LETTERS | 123abc 数字后接字母 | ✅ |
| 028 | FAIL_INVALID_AT_CHAR | @ 在表达式位置 | ✅ |
| 029 | FAIL_UNTERMINATED_STRING | 未闭合字符串 | ✅ |
| 030 | FAIL_INVALID_ESCAPE | \uZZZZ 非法转义 | ✅ |

### runtime（5 个，031~035，**真实 ark VM 执行 + assert**）

| 编号 | 文件 | 验证内容 | 断言数 |
|------|------|---------|-------|
| 031 | RT_LONGEST_MATCH_EQUALITY | === / == 语义验证 | 2 |
| 032 | RT_BITWISE_OPS | & \| ^ << >> 运算结果 | 5 |
| 033 | RT_LITERAL_VALUES | hex/oct/bin 字面量值 | 3 |
| 034 | RT_COMPOUND_ASSIGNMENT | += -= *= /= %= | 5 |
| 035 | RT_KEYWORD_CONTROL | for/if/break/continue 控制流 | 1 |

---

## 关键验证

### Spec 要求验证

| spec 要求 | 验证用例 | 状态 |
|----------|---------|------|
| 4 类 Token 完整覆盖 | 001~019 | ✅ |
| 最长匹配原则 | 020~024 | ✅ |
| Token 之间无需空白 | 025~026 | ✅ |
| 数字与标识符不可粘连 | 027 | ✅ |
| 不可识别字符报错 | 028 | ✅ |
| 字面量必须闭合 | 029 | ✅ |

### 运行命令

```bash
cd /mnt/e/spec_git/ARKTS_STATIC_TEST/02_LexicalElements
SECTIONS="2.5_Tokens" bash run_lexicalelements_cases_wsl.sh
```

---

## 累计进度

| 章节 | 用例数 | runtime 真实执行 | 通过率 |
|------|--------|----------------|--------|
| 2.1 Use of Unicode Characters | 30 | ✅ | 100% |
| 2.2 Lexical Input Elements | 25 | ✅ | 100% |
| 2.3 White Spaces | 38 | ✅ | 100% |
| 2.4 Line Separators | 29 | ✅ | 100% |
| **2.5 Tokens** | **35** | **✅** | **100%** |
| **累计** | **157** | **✅** | **100%** |
