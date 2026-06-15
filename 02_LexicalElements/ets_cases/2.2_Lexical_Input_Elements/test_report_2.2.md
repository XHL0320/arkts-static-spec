# 2.2 Lexical Input Elements - 测试执行报告（v2 - 含真实 runtime 执行）

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
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| **runtime（真实执行）** | **7** | **7** | **0** | **100%** |
| **总计** | **25** | **25** | **0** | **100%** |

---

## 详细结果

### compile-pass（12个，001~012）
验证四类词法输入元素（White Spaces、Line Separators、Tokens、Comments）在合法组合下的编译通过。

### compile-fail（6个，013~018）
验证非法词法输入元素组合产生编译错误：
- 无空白符导致Token合并（letx、123abc）
- 字符串字面量内未转义换行
- 未闭合的多行注释
- 嵌套注释

### runtime（7个，019~025，**真实 ark VM 执行 + assert**）
验证词法输入元素组合不影响运行时语义：
- 空白分隔运算结果一致性
- 注释不影响变量值
- 多行表达式结果正确
- Token识别边界

---

## 用例索引

| 编号 | 文件 | 验证内容 |
|------|------|---------|
| 001 | PASS_FOUR_ELEMENT_TYPES | 四类元素共存一行 |
| 002 | PASS_MULTI_LINE_MIXED | 多行混合四类元素 |
| 003 | PASS_WHITESPACE_SEPARATOR | 空白符分隔Token |
| 004 | PASS_OPERATOR_WHITESPACE | 运算符间空白灵活度 |
| 005 | PASS_LINE_SEP_STATEMENTS | 换行分隔语句 |
| 006 | PASS_LINE_IN_EXPRESSION | 括号内换行 |
| 007 | PASS_SINGLE_LINE_COMMENT | 单行注释 |
| 008 | PASS_MULTI_LINE_COMMENT | 多行注释 |
| 009 | PASS_COMMENT_AS_SEPARATOR | 注释替代空白符分隔Token |
| 010 | PASS_CONSECUTIVE_TOKENS | 连续Token无分隔 |
| 011 | FAIL_NO_WHITESPACE_LETX | 无空白导致标识符合并 |
| 012 | FAIL_NO_WHITESPACE_NUMID | 数字与标识符合并 |
| 013 | FAIL_STRING_UNESCAPED_NEWLINE | 字符串内未转义换行 |
| 014 | FAIL_UNTERMINATED_COMMENT | 未闭合多行注释 |
| 015 | FAIL_SINGLE_LINE_COMMENT_WRAP | 单行注释代码延续 |
| 016 | FAIL_EMPTY_TOKEN_STREAM | 仅含无效字符 |
| 017 | RT_WHITESPACE_ARITH_RESULT | 空白分隔运算一致性 |
| 018 | RT_COMMENT_NO_EFFECT | 注释不影响变量值 |
| 019 | RT_MULTI_LINE_EXPR_RESULT | 多行表达式结果 |
| 020 | RT_CONSECUTIVE_EMPTY_LINES | 连续空行不影响执行 |
| 021 | RT_COMMENT_INSIDE_EXPR | 表达式内注释不影响结果 |
| 022 | RT_TOKEN_BOUNDARY | Token边界识别正确性 |
| 023 | RT_LINE_SEP_MULTI_STMT | 换行分隔多语句执行顺序 |
