# 3.6.3 Floating-Point Types and Operations - ArkTS vs Java vs Swift

**生成日期：** 2026-06-11
**测试基础：** 20 个用例（10 PASS + 2 FAIL + 8 runtime）

---

## 一、跨语言对比

### 1.1 浮点类型集合

| 类型 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 32 位 | float | float | Float |
| 64 位 | double / number | double | Double |
| 80 位/扩展 | ❌ | ❌ | ❌（一般无） |

### 1.2 浮点运算符

| 运算符 | ArkTS | Java | Swift |
|------|-------|------|-------|
| `<` `<=` `>` `>=` `==` `!=` | ✅ | ✅ | ✅ |
| `+` `-` `*` `/` `%` | ✅ | ✅（`%` 不严格 IEEE） | ✅（`%` 整数 only，浮点用 truncatingRemainder） |
| `**` 幂 | ✅ → double | ❌（用 Math.pow）| ❌（用 pow()） |
| `++` `--` | ✅ | ✅ | ❌ |
| 移位/按位（应用浮点） | ❌（必须先 toInt） | ❌ | ❌ |
| 三元 `?:` | ✅ | ✅ | ✅ |

### 1.3 IEEE 754 行为

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| NaN != NaN | ✅ | ✅ | ✅ |
| 0/0 = NaN | ✅ | ✅ | ✅ |
| 1/0 = +Inf | ✅ | ✅ | ✅ |
| 浮点除零异常 | ❌ 不抛 | ❌ 不抛 | ❌ 不抛 |
| gradual underflow | ✅ | ✅ | ✅ |
| round-to-nearest（默认）| ✅ | ✅ | ✅ |
| round-toward-zero（→int）| ✅ | ✅ | ✅ |

### 1.4 浮点 → 整数转换

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 转换语法 | `.toInt()` 方法 | `(int) d` 强制转换 | `Int(d)` 构造器 |
| 隐式 narrowing | ❌ | ❌ | ❌ |
| 截断行为 | round-toward-zero | round-toward-zero | round-toward-zero |

### 1.5 浮点 ↔ boolean 隔离

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 浮点 → boolean | ❌ | ❌ | ❌ |
| boolean → 浮点 | ❌ | ❌ | ❌ |

---

## 二、用例对照

### 用例 ①：NaN 性质 (TYP_03_06_03_013)

```typescript
// ArkTS（实测通过）
let nan: double = 0.0 / 0.0
if (nan == nan) throw ...   // NaN != NaN
let r = nan + 1.0           // NaN + 1 = NaN
```

**Java：**
```java
double nan = 0.0 / 0.0;
boolean b = nan == nan;     // false
double r = nan + 1.0;       // NaN
```

**Swift：**
```swift
let nan = 0.0 / 0.0
let b = nan == nan          // false
let r = nan + 1.0           // NaN
```

**结论：** 三语言完全一致（IEEE 754 标准）

### 用例 ②：浮点除零 (TYP_03_06_03_019)

```typescript
// ArkTS：浮点 5.0 / 0.0 = +Inf（不抛异常）
let r: double = 5.0 / 0.0
```

**Java：** 同样 `5.0 / 0.0 = Infinity`，不抛异常
**Swift：** 同样 `5.0 / 0.0 = inf`

⚠️ 与整数除零行为完全不同（整数会抛 ArithmeticError）

### 用例 ③：浮点 → 整数 (TYP_03_06_03_009)

```typescript
// ArkTS：弃用 as，必须 toInt()
let i: int = 3.7.toInt()    // 3 (round-toward-zero)
```

**Java：** `int i = (int) 3.7;` → 3
**Swift：** `let i = Int(3.7)` → 3

### 用例 ④：`**` 幂运算 → double (TYP_03_06_03_005)

```typescript
// ArkTS（独有 **）
let r: double = 2.0f ** 10.0   // float ** double → double
```

**Java：** 无 `**` 运算符，用 `Math.pow(2, 10)`
**Swift：** 无 `**`，用 `pow(2, 10)` 或 `pow(2.0, 10.0)`

### 用例 ⑤：类型推升 (TYP_03_06_03_018)

```typescript
// ArkTS
let f: float = 1.0f
let d: double = 1.0
let r: double = f + d   // double + float → double
```

**Java：** 同 ArkTS
**Swift：** ❌ `f + d` 编译失败，必须 `Double(f) + d`

---

## 三、综合评分

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| IEEE 754 合规 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 运算符完整度 | ⭐⭐⭐⭐⭐（含 **） | ⭐⭐⭐⭐ | ⭐⭐⭐ |
| 类型推升合理性 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐（必须显式） |
| 浮点 → 整数 | ⭐⭐⭐（强制方法）| ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| boolean 隔离 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

---

## 四、核心结论

| 角度 | 结论 |
|------|------|
| IEEE 754 行为 | 三者一致 |
| 运算符 | ArkTS 含 `**`（独有）|
| 类型推升 | ArkTS = Java（自动），Swift 必须显式 |
| 浮点 → 整数 | ArkTS 必须方法调用，Java/Swift 有简洁语法 |
| `**` → double | ArkTS 独特，避免精度问题 |

### 关键启示

1. **IEEE 754 行为**三语言完全一致（NaN/Infinity/underflow）
2. **`**` 运算符** 是 ArkTS 浮点章节独有，结果总是 double
3. **类型推升**与 Java 一致，比 Swift 宽松
4. **数值转换** 沿用 3.6.2 的设计：必须方法调用

### ArkTS 设计建议

1. ✅ IEEE 754 合规
2. ✅ `**` 返回 double（避免精度损失）
3. ⚠️ 复用 3.6.2 建议：考虑提供 `as` 兼容写法

---

## 五、对应规范

| 语言 | 规范 |
|------|------|
| ArkTS | ArkTS Static Spec §3.6.3 |
| Java | JLS SE21 §4.2.3 / 4.2.4 |
| Swift | The Swift Programming Language: Floating-Point Types |
