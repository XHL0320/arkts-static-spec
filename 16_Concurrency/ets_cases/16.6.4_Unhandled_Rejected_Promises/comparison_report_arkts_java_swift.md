# 16.6.4 Unhandled Rejected Promises - 跨语言对比报告（ArkTS / Java / Swift）

## 1. 概览

ArkTS 未处理 reject 机制定义 Promise reject 但无 catch 的场景行为，对应 JavaScript 的 unhandledrejection 事件、Java 的未处理异常、Swift 的结构化任务错误保证。

## 2. 章节对应关系

| ArkTS (§16.6.4) | Java | Swift (Concurrency) |
|------|------|-------|
| reject + catch 处理 | CompletableFuture.exceptionally | do/catch 内 await |
| reject 无 catch（语法允许） | CF 未处理异常 | 结构化任务不允许未处理 |

## 3. 关键差异

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 未处理 reject 行为 | 运行时 unhandled 事件 | CF.get() 抛出 ExecutionException | 编译期强制处理（结构化） |
| 编译期检查 | ❌ 不报错 | ⚠️ 检查型异常 | ✅ 必须 catch 或传播 |
| 运行时安全 | ⚠️ 可能静默丢失 | ❌ 线程终止 | ✅ 保证传播 |

## 4. 综合评分

| 维度 | ArkTS | Java | Swift |
|------|:----:|:----:|:-----:|
| 未处理检测 | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 错误安全性 | ⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

## 5. 核心结论

ArkTS 沿用了 JavaScript 的 Promise 未处理策略——编译期允许未处理 reject，运行时通过事件机制报告。Swift 则通过结构化并发在编译期强制错误处理，安全性更高。
