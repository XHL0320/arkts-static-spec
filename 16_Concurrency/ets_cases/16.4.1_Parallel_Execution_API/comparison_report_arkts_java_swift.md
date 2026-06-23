# Cross-Language Comparison: 16.4.1 Parallel Execution API

## ArkTS `parallel_execution` API vs. Java vs. Swift

### Concept Mapping

| ArkTS | Java | Swift |
|-------|------|-------|
| `parallel_execution` API | `ExecutorService.invokeAll()` / `CompletableFuture.allOf()` | `Task.withGroup()` / `async let` |

### Key Differences

| Aspect | ArkTS (Parallel Execution API) | Java (ExecutorService) | Swift (Task.detached / async let) |
|--------|--------------------------------|------------------------|-----------------------------------|
| **Concurrency model** | Actor-based, async/await | Thread pool based | Structured concurrency (tasks) |
| **Task grouping** | API-driven grouping | `invokeAll()` returns list of Futures | `withTaskGroup` for dynamic tasks |
| **Error propagation** | Via Promise rejection | Via `ExecutionException` | Via `throws` rethrow in task group |
| **Cancellation** | Not explicitly tested | `Future.cancel()` | `TaskGroup.cancelAll()` |
| **Return value** | Via Promise / async return | `Future.get()` | Direct return from child task |

### Observations
- The ArkTS parallel execution API provides a lightweight mechanism similar to Java's `ExecutorService` but with an async/await syntax closer to Swift.
- Java requires explicit thread pool management; Swift's structured concurrency enforces strict parent-child task relationships.
- ArkTS strikes a balance with a simpler API surface but less fine-grained control than Java.
- No significant design gaps identified relative to Java/Swift for this specific feature.
