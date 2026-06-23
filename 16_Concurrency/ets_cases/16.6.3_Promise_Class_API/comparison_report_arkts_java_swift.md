# 16.6.3 Promise Class API - 跨语言对比报告（ArkTS / Java / Swift）

## 1. 概览

ArkTS Promise 类提供 then/catch/finally 接口，与 Java `CompletableFuture` 和 JavaScript `Promise` 设计一致，Swift 则以 async/await 替代 Promise 链。

## 2. 章节对应关系

| ArkTS (§16.6.3) | Java | Swift (Concurrency) |
|------|------|-------|
| Promise.then | CompletableFuture.thenApply | await（内隐回调） |
| Promise.catch | CompletableFuture.exceptionally | do/catch |
| Promise.finally | CompletableFuture.whenComplete | defer |

## 3. 关键差异

| 维度 | ArkTS | Java (CF) | Swift |
|------|-------|-----------|-------|
| 成功回调 | `.then(v => {})` | `.thenApply(v -> ...)` | `let v = await ...` |
| 异常回调 | `.catch(e => {})` | `.exceptionally(e -> ...)` | `catch { e in ... }` |
| 最终执行 | `.finally(() => {})` | `.whenComplete(...)` | `defer { ... }` |
| 链式风格 | 方法链（类 JS） | 方法链 | 结构化（await） |

## 4. 综合评分

| 维度 | ArkTS | Java | Swift |
|------|:----:|:----:|:-----:|
| API 完整性 | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
| 可读性 | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

## 5. 核心结论

ArkTS Promise API 沿用了 JavaScript 风格的 then/catch/finally 链式模式，与 Java CompletableFuture 功能等价。Swift 则通过 async/await 结构化并发消除了显式 Promise 链的需求，更为现代化。
