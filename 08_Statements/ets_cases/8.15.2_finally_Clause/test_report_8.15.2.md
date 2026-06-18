# 8.15.2 finally 子句 - 测试执行报告

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

**首次执行记录：** 首次执行时001/002/005/009/010/011因catch(e: Error)过时语法失败，已修复为catch(e)后全部通过

---

## 详细执行结果

### compile-pass（5/5 通过）
验证 try-catch-finally 基本结构、finally 在 catch 后执行、finally 在 return 前执行、try-finally 无 catch、以及嵌套 finally 的编译正确性，全部通过。

### compile-fail（3/3 通过）
验证 finally 作为标识符使用、finally 块内声明局部类、finally 块内声明嵌套函数三种错误场景，编译器均正确报错。

### runtime（3/3 — ark VM 真实执行 + assert）
验证 finally 块必然执行（状态计数器）、try 含 return 时 finally 先于 return 执行且返回值保持、异常抛出后 catch 捕获且 finally 执行的状态链，全部 verified。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.15.2_finally_Clause" bash run_statements_cases_wsl.sh
```
