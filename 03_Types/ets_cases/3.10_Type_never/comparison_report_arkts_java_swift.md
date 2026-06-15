# 3.10 Type never - ArkTS vs Java vs Swift

## 一、never 类型对比

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 类型名 | never | ❌（无对应） | Never |
| 函数返回类型 | ✅ | ⚠️（用 throws + 设计模式）| ✅ |
| 变量类型 | ✅ | ❌ | ✅ |
| 参数类型 | ✅ | ❌ | ✅ |
| Bottom type 语义 | ✅ | ❌ | ✅ |

## 二、用例对照

### never 函数（spec §3.10 例子）

```typescript
// ArkTS
function foo(): never { throw new Error("no return") }
let x: never = foo()
```

```java
// Java（无 never，用 throws）
void foo() throws RuntimeException {
    throw new RuntimeException("no return");
}
// 但 Java 无类型保证调用者 unreachable
```

```swift
// Swift（有 Never）
func foo() -> Never {
    fatalError("no return")
}
```

## 三、综合评分

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| Bottom type 支持 | ⭐⭐⭐⭐⭐ | ❌ | ⭐⭐⭐⭐⭐ |
| 穷举检查 | ⭐⭐⭐⭐⭐ | ❌ | ⭐⭐⭐⭐⭐ |
| 类型安全 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

## 四、核心结论

- **ArkTS = Swift > Java**：never 是现代静态语言的标志特性
- ArkTS 的 never 设计与 Swift Never 完全对应
- Java 完全缺失此概念，只能用 RuntimeException 间接表达
