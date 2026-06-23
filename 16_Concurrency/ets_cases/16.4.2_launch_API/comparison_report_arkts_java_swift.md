# Cross-Language Comparison: 16.4.2 launch API

## ArkTS `launch` API vs. Java vs. Swift

### Concept Mapping

| ArkTS | Java | Swift |
|-------|------|-------|
| `launch(lambda)` | `ExecutorService.submit(Callable)` | `Task.detached { ... }` |
| `launch(async () => T)` | `CompletableFuture.supplyAsync()` | `Task.detached { await ... }` |
| `launch<T>(fn)` | `ExecutorService.submit(Callable<T>)` | `Task.detached { ... } as T` |

### Key Differences

| Aspect | ArkTS (launch) | Java (ExecutorService) | Swift (Task.detached) |
|--------|----------------|------------------------|------------------------|
| **Async by default** | `launch` accepts both sync and async functions | Must explicitly use `submit` or `supplyAsync` | `Task.detached` always runs asynchronously |
| **Return type** | Returns `Promise<T>` | Returns `Future<T>` | Returns `Task<T, Error>` |
| **Scheduling** | Managed by ArkTS runtime | Requires explicit `ExecutorService` | Managed by Swift runtime (global cooperative pool) |
| **Type parameter** | Explicit `launch<T>` supported | Generic `Callable<T>` | Generic task return type |
| **Cancellation** | Not directly exposed | `Future.cancel()` | `Task.cancel()` |

### Observations
- ArkTS `launch` API closely mirrors `Task.detached` in Swift, with a similar ergonomic design.
- Java requires more boilerplate (thread pool creation, explicit `Callable`/`Runnable`).
- The ability to pass both sync and async functions to `launch` is a unique ArkTS affordance not directly available in Java or Swift without wrapping.
- The API is clean and consistent; no cross-language deficiencies identified.
