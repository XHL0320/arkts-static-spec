# 06 Contexts and Conversions — Design Issues Report (汇总)

> 汇总自各子章节 `design_issues_report_*.md`，覆盖 6.1~6.5 全部章节。
> 按严重性分组：HIGH / MEDIUM / LOW / N/A (设计特性确认)

---

## HIGH (0 条)

无 HIGH 级别问题。

---

## MEDIUM (5 条)

| # | 章节 | 问题 | 描述 |
|---|------|------|------|
| 1 | 6.1, 6.4.1 | **float 字面量类型歧义** | `let f: float = 3.14` 编译失败 (`ESE0318`)，因 `3.14` 是 double 字面量。Java 有 `3.14f` 后缀，Swift 支持字面量推断。建议支持 `3.14f` 语法 |
| 2 | 6.1, 6.4.1, 6.5 | **`as` cast 废弃于数值类型** | `b as int` 被标记 deprecated (`ESE123811`)，强制使用 `.toInt()` 等。Java 用 `(int)b`，Swift 用 `Int(b)` 均正常。若语义一致不应废弃，或在文档中明确分工 |
| 3 | 6.2 | **void + string 编译通过** | `"result: " + voidFunc()` 编译通过，但 spec 中 void 不在转换规则表中。Java/Swift 均拒绝此用法。建议明确 void 的 string 转换规则 |
| 4 | 6.4.2 | **"恰好一个更大成员"规则过严** | `byte→short|int` 有 short/int 两个更大成员即拒绝 (`ESE0255`)，但 short 是最近更大类型。建议选"最近"而非要求唯一 |
| 5 | 6.4.2 | **字面量在联合类型中的歧义** | `let u: byte|int = 100` 报错 `ESE101680`，因 100 同时兼容 byte 和 int。建议优先选默认类型(int)，仅超出范围时拒绝 |

---

## LOW (8 条)

| # | 章节 | 问题 | 描述 |
|---|------|------|------|
| 6 | 6.1 | **Union Widening 严格性过高** | `byte→short|int` 有两个更大成员即拒绝，见 MEDIUM #4 详细分析 |
| 7 | 6.2 | **0.0 格式化丢失小数部分** | `0.0 + " is zero"` 产生 `"0 is zero"` 而非 `"0.0 is zero"`，与 Java/Swift 行为不同 |
| 8 | 6.2 | **Box 类名与 stdlib 冲突** | 用户 `class Box` 与标准库 `Box` 冲突 (`ESE0349`)。建议文档列出保留类名 |
| 9 | 6.3.1 | **string enum 支持关系比较** | `string` 基枚举允许 `<` 比较（字典序），但 spec 说仅数值基类型可用于数值上下文 |
| 10 | 6.3.2 | **char 无符号性未在 spec 说明** | char 范围 0-65535（无符号），但 spec §6.3.2 未提及 |
| 11 | 6.4 | **缺少跨语言转换分类框架** | ArkTS/Java/Swift 的隐式转换分类粒度不同，建议增加对比附录 |
| 12 | 6.4.1 | **float 缺乏字面量后缀** | 无 `3.14f` 语法，导致 float 无法从字面量直接初始化（见 MEDIUM #1） |
| 13 | 6.4.2 | **编译器比 spec 文本更严格** | subtyping match 被计入候选数，导致 `int→byte|int|long` 被拒绝。需澄清 spec-vs-impl 差异 |

---

## N/A — 设计特性确认 (7 条)

| # | 章节 | 特性 | 说明 |
|---|------|------|------|
| — | 6.3 | `**` 返回 Double | 与 Java `Math.pow()` / Swift `pow()` 一致，跨语言行为统一 |
| — | 6.3 | `long += int` widening | 已确认设计行为，与 Java 一致 |
| — | 6.3.1 | `enum + int` 直接比较 | ArkTS 独有优势，`Priority.Medium > 1` Java/Swift 均不支持 |
| — | 6.3.2 | `c'A'` char 字面量语法 | 显式区分 char 与 string 字面量的设计选择 |
| — | 6.4 | 受控隐式转换定位 | ArkTS 介于 Swift(零隐式) 与 Java(宽松隐式) 之间的中位设计 |
| — | 6.5 | `.toInt()` 方法调用语法 | 唯一使用 method-call 的 cast 方式，与 Java `(type)` / Swift `Type()` 不同 |
| — | 6.4.3, 6.4.4 | enum→numeric/string 零问题 | 17/17 + 10/10 PASS，完全符合 spec |

---

## 统计

| 严重性 | 数量 |
|--------|:--:|
| HIGH | 0 |
| MEDIUM | 5 |
| LOW | 8 |
| N/A | 7 |
| **总计** | **20** |

---

## 测试执行总览

| 章节 | 用例数 | 通过 | 通过率 |
|------|:--:|:--:|:--:|
| 6.1 Assignment-like Contexts | 42 | 42 | 100% |
| 6.2 String Operator Contexts | 25 | 25 | 100% |
| 6.3 Numeric Operator Contexts | 27 | 27 | 100% |
| 6.3.1 Relational/Equality Operands | 28 | 28 | 100% |
| 6.3.2 char Conversions | 26 | 26 | 100% |
| 6.4 Implicit Conversions | 23 | 23 | 100% |
| 6.4.1 Widening Numeric | 23 | 23 | 100% |
| 6.4.2 Widening to Union Type | 16 | 16 | 100% |
| 6.4.3 Enumeration to Numeric | 17 | 17 | 100% |
| 6.4.4 Enumeration to string | 10 | 10 | 100% |
| 6.5 Numeric Casting Conversions | 16 | 16 | 100% |
| **总计** | **253** | **253** | **100%** |
