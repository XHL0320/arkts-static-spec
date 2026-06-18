# 8.15.3 try 语句执行 - 测试执行报告

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
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **11** | **11** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（5/5 通过）
验证 try 块正常完成、try-catch 捕获 Error 后正常完成、try-finally 异常传播、以及 finally 异常完成覆盖 catch 正常完成共 4 种 try 语句执行规则，全部编译通过。

### compile-fail（3/3 通过）
验证 try 缺少 catch 和 finally 的语法错误、catch 块内定义局部类、finally 块内定义嵌套函数 3 种编译时错误场景，es2panda 正确拒绝编译。

### runtime（3/3 — ark VM 真实执行 + assert）
验证 try 正常完成时 catch 不执行、catch 捕获 Error 后 try 整体正常完成、错误从 try-finally 传播到调用者且 finally 异常覆盖 catch 正常完成共 3 种运行时行为，全部断言通过。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.15.3_try_Statement_Execution" bash run_statements_cases_wsl.sh
```
