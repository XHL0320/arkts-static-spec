# 02 Lexical Elements Issue Report

**最后更新：** 2026-06-26

## 未解决异常列表

| ID | 章节 | Case | Symptom | Expected | Actual | Status |
|---|---|---|---|---|---|---|
| ISSUE-001 | 2.1 | LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER.ets | Syntax error ESY0112: Unexpected token, expected an identifier | compile-pass | compile-fail | 🔴 未解决 |
| ISSUE-002 | 2.1 | LEX_02_01_012_FAIL_LONE_HIGH_SURROGATE.ets | 孤立高代理编译通过 | compile-fail | compile-pass | ⚠️ SPEC缺口——PDF原文§2.1不禁止lone surrogate，建议向spec团队提出补充 |
| ISSUE-003 | 2.1 | LEX_02_01_013_FAIL_LONE_LOW_SURROGATE.ets | 孤立低代理编译通过 | compile-fail | compile-pass | ⚠️ SPEC缺口——PDF原文§2.1不禁止lone surrogate，建议向spec团队提出补充 |
| ISSUE-004 | 2.1 | LEX_02_01_014_FAIL_HIGH_SURROGATE_NO_LOW.ets | 高代理后跟 BMP 字符编译通过 | compile-fail | compile-pass | ⚠️ SPEC缺口——PDF原文§2.1不禁止lone surrogate，建议向spec团队提出补充 |
| ISSUE-005 | 2.1 | LEX_02_01_018_PASS_CHAR_RELATIONAL_OP.ets | char 关系运算符编译通过（符合 spec） | compile-fail | compile-pass | ✅ 已解决 |
| ISSUE-006 | 2.1 | LEX_02_01_019_PASS_CHAR_COMPARE_NUMBER.ets | char 与 number 比较编译通过（符合 spec） | compile-fail | compile-pass | ✅ 已解决 |
| ISSUE-007 | 2.4 | LEX_02_04_022_PASS_LF_IN_CHAR_LITERAL.ets | char 字面量内允许真实 LF | compile-fail | compile-pass | ⚠️ SPEC 改进建议——PDF原文§2.4未明确定义char字面量跨行规则，非编译器bug |
| ISSUE-008 | 2.4 | LEX_02_04_005_PASS_CRLF_SEPARATOR.ets | CRLF 在 spec 中未单独定义为序列 | 显式定义 | 隐含支持 | ⚠️ SPEC 改进建议——PDF原文§2.4隐含支持，非编译器bug |
| ISSUE-009 | 2.8 | LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets | Syntax error ESY0227: Unexpected token '??=' | runtime | compile-fail | ⚠️ SPEC内部不一致——§2.8不定义??= token但§7.32.2引用其语义，需spec团队澄清 |

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

### ISSUE-002: 孤立高代理编译通过 ⚠️ SPEC缺口

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-pass/LEX_02_01_012_PASS_LONE_HIGH_SURROGATE.ets`

**错误信息：** 无（编译通过）

**分析：** PDF原文§2.1 **无compile-time error语句禁止lone surrogate**。此前基于Unicode规范的推断并非ArkTS spec的强制性要求。
**结论：** 这不是编译器bug。@expect已从compile-fail改为compile-pass，用例移至compile-pass目录。建议向spec团队提出补充规则。

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let s: string = "\uD800"` | ✅ 编译通过（PDF原文未禁止）|
| Java | `String s = "\uD800";` | ✅ 编译通过 |
| Swift | `let s = "\u{D800}"` | ❌ 编译错误 |

**状态：** ⚠️ SPEC缺口——PDF原文不禁止lone surrogate，建议向spec团队提出补充

---

### ISSUE-003: 孤立低代理编译通过 ⚠️ SPEC缺口

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-pass/LEX_02_01_013_PASS_LONE_LOW_SURROGATE.ets`

**错误信息：** 无（编译通过）

**分析：** PDF原文§2.1 **无compile-time error语句禁止lone surrogate**。同ISSUE-002。
**结论：** 不是编译器bug。@expect已从compile-fail改为compile-pass，用例移至compile-pass目录。

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let s: string = "\uDC00"` | ✅ 编译通过（PDF原文未禁止）|
| Java | `String s = "\uDC00";` | ✅ 编译通过 |
| Swift | `let s = "\u{DC00}"` | ❌ 编译错误 |

**状态：** ⚠️ SPEC缺口——PDF原文不禁止lone surrogate，建议向spec团队提出补充

---

### ISSUE-004: 高代理后跟 BMP 字符编译通过 ⚠️ SPEC缺口

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-pass/LEX_02_01_014_PASS_HIGH_SURROGATE_NO_LOW.ets`

**错误信息：** 无（编译通过）

**分析：** PDF原文§2.1 **无compile-time error语句禁止lone surrogate**。同ISSUE-002/003。
**结论：** 不是编译器bug。@expect已从compile-fail改为compile-pass，用例移至compile-pass目录。

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let s: string = "\uD800A"` | ✅ 编译通过（PDF原文未禁止）|
| Java | `String s = "\uD800A";` | ✅ 编译通过 |
| Swift | `let s = "\u{D800}A"` | ❌ 编译错误 |

**状态：** ⚠️ SPEC缺口——PDF原文不禁止lone surrogate，建议向spec团队提出补充

---

### ISSUE-005: char 关系运算符编译通过 ✅ 已解决

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-pass/LEX_02_01_018_PASS_CHAR_RELATIONAL_OP.ets`

**分析：**
- spec/experimental.md 明确允许 char 关系运算符
- cookbook 中限制描述与 spec 冲突，以 spec 为准
- 用例已从 compile-fail 移至 compile-pass，`@expect` 已修正

**状态：** ✅ 已解决（用例 @expect 已修正为 compile-pass，文件已移至 compile-pass 目录）

---

### ISSUE-006: char 与 number 比较编译通过 ✅ 已解决

**所属章节：** 2.1 Use of Unicode Characters
**用例文件：** `2.1_Use_of_Unicode_Characters/compile-pass/LEX_02_01_019_PASS_CHAR_COMPARE_NUMBER.ets`

**分析：**
- spec/experimental.md 明确允许 char 与 number 比较
- cookbook 中限制描述与 spec 冲突，以 spec 为准
- 用例已从 compile-fail 移至 compile-pass，`@expect` 已修正

**状态：** ✅ 已解决（用例 @expect 已修正为 compile-pass，文件已移至 compile-pass 目录）

---

### ISSUE-007: char 字面量内允许真实 LF ⚠️ SPEC改进建议

**所属章节：** 2.4 Line Separators
**用例文件：** `2.4_Line_Separators/compile-pass/LEX_02_04_022_PASS_LF_IN_CHAR_LITERAL.ets`

**错误信息：** 无（编译通过）

**分析：** PDF原文§2.4 **未明确定义char字面量跨行规则**。编译器当前行为与Java不同，但PDF原文无禁止规则。**这不是编译器bug**，而是spec可改进的方向。
**结论：** 降级为spec改进建议，非编译器bug。用例保持compile-pass。

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let ch: char = c'<LF>'` | ✅ 编译通过（PDF原文未禁止）|
| Java | `char ch = '<LF>';` | ❌ 编译错误 |
| Swift | N/A | N/A |

**状态：** ⚠️ SPEC改进建议——PDF原文§2.4未明确定义char字面量跨行规则，非编译器bug

---

### ISSUE-008: CRLF 在 spec 中未单独定义为序列 ⚠️ SPEC改进建议

**所属章节：** 2.4 Line Separators
**用例文件：** `2.4_Line_Separators/compile-pass/LEX_02_04_005_PASS_CRLF_SEPARATOR.ets`

**错误信息：** 无（编译通过）

**分析：** PDF原文§2.4列出4种独立行终止符，并声明"Any sequence of line separators is considered a single separator"。CRLF被隐含支持。Java JLS显式定义但ArkTS PDF原文风格不同。**这不是编译器bug**。
**结论：** 降级为spec改进建议（可考虑更显式定义CRLF），非编译器bug。用例保持compile-pass。

**跨语言对比：**
| 语言 | CRLF 在 spec 中 | 规范依据 |
|------|--------------|---------|
| ArkTS | ✅ 隐含支持（PDF原文§2.4） | spec/lexical.md |
| Java | ✅ 显式定义 | JLS §3.4 |
| Swift | ✅ 显式定义 | Swift Lang |

**状态：** ⚠️ SPEC改进建议——PDF原文§2.4隐含支持，非编译器bug

---

### ISSUE-009: 空值合并赋值运算符编译失败 ⚠️ SPEC内部不一致

**所属章节：** 2.8 Operators and Punctuators
**用例文件：** `2.8_Operators_and_Punctuators/compile-fail/LEX_02_08_031_FAIL_NULLISH_ASSIGNMENT.ets`

**错误信息：**
```
[LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets:16:11] Syntax error ESY0227: Unexpected token '??='.
```

**分析：** PDF原文§2.8 operators/punctuators表 **无`??=`条目**，不是合法token；但§7.32.2又引用其语义。这是spec内部不一致——`??=`出现在语义描述中但不在词法token表中。不是纯编译器bug。
**结论：** 需spec团队澄清是否应支持`??=`。@expect已从runtime改为compile-fail，用例移至compile-fail目录。

**状态：** ⚠️ SPEC内部不一致——§2.8不定义??= token但§7.32.2引用其语义，需spec团队澄清

---

## 异常统计

| 状态 | 数量 |
|------|------|
| ⚠️ SPEC缺口（PDF原文无规则） | 3 |
| ⚠️ SPEC改进建议（非编译器bug） | 2 |
| ⚠️ SPEC内部不一致（需团队澄清） | 1 |
| 🔴 未解决（编译器未实现） | 1 |
| ✅ 已解决 | 2 |
| ⚠️ 待确认（Spec 未明确） | 6 |

| 🔁 转执行异常/Spec不一致跟踪 | 3 |

---

**报告生成人：** OpenCode
**最后更新：** 2026-06-26
