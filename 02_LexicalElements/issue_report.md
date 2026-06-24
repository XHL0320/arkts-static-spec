# 02 Lexical Elements Issue Report

**最后更新：** 2026-06-23

## 未解决异常列表

| ID | 章节 | Case | Symptom | Expected | Actual | Status |
|---|---|---|---|---|---|---|
| ISSUE-001 | 2.1 | LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER.ets | Syntax error ESY0112: Unexpected token, expected an identifier | compile-pass | compile-fail | 🔴 未解决 |
| ISSUE-002 | 2.1 | LEX_02_01_012_FAIL_LONE_HIGH_SURROGATE.ets | 孤立高代理编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-003 | 2.1 | LEX_02_01_013_FAIL_LONE_LOW_SURROGATE.ets | 孤立低代理编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-004 | 2.1 | LEX_02_01_014_FAIL_HIGH_SURROGATE_NO_LOW.ets | 高代理后跟 BMP 字符编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-005 | 2.1 | LEX_02_01_018_FAIL_CHAR_RELATIONAL_OP.ets | char 关系运算符编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-006 | 2.1 | LEX_02_01_019_FAIL_CHAR_COMPARE_NUMBER.ets | char 与 number 比较编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-007 | 2.4 | LEX_02_04_022_PASS_LF_IN_CHAR_LITERAL.ets | char 字面量内允许真实 LF | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-008 | 2.4 | LEX_02_04_005_PASS_CRLF_SEPARATOR.ets | CRLF 在 spec 中未单独定义为序列 | 显式定义 | 隐含支持 | ⚠️ SPEC 不一致 |
| ISSUE-009 | 2.8 | LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets | Syntax error ESY0227: Unexpected token '??=' | runtime | compile-fail | 🔴 未解决 |

---

## 待确认问题

### 2.1 Use of Unicode Characters

*无待确认问题*

### 2.2 Lexical Input Elements

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-001 | ASI（自动分号插入）行为未明确 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-002 | 注释是否可作为 Token 分隔符 | spec/lexical.md | ⚠️ 待确认 |

### 2.3 White Spaces

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-003 | spec 空白符列表与 Unicode 标准不完全对齐 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-004 | ZWNBSP 双重身份的语义边界 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-005 | NBSP 易与普通空格混淆 | spec/lexical.md | ⚠️ 待确认 |

### 2.4 Line Separators

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-006 | 行终止符与 §2.11 Semicolons 的交互未充分定义 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-007 | 单行注释 // 在 LS/PS 处是否终止 | spec/lexical.md | ⚠️ 待确认 |

### 2.5 Tokens

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-008 | Spec 未列出完整的 Operator 和 Punctuator Token 表 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-009 | 最长匹配原则与 char 字面量交互未充分定义 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-010 | 装饰器 `@` 字符的 Token 归类未明确 | spec/lexical.md | ⚠️ 待确认 |

### 2.6 Identifiers

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-011 | Unicode 类别未在 spec 中详尽列出（Nl/Mn/Mc/Pc） | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-012 | Unicode 转义后的字符必须满足 ID_Start/ID_Continue 规则 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-013 | ZWJ/ZWNJ 在标识符中的使用风险 | spec/lexical.md | ⚠️ 待确认 |

### 2.7 Keywords

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-014 | catch 同时列在硬关键字表和软关键字表 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-015 | var 在未来保留软关键字表但当前禁用 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-016 | 类型关键字的别名设计冗余 | spec/types.md | ⚠️ 待确认 |

### 2.8 Operators and Punctuators

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-017 | &&= 和 ||= spec 列出但编译器未实现 | spec/operators.md | ⚠️ 待确认 |
| CONFIRM-018 | 整数除法语义未明确 | spec/expressions.md | ⚠️ 待确认 |
| CONFIRM-019 | >>> 无符号右移跨语言差异 | spec/operators.md | ⚠️ 待确认 |

### 2.9 Literals

#### 2.9.1 Numeric Literals

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-020 | bigint 与 long/Int64 的精度差异 | spec/types.md | ⚠️ 待确认 |
| CONFIRM-021 | 十六进制浮点字面量跨语言差异 | spec/lexical.md | ⚠️ 待确认 |

#### 2.9.2 Integer Literals

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-022 | int/long 类型推断规则 | spec/types.md | ⚠️ 待确认 |
| CONFIRM-023 | 边界值运算行为 | spec/types.md | ⚠️ 待确认 |

#### 2.9.3 Floating-Point Literals

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-024 | float/double 类型推断规则 | spec/types.md | ⚠️ 待确认 |
| CONFIRM-025 | 特殊值（NaN/Infinity）检测方法 | spec/types.md | ⚠️ 待确认 |

#### 2.9.4 Bigint Literals

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-026 | bigint 与 long 的区别说明 | spec/types.md | ⚠️ 待确认 |
| CONFIRM-027 | asIntN/asUintN 函数的实现方式 | spec/lexical.md | ⚠️ 待确认 |

#### 2.9.5 Boolean Literals

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-028 | 比较运算符差异（=== vs ==） | spec/operators.md | ⚠️ 待确认 |
| CONFIRM-029 | 类型名称差异（boolean vs Bool） | spec/types.md | ⚠️ 待确认 |
| CONFIRM-030 | 双重 NOT 语法差异（!! vs !(!)） | spec/operators.md | ⚠️ 待确认 |

#### 2.9.6 String Literals

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-031 | 单引号字符串支持差异 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-032 | 十六进制转义序列差异 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-033 | Unicode 转义语法差异 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-034 | 字符串长度方法差异 | spec/types.md | ⚠️ 待确认 |
| CONFIRM-035 | 字符串比较语法差异 | spec/operators.md | ⚠️ 待确认 |
| CONFIRM-036 | 字符串插值语法差异 | spec/lexical.md | ⚠️ 待确认 |

#### 2.9.7 Multiline String Literal

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-037 | 多行字符串语法差异（反引号 vs 三引号） | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-038 | 反引号处理差异 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-039 | 行续接语法差异 | spec/lexical.md | ⚠️ 待确认 |

#### 2.9.8 Undefined Literal

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-040 | 空值字面量命名差异（undefined vs null vs nil） | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-041 | 空值类型系统差异 | spec/types.md | ⚠️ 待确认 |
| CONFIRM-042 | 类型检查语法差异（typeof vs instanceof） | spec/operators.md | ⚠️ 待确认 |
| CONFIRM-043 | 比较运算符差异（=== vs ==） | spec/operators.md | ⚠️ 待确认 |
| CONFIRM-052 | 可选链语法差异（?. vs 不支持） | spec/operators.md | ⚠️ 待确认 |
| CONFIRM-053 | 空值合并语法差异（?? vs 三元运算符） | spec/operators.md | ⚠️ 待确认 |

#### 2.9.9 Null Literal

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-044 | 空值字面量命名差异（null vs nil） | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-045 | 空值类型系统差异 | spec/types.md | ⚠️ 待确认 |
| CONFIRM-046 | 类型检查语法差异（typeof vs instanceof） | spec/operators.md | ⚠️ 待确认 |
| CONFIRM-047 | 比较运算符差异（=== vs ==） | spec/operators.md | ⚠️ 待确认 |
| CONFIRM-054 | 可选链语法差异（?. vs 不支持） | spec/operators.md | ⚠️ 待确认 |
| CONFIRM-055 | 空值合并语法差异（?? vs 三元运算符） | spec/operators.md | ⚠️ 待确认 |

### 2.10 Comments

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-048 | 文档注释语法差异（/** */ vs ///） | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-049 | 注释嵌套规则差异 | spec/lexical.md | ⚠️ 待确认 |

### 2.11 Semicolons

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-050 | 行分隔符终止规则差异 | spec/lexical.md | ⚠️ 待确认 |
| CONFIRM-051 | 分号使用规则差异 | spec/lexical.md | ⚠️ 待确认 |

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

### ISSUE-005: char 关系运算符编译通过 ⚠️ SPEC 不一致

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-fail/LEX_02_01_018_FAIL_CHAR_RELATIONAL_OP.ets`

**错误信息：** 无（编译通过）

**预期行为：** cookbook/compatibility.md 明确禁止 char 关系运算符，应编译失败
**实际行为：** 编译器允许 char 关系运算符

**规范依据：**
- cookbook/compatibility.md: ❌ 禁止 char 关系运算符
- spec/experimental.md: 未明确定义 char 运算符

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let r: boolean = c'A' < c'B'` | ⚠️ 编译通过 |
| Java | `boolean r = 'A' < 'B';` | ✅ 编译通过 |
| Swift | `let r = Character("A") < Character("B")` | ❌ 编译错误 |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

---

### ISSUE-006: char 与 number 比较编译通过 ⚠️ SPEC 不一致

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-fail/LEX_02_01_019_FAIL_CHAR_COMPARE_NUMBER.ets`

**错误信息：** 无（编译通过）

**预期行为：** cookbook/compatibility.md 明确禁止 char→number widening，应编译失败
**实际行为：** 编译器允许 char 与 number 比较

**规范依据：**
- cookbook/compatibility.md: ❌ 禁止 char→number widening
- spec/experimental.md: 未明确定义 char 与 number 关系

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let r: boolean = c'A' == 65` | ⚠️ 编译通过 |
| Java | `boolean r = 'A' == 65;` | ✅ 编译通过 |
| Swift | `let r = Character("A") == 65` | ❌ 编译错误 |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

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

### CONFIRM-001: ASI（自动分号插入）行为未明确

**所属章节：** 2.2 Lexical Input Elements
**问题描述：** spec/lexical.md 未明确 ASI（Automatic Semicolon Insertion）行为。

**规范依据：**
- spec/lexical.md: 未明确 ASI 行为
- spec/statements.md: 未明确语句分隔规则

**与业界静态语言对比：**
| 语言 | ASI 行为 | 规范依据 |
|------|---------|---------|
| **ArkTS** | ⚠️ spec 未明确 | spec/lexical.md |
| **JavaScript** | ✅ 有 ASI | ECMAScript spec |
| **TypeScript** | ✅ 有 ASI | TS spec |
| **Java** | ❌ 无 ASI | JLS §3 |
| **Swift** | ❌ 换行天然分隔 | Swift Lang |

**待确认事项：**
1. ArkTS 是否支持 ASI？
2. 如果支持，ASI 的具体规则是什么？
3. 如果不支持，是否需要明确说明？

**状态：** ⚠️ 待确认（spec 未明确定义 ASI 行为）

---

### CONFIRM-002: 注释是否可作为 Token 分隔符

**所属章节：** 2.2 Lexical Input Elements
**问题描述：** spec/lexical.md 未明确说明注释是否可作为 Token 分隔符。

**实际行为（编译通过）：**
```typescript
let a/*comment*/: number = 1
// 注释作为 Token 分隔符，编译通过
```

**与业界静态语言对比：**
| 语言 | 注释作分隔符 | 规范依据 |
|------|------------|---------|
| **ArkTS** | ✅ 支持 | spec 未明确 |
| **Java** | ✅ 支持 | JLS §3 |
| **Swift** | ✅ 支持 | Swift Lang |

**状态：** ⚠️ 待确认（spec 未明确定义，但行为与 Java/Swift 一致）

---

### CONFIRM-003: spec 空白符列表与 Unicode 标准不完全对齐

**所属章节：** 2.3 White Spaces
**问题描述：** spec/lexical.md 列出 6 种空白符，但 Unicode 标准 White_Space 属性涵盖 25 个码点。

**规范依据：**
- spec/lexical.md: 列出 6 种空白符
- Unicode 标准: White_Space 属性涵盖 25 个码点

**与业界静态语言对比：**
| 语言 | 空白符数量 | 规范依据 |
|------|-----------|---------|
| **ArkTS** | 6 | spec/lexical.md |
| **Java** | 5 | JLS §3.6 |
| **TypeScript** | 约 18+ | ECMAScript |
| **Swift** | 约 25 | Unicode 标准 |

**待确认事项：**
1. spec 是否需要明确说明为什么仅采纳 6 种空白符？
2. 是否需要明确其他 Unicode 空白符（如 U+3000 全角空格）的处理规则？

**状态：** ⚠️ 待确认（spec 未明确定义选择依据）

---

### CONFIRM-004: ZWNBSP 双重身份的语义边界

**所属章节：** 2.3 White Spaces
**问题描述：** ZWNBSP (U+FEFF) 同时是 BOM（字节序标记）和普通空白符，同一字符在不同上下文有不同语义。

**实际行为：**
```typescript
let{ZWNBSP}b: number = 2  // 作分隔符
let s: string = "ab{ZWNBSP}cd"  // 在字符串内是内容
```

**与业界静态语言对比：**
| 语言 | ZWNBSP 处理 | 规范依据 |
|------|------------|---------|
| **ArkTS** | 既是 BOM 也是空白符 | spec/lexical.md |
| **Java** | 仅作为 BOM | JLS §3.6 |
| **Swift** | 仅作 BOM | Swift Lang |

**待确认事项：**
1. spec 是否需要明确 ZWNBSP 在 BOM 和分隔符两个角色的语义边界？
2. 是否需要对文件中部的 ZWNBSP 发出 warning？

**状态：** ⚠️ 待确认（spec 未明确定义双重身份的语义边界）

---

### CONFIRM-005: NBSP 易与普通空格混淆

**所属章节：** 2.3 White Spaces
**问题描述：** NBSP 在编辑器中视觉上与普通空格无差异，复制粘贴自网页/Word 文档常引入 NBSP。

**实际行为：**
```typescript
let{NBSP}x: number = 1  // 编译通过，但视觉上无法区分
```

**与业界静态语言对比：**
| 语言 | NBSP 处理 | 规范依据 |
|------|----------|---------|
| **ArkTS** | ✅ 等同空格 | spec/lexical.md |
| **Java** | ❌ 不允许 | JLS §3.6 |
| **Swift** | ❌ 不允许 | Swift Lang |

**待确认事项：**
1. 编译器是否需要对 NBSP 发出 warning？
2. 是否需要提供 lint 工具检测 NBSP 引入？

**状态：** ⚠️ 待确认（spec 未明确定义 warning 规则）

---

### CONFIRM-006: 行终止符与 §2.11 Semicolons 的交互未充分定义

**所属章节：** 2.4 Line Separators
**问题描述：** spec/lexical.md §2.4 前向引用 §2.11 解释行终止符的特殊语义，但未在 §2.4 中提供简要说明。

**规范依据：**
- spec/lexical.md §2.4: "Line separators are often handled as white spaces, except where line separators have special meanings. See Semicolons for more details."
- spec/lexical.md §2.11: 定义分号规则

**待确认事项：**
1. ArkTS 是否支持 ASI（自动分号插入）？
2. 如果支持，ASI 的具体规则是什么？
3. spec 是否需要在 §2.4 中提供 ASI 行为的简要说明？

**状态：** ⚠️ 待确认（spec 未明确定义 ASI 行为）

---

### CONFIRM-007: 单行注释 // 在 LS/PS 处是否终止

**所属章节：** 2.4 Line Separators
**问题描述：** spec/lexical.md 未明确说明单行注释 `//` 是否在 LS (U+2028) / PS (U+2029) 处终止。

**规范依据：**
- spec/lexical.md: 4 种行终止符均可作分隔符
- 未明确: // 在 LS/PS 处是否终止

**与业界静态语言对比：**
| 语言 | // 在 LS/PS 处终止 | 规范依据 |
|------|------------------|---------|
| **ArkTS** | ⚠️ spec 未明确 | spec/lexical.md |
| **TypeScript** | ✅ 任意 LineTerminator 终止 | ECMAScript |
| **Java** | N/A | JLS §3.4 |

**待确认事项：**
1. spec 是否需要明确单行注释在所有 4 种行终止符处终止？

**状态：** ⚠️ 待确认（spec 未明确定义）

---

## 异常统计

| 状态 | 数量 |
|------|------|
| 🔴 未解决 | 2 |
| ⚠️ SPEC 不一致 | 7 |
| ⚠️ 待确认 | 55 |
| **总计** | **64** |

---

## 异常分布

| 章节 | 🔴 未解决 | ⚠️ SPEC 不一致 | ⚠️ 待确认 | 小计 |
|------|----------|---------------|----------|------|
| 2.1 Use of Unicode Characters | 1 | 5 | 0 | 6 |
| 2.2 Lexical Input Elements | 0 | 0 | 2 | 2 |
| 2.3 White Spaces | 0 | 0 | 3 | 3 |
| 2.4 Line Separators | 0 | 2 | 2 | 4 |
| 2.5 Tokens | 0 | 0 | 3 | 3 |
| 2.6 Identifiers | 0 | 0 | 3 | 3 |
| 2.7 Keywords | 0 | 0 | 3 | 3 |
| 2.8 Operators and Punctuators | 1 | 0 | 3 | 4 |
| **2.9 Literals (小计)** | **0** | **0** | **36** | **36** |
| ├─ 2.9.1 Numeric Literals | 0 | 0 | 2 | 2 |
| ├─ 2.9.2 Integer Literals | 0 | 0 | 2 | 2 |
| ├─ 2.9.3 Floating-Point Literals | 0 | 0 | 2 | 2 |
| ├─ 2.9.4 Bigint Literals | 0 | 0 | 2 | 2 |
| ├─ 2.9.5 Boolean Literals | 0 | 0 | 3 | 3 |
| ├─ 2.9.6 String Literals | 0 | 0 | 6 | 6 |
| ├─ 2.9.7 Multiline String Literal | 0 | 0 | 3 | 3 |
| ├─ 2.9.8 Undefined Literal | 0 | 0 | 6 | 6 |
| └─ 2.9.9 Null Literal | 0 | 0 | 6 | 6 |
| 2.10 Comments | 0 | 0 | 2 | 2 |
| 2.11 Semicolons | 0 | 0 | 2 | 2 |
| **总计** | **2** | **7** | **55** | **64** |

---

**报告生成人：** OpenCode
**最后更新：** 2026-06-23
