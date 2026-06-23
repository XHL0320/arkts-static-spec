# 16.3.3 Asynchronous Methods - 跨语言对比报告（ArkTS / Java / Swift）

## 1. 概览

ArkTS async 方法语法与 TypeScript 一致，覆写规则与 Java/Swift 类似。Java 方法通过返回 CompletableFuture 实现异步，Swift 使用 async func 关键字。

## 2. 章节对应关系

| ArkTS (§16.3.3) | Java (JLS) | Swift (Concurrency) |
|------|------|-------|
| async 实例方法 | 实例方法返回 CF<T> | `async func` 实例方法 |
| async 静态方法 | 静态方法返回 CF<T> | `static async func` |
| async 方法覆写协变 | 返回类型协变（Java 5+） | 返回类型协变 |
| async 抽象方法禁止 | 抽象方法允许返回 CF | 不允许 `async` + `abstract` |

## 3. 关键差异

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 实例方法语法 | `async method()` | `CF<T> method()` | `async func method()` |
| 静态方法语法 | `static async` | `static CF<T>` | `static async func` |
| 覆写协变 | ✅ Promise<Sub> | ✅ 返回类型协变 | ✅ 返回类型协变 |
| 抽象 async | ❌ 禁止 | ⚠️ 允许返回 CF | ❌ 禁止 |

## 4. 综合评分

| 维度 | ArkTS | Java | Swift |
|------|:----:|:----:|:-----:|
| 方法声明 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 覆写灵活性 | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 抽象支持 | ⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐ |

## 5. 核心结论

ArkTS async 方法语法与 Swift 高度一致。返回类型协变规则与 Java/Swift 相同，保证类型安全。禁止 async 抽象方法简化了运行时实现，与 Swift 一致。
