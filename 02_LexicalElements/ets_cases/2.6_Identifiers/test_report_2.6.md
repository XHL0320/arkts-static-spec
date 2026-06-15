# 2.6 Identifiers - 测试执行报告（v2 - 含真实 runtime 执行）

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
| compile-pass | 23 | 23 | 0 | 100% |
| compile-fail | 11 | 11 | 0 | 100% |
| **runtime（真实执行）** | **5** | **5** | **0** | **100%** |
| **总计** | **39** | **39** | **0** | **100%** |

---

## Spec 文法元素覆盖矩阵

### IdentifierStart 全覆盖

| 类别 | 用例 | 示例 |
|------|------|------|
| Lu (Uppercase) | 001 | A, B, Z, MyName |
| Ll (Lowercase) | 002 | a, b, z, myName |
| Lt (Titlecase) | 003 | \u01C5 (ǅ), \u01C8 (ǈ) |
| Lm (Modifier) | 004 | \u02B0 (ʰ), \u02B1 |
| Lo (Other) | 005 | 中文、ひらがな、한글、阿拉伯、希伯来 |
| `$` | 006 | $x, $foo, $, $$ |
| `_` | 007 | _x, _foo, _, __init__ |
| `\uHHHH` 转义 | 008 | \u0041, \u0042VAL, \u4E2D |
| `\u{...}` 转义 | 009 | \u{41}, \u{0042}val, \u{4E2D} |

### IdentifierPart 全覆盖

| 类别 | 用例 | 示例 |
|------|------|------|
| UnicodeIDStart 同上 | 001~009 | (后续位置同样合法) |
| Nd (Decimal Digit) | 010 | v0, v9, var123 |
| ZWJ (U+200D) | 011 | a + ZWJ + b |
| ZWNJ (U+200C) | 012 | a + ZWNJ + b |
| `\uHHHH` 转义 in part | 013 | a\u0042c |
| `\u{...}` 转义 in part | 014 | a\u{42}c |
| 混合组合 | 015~017 | a1b, x2y3z, MyName中文123 |

---

## 详细结果

### compile-pass（23 个，001~023）

| 编号 | 文件 | 验证内容 |
|------|------|---------|
| 001 | PASS_LU_LETTER_START | Lu 类大写字母 |
| 002 | PASS_LL_LETTER_START | Ll 类小写字母 |
| 003 | PASS_LT_LETTER_START | Lt 类标题字母（U+01C5）|
| 004 | PASS_LM_LETTER_START | Lm 类修饰字母（U+02B0）|
| 005 | PASS_LO_LETTER_START | Lo 类其他字母（多语言）|
| 006 | PASS_DOLLAR_START | $ 起始 |
| 007 | PASS_UNDERSCORE_START | _ 起始 |
| 008 | PASS_UESCAPE_4HEX_START | \\uHHHH 转义起始 |
| 009 | PASS_UESCAPE_BRACE_START | \\u{...} 扩展转义起始 |
| 010 | PASS_DIGIT_IN_PART | Nd 在中部 |
| 011 | PASS_ZWJ_IN_PART | ZWJ 在中部 |
| 012 | PASS_ZWNJ_IN_PART | ZWNJ 在中部 |
| 013 | PASS_UESCAPE_IN_PART | \\u 转义在中部 |
| 014 | PASS_UESCAPE_BRACE_IN_PART | \\u{...} 在中部 |
| 015 | PASS_LETTER_DIGIT_MIX | Letter+Digit 混合 |
| 016 | PASS_LETTER_ZWJ_LETTER | a+ZWJ+b vs a+ZWNJ+b |
| 017 | PASS_MIXED_UNICODE_CATS | 多类别混合 |
| 018 | PASS_CLASS_NAME | Unicode 类名 |
| 019 | PASS_INTERFACE_NAME | Unicode 接口名 |
| 020 | PASS_FUNC_PARAM_NAME | Unicode 函数/参数名 |
| 021 | PASS_FIELD_METHOD_NAME | Unicode 字段/方法名 |
| 022 | PASS_ENUM_NAME_MEMBERS | Unicode 枚举名/成员名 |
| 023 | PASS_NAMESPACE_NAME | Unicode 命名空间名 |

### compile-fail（11 个，024~034）

| 编号 | 文件 | 验证内容 |
|------|------|---------|
| 024 | FAIL_DIGIT_START | ASCII 数字开头 |
| 025 | FAIL_OPERATOR_START | 运算符字符开头 |
| 026 | FAIL_UNICODE_DIGIT_START | Unicode Nd 字符开头 |
| 027 | FAIL_SPACE_IN_IDENTIFIER | 空格在标识符中 |
| 028 | FAIL_HYPHEN_IN_IDENTIFIER | 连字符在标识符中 |
| 029 | FAIL_DOT_IN_IDENTIFIER | 点在标识符中 |
| 030 | FAIL_HARD_KEYWORD | class 作标识符 |
| 031 | FAIL_TYPE_KEYWORD | int 作标识符 |
| 032 | FAIL_UESCAPE_DIGIT_START | \\u0030 (=0) 作起始 |
| 033 | FAIL_UESCAPE_LONE_SURROGATE | \\uD800 孤立代理 |
| 034 | FAIL_EMPTY_BRACE_ESCAPE | \\u{} 空 |

### runtime（5 个，035~039，**真实 ark VM 执行 + assert**）

| 编号 | 文件 | 验证内容 | 断言数 |
|------|------|---------|-------|
| 035 | RT_UESCAPE_EQUIVALENCE | \\u0041 ≡ A 共享变量 | 1 |
| 036 | RT_UNICODE_VALUE | 中/日 标识符运行时 | 2 |
| 037 | RT_ZWJ_IDENTIFIER | ZWJ ≠ ZWNJ 不同变量 | 2 |
| 038 | RT_MULTILANG_IDENT | 4 语言标识符共存 | 1 |
| 039 | RT_DIGIT_IDENTIFIER | v0/v1/var123abc | 1 |

---

## 累计进度

| 章节 | 用例数 | runtime 真实执行 | 通过率 |
|------|--------|----------------|--------|
| 2.1 Use of Unicode Characters | 30 | ✅ | 100% |
| 2.2 Lexical Input Elements | 25 | ✅ | 100% |
| 2.3 White Spaces | 38 | ✅ | 100% |
| 2.4 Line Separators | 29 | ✅ | 100% |
| 2.5 Tokens | 35 | ✅ | 100% |
| **2.6 Identifiers** | **39** | **✅** | **100%** |
| **累计** | **196** | **✅** | **100%** |
