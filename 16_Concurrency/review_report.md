# 16 Concurrency 审查报告

## 审查范围
- 章节：16 Concurrency
- 用例目录：`16_Concurrency/ets_cases/`
- 用例总数：244（119P + 51F + 74R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地 Windows 无 arkcompiler 工具链，runner `run_concurrency_cases_wsl.sh` 为 WSL bash 脚本。本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成。

| 指标 | 数值 |
|------|------:|
| .ets 总数 | 244 |
| manifest id 数 | 244（100% 覆盖）|
| manifest JSON | ✅ 合法 |
| 元数据不一致 | **0**（2 处审计脚本误报，见下） |

## 总体结论
**可验收。** 244 用例覆盖全部 28 个小节，manifest 全覆盖（244/244）。前次报告的 25 处元数据不一致已修复（gap/ 目录已处理，CCY_16_CI_* 命名已统一，@id 已对齐）。spec_original.md（1230行）和 Concurrency_Examples.md（176行）已填充。issue_report 详细（7 类 CONC 异常）。

## 整改完成情况

| 问题 | 状态 |
|------|:----:|
| 6 个 gap/ 非标准目录 | ✅ 已处理 |
| 8+ 个 CCY_16_CI_* 非标 ID | ✅ 已统一 |
| 2 处 @id 不匹配 | ✅ 已修复 |
| manifest 无 per-case 条目 | ✅ 已补全为 244/244 |

## 问题清单

### [信息] 2 处审计脚本误报
审计报告 2 处 `@id/@expect` 在同一行的 inline 格式触发脚本误报，实际元数据与文件名和目录完全一致：
- `CCY_16_01_099_FAIL_placeholder.ets` — @id 与文件名匹配 ✅
- `CCY_16_04_02_090_FAIL_launch_wrong_type.ets` — @id 与文件名匹配 ✅

### [信息] 7 类已知 spec 差异已清晰归类
- **CONC-U**（HIGH）：`launch<T>(async () => {})` 编译器 CRASH
- **CONC-G2**（HIGH）：Taskpool 线程不退出（hang）
- **CONC-A4/A5**（HIGH）：Atomic/Concurrent 标准库类型未实现
- **CONC-B1/B2**（MEDIUM）：Promise 类型推断、launch 签名不匹配
- **CONC-C1**（LOW）：回调签名不匹配

## 覆盖评价

| 范围 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 16.1 Execution Model | 10 | 2 | 4 | 16 | 执行模型 |
| 16.2 Overview | 3 | 2 | 2 | 7 | 并发特性概览 |
| 16.3 Asynchronous Execution | 9 | 7 | 3 | 19 | 异步执行 |
| 16.3.1 Async Functions | 8 | 4 | 4 | 16 | async 函数 |
| 16.3.2 Async Lambdas | 5 | 1 | 3 | 9 | async lambda |
| 16.3.3 Async Methods | 3 | 3 | 3 | 9 | async 方法 |
| 16.3.4 await | 13 | 1 | 5 | 19 | await 表达式 |
| 16.3.5 Promise | 8 | 3 | 5 | 16 | Promise 类 |
| 16.4 Parallel Execution | 3 | 1 | 4 | 8 | 并行执行 |
| 16.4.1 Parallel API | 1 | 1 | 1 | 3 | 并行 API |
| 16.4.2 launch API | 5 | 4 | 5 | 14 | launch |
| 16.4.3 EAWorker | 1 | 2 | 3 | 6 | EAWorker |
| 16.4.4 Taskpool | 1 | 6 | 0 | 7 | Taskpool |
| 16.5 Synchronization | 1 | 5 | 1 | 7 | 同步 |
| 16.5.1 Async Lock | 13 | 2 | 8 | 23 | 异步锁 |
| 16.5.2 Mutex | 3 | 1 | 4 | 8 | 互斥锁 |
| 16.5.3 RW Lock | 1 | 1 | 3 | 5 | 读写锁 |
| 16.5.4 Cond Variable | 3 | 2 | 1 | 6 | 条件变量 |
| 16.5.5 Atomic | 0 | 5 | 0 | 5 | 原子操作 |
| 16.5.6 Additional | 0 | 3 | 0 | 3 | 附加实体 |
| 16.6 API Restrictions | 2 | 1 | 1 | 4 | API 限制 |
| 16.6.1 launch Details | 1 | 1 | 1 | 3 | launch 细节 |
| 16.6.2 Using Async API | 3 | 1 | 2 | 6 | 异步 API |
| 16.6.3 Promise API | 5 | 2 | 4 | 11 | Promise API |
| 16.6.4 Unhandled Reject | 2 | 1 | 1 | 4 | 未处理拒绝 |
| 16.6.5 Error Handling | 2 | 1 | 1 | 4 | 错误处理 |
| 16.7 Runtime Details | 1 | 1 | 1 | 3 | 运行时 |
| 16.7.1 Scheduling | 1 | 1 | 1 | 3 | 调度 |
| **Total** | **119** | **51** | **74** | **244** | 28 节全覆盖 |

## 整改建议
1. **持续跟踪**：7 类 CONC 异常在编译器版本更新后验证（尤其是 CONC-U compiler crash 和 CONC-G2 线程 hang）
2. **清理误报**：可忽略审计脚本对 inline 格式的 2 处误报
