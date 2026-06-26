# 03 Types 示例代码

本章收录 ArkTS §03 类型系统的最小可编译示例。

---

## 值类型

```typescript
let a: int = 42
let b: long = 100_000_000_000L
let c: short = 32767
let d: byte = 255
let f: float = 3.14f
let g: double = 3.1415926535
let flag: boolean = true
```

## 字符串

```typescript
let s: string = "hello"
let len: int = s.length
let sub: string = s.substring(0, 2)
```

## bigint

```typescript
let big: bigint = 100_000_000_000_000_000n
let sum: bigint = big + 1n
```

## 数组

```typescript
let arr: int[] = [1, 2, 3]
let ro: readonly int[] = [1, 2, 3]
// arr = ro  // compile-time error: readonly → writable
```

## 联合类型

```typescript
let u: int | string = 42
u = "hello"  // OK
```

## 函数类型

```typescript
type Fn = (x: int) => int
let f: Fn = (x: int): int => x * 2
```

## 工具类型

```typescript
class Point { x: int = 0; y: int = 0 }

type PartialPoint = Partial<Point>
type ReadonlyPoint = Readonly<Point>
type Named = { name: string }
type RecordNames = Record<string, Named>
```

## Any 类型

```typescript
let a: Any = 42
a = "hello"
// a.field  // compile-time error: Any has no fields
```
