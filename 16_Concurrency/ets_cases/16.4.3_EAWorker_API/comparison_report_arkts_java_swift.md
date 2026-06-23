# Cross-Language Comparison: 16.4.3 EAWorker API

## ArkTS `EAWorker` API vs. Java vs. Swift

### Concept Mapping

| ArkTS | Java | Swift |
|-------|------|-------|
| `EAWorker` | `Thread` / `Worker` (custom) | `Task` (with isolation) |
| `EAWorker.postMessage()` | `Thread.interrupt()` / message queue | `Task.yield()` / async stream |

### Key Differences

| Aspect | ArkTS (EAWorker) | Java (Thread) | Swift (Task / Actors) |
|--------|------------------|---------------|------------------------|
| **Worker type** | Actor-like worker with message passing | Raw thread or `ThreadPoolExecutor` | Actor isolation model |
| **Stdlib requirement** | **Yes** (`@arkts.stdlib`) | No (built into JVM) | No (built into Swift runtime) |
| **Message passing** | Explicit `postMessage` / `onmessage` | Shared memory / `BlockingQueue` | Actor methods / `AsyncStream` |
| **Isolation** | Not fully specified | Manual synchronization | Compiler-enforced actor isolation |
| **Maturity** | **Placeholder only** | Mature and battle-tested | Mature (Swift 5.5+) |

### Observations
- **EAWorker is ArkTS-specific** and has no direct Java or Swift equivalent at the same abstraction level.
- Java offers `Thread` and `ExecutorService` for low-level concurrency; Swift offers structured tasks and actors.
- The EAWorker concept resembles a lightweight Web Worker (from the web platform) applied to ArkTS.
- The stdlib dependency is a **significant design limitation** compared to Java/Swift where worker-like concurrency is built into the runtime.
- Until EAWorker is fully implemented and testable without stdlib, it remains a gap relative to Java and Swift concurrency primitives.
