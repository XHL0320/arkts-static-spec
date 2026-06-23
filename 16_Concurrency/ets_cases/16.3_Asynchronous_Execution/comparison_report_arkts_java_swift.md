# 16.3 Asynchronous Execution - 跨语言对比报告 ArkTS / Java / Swift

## 概览

Asynchronous Execution（异步执行）涵盖 async/await、Promise 和异步函数。三语言均支持 async/await，但底层的实现机制略有不同。

## 章节对应关系

| ArkTS (§16.3) | Java (JLS) | Swift (Concurrency) |
|------|------|-------|
| async function | ❌（CompletableFuture） | async func |
| await expression | ❌（.get() blocking） | await |
| Promise class | CompletableFuture | Promise |
| async lambda | ❌ | { () async in } |
| async method | ❌ | async func |

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| async 关键字 | ✅ `async` | ❌ 无 | ✅ `async` |
| await 关键字 | ✅ `await` | ❌ 无（阻塞.get()）| ✅ `await` |
| Promise 类型 | Promise<T> | CompletableFuture<T> | Promise<T> |
| async 函数返回类型 | 必须 Promise | 任意（无约束） | 任意（隐式 Promise）|
| 非 async 函数含 await | ❌ 编译错误 | N/A | ❌ 编译错误 |
| async 在静态初始化 | ❌ 编译错误 | N/A | ❌ 编译错误 |

## 综合评分

| 维度 | ArkTS | Java | Swift |
|------|:----:|:----:|:-----:|
| async/await 语法支持 | ⭐⭐⭐⭐⭐ | ⭐ | ⭐⭐⭐⭐⭐ |
| 编译期约束检查 | ⭐⭐⭐⭐⭐ | ⭐ | ⭐⭐⭐⭐ |
| Promise 类型安全 | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 运行时模型 | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

## 核心结论

ArkTS 的 async/await 与 Swift 最为接近，均有关键字级别的语法支持。Java 缺少语言级 async/await，需依赖 CompletableFuture。ArkTS 的编译期约束检查（async 不在静态初始化、返回类型必须 Promise 等）比 Swift 更严格。

## ArkTS 设计建议

保持当前设计。严格的编译期约束有助于在编辑阶段捕获异步编程错误。
