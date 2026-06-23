# 16.5 Synchronization - 跨语言对比报告 ArkTS / Java / Swift

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| Lock | AsyncLock | ReentrantLock | NSLock |
| Mutex | AsyncMutex | synchronized | os_unfair_lock |
| RWLock | AsyncRWLock | ReentrantReadWriteLock | pthread_rwlock |
| CondVar | AsyncCondVar | Condition | NSCondition |
| Atomics | Atomic classes | AtomicInteger/AtomicReference | AtomicInt/AtomicReference |

## 核心结论

三语言均提供类似的同步原语，ArkTS 的异步锁与 async/await 集成更自然。
