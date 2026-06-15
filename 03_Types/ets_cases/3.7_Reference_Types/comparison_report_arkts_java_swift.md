# 3.7 Reference Types - ArkTS vs Java vs Swift

## 一、引用类型集合对比

| 引用类型 | ArkTS | Java | Swift |
|---------|-------|------|-------|
| Class | ✅ | ✅ | ✅ |
| Interface | ✅ | ✅ | ✅（protocol）|
| Array | ✅ | ✅ | ✅ |
| FixedArray | ✅（独有） | T[] 默认固定 | ❌ |
| Tuple | ✅ | ❌ | ✅ |
| Function | ✅ | Function<T,R> | ✅ |
| Union | ✅ | ❌ | ❌ |
| Literal | ✅（仅 string）| ❌ | ❌ |
| Any | ✅ | Object | Any |
| string | ✅（引用类型） | ✅（class） | ❌（struct）|
| bigint | ✅ | BigInteger（class）| ❌ |
| never | ✅ | ❌ | Never |
| null | ✅ | ✅ | nil |
| void/undefined | ✅ | void（仅返回）| Void = ()|
| Type Parameter | ✅ | ✅ | ✅ |

## 二、引用语义对比

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| Class 引用语义 | ✅ | ✅ | ✅ |
| Array 引用语义 | ✅ | ✅ | ⚠️（值语义但 COW）|
| String 引用 vs 值 | 引用（不可变）| 引用（不可变）| 值（COW）|
| 多变量共享对象 | ✅ | ✅ | ⚠️（Array 复制）|

## 三、关键差异

### Swift Array 是值类型（不共享）
```swift
var a = [1, 2, 3]
var b = a       // 复制（值语义）
b[0] = 100      // a[0] 仍为 1
```

### ArkTS/Java Array 是引用类型（共享）
```typescript
let a: int[] = [1, 2, 3]
let b: int[] = a   // 同一数组
b[0] = 100         // a[0] 变为 100
```

## 四、核心结论

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 引用类型种类 | ⭐⭐⭐⭐⭐（最丰富）| ⭐⭐⭐ | ⭐⭐⭐⭐ |
| 引用 vs 值清晰 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐（Array 反直觉）|
| Tuple/Union 一等 | ⭐⭐⭐⭐⭐ | ❌ | ⭐⭐⭐⭐（仅 Tuple）|

## 五、对应规范

| 语言 | 规范 |
|------|------|
| ArkTS | §3.7 Reference Types |
| Java | JLS §4.3 |
| Swift | TSPL: Classes, Structures |
