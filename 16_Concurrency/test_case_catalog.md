# 16 Concurrency — 统一测试用例目录

## 总览

| 子章节 | compile-pass | compile-fail | runtime | 合计 |
|--------|:-----------:|:-----------:|:-------:|:----:|
| 16.1 Execution Model | 10 | 2 | 4 | 16 |
| 16.2 Overview of Concurrency | 3 | 2 | 2 | 7 |
| 16.3 Asynchronous Execution | 9 | 7 | 3 | 19 |
| 16.3.1 Async Functions | 8 | 4 | 4 | 16 |
| 16.3.2 Async Lambdas | 5 | 1 | 3 | 9 |
| 16.3.3 Async Methods | 3 | 3 | 3 | 9 |
| 16.3.4 await Expression | 13 | 1 | 5 | 19 |
| 16.3.5 Promise Class | 8 | 3 | 5 | 16 |
| 16.4 Parallel Execution | 3 | 1 | 4 | 8 |
| 16.4.1 Parallel API | 1 | 1 | 1 | 3 |
| 16.4.2 launch API | 5 | 4 | 5 | 14 |
| 16.4.3 EAWorker | 1 | 2 | 3 | 6 |
| 16.4.4 Taskpool | 1 | 2 | 4 | 7 |
| 16.5 Synchronization | 1 | 5 | 1 | 7 |
| 16.5.1 AsyncLock | 12 | 3 | 8 | 23 |
| 16.5.2 AsyncMutex | 3 | 1 | 4 | 8 |
| 16.5.3 AsyncRWLock | 1 | 1 | 3 | 5 |
| 16.5.4 AsyncCondVar | 3 | 1 | 2 | 6 |
| 16.5.5 Atomic Ops | 1 | 1 | 3 | 5 |
| 16.5.6 Additional | 1 | 1 | 1 | 3 |
| 16.6 API Restrictions | 2 | 1 | 1 | 4 |
| 16.6.1 launch Details | 1 | 1 | 1 | 3 |
| 16.6.2 Using Async API | 3 | 1 | 2 | 6 |
| 16.6.3 Promise API | 5 | 2 | 4 | 11 |
| 16.6.4 Unhandled Reject | 2 | 1 | 1 | 4 |
| 16.6.5 Error Handling | 2 | 1 | 1 | 4 |
| 16.7.1 Scheduling Rules | 1 | 1 | 1 | 3 |
| 16.7 Runtime Details | 1 | 1 | 1 | 3 |
| **总计** | **109** | **55** | **80** | **244** |
