# 8.14 throw 语句 - 测试执行报告

**测试日期：** 2026-06-18
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **9** | **9** | **0** | **100%** |



---

## 详细执行结果

### compile-pass（4/4 通过）
验证合法的 throw 表达式编译通过：直接 `throw new Error()`、通过变量抛出 Error 实例、抛出自定义 Error 子类、抛出标准 Error 子类（RangeError）。

### compile-fail（3/3 通过）
验证 es2panda 正确拒绝非 Error 类型的 throw 表达式：`throw "string"`、`throw null`、`throw undefined` 均被编译期拦截，符合 ArkTS 规范中 throw 表达式必须为 Error 或其子类类型的要求。

### runtime（2/2 — ark VM 真实执行 + assert）
验证 ark VM 上 throw-catch 控制流行为正确：单层 try-catch 捕获（STM_08_14_008）和 catch 块中 rethrow 由外层 catch 捕获（STM_08_14_009）。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.14_throw_Statements" bash run_statements_cases_wsl.sh
```
