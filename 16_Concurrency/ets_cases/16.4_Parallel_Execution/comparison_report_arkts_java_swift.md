# 16.4 Parallel Execution - 跨语言对比报告 ArkTS / Java / Swift

## 概览

Parallel Execution（并行执行）涵盖 launch API、EAWorker 和 Taskpool。这些是标准库级 API，三语言各有不同的并行编程模型。

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 并行执行 API | launch / EAWorker / Taskpool | ExecutorService / ForkJoinPool | Task / TaskGroup |
| 线程模型 | Worker thread | OS thread pool | Cooperative thread pool |
| 结构化并发 | ✅ Taskpool | ❌ | ✅ TaskGroup |
| 独占线程 | ✅ EAWorker | ✅ Thread | ❌ |
| 异步支持 | ✅ launch + async | ❌ CompletableFuture | ✅ Task + async |

## 核心结论

ArkTS 并行 API 与 Swift 的结构化并发最为接近。Java 的线程模型更底层。
