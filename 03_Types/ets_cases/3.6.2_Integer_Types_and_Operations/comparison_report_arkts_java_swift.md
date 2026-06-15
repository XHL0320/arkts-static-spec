# 3.6.2 Integer Types and Operations - ArkTS vs Java vs Swift 对比报告

**生成日期：** 2026-06-11
**规范来源：** ArkTS Static Spec §3.6.2 Integer Types and Operations
**测试基础：** 21 个用例（10 PASS + 3 FAIL + 8 runtime 真实执行）

---

## 一、本节核心概念

### 整数类型范围
- byte: 8 位有符号
- short: 16 位有符号
- int: 32 位有符号
- long: 64 位有符号

### 整数运算符集合
- 比较：`<` `<=` `>` `>=` `==` `!=`
- 算术：`+` `-` `*` `/` `%` `++` `--`
- 移位：`<<` `>>` `>>>`
- 按位：`&` `^` `|` `~`
- 三元：`?:`
- 字符串拼接：`+`（一边为 string 时）
- 幂：`**` （结果 bigint，特殊设计）

### 类型推升规则
- 任一为 long → 结果 long（64 位）
- 否则任一非 int → 推升为 int（32 位）
- shift 表达式不参与推升

---

## 二、跨语言对比

### 2.1 整数类型集合

| 类型 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 8 位 | byte | byte | Int8 / UInt8 |
| 16 位 | short | short | Int16 / UInt16 |
| 32 位 | int | int | Int32 / UInt32 |
| 64 位 | long | long | Int64 / UInt64 |
| 平台默认 | int | int | Int |
| 任意精度 | bigint（独立）| BigInteger（类）| 无 |

### 2.2 运算符支持

| 运算符 | ArkTS | Java | Swift |
|------|-------|------|-------|
| `<` `<=` `>` `>=` | ✅ | ✅ | ✅ |
| `==` `!=` | ✅ | ✅ | ✅ |
| `+` `-` `*` `/` `%` | ✅ | ✅ | ✅ |
| `++` `--` 前后缀 | ✅ | ✅ | ❌（只有 += 1） |
| `<<` `>>` `>>>` | ✅ | ✅ | `<<` `>>` 但无 `>>>` |
| `&` `^` `\|` `~` | ✅ | ✅ | ✅ |
| `?:` 三元 | ✅ | ✅ | ✅ |
| `**` 幂运算 | ✅ → bigint | ❌（用 Math.pow）| ❌（用 pow()） |

### 2.3 类型推升规则

| 规则 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 任一 long → long | ✅ | ✅ | ❌（必须显式同类型）|
| byte+short→int | ✅ | ✅ | ❌（必须显式相同类型）|
| 不同类型混合 | ✅ 自动推升 | ✅ 自动推升 | ❌ 编译错误 |

### 2.4 整数与 boolean 互转

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| int → boolean 隐式 | ❌ | ❌ | ❌ |
| boolean → int 隐式 | ❌ | ❌ | ❌ |
| 严格度 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

### 2.5 溢出处理 ⭐ 关键差异

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| int max + 1 | -2147483648（静默回绕） | 静默回绕 | **运行时崩溃**（默认） |
| 显式溢出包装 | 无 | 无 | `&+` `&-` `&*` |
| 严格度 | 与 Java 一致（不安全）| 与 ArkTS 一致 | 最严格 |

### 2.6 除零行为

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| int / 0 | throw ArithmeticError | throw ArithmeticException | crash |
| int % 0 | throw ArithmeticError | throw ArithmeticException | crash |
| try-catch 可恢复 | ✅ | ✅ | ❌ |

### 2.7 数值类型转换 ⭐ ArkTS 新设计

**ArkTS（spec §3.6.2 实测发现）：**
```typescript
let i: int = 100
let l: long = i as long   // ❌ 弃用：'As' expression for cast is deprecated
let l2: long = i.toLong()  // ✅ 必须用方法
```

**Java（强制类型转换）：**
```java
int i = 100;
long l = (long) i;   // ✅ 经典转换
```

**Swift（构造器风格）：**
```swift
let i: Int32 = 100
let l: Int64 = Int64(i)   // ✅ 构造器
```

---

## 三、用例 1:1 对照

### 用例 ①：类型推升 long 优先 (TYP_03_06_02_014)

**ArkTS（spec §3.6.2）：**
```typescript
let i: int = 100000
let lo: long = 100000000000
let r: long = lo + i   // long + int → long，64位
```

**Java（一致）：**
```java
int i = 100000;
long lo = 100000000000L;
long r = lo + i;
```

**Swift（不允许混合）：**
```swift
let i: Int32 = 100000
let lo: Int64 = 100000000000
let r = lo + Int64(i)   // 必须显式 Int64()
```

### 用例 ②：溢出静默回绕 (TYP_03_06_02_016)

**ArkTS（实测）：**
```typescript
let max: int = 2147483647
let overflow: int = max + 1   // -2147483648（无错误）
```

**Java（一致）：**
```java
int max = Integer.MAX_VALUE;
int overflow = max + 1;   // -2147483648
```

**Swift（崩溃）：**
```swift
let max: Int32 = .max
let overflow = max + 1    // 💥 crash
let safe = max &+ 1       // ✅ 包装运算
```

### 用例 ③：除零 (TYP_03_06_02_017)

**ArkTS（实测）：**
```typescript
function main(): void {
  let a: int = 10
  let b: int = 0
  let c: int = a / b    // ✅ throw ArithmeticError
}
```

**Java（一致）：**
```java
int c = 10 / 0;    // throws ArithmeticException
```

**Swift（崩溃）：**
```swift
let c = 10 / 0;    // 💥 fatal error
```

### 用例 ④：移位行为 (TYP_03_06_02_019)

**ArkTS：**
```typescript
let neg: int = -16
let arith: int = neg >> 2   // -4 (保留符号位)
let logic: int = neg >>> 2  // 1073741820 (高位补 0)
```

**Java（一致）：**
```java
int neg = -16;
int arith = neg >> 2;    // -4
int logic = neg >>> 2;   // 1073741820
```

**Swift（无 >>>）：**
```swift
let neg: Int32 = -16
let arith = neg >> 2     // -4
// 无 >>> 等价语法，需用 UInt32 转换
let logic = Int32(bitPattern: UInt32(bitPattern: neg) >> 2)
```

### 用例 ⑤：数值转换 ⭐ 新发现

**ArkTS（实测）：**
```typescript
let i: int = 2000000000
let l: long = i as long       // ❌ Deprecated
let l2: long = i.toLong()      // ✅ 必须方法调用
```

**Java：**
```java
int i = 2000000000;
long l = (long) i;             // ✅ 经典转换
```

**Swift：**
```swift
let i: Int32 = 2000000000
let l: Int64 = Int64(i)        // ✅ 构造器
```

**结论：** ArkTS 设计独特，去除了 `as` 的数值转换功能，要求统一使用 stdlib 的 `toXxx()` 方法。

### 用例 ⑥：幂运算 ⭐ 特殊设计

**ArkTS：**
```typescript
let r: bigint = 2n ** 10n   // bigint 结果（spec §3.6.2 特别说明）
```

**Java：**
```java
double r = Math.pow(2, 10);   // 1024.0（无 ** 运算符）
```

**Swift：**
```swift
let r = pow(2, 10)            // 1024.0
```

**结论：** ArkTS 的 `**` 运算符返回 bigint 是设计选择，与其他主流语言不同。

---

## 四、综合评分

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 运算符完整度 | ⭐⭐⭐⭐⭐（含 ** 和 >>>） | ⭐⭐⭐⭐（含 >>>） | ⭐⭐⭐⭐（无 >>>） |
| 类型推升合理性 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐（必须显式） |
| 溢出安全 | ⭐⭐（静默回绕） | ⭐⭐（静默回绕） | ⭐⭐⭐⭐⭐（默认崩溃） |
| 除零异常 | ⭐⭐⭐⭐（可捕获） | ⭐⭐⭐⭐（可捕获） | ⭐⭐（不可恢复） |
| 数值转换语法 | ⭐⭐⭐（强制方法）| ⭐⭐⭐⭐⭐（() 转换） | ⭐⭐⭐⭐（构造器） |
| boolean 隔离 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

---

## 五、核心结论

| 角度 | 结论 |
|------|------|
| **整数运算丰富度** | ArkTS 与 Java 一致，比 Swift 更完整（含 >>>、**） |
| **溢出安全** | Swift > ArkTS = Java |
| **类型推升** | ArkTS = Java（自动），Swift 必须显式 |
| **数值转换** | Java（() 强制）> Swift（构造器）> ArkTS（必须方法）|
| **幂运算 → bigint** | ArkTS 独有（值得讨论合理性）|

### 关键启示

1. **整数运算大部分与 Java 一致**，包括类型推升和溢出处理
2. **`as` 弃用于数值转换**是 ArkTS 新设计，与 Java/Swift 都不同
3. **`**` 返回 bigint** 是 ArkTS 特殊设计，可能是为了避免 long 溢出
4. **>>>** 与 Java 一致，Swift 需要 UInt 转换

### ArkTS 设计建议

1. ⚠️ **`as` 弃用问题**：`as` 在其他类型转换场景仍可用，但数值类型禁用，这种不一致可能令人困惑
2. ✅ **`**` → bigint** 设计避免溢出，是好选择
3. ⚠️ **溢出静默回绕**：可考虑借鉴 Swift `&+` 设计

---

## 六、对应规范文档

| 语言 | 规范来源 |
|------|---------|
| ArkTS | ArkTS Static Spec §3.6.2 Integer Types and Operations |
| Java | JLS SE21 §4.2.2 Integer Operations, §15.17-22 Operators |
| Swift | The Swift Programming Language: Basic Operators, Advanced Operators |
