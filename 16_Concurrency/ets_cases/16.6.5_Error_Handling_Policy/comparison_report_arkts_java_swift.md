# 16.6.5 Error Handling Policy - 跨语言对比报告（ArkTS / Java / Swift）

## 1. 概览

ArkTS 错误处理策略：所有错误应被处理或视为未捕获触发程序终止。

## 2. 章节对应关系

| ArkTS (§16.6.5) | Java (JLS) | Swift (Concurrency) |
|------|------|-------|
| try/catch 捕获 await 异常 | try/catch | do/catch |
| job 异常→Promise reject | CompletableFuture.completeExceptionally | Task 抛出→调用方 catch |
| main job 抛出→未捕获终止 | main() 抛出→JVM 终止 | @main 抛出→程序终止 |
| 运行时 job 无 Promise→未捕获 | 未捕获线程异常 | unstructured Task 未捕获 |

## 3. 关键差异

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| async 错误处理 | try/catch + await | try/catch（阻塞） | do/catch + await |
| 未捕获终止 | ✅ main job 抛出 | ✅ main() 抛出 | ✅ @main 抛出 |
| 运行时 job 保护 | ❌ 未捕获 | ⚠️ 未捕获异常处理器 | ⚠️ 结构化任务保证 |

## 4. 综合评分

| 维度 | ArkTS | Java | Swift |
|------|:----:|:----:|:-----:|
| async 错误处理 | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 未捕获策略 | ⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |

## 5. 核心结论

ArkTS 的错误处理策略与 Java/Swift 一致：未捕获错误导致程序终止。async 错误的 try/catch 模式与 Swift 最为接近。
