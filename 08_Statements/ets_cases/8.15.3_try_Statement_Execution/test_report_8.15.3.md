# 8.15.3 try 语句执行 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 4 | 4 |
| compile-fail | 3 | 3 |
| runtime | 8 | 8 |
| **总计** | **15** | **15** |

---

## 详细执行结果

- compile-pass（4/4）：try 正常完成、catch 捕获 Error 后完成、finally 异常传播、finally 异常覆盖 catch 正常完成，全部编译通过。
- compile-fail（3/3）：try 缺少 catch+finally、catch 内定义局部类、finally 内定义嵌套函数，es2panda 正确拒绝。
- runtime（8/8，ark VM 真实执行 + assert）：覆盖 try 正常完成时 catch 不执行、catch 后 try 正常完成、try-finally 异常传播到调用者、finally 异常覆盖 catch 完成、嵌套 try、catch 参数作用域等 8 个场景，全部断言通过。

🎯 一次通过率 100%

## 修复历史

无。首次运行全部通过。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.15.3_try_Statement_Execution" bash run_statements_cases_wsl.sh
```
