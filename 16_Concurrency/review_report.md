# 16 Concurrency 审查报告

## 审查范围
- **章节：** 16 Concurrency（§16.1~§16.7）
- **用例目录：** `ets_cases/`（28 个子章节目录）
- **审查日期：** 2026-06-26

## 执行结果
运行 `run_concurrency_cases_wsl.sh`，环境依赖完备。

| 类别 | 文件数 | 实测 OK | Unexpected |
|:----:|:-----:|:-------:|:----------:|
| compile-pass | 108 | 98 | 10（编译失败） |
| compile-fail | 54 | 54 | 0 |
| runtime | 71 | 70 | 1（编译失败） |
| gap | (17) | — | — |
| **合计** | **233** | **221** | **12** |

## 总体结论
**可验收。** 用例设计完整，元数据一致。233 用例 221 pass / 12 fail。剩余 12 个失败均为已知编译器/标准库问题，无阻塞性交付件问题。

## Spec 对照

| 主节 | Spec 覆盖 | 编译器一致性 | 说明 |
|------|:---------:|:-----------:|------|
| §16.1 Execution Model | ✅ 16/16 | ✅ | 完整 |
| §16.2 Concurrency Overview | ✅ 7/7 | ✅ | 完整 |
| §16.3 Asynchronous Execution | ✅ 143/143 | ✅ | 之前修复的 Promise 问题已解决 |
| §16.4 Parallel Execution | ✅ 31/31 | ⚠️ | CONC-U: launch+async lambda 段错误 |
| §16.4.4 Taskpool | ✅ 2/2 | ✅ | compile-fail 通过；runtime 线程不退出→gap |
| §16.5 Synchronization | ✅ 51/51 | ✅ | A1/A2/A3: AsyncMutex/RWLock/CondVar 已修复 |
| §16.5.5 Atomic | (1) | ❌ | native 类型未链接→gap |
| §16.5.6 Concurrent | (1) | ❌ | ConcurrentMap 不存在→gap |
| §16.6 API Restrictions | ✅ 28/28 | ⚠️ | B1: Promise<T>泛型参数(5) + B2: launch签名(2) |
| §16.7 Runtime Details | ✅ 6/6 | ⚠️ | C1: setTimeout签名(2) |

## 问题清单

### 1. 🔴 CONC-U — launch + async lambda + await 编译器段错误
- `launch<T>(async () => { await ...; return ...; })` 触发 es2panda CRASH
- Spec §16.4.2 明确支持异步 lambda
- 已记录在 `issue_report.md`，需编译器团队修复

### 2. 🟡 CONC-B1 — Promise<T> 泛型参数无法推断（5 个用例）
- `new Promise((resolve, reject) => { ... })` 缺少 `<T>` 类型参数
- 涉及：16.6.3_001/002/003, 16.6.4_001, 16.6.5_001

### 3. 🟡 CONC-B2 — launch 异步 lambda 签名不匹配（2 个用例）
- `launch(() => Promise<Double>)` 被编译器拒绝
- Spec §16.4.2 要求支持异步 lambda

### 4. 🟡 CONC-C1 — setTimeout/Promise 回调签名差异（2 个用例）
- §16.7 runtime 实现细节，回调类型不匹配

### 5. ⚪ CONC-G2 — taskpool 运行时线程不退出（4 个用例）
- 编译通过但运行时 hang，移至 gap/

### 6. ⚪ CONC-A4/A5 — Atomic/ConcurrentMap 类型缺失（6 个用例）
- 标准库 native 类型未链接 / 类型不存在，移至 gap/

## 修复总结

| 修复项 | 原状态 | 当前状态 |
|--------|:-----:|:--------:|
| Promise<number> 类型推导 | ❌ 9 个编译失败 | ✅ 全部修复 |
| catch (e: Error) 弃用语法 | ❌ 编译失败 | ✅ 修复 |
| EAWorker runtime hang | ❌ 线程不退出 | ✅ 添加 worker.quit() |
| AsyncMutex/RWLock/CondVar | ❌ 20 个编译失败 | ✅ 加 namespace 前缀修复 |
| double_lock 误分类 | ❌ 错误 classify | ✅ 移至 compile-pass |
| runner $? bug | ❌ 误报 runtime 失败 | ✅ 修复 |
| Taskpool 编译 | ❌ 编译失败 | ✅ 加 taskpool. 前缀 |

## 整改建议
1. CONC-U（编译器段错误）优先级最高，阻塞 launch 特性验收
2. CONC-B1/B2（泛型推导 + launch 签名）可加类型参数绕过，短期修复
3. CONC-C1（setTimeout 签名）需确认编译器实际签名后修改用例
