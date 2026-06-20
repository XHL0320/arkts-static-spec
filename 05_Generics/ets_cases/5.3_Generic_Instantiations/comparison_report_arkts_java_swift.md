# 5.3 Generic Instantiations - 跨语言对比报告 ArkTS / Java / Swift

## 概览

Generic Instantiations（泛型实例化）涵盖泛型类型的使用方式，包括显式实例化、隐式类型推断和参数校验。三语言在此区域行为高度一致。

## 章节对应关系

| ArkTS (§5.3) | Java (JLS §4.5) | Swift (Generics) |
|------|------|-------|
| 显式实例化 | Parameterized Types | Specialized Types |
| 隐式推断 | Type Inference (§15.12.2) | Type Inference |
| 类型参数校验 | Type Argument Checking | Generic Argument Checking |
| 部分实例化 | ❌ | Partial Specialization |

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 显式实例化 | ✅ `G<T>` | ✅ `G<T>` | ✅ `G<T>` |
| 隐式推断 | ✅ (函数) | ✅ (Java 8+) | ✅ |
| 类型参数数量校验 | ✅ | ✅ | ✅ |
| 通配符类型 | `*` (推断) | `?` | `some`/`any` |
| 部分实例化 | ❌ | ❌ | ✅ |
| 约束校验时机 | 编译期 | 编译期 (擦除后) | 编译期 |

## 用例 1:1 对照

### 显式实例化
| ArkTS | Java | Swift |
|-------|------|-------|
| `let b: Box<number> = new Box<number>(1);` | `Box<Integer> b = new Box<>(1);` | `let b = Box<Int>(value: 1)` |

### 隐式类型推断
| ArkTS | Java | Swift |
|-------|------|-------|
| `function id<T>(x: T): T { return x; }` | `<T> T id(T x) { return x; }` | `func id<T>(_ x: T) -> T { x }` |
| `let r = id(42);` | `var r = id(42);` | `let r = id(42)` |

## 综合评分

| 维度 | ArkTS | Java | Swift |
|------|:----:|:----:|:-----:|
| 实例化灵活性 | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 类型推断能力 | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 错误检查严格性 | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 参数校验完整性 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

## 核心结论

三语言在泛型实例化核心行为上高度一致，均支持显式实例化和隐式类型推断。ArkTS 不支持部分实例化（Swift 支持），但在约束校验上比 Java 更严格（Java 因类型擦除在擦除后才可能暴露问题）。

## ArkTS 设计建议

保持当前设计。隐式推断是从函数参数推导类型参数的关键特性，用户体验与 Java/Swift 一致。
