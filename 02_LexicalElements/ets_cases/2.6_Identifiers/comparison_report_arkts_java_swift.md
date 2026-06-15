# 2.6 Identifiers - ArkTS vs Java vs Swift vs TypeScript 对比报告

**生成日期：** 2026-06-15
**规范来源：** ArkTS Static Spec §2.6, Java JLS SE21 §3.8, Swift Language Reference (Identifiers), ECMAScript 2023 §12.6
**测试基础：** 39 个用例（23 compile-pass + 11 compile-fail + 5 runtime 真实执行）

---

## 一、IdentifierStart 字符集对比

| 字符类别 | ArkTS | Java | Swift | TypeScript |
|--------|-------|------|-------|-----------|
| Lu (Uppercase Letter) | ✅ | ✅ | ✅ | ✅ |
| Ll (Lowercase Letter) | ✅ | ✅ | ✅ | ✅ |
| Lt (Titlecase Letter) | ✅ | ✅ | ✅ | ✅ |
| Lm (Modifier Letter) | ✅ | ✅ | ✅ | ✅ |
| Lo (Other Letter) | ✅ (多语言) | ✅ | ✅ | ✅ |
| Nl (Letter Number 如罗马数字) | ⚠️ 待验证 | ✅ | ⚠️ 部分 | ✅ |
| `$` 字符 | ✅ | ✅ | ❌ | ✅ |
| `_` 字符 | ✅ | ✅ | ✅ | ✅ |
| `\uHHHH` 转义 | ✅ | ✅ | ❌ | ✅ |
| `\u{...}` 转义 | ✅ | ❌ | ❌ | ✅ |

**关键观察：**
- **ArkTS = TypeScript** Unicode 转义支持最完整
- **Swift** 不支持 `$` 起始（保留作类型）
- **Java** 仅支持 `\uHHHH` 短转义

---

## 二、IdentifierPart 字符集对比

| 字符类别 | ArkTS | Java | Swift | TypeScript |
|--------|-------|------|-------|-----------|
| 全部 IdentifierStart | ✅ | ✅ | ✅ | ✅ |
| Nd (Decimal Digit) | ✅ | ✅ | ✅ | ✅ |
| Mn (Combining Mark) | ⚠️ 待验证 | ✅ | ✅ | ✅ |
| Mc (Spacing Mark) | ⚠️ 待验证 | ✅ | ✅ | ✅ |
| Pc (Connector Punct) | ⚠️ 待验证 | ✅ | ✅ | ✅ |
| **ZWJ (U+200D)** | ✅ | ❌ (旧版本) | ❌ | ✅ |
| **ZWNJ (U+200C)** | ✅ | ❌ | ❌ | ✅ |

**关键观察：**
- **ArkTS = TypeScript** 显式支持 ZWJ/ZWNJ（用例 011/012）
- **Swift** 不允许 ZWJ/ZWNJ
- **Java** 标识符规则更宽松（含 Mn/Mc/Pc）但不支持 ZWJ/ZWNJ

---

## 三、关键设计差异 ⭐

### 3.1 Unicode 转义标识符 ⭐⭐⭐

**ArkTS（实测，用例 008/009）：**
```typescript
let \u0041: int = 1     // ✅ 等价于 A
let \u{41}val: int = 2  // ✅ 扩展转义
```

**Java：**
```java
int \u0041 = 1;          // ✅ 等价于 A
// int \u{41} = 1;       // ❌ 不支持扩展转义
```

**Swift：**
```swift
// 不支持 \u 转义形式的标识符
let \u0041 = 1   // ❌ 编译失败
let \u{41} = 1   // ❌ 同
```

**TypeScript：**
```typescript
let \u0041: number = 1   // ✅
let \u{41}val: number = 2 // ✅
```

**结论：** ArkTS = TypeScript > Java > Swift（转义标识符支持度）

---

### 3.2 `$` 字符作标识符 ⭐⭐

**ArkTS（实测，用例 006）：** ✅ 完整支持
```typescript
let $x: int = 1
let $: int = 2
let $$: int = 3
```

**Java：** ✅ 支持
**Swift：** ❌ `$0`, `$1` 是匿名闭包参数，不允许用户使用 `$` 开头标识符
**TypeScript：** ✅ 支持

**评价：** ArkTS 沿袭 ECMAScript 设计。

---

### 3.3 ZWJ / ZWNJ 在标识符中 ⭐⭐⭐

**ArkTS（实测，用例 011/012, 037）：**
```typescript
let aZWJb: int = 100  // a + U+200D + b
let aZWNJb: int = 200 // a + U+200C + b
// 是不同变量！
```

**Java：** ❌ 不允许 ZWJ/ZWNJ
**Swift：** ❌ 不允许
**TypeScript：** ✅ 允许（与 ArkTS 一致）

**评价：** ArkTS 完全继承 ECMAScript 规范，与 Java/Swift 不同。

---

### 3.4 关键字保护 ⭐⭐

| 关键字类别 | ArkTS | Java | Swift | TypeScript |
|----------|-------|------|-------|-----------|
| 硬关键字（class, let） | ❌ 禁止 | ❌ | ❌ | ❌ |
| 类型关键字（int, byte, char） | ❌ 禁止 | ❌ | ❌ (无此类) | ✅ 允许 |
| 软关键字 | ⚠️ 上下文相关 | ⚠️ | ⚠️ | ⚠️ |

**ArkTS（实测，用例 030/031）：**
```typescript
let class: int = 1   // ❌
let int: int = 1     // ❌
```

**TypeScript：**
```typescript
let int: number = 1  // ✅ int 不是关键字
let string: string = "" // ✅ 沿用类型注解
```

**评价：** ArkTS 比 TS 更严格（增加类型关键字）。

---

### 3.5 标识符长度限制

| 语言 | 最大长度 | 实际限制 |
|------|---------|---------|
| ArkTS | ⚠️ 未明确（spec 未定）| 实测 1000+ 可用 |
| Java | 无（理论无限）| 65535 字节（UTF-8）|
| Swift | 无明确限制 | 编译器/工具链限制 |
| TypeScript | 无 | 同 |

---

## 四、综合评分

| 维度 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| Unicode 类别支持 | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ (含 Mn/Mc/Pc) | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| 转义形式支持 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐ | ⭐⭐⭐⭐⭐ |
| `$` 支持 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐ | ⭐⭐⭐⭐⭐ |
| ZWJ/ZWNJ 支持 | ⭐⭐⭐⭐⭐ | ⭐ | ⭐ | ⭐⭐⭐⭐⭐ |
| 关键字保护严格度 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
| TypeScript 兼容性 | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐ | ⭐⭐⭐⭐⭐ |

---

## 五、核心结论

| 角度 | 结论 |
|------|------|
| **Unicode 字符支持** | ArkTS = TypeScript ≈ Java > Swift |
| **转义标识符** | ArkTS = TypeScript > Java > Swift |
| **ZWJ/ZWNJ** | ArkTS = TypeScript（独有，其他不支持）|
| **`$` 起始** | ArkTS = Java = TypeScript > Swift |
| **关键字保护** | ArkTS > TypeScript（更严格）|

### 关键启示

1. **ArkTS 完全继承 ECMAScript 标识符规范**：含 ZWJ/ZWNJ 和 `\u{}` 扩展转义
2. **Swift 最严格**：不支持 `$`、转义、ZWJ/ZWNJ
3. **类型关键字保护**：ArkTS 在 TS 基础上增加 `int`/`byte`/`char` 等保护
4. **多语言支持**：4 语言均支持 Lo 类（中/日/韩/阿/希）

### ArkTS 设计建议

1. **Spec 完善**：明确说明 Mn/Mc/Pc 类别支持情况
2. **ID 字符规则文档化**：提供 IdentifierStart 与 IdentifierPart 完整 Unicode 类别清单
3. **保持与 ECMAScript 同步**：Unicode 标准升级时同步更新支持范围

---

## 六、对应规范文档

| 语言 | 规范来源 |
|------|---------|
| ArkTS | ArkTS Static Language Specification, §2.6 Identifiers |
| Java | Java Language Specification SE21, §3.8 Identifiers |
| Swift | The Swift Programming Language (Swift 5.x), Lexical Structure - Identifiers |
| TypeScript | ECMAScript 2023 Language Specification, §12.6 Names and Keywords |
