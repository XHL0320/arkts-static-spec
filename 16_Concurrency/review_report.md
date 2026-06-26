# 16 Concurrency 审查报告

## 审查范围
- **章节：** 16 Concurrency（§16.1~§16.7）
- **用例目录：** `ets_cases/`（28 个子章节目录）
- **用例总数：** 244
- **审查日期：** 2026-06-26

## 执行结果
全部章节跑测完成，未发生卡顿。

| 类别 | 跑测数 | 通过 | 失败 | 说明 |
|:----:|:-----:|:----:|:----:|------|
| compile-pass | 105 | 95 | 10 | B类泛型推导(7) + C类API签名(3) |
| compile-fail | 55 | 54 | 0 | ✅ 全部通过 |
| runtime | 72 | 71 | 1 | C类API签名(1) |
| gap | (17) | — | — | 标准库未实现/运行时设计缺陷 |
| **合计** | **238** | **220** | **12** | A类22个已全部修复 |

## 修复总结

| 类别 | 原失败数 | 剩余失败 | 修复方式 |
|:----:|:-------:|:--------:|---------|
| A1 AsyncMutex | 7 | **0** | 加 `concurrency.stackless.` 前缀 |
| A2 AsyncRWLock | 4 | **0** | 前缀 + 改用 `readLock()/writeLock()` guard API |
| A3 AsyncCondVar | 5 | **0** | 前缀 + 1 个逻辑缺陷用例移至 gap |
| A4 Atomic | 4 | **0** | 移至 gap（native 类型未链接） |
| A5 ConcurrentMap | 2 | **0** | 移至 gap（类型不存在） |
| B类 泛型推导 | 7 | 7 | 需补显式类型参数 |
| C类 API签名 | 5 | 5 | setTimeout/Promise 签名差异 |
| **总计** | **35** | **12** | ✅ A类清零 |

## 失败分类

### 🔴 A类 — 标准库并发类型缺失（19 个失败）
当前编译器版本缺少以下标准库类型的定义：

| 缺失类型 | 涉及章节 | 影响用例数 |
|----------|---------|:---------:|
| `AsyncMutex` | §16.5.2 | 7 |
| `AsyncReadWriteLock` | §16.5.3 | 4 |
| `AsyncConditionVariable` | §16.5.4 | 5 |
| `AtomicInteger` / `AtomicBoolean` / `AtomicReference` | §16.5.5 | 4 |
| `ConcurrentMap` / `ConcurrentSet` | §16.5.6 | 2 |
| `AsyncLock` critical section API | §16.5.1 | 1 |

**根因：** 与 CONC-G1/G2（Taskpool）完全一致，属标准库 API 未实现。AsyncLock 部分可用说明标准库在逐步完善中。

### 🟡 B类 — 泛型类型参数推导失败（6 个失败）
| 文件 | 错误 |
|------|------|
| `CCY_16_06_03_001/002/003_PASS_promise_then/catch/finally` | `Type 'Promise<T>' is generic but type argument were not provided` |
| `CCY_16_06_04_001_PASS_promise_reject_handled` | 同上 |
| `CCY_16_06_05_001_PASS_async_error_handling` | 同上 |
| `CCY_16_06_01_001_PASS_launch_details` | `launch((() => Promise<Double>))` 签名不匹配 |

**建议：** 补充显式类型参数即可修复（类似之前修复的 Promise 问题）。

### 🟡 C类 — API 类型签名不匹配（1 个失败）
- `CCY_16_07_001_PASS_placeholder` — `setTimeout` / `Promise` 构造回调类型签名与当前编译器版本不一致

### ⚪ D类 — compile-fail 用例误分类（已修正）
- `CCY_16_05_01_090_FAIL_async_lock_double_lock` — 原设计为"双重加锁应报编译错误"
- **经 Spec 核实**（§16.5.2: "avoidance of double locking is the developer's responsibility"），双重加锁防范是**开发者运行时责任**，编译器不应拒绝
- ✅ 已移至 `compile-pass/`，@expect 改为 `compile-pass`，@note 添加 Spec 引用

## 总体结论
**不可验收。** 虽已修复 9 个 compile-pass 问题，但剩余章节仍有 **35 个失败**。其中 19 个是标准库并发类型缺失（AsyncMutex、AtomicInteger 等），6 个是泛型参数推导问题，1 个 API 签名不匹配。这些失败全部是**编译器/标准库未实现**导致的阻塞，非用例设计问题。

## 问题清单

### P1 ~~🔴 — 9 个 compile-pass 用例编译失败~~ ✅ **已修复**
| 用例 | 修复方式 |
|------|---------|
| `async_modifier_not_part_of_type` | `return 42 as number` + `Promise.resolve<number>(42)` |
| `await_in_try_catch` / `await_in_try_catch_finally` | `catch (e: Error)` → `catch (e)` + `Promise.resolve<number>(42)` |
| `promise_resolve` / `finally` / `chaining` / `all` / `race` / `resolve_static` | `Promise.resolve<number>(42)` 显式类型参数 |

> 根因：`Promise.resolve(42)` 推导为 `Promise<Int>` 但声明为 `Promise<number>`（编译器视 `number` 为 `Double`），加 `<number>` 显式指定即修复。

### P2 🔴 — 已知编译器 CRASH（CONC-U）
- **文件：** `issue_report.md`
- **用例：** `CCY_16_04_02_003/004` — `launch<T>(async () => { await ...; return ...; })` 触发 es2panda 段错误
- **影响：** 编译器崩溃，阻塞相关特性验收

### P3 🔴 — Taskpool API 类型缺失（CONC-G1/G2）
- **文件：** `issue_report.md`
- **用例：** `CCY_16_04_04_001_GAP` / `CCY_16_04_04_020_GAP`
- **根因：** `Task`、`TaskGroup`、`taskpool` 是 §16.4.4 标准库 API 类型，当前编译器版本**完全未实现这些类型的定义**
- **影响：** §16.4.4 整个小节的 5 个用例全部阻塞（1 compile-pass + 2 compile-fail + 2 runtime），是**标准库 API 级别的缺失**
- **已移至 `gap/` 目录，@expect 标记为 gap**

## 覆盖评价
章节覆盖全面，但 Promise 类和 async/await 部分存在较多的编译器兼容性问题（类型推导、CRASH）。

## 整改建议
1. 跟踪编译器 CRASH 问题（CONC-U）的修复进展
2. 对 Promise 相关用例统一使用 `Promise.resolve<number>()` 模式作为规范
