# 2.4 Line Separators - ArkTS 设计问题发现报告

**报告日期：** 2026-06-15
**测试用例数：** 29（compile-pass: 20, compile-fail: 3, runtime: 6）
**目的：** 通过 4 种行终止符的全面测试识别 ArkTS 编译器和 spec 的设计问题。

---

## 一、设计问题

### 问题 A：char 字面量内允许真实 LF/CR，与字符串字面量不一致 ⭐⭐⭐ HIGH

**复现用例：** LEX_02_04_022_PASS_LF_IN_CHAR_LITERAL.ets

**spec 描述：** char 是 32 位 Unicode code point。Spec 未明确说明 char 字面量是否允许跨行内容。

**字符串字面量行为：** 单/双引号字符串内含真实 LF 编译失败（用例 020/021），符合预期。

**实测 char 行为：**
```typescript
let ch: char = c'<LF>'   // ⚠️ 编译通过（不规范但允许）
```

**预期行为：** char 字面量也应禁止跨行（与字符串字面量一致），强制使用转义序列 `c'\n'`。

**对比：**
| 语言 | char 内含真实换行 |
|------|-----------------|
| ArkTS | ⚠️ 编译器允许（spec 未明确）|
| Java | ❌ 编译失败 |
| Swift | N/A（Character 是字符串子集）|

**评价：** 这是 spec 描述与实现行为的不一致，且字符字面量与字符串字面量行为不一致。

**建议：**
1. spec 明确规定 char 字面量不可跨行
2. 编译器修复，与字符串字面量保持一致

---

### 问题 B：CRLF 在 spec 中未单独定义为序列 ⭐⭐ MEDIUM

**spec 原文：** 列出 4 种独立行终止符（LF、CR、LS、PS），并声明 "Any sequence of line separators is considered a single separator"。

**实际场景：** Windows/DOS 文件使用 CRLF，按 spec 解析会被识别为 CR + LF 两个分隔符的序列，因 "any sequence" 规则等价于单分隔符，行为正确。

**对比：**
| 语言 | CRLF 在 spec 中 |
|------|--------------|
| ArkTS | ⚠️ 隐含支持，未显式定义 |
| Java JLS §3.4 | ✅ 显式 LineTerminatorSequence 产生式 |
| TypeScript | ✅ ECMA-262 显式 LineTerminatorSequence |

**评价：** 实际行为正确，但 spec 缺乏显式定义可能引发误解。

**建议：** spec 应增加 LineTerminatorSequence 产生式说明，类似：
```
LineTerminatorSequence ::= <LF> | <CR> [lookahead ≠ <LF>] | <LS> | <PS> | <CR> <LF>
```

---

### 问题 C：行终止符与 §2.11 Semicolons 的交互未充分定义 ⭐⭐ MEDIUM

**spec 原文（§2.4）：** "Line separators are often handled as white spaces, except where line separators have special meanings. See Semicolons for more details."

**问题：** 这是一个前向引用（forward reference），让读者必须跳到 §2.11 才能理解 ArkTS 是否有 ASI（自动分号插入）。

**实测（runtime 用例 028 验证）：** 多个连续 LF 不影响后续语句执行，意味着 ArkTS 至少在简单场景下有 ASI 或可选分号机制。

**对比：**
| 语言 | ASI 机制 |
|------|---------|
| ArkTS | ⚠️ 间接通过 §2.11 描述 |
| JavaScript | ✅ ECMA-262 显式 ASI 规则 |
| TypeScript | ✅ 同 JS |
| Java | ❌ 无 ASI |
| Swift | ✅ 隐式分号（基于行终止符）|

**评价：** spec 表述可以更主动一些，提示读者 ArkTS 的核心设计决策。

---

### 问题 D：单行注释 // 在 LS/PS 处是否终止 ⭐ LOW

**spec 描述：** 4 种行终止符均可作分隔符。

**未明确：** 单行注释 `//` 是否在 LS (U+2028) / PS (U+2029) 处终止？还是仅在 LF/CR 处终止？

**实测（用例 014）：** 验证了 LF 终止 // 注释，但 LS/PS 未独立测试 // 边界。

**对比：**
| 语言 | // 在 LS/PS 处终止 |
|------|------------------|
| ArkTS | ⚠️ spec 未明确 |
| TypeScript / ECMA-262 | ✅ 任意 LineTerminator 终止 |
| Java | N/A (无 LS/PS 概念) |

**建议：** spec 明确单行注释在所有 4 种行终止符处终止。

---

### 问题 E：极端连续行终止符场景的鲁棒性 ⭐ LOW

**用例：** LEX_02_04_009 (LF/CR 混合连续) 和 LEX_02_04_010 (LS/PS 混合连续)

**实测：** 编译器正确处理 4 种终止符任意混合连续，符合 "any sequence is single separator" 规则。

**评价：** 实现质量良好，无 bug。

---

## 二、已验证 ArkTS 行为（与规范一致）

| 行为 | 用例编号 | 状态 |
|------|---------|------|
| LF (U+000A) 作行分隔 | 001 | ✅ |
| CR (U+000D) 作行分隔 | 002 | ✅ |
| LS (U+2028) 作行分隔 | 003 | ✅ |
| PS (U+2029) 作行分隔 | 004 | ✅ |
| CRLF 作单一分隔（隐含）| 005, 025 | ✅ |
| 任意连续序列等价单分隔 | 007~011, 029 | ✅ |
| 行终止符与空白符共存 | 012~013 | ✅ |
| 单行注释后行终止符 | 014 | ✅ |
| 括号内允许换行 | 015 | ✅ |
| 数组字面量内允许换行 | 016 | ✅ |
| 函数参数列表内换行 | 017 | ✅ |
| 模板字符串内允许真实换行 | 018, 027 | ✅ |
| 普通字符串支持 \n 转义 | 019 | ✅ |
| 单引号字符串禁止跨行 | 020 | ✅ |
| 双引号字符串禁止跨行 | 021 | ✅ |
| // 注释禁止反斜杠续行 | 023 | ✅ |
| 多行注释跨行不影响执行 | 026 | ✅ |
| 连续空行不影响语句 | 028 | ✅ |

---

## 三、严重性等级总览

| 严重性 | 数量 | 问题列表 |
|-------|------|---------|
| ⭐⭐⭐ HIGH | 1 | 问题 A: char 字面量内 LF（spec 与实现不一致）|
| ⭐⭐ MEDIUM | 2 | 问题 B: CRLF 未显式定义、问题 C: ASI 前向引用 |
| ⭐ LOW | 2 | 问题 D: // 在 LS/PS 边界未明确、问题 E: 极端场景（已通过）|

---

## 四、Spec 与实现不一致汇总

| Spec 声明/暗示 | 编译器实际行为 | 严重性 |
|--------------|--------------|--------|
| char 字面量类似字符串字面量（行级一致性）| char 字面量允许真实 LF | ⭐⭐⭐ HIGH |
| 4 种行终止符独立列出 | CRLF 通过序列规则等价处理 | ⭐⭐ MEDIUM |
| §2.4 引用 §2.11 解释特殊语义 | 用户需要前向跳读 | ⭐⭐ MEDIUM |

---

## 五、改进方向建议

### 短期（spec 完善）
1. 在 §2.4 显式增加 LineTerminatorSequence 产生式
2. 明确说明 char 字面量内的行终止符规则（与字符串字面量保持一致）
3. 在 §2.4 提供 ASI 行为的简短说明（不必等到 §2.11）

### 中期（编译器修复）
4. 修复 char 字面量内允许真实 LF 的问题（与 spec 期望对齐）
5. 增加 lint 规则：单文件内统一行终止符风格（避免混用 LF/CRLF）

### 长期（语言演进）
6. 评估 LS/PS 在实际代码中的使用频率，考虑是否标记为 deprecated
7. 与 TypeScript 保持设计同步，便于双向迁移

---

## 六、用例索引

| 用例 ID | 发现的问题 |
|---------|-----------|
| LEX_02_04_022 | 问题 A: char 字面量允许真实 LF |
| LEX_02_04_005 | 问题 B: CRLF 隐含支持但未在 spec 显式定义 |
| LEX_02_04_028 | 问题 C: 连续空行通过验证，但 ASI 行为需 §2.11 |
| LEX_02_04_011 | 4 种终止符全混合鲁棒性验证（无问题）|
