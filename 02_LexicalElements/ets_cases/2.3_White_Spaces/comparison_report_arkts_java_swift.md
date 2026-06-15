# 2.3 White Spaces - ArkTS vs Java vs Swift 对比报告

**生成日期：** 2026-06-15
**规范来源：** ArkTS Static Spec §2.3, Java JLS SE21 §3.6, Swift Language Reference (Whitespace and Comments)
**测试基础：** 38 个用例（21 compile-pass + 10 compile-fail + 7 runtime）

---

## 一、空白符列表对比

| 空白符 | Unicode | ArkTS | Java | Swift |
|--------|---------|-------|------|-------|
| Space | U+0020 | ✅ | ✅ | ✅ |
| Horizontal Tab | U+0009 | ✅ | ✅ | ✅ |
| Vertical Tab | U+000B | ✅ | ❌ (Java无VT) | ❌ |
| Form Feed | U+000C | ✅ | ✅ (FF) | ❌ |
| Line Feed | U+000A | ❌ (Line Sep) | ✅ | ❌ (Line Sep) |
| Carriage Return | U+000D | ❌ (Line Sep) | ✅ | ❌ (Line Sep) |
| No-Break Space | U+00A0 | ✅ | ❌ | ❌ |
| Zero-Width No-Break Space (BOM) | U+FEFF | ✅ | ✅ (仅BOM位置) | ✅ (仅BOM位置) |
| Next Line | U+0085 | ❌ | ❌ | ❌ |
| Ogham Space Mark | U+1680 | ❌ | ❌ | ❌ |
| 各种 Em/En Space | U+2000~U+200A | ❌ | ❌ | ❌ |
| Line Separator | U+2028 | ❌ (Line Sep) | ❌ | ❌ |
| Paragraph Separator | U+2029 | ❌ (Line Sep) | ❌ | ❌ |
| Ideographic Space | U+3000 | ❌ | ❌ | ❌ |

**关键差异：**
- **ArkTS** 是唯一同时支持 VT、FF、NBSP、ZWNBSP 作分隔符的语言
- **Java** 把 LF/CR 也算作空白
- **Swift** 最严格，只支持 Space/Tab/换行

---

## 二、空白符语义对比

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 作 Token 分隔符 | ✅ | ✅ | ✅ |
| 多个等价于一个 | ✅ | ✅ | ✅ |
| 在 Token 内部禁止 | ✅ | ✅ | ✅ |
| 在注释中允许 | ✅ | ✅ | ✅ |
| 在字符串内是内容 | ✅ | ✅ | ✅ |
| 行首缩进任意 | ✅ | ✅ | ✅ |

---

## 三、特殊空白符处理对比 ⭐

### 3.1 No-Break Space (U+00A0)

**ArkTS（实测）：** ✅ 编译通过
```typescript
let{NBSP}x: int = 1  // 等同于 let x: int = 1
```

**Java：** ❌ 编译错误
```java
int\u00A0x = 1;  // illegal character
```

**Swift：** ❌ 编译错误
```swift
let\u{00A0}x = 1  // invalid character in source file
```

**评价：** ArkTS 最宽松，但易引入隐式问题。

### 3.2 Zero-Width No-Break Space (U+FEFF) ⭐⭐⭐

**ArkTS（实测）：** ✅ 文件中部位置等同于普通空白
```typescript
let{ZWNBSP}b: int = 2  // ZWNBSP 作分隔符
let s = "ab{ZWNBSP}cd" // ZWNBSP 在字符串内是内容
```

**Java：** ⚠️ 仅在文件开头识别为 BOM
```java
// File start: \uFEFF accepted as BOM, stripped
// In code: \uFEFF reported as illegal
```

**Swift：** ⚠️ 仅作 BOM
```swift
// \uFEFF in source: invalid character
```

**评价：** ArkTS 沿用 ECMAScript 设计，统一处理 BOM 和普通空白。Java/Swift 严格区分。

### 3.3 Vertical Tab (U+000B) / Form Feed (U+000C)

**ArkTS：** ✅ 两者均合法
**Java：** ✅ FF 合法，VT 不合法
**Swift：** ❌ 两者均不合法

**评价：** ArkTS 沿袭 JavaScript ECMAScript 标准，最宽松。

---

## 四、Token 内禁止空白符的处理对比

### 用例：`==` 拆为 `= =`（用例 027）

**ArkTS：** ❌ 编译错误（实测）
```typescript
let b: boolean = a ={SP}= 1  // 报错
```

**Java：**
```java
boolean b = a = = 1;  // 编译错误
```

**Swift：**
```swift
let b = a = = 1  // 编译错误
```

**结论：** 三语言一致，多字符运算符不允许内部空白。

### 用例：标识符内空白（用例 022）

**ArkTS：** ❌
**Java：** ❌
**Swift：** ❌

**结论：** 三语言一致。

---

## 五、缩进风格对比

| 风格 | ArkTS | Java | Swift |
|------|-------|------|-------|
| Space-only | ✅ | ✅ | ✅ |
| Tab-only | ✅ | ✅ | ✅ |
| Space + Tab 混合 | ✅ | ✅ | ✅ |
| NBSP 缩进 | ✅ | ❌ | ❌ |

**评价：** ArkTS 允许 NBSP 缩进，但实际不推荐使用。

---

## 六、综合评分

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 空白符种类丰富度 | ⭐⭐⭐⭐⭐ (6种) | ⭐⭐⭐ (5种) | ⭐⭐ (3种) |
| Spec 与 Unicode 一致 | ⭐⭐ (仅取6个) | ⭐⭐ (传统) | ⭐⭐⭐⭐ (严格遵循) |
| 错误检测严格度 | ⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 兼容性（旧代码迁移） | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐ |
| 视觉混淆风险 | ⭐⭐ (NBSP/ZWNBSP) | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

---

## 七、核心结论

| 角度 | 结论 |
|------|------|
| **空白符数量** | ArkTS (6) > Java (5) > Swift (3) |
| **包容性** | ArkTS 最宽松，沿袭 ECMAScript |
| **严格性** | Swift > Java > ArkTS |
| **NBSP 处理** | 仅 ArkTS 接受 NBSP 作分隔符 |
| **ZWNBSP 处理** | ArkTS 双重身份（BOM+分隔符），Java/Swift 仅 BOM |
| **Token 内禁止** | 三语言完全一致 |

### 关键启示

1. **ArkTS 设计偏向兼容性**：宽松接受多种空白符（沿袭 ECMAScript）
2. **NBSP 风险**：ArkTS 接受 NBSP 但视觉上无差异，易导致隐式问题
3. **ZWNBSP 双重身份**：可能造成 BOM 处理工具的不一致
4. **VT/FF 冗余**：ArkTS 沿袭历史，但实际场景几乎不用
5. **Swift 最安全**：严格拒绝大多数特殊空白符

### ArkTS 设计建议

1. **借鉴 Swift**：对 NBSP/VT/FF 发出 warning，鼓励仅用 Space + Tab + 换行
2. **保持 ZWNBSP 兼容**：但应明确 spec 文档说明双重身份
3. **lint 工具**：提供格式化工具自动 normalize 空白符

---

## 八、对应规范文档

| 语言 | 规范来源 |
|------|---------|
| ArkTS | ArkTS Static Language Specification, §2.3 White Spaces |
| Java | Java Language Specification SE21, §3.6 White Space |
| Swift | The Swift Programming Language (Swift 5.x), Lexical Structure - Whitespace |
