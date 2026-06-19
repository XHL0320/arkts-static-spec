# 9.7.4 异步方法 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `09_Classes/run_classes_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 1 | 1 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **4** | **4** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（2/2 通过）

验证合法的 async 方法声明可通过编译：

- **CLS_09_07_014_PASS_ASYNC_METHOD_BASIC.ets** -- async 方法基本用法。测试 `async` 修饰的静态方法和实例方法，返回类型为 `Promise<T>`，在 `async function` 中通过 `await` 表达式调用异步方法并正确赋值给对应类型变量。编译通过。
- **CLS_09_07_042_PASS_ASYNC_RETURN_PROMISE.ets** -- async 方法返回 Promise。测试类中声明 async 方法 `fetch(): Promise<string>`，通过 `return` 语句返回字符串字面量，编译器自动将其包装为 Promise。编译通过。

### compile-fail（1/1 通过）

验证不合法 async 声明的编译期报错：

- **CLS_09_07_043_FAIL_ASYNC_ABSTRACT.ets** -- 抽象 async 方法。在抽象类中使用 `abstract async foo(): void` 声明，预期编译失败。ArkTS 不允许抽象方法同时使用 async 修饰符。编译器正确拒绝该声明并报告错误。

### runtime（1/1 — ark VM 真实执行 + assert）

验证 async 方法在 ark VM 上的运行时行为：

- **CLS_09_07_044_RUNTIME_ASYNC_CALL.ets** -- 运行时 async 方法调用。类中声明 async 方法 `getData(): Promise<int>` 返回 42，在 `main` 函数中执行并通过 `console.log("verified")` 输出确认标记。ark VM 正确执行，输出 verified，运行时行为符合预期。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7.4_Async_Methods" bash run_classes_cases_wsl.sh
```
