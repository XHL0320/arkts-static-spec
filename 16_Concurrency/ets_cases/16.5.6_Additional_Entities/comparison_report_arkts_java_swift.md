# Cross-Language Comparison — §16.5.6 Additional Entities (Concurrent Container)

## ArkTS (ETS)
- **Primitive**: Additional Entities (Concurrent Container) via `@arkts.concurrent` (stdlib-dependent)
- **Declaration**: Supported at compile-pass level
- **Runtime**: ❌ Not yet available (blocked by stdlib)
- **Fail Cases**: Tests unenforceable rules at compile-fail level

## Java
- **Primitive**: `java.util.concurrent.locks.ReentrantLock` (Java 5+)
- **Key Features**:
  - Explicit `lock()` / `unlock()` paired with `try-finally`
  - `tryLock()` with timeout
  - `newCondition()` for condition queues
- **Comparison**: Java provides a mature, runtime-verified implementation. ArkTS currently lacks runtime execution for equivalent primitives.

## Swift
- **Primitive**: `actor` (Swift 5.5+)
- **Key Features**:
  - Compiler-enforced mutual exclusion via actor isolation
  - `await` calls across actor boundaries
  - No explicit lock/unlock API (implicit synchronization)
- **Comparison**: Swift's actor model eliminates manual lock management. ArkTS's explicit locks offer finer control but require more developer discipline.
