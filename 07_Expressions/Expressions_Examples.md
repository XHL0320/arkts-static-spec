# 07 表达式 - ArkTS 示例代码

本文档提供 ArkTS §7.26-§7.36.1 表达式规范的最小示例代码，用于说明规范规则和预期诊断。

---

## §7.26 移位表达式（Shift Expressions）

```typescript
// 基本移位运算
function shiftExamples(): void {
  let a: int = 8
  let b: int = 2
  let left: int = a << b    // 8 << 2 = 32
  let right: int = a >> b   // 8 >> 2 = 2
  let unsigned: int = a >>> b // 8 >>> 2 = 2

  // byte/short 提升到 int
  let c: byte = 8
  let d: byte = 2
  let promoted: int = c << d // byte 提升为 int

  // long 移位 (6-bit 掩码)
  let e: long = 1
  let f: long = 64
  let longShift: long = e << f // f & 0x3f = 0, 所以 1 << 0 = 1

  // bigint 移位（不支持 >>>）
  let g: bigint = 8n
  let h: bigint = 2n
  let bigShift: bigint = g << h  // 8n << 2n = 32n
  let bigRight: bigint = g >> h  // 8n >> 2n = 2n

  // 有符号/无符号右移负值
  let neg: int = -8
  let signedRight: int = neg >> 2   // -2 (符号扩展)
  let unsignedRight: int = neg >>> 2 // 1073741822 (零扩展)
}
```

---

## §7.27 关系表达式（Relational Expressions）

```typescript
function relationalExamples(): void {
  // 数值关系
  let a: int = 5
  let b: int = 10
  let c1: boolean = a < b    // true
  let c2: boolean = a >= b   // false

  // IEEE 754 浮点
  let f1: float = 0.0 / 0.0  // NaN
  let c3: boolean = f1 < 0.0 // false (NaN)

  // 字符串字典序
  let c4: boolean = "abc" < "abd" // true

  // 布尔关系 (false < true)
  let c5: boolean = false < true  // true
  let c6: boolean = true <= false // false

  // bigint 关系
  let big1: bigint = 100n
  let big2: bigint = 200n
  let c7: boolean = big1 < big2 // true

  // 枚举关系（同类型）
  // enum Color { RED, GREEN, BLUE }
  // Color.RED < Color.GREEN // true (int base type)
}
```

---

## §7.28 相等表达式（Equality Expressions）

```typescript
function equalityExamples(): void {
  // 数值相等
  let e1: boolean = 5 == 5       // true
  let e2: boolean = 5 === 5      // true
  let e3: boolean = 5 != 5       // false

  // IEEE 754: NaN != NaN
  let nan: double = 0.0 / 0.0
  let e4: boolean = nan == nan   // false
  let e5: boolean = nan != nan   // true

  // +0 == -0
  let e6: boolean = 0.0 == -0.0  // true

  // bigint == numeric → false (不报错但结果 false)
  let e7: boolean = 5n == 5      // false

  // 函数引用相等
  // function foo() {}
  // foo == foo // true (同一函数对象)

  // null/undefined 扩展相等
  let e8: boolean = null == undefined   // true
  let e9: boolean = null === undefined  // false
}
```

---

## §7.29 位运算与逻辑表达式（Bitwise and Logical）

```typescript
function bitwiseExamples(): void {
  // 整数位运算
  let a: int = 0b1100  // 12
  let b: int = 0b1010  // 10
  let and: int = a & b  // 0b1000 = 8
  let or: int = a | b   // 0b1110 = 14
  let xor: int = a ^ b  // 0b0110 = 6

  // 布尔逻辑
  let t: boolean = true
  let f: boolean = false
  let band: boolean = t & f  // false
  let bor: boolean = t | f   // true
  let bxor: boolean = t ^ f  // true

  // bigint 位运算
  let ba: bigint = 0xFFn
  let bb: bigint = 0x0Fn
  let bigAnd: bigint = ba & bb // 0x0Fn
}
```

---

## §7.30-§7.31 条件与/或（Conditional-And/Or）

```typescript
function shortCircuitExamples(): void {
  // && 短路：右侧仅在左侧为 true 时求值
  let a: boolean = false && sideEffect() // sideEffect() 不会被调用

  // || 短路：右侧仅在左侧为 false 时求值
  let b: boolean = true || sideEffect() // sideEffect() 不会被调用

  // 结合律
  let c: boolean = a && b && true
  let d: boolean = a || b || false
}

function sideEffect(): boolean {
  console.log("called")
  return true
}
```

---

## §7.32 赋值（Assignment）

```typescript
class Container {
  value: int = 0
}

function assignmentExamples(): void {
  // 简单赋值
  let x: int = 0
  x = 42

  // 复合赋值
  x += 1   // x = x + 1
  x *= 2   // x = x * 2
  x <<= 1  // x = x << 1

  // 右结合赋值链
  let a: int = 0
  let b: int = 0
  a = b = 5 // a = (b = 5)

  // 字段赋值
  let c: Container = new Container()
  c.value = 10

  // 数组元素赋值
  let arr: int[] = [1, 2, 3]
  arr[0] = 99
}
```

---

## §7.33 三元条件表达式（Ternary Conditional）

```typescript
function ternaryExamples(): void {
  let condition: boolean = true

  // 基本三元
  let result: int = condition ? 1 : 0

  // 编译期已知条件 → 类型收窄
  let t1: string = true ? "yes" : "no"  // 类型: "yes"

  // 未知条件 → union 类型
  let t2: string | int = condition ? "str" : 42

  // 右结合
  // a ? b : c ? d : e  等价于  a ? b : (c ? d : e)
}
```

---

## §7.34 字符串插值（String Interpolation）

```typescript
function stringInterpolationExamples(): void {
  let name: string = "ArkTS"
  let version: int = 5

  // 基本插值
  let msg: string = `Hello, ${name}! Version ${version}`

  // 嵌入表达式
  let calc: string = `2 + 3 = ${2 + 3}`

  // 隐式转换为 string
  let num: int = 42
  let str: string = `Value: ${num}`
}
```

---

## §7.35 Lambda 表达式

```typescript
function lambdaExamples(): void {
  // 完整签名 + 块体
  let f1: (x: int) => int = (x: int): int => { return x * 2 }

  // 表达式体（隐式 return）
  let f2: (x: int) => int = (x: int) => x * 2

  // 最短形式
  let f3: (x: int) => int = e => e

  // 变量捕获
  let captured: int = 0
  let increment: () => void = () => { captured++ }

  // 每次求值创建独立实例
  let factory: () => (() => int) = () => {
    let v: int = 0
    return () => { v++; return v }
  }
  let c1: () => int = factory()
  let c2: () => int = factory()
  // c1() 和 c2() 各自独立计数
}
```

---

## §7.36 常量表达式（Constant Expressions）

```typescript
// 编译期常量
const PI: double = 3.14159
const TWO_PI: double = PI * 2.0
const MASK: int = 0xFF
const HALF: int = 256 >> 1

// 常量表达式允许的构造：
// - 字面量
// - 常量引用
// - 一元 + - ~ !
// - 算术 * / % + -
// - 移位 << >> >>>
// - 关系 < <= > >=
// - 相等 == !=
// - 位运算 & ^ |
// - 条件 && ||
// - 三元 ? :
// - 括号

// 禁止：++ --
// const BAD: int = someVar++ // 编译错误
```
