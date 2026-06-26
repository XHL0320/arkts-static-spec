# 02 Lexical Elements Issue Report

**最后更新：** 2026-06-23

## 未解决异常列表

| ID | 章节 | Case | Symptom | Expected | Actual | Status |
|---|---|---|---|---|---|---|
| ISSUE-001 | 2.1 | LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER.ets | Syntax error ESY0112: Unexpected token, expected an identifier | compile-pass | compile-fail | 🔴 未解决 |
| ISSUE-002 | 2.1 | LEX_02_01_012_FAIL_LONE_HIGH_SURROGATE.ets | 孤立高代理编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-003 | 2.1 | LEX_02_01_013_FAIL_LONE_LOW_SURROGATE.ets | 孤立低代理编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-004 | 2.1 | LEX_02_01_014_FAIL_HIGH_SURROGATE_NO_LOW.ets | 高代理后跟 BMP 字符编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-005 | 2.1 | LEX_02_01_018_FAIL_CHAR_RELATIONAL_OP.ets | char 关系运算符编译通过 | compile-fail | compile-pass | ⚠️ cookbook/spec 冲突 |
| ISSUE-006 | 2.1 | LEX_02_01_019_FAIL_CHAR_COMPARE_NUMBER.ets | char 与 number 比较编译通过 | compile-fail | compile-pass | ⚠️ cookbook/spec 冲突 |
| ISSUE-007 | 2.4 | LEX_02_04_022_PASS_LF_IN_CHAR_LITERAL.ets | char 字面量内允许真实 LF | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-008 | 2.4 | LEX_02_04_005_PASS_CRLF_SEPARATOR.ets | CRLF 在 spec 中未单独定义为序列 | 显式定义 | 隐含支持 | ⚠️ SPEC 不一致 |
| ISSUE-009 | 2.8 | LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets | Syntax error ESY0227: Unexpected token '??=' | runtime | compile-fail | 🔴 未解决 |

---

## 待确认问题 Spec 核查结论

### 核查汇总

原 `CONFIRM-001` ~ `CONFIRM-055` 已对照 `spec/lexical.md`、`spec/types.md`、`spec/expressions.md`、`spec/statements.md`、`spec/semantics.md`、`spec/experimental.md` 核查。

| 结论类型 | 数量 | ID |
|---|---:|---|
| Spec 未明确，保留待确认 | 6 | CONFIRM-002, 004, 009, 010, 011, 025 |
| 需按执行异常/Spec不一致另行跟踪 | 3 | CONFIRM-001, 012, 023 |

### 仍需保留的待确认项

| ID | 问题描述 | Spec 核查结论 | 状态 |
|---|---|---|---|
| CONFIRM-002 | 注释是否可作为 Token 分隔符 | `lexical.md` 定义 Comment 是 lexical input element 且 ignored，但未直接说明 Comment 是否与 WhiteSpace 等价作为 token separator | ⚠️ 待确认 |
| CONFIRM-004 | ZWNBSP 双重身份的语义边界 | `lexical.md` 仅将 U+FEFF 列为 White Space，未定义 BOM 与文件中部空白符的边界 | ⚠️ 待确认 |
| CONFIRM-009 | 最长匹配原则与 char 字面量交互 | `lexical.md` 有 longest token rule；char literal 在 `experimental.md`，两者交互未集中说明 | ⚠️ 待确认 |
| CONFIRM-010 | 装饰器 `@` 字符的 Token 归类 | `annotations.md` 定义 `@`/`@interface` 语法，但 `lexical.md` operators/punctuators 表未列 `@` | ⚠️ 待确认 |
| CONFIRM-011 | Unicode 类别未详尽列出 | `lexical.md` 引用 Unicode ID_Start/ID_Continue 与 Grammar Summary，但 `grammar.md` 未展开完整类别表 | ⚠️ 待确认 |
| CONFIRM-025 | NaN/Infinity 检测方法 | `types.md`/`expressions.md` 明确 NaN/Infinity 语义，但标准库检测 API 未在当前 spec 文档明确 | ⚠️ 待确认 |


---

## 异常详情

### ISSUE-001: Unicode 转义标识符编译失败

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-pass/LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER.ets`

**错误信息：**
```
[LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER.ets:11:7] Syntax error ESY0112: Unexpected token, expected an identifier.
```

**预期行为：** Unicode 转义序列应能用于标识符名称
**实际行为：** 编译器拒绝 Unicode 转义标识符

**可能原因：**
- 编译器未完全支持 Unicode 转义标识符
- 用例语法不符合当前编译器实现

**状态：** 🔴 待编译器更新或用例修改

---

### ISSUE-002: 孤立高代理编译通过 ⚠️ SPEC 不一致

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-fail/LEX_02_01_012_FAIL_LONE_HIGH_SURROGATE.ets`

**错误信息：** 无（编译通过）

**预期行为：** Unicode 规范要求代理必须成对使用，孤立高代理应编译失败
**实际行为：** 编译器允许孤立高代理存在

**规范依据：**
- spec/experimental.md: 未明确定义孤立代理规则
- Unicode 规范 UAX #16: 要求代理必须成对使用

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let s: string = "\uD800"` | ⚠️ 编译通过 |
| Java | `String s = "\uD800";` | ✅ 编译通过 |
| Swift | `let s = "\u{D800}"` | ❌ 编译错误 |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

---

### ISSUE-003: 孤立低代理编译通过 ⚠️ SPEC 不一致

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-fail/LEX_02_01_013_FAIL_LONE_LOW_SURROGATE.ets`

**错误信息：** 无（编译通过）

**预期行为：** Unicode 规范要求代理必须成对使用，孤立低代理应编译失败
**实际行为：** 编译器允许孤立低代理存在

**规范依据：**
- spec/experimental.md: 未明确定义孤立代理规则
- Unicode 规范 UAX #16: 要求代理必须成对使用

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let s: string = "\uDC00"` | ⚠️ 编译通过 |
| Java | `String s = "\uDC00";` | ✅ 编译通过 |
| Swift | `let s = "\u{DC00}"` | ❌ 编译错误 |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

---

### ISSUE-004: 高代理后跟 BMP 字符编译通过 ⚠️ SPEC 不一致

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-fail/LEX_02_01_014_FAIL_HIGH_SURROGATE_NO_LOW.ets`

**错误信息：** 无（编译通过）

**预期行为：** Unicode 规范要求高代理后必须跟低代理，不能跟 BMP 字符
**实际行为：** 编译器允许高代理后跟 BMP 字符

**规范依据：**
- spec/experimental.md: 未明确定义代理组合规则
- Unicode 规范 UAX #16: 要求高代理后必须跟低代理

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let s: string = "\uD800A"` | ⚠️ 编译通过 |
| Java | `String s = "\uD800A";` | ✅ 编译通过 |
| Swift | `let s = "\u{D800}A"` | ❌ 编译错误 |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

---

### ISSUE-005: char 关系运算符编译通过 ⚠️ cookbook/spec 冲突

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-fail/LEX_02_01_018_FAIL_CHAR_RELATIONAL_OP.ets`

**错误信息：** 无（编译通过）

**预期行为：** cookbook/compatibility.md 明确禁止 char 关系运算符，应编译失败
**实际行为：** 编译器允许 char 关系运算符（与 spec 一致）

**规范依据：**
- spec/experimental.md 第122-128行: Equality operators and relational operators can be used if both operands are of char type or one operand is of char type and other is of a numeric type.
- cookbook/compatibility.md: ❌ 禁止 char 关系运算符
- **结论：spec 权威高于 cookbook，编译器行为与 spec 一致**

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let r: boolean = c'A' < c'B'` | ✅ 编译通过（符合 spec） |
| Java | `boolean r = 'A' < 'B';` | ✅ 编译通过 |
| Swift | `let r = Character("A") < Character("B")` | ❌ 编译错误 |

**状态：** ⚠️ cookbook/spec 冲突（编译器行为符合 spec，用例 @expect 应修正为 compile-pass）

---

### ISSUE-006: char 与 number 比较编译通过 ⚠️ cookbook/spec 冲突

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-fail/LEX_02_01_019_FAIL_CHAR_COMPARE_NUMBER.ets`

**错误信息：** 无（编译通过）

**预期行为：** cookbook/compatibility.md 明确禁止 char→number widening，应编译失败
**实际行为：** 编译器允许 char 与 number 比较（与 spec 一致）

**规范依据：**
- spec/experimental.md 第122-128行: Equality operators and relational operators can be used if one operand is of char type and other is of a numeric type.
- cookbook/compatibility.md: ❌ 禁止 char→number widening
- **结论：spec 权威高于 cookbook，编译器行为与 spec 一致**

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let r: boolean = c'A' == 65` | ✅ 编译通过（符合 spec） |
| Java | `boolean r = 'A' == 65;` | ✅ 编译通过 |
| Swift | `let r = Character("A") == 65` | ❌ 编译错误 |

**状态：** ⚠️ cookbook/spec 冲突（编译器行为符合 spec，用例 @expect 应修正为 compile-pass）

---

### ISSUE-007: char 字面量内允许真实 LF ⚠️ SPEC 不一致

**所属章节：** 2.4 Line Separators
**用例文件：** `2.4_Line_Separators/compile-pass/LEX_02_04_022_PASS_LF_IN_CHAR_LITERAL.ets`

**错误信息：** 无（编译通过）

**预期行为：** char 字面量应禁止跨行（与字符串字面量一致），强制使用转义序列 `c'\n'`
**实际行为：** 编译器允许 char 字面量内含真实 LF

**规范依据：**
- spec/lexical.md: 未明确定义 char 字面量跨行规则
- 字符串字面量行为: 单/双引号字符串内含真实 LF 编译失败

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let ch: char = c'<LF>'` | ⚠️ 编译通过 |
| Java | `char ch = '<LF>';` | ❌ 编译错误 |
| Swift | N/A | N/A |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

---

### ISSUE-008: CRLF 在 spec 中未单独定义为序列 ⚠️ SPEC 不一致

**所属章节：** 2.4 Line Separators
**用例文件：** `2.4_Line_Separators/compile-pass/LEX_02_04_005_PASS_CRLF_SEPARATOR.ets`

**错误信息：** 无（编译通过）

**预期行为：** spec 应显式定义 CRLF 序列为单一行终止符
**实际行为：** spec 隐含支持，未显式定义

**规范依据：**
- spec/lexical.md: 列出 4 种独立行终止符，声明 "Any sequence of line separators is considered a single separator"
- Java JLS §3.4: 显式 LineTerminatorSequence 产生式

**跨语言对比：**
| 语言 | CRLF 在 spec 中 | 规范依据 |
|------|--------------|---------|
| ArkTS | ⚠️ 隐含支持 | spec/lexical.md |
| Java | ✅ 显式定义 | JLS §3.4 |
| Swift | ✅ 显式定义 | Swift Lang |

**状态：** ⚠️ D 类异常（Spec 缺乏显式定义可能引发误解）

---

### ISSUE-009: 空值合并赋值运算符编译失败

**所属章节：** 2.8 Operators and Punctuators
**用例文件：** `2.8_Operators_and_Punctuators/runtime/LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets`

**错误信息：**
```
[LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets:16:11] Syntax error ESY0227: Unexpected token '??='.
```

**预期行为：** `??=` 空值合并赋值运算符应能正常使用
**实际行为：** 编译器不支持 `??=` 运算符

**可能原因：**
- 编译器尚未实现 `??=` 运算符
- 该语法特性可能在后续版本中支持

**状态：** 🔴 待编译器更新

---

## 异常统计

| 状态 | 数量 |
|------|------|
| 🔴 未解决 | 2 |
| ⚠️ SPEC 不一致 | 5 |
| ⚠️ cookbook/spec 冲突 | 2 |
| ⚠️ 待确认（Spec 未明确） | 6 |

| 🔁 转执行异常/Spec不一致跟踪 | 3 |

---

## 待确认项分布（核查后）

| 章节 | 待确认项 | ID |
|------|:--:|----|
| 2.2 Lexical Input Elements | 1 | CONFIRM-002 |
| 2.3 White Spaces | 1 | CONFIRM-004 |
| 2.5 Tokens | 2 | CONFIRM-009, CONFIRM-010 |
| 2.6 Identifiers | 1 | CONFIRM-011 |
| 2.9.3 Floating-Point Literals | 1 | CONFIRM-025 |
| **总计** | **6** | — |

---

**报告生成人：** OpenCode
**最后更新：** 2026-06-24
