# 2.6 Identifiers - ArkTS 设计问题发现报告

**报告日期：** 2026-06-15
**测试用例数：** 39（compile-pass: 23, compile-fail: 11, runtime: 5）
**目的：** 通过 IdentifierStart/IdentifierPart 全文法覆盖识别 ArkTS 编译器和 spec 设计问题。

---

## 一、设计问题

### 问题 A：Unicode 类别未在 spec 中详尽列出 ⭐⭐ MEDIUM

**spec 描述：** §2.6 列出 5 种 Letter 类别（Lu/Ll/Lt/Lm/Lo），但并未提及：
- Nl (Letter Number) - 如罗马数字 Ⅰ Ⅱ
- Mn (Combining Mark) - 组合符号
- Mc (Spacing Mark) - 间距标记
- Pc (Connector Punctuation) - 连接符标点（除 `_` 外）

**Java/TS 标准：** 标识符通常允许 Mn/Mc/Pc 在 IdentifierPart 中。

**实测：** 未对 Nl/Mn/Mc/Pc 类别做完整测试（仅在用例 017 间接覆盖部分）。

**建议：** spec 明确这些类别是否支持，并在 §2.6 提供 Unicode ID_Start 和 ID_Continue 的精确定义参照。

---

### 问题 B：Unicode 转义等价性带来的隐式冲突 ⭐⭐⭐ HIGH

**实测（用例 035）：**
```typescript
let \u0041var: int = 100  // 标识符 = "Avar"（Unicode 转义解码）
Avar = Avar + 50           // ✅ 同一变量
```

**问题：**
1. 开发者可能不知道 `\u0041var` 与 `Avar` 是同一变量
2. 在重命名重构时，IDE 必须识别这两种形式

**对比：**
| 语言 | \u0041 ≡ A |
|------|----------|
| ArkTS | ✅ |
| Java | ✅ |
| TypeScript | ✅ |
| Swift | N/A (不支持转义) |

**评价：** 这是 ECMAScript/Java 沿袭设计，但增加了潜在的迷惑性。

**建议：** lint 工具警告：避免转义和直接字符在同文件混用同一标识符。

---

### 问题 C：`\u{}` 扩展转义的 ID_Start 边界检查 ⭐⭐ MEDIUM

**实测（用例 032）：**
```typescript
let \u0030abc: int = 1   // \u0030 = '0'（数字字符）
// 等价于 0abc，编译失败 ✅
```

**实测（用例 033）：**
```typescript
let \uD800name: int = 1  // 孤立代理
// 编译失败 ✅
```

**评价：** 编译器正确处理转义后的字符是否为合法 ID_Start。

**潜在问题：** 用户可能预期 `\u{1F600}`（emoji）作为标识符可用，但 emoji 不属于 ID_Start，应失败。

**建议：** spec 显式说明：转义后的字符必须满足 ID_Start/ID_Continue 规则，不仅仅是合法 Unicode 码点。

---

### 问题 D：ZWJ/ZWNJ 在标识符中的使用违背常识 ⭐⭐ MEDIUM

**实测（用例 011/012/037）：**
```typescript
let aZWJb: int = 100   // a + U+200D + b
let aZWNJb: int = 200  // a + U+200C + b
// 是不同变量
```

**问题：**
1. 在编辑器中视觉上无差异（ZWJ/ZWNJ 是零宽字符）
2. 复制粘贴含 ZWJ/ZWNJ 的代码可能引入隐藏 bug
3. grep "aZWJb" 可能匹配不到

**对比：**
| 语言 | ZWJ/ZWNJ 在标识符 |
|------|----------------|
| ArkTS | ✅（沿袭 ECMAScript）|
| TypeScript | ✅ |
| Java | ❌ |
| Swift | ❌ |

**建议：**
1. lint 工具警告：含 ZWJ/ZWNJ 的标识符
2. 编辑器可视化标记零宽字符
3. spec 添加注意事项说明此潜在风险

---

### 问题 E：类型关键字保护与 TypeScript 不兼容 ⭐⭐ MEDIUM

**实测（用例 031）：**
```typescript
let int: int = 1   // ❌ ArkTS 编译失败
```

**TypeScript：**
```typescript
let int: number = 1  // ✅ TS 中 int 不是关键字
```

**问题：** TS 代码迁移到 ArkTS 时，所有以 `int`/`byte`/`char` 等命名的变量都需重命名。

**对比：**
| 关键字 | ArkTS | TypeScript | Java |
|-------|-------|-----------|------|
| `int` | ❌ | ✅ | ❌ |
| `double` | ❌ | ✅ | ❌ |
| `byte` | ❌ | ✅ | ❌ |
| `char` | ❌ | ✅ | ❌ |
| `string` | ⚠️ | ❌ (内置类型)| ✅ |

**建议：** 提供迁移工具自动重命名冲突标识符。

---

### 问题 F：Lt/Lm 类别测试覆盖度低 ⭐ LOW

**实测：** 用例 003/004 仅测试 1-2 个 Lt/Lm 字符。

**Lt 类别完整列表：** `\u01C5`, `\u01C8`, `\u01CB`, `\u01F2`, `\u1F88`-`\u1F8F`, `\u1F98`-`\u1F9F`, `\u1FA8`-`\u1FAF`, `\u1FBC`, `\u1FCC`, `\u1FFC`

**建议：** 补充更多 Lt/Lm 字符测试，确保编译器全类别支持。

---

## 二、已验证 ArkTS 行为（与规范一致）

| 行为 | 用例编号 | 状态 |
|------|---------|------|
| 5 类 Letter 全部支持 | 001~005 | ✅ |
| `$` `_` 起始 | 006~007 | ✅ |
| `\uHHHH` 转义起始 | 008 | ✅ |
| `\u{...}` 扩展转义起始 | 009 | ✅ |
| Nd 在 IdentifierPart | 010 | ✅ |
| ZWJ 在 IdentifierPart | 011 | ✅ |
| ZWNJ 在 IdentifierPart | 012 | ✅ |
| 转义在中部 | 013~014 | ✅ |
| 多类别混合标识符 | 015~017 | ✅ |
| 类/接口/函数/字段名 | 018~021 | ✅ |
| 枚举名/成员名 | 022 | ✅ |
| 命名空间名 | 023 | ✅ |
| 数字开头失败 | 024 | ✅ |
| 运算符开头失败 | 025 | ✅ |
| Unicode Nd 字符开头失败 | 026 | ✅ |
| 标识符内空格/连字符/点失败 | 027~029 | ✅ |
| 硬关键字/类型关键字失败 | 030~031 | ✅ |
| 转义为数字字符失败 | 032 | ✅ |
| 孤立代理转义失败 | 033 | ✅ |
| 空 \\u{} 失败 | 034 | ✅ |
| Unicode 转义等价性 | 035 | ✅ |
| 多语言标识符运行 | 036, 038 | ✅ |
| ZWJ ≠ ZWNJ 不同变量 | 037 | ✅ |
| 含数字标识符运行 | 039 | ✅ |

---

## 三、严重性等级总览

| 严重性 | 数量 | 问题列表 |
|-------|------|---------|
| ⭐⭐⭐ HIGH | 1 | 问题 B: Unicode 转义等价导致冲突 |
| ⭐⭐ MEDIUM | 4 | 问题 A: Unicode 类别未详尽、问题 C: 转义边界检查、问题 D: ZWJ/ZWNJ 隐藏风险、问题 E: 类型关键字 TS 不兼容 |
| ⭐ LOW | 1 | 问题 F: Lt/Lm 覆盖度低 |

---

## 四、改进方向建议

### 短期（spec 完善）
1. 在 §2.6 增加 IdentifierStart/IdentifierPart 完整 Unicode 类别清单
2. 明确 \u 转义后字符必须满足 ID_Start/ID_Continue 规则
3. 添加 ZWJ/ZWNJ 使用风险注意事项

### 中期（编译器/lint）
4. lint 警告：转义与直接字符混用、含 ZWJ/ZWNJ 的标识符
5. 提供 TS→ArkTS 迁移工具：自动重命名 `int`/`byte` 等冲突变量

### 长期（语言演进）
6. 评估 Mn/Mc/Pc 类别支持
7. 考虑提供 Strict Identifier 模式（拒绝 ZWJ/ZWNJ 和过于宽松的 Unicode 字符）

---

## 五、用例索引

| 用例 ID | 发现的问题 |
|---------|-----------|
| LEX_02_06_011/012/037 | 问题 D: ZWJ/ZWNJ 隐藏风险 |
| LEX_02_06_031 | 问题 E: 类型关键字 TS 不兼容 |
| LEX_02_06_032/033 | 问题 C: 转义边界检查（行为正确）|
| LEX_02_06_035 | 问题 B: Unicode 转义等价性 |
| LEX_02_06_003/004 | 问题 F: Lt/Lm 覆盖度（建议扩展）|
