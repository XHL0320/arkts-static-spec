# 8.1 正常与突然语句执行 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **14** | **14** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（6/6 通过）

- 001 正常完成：8 种语句类型（赋值、表达式、块、if-else、for、while、do-while、空语句）编译通过
- 002 try-catch-finally 突然完成处理：catch 捕获异常、finally 总是执行
- 003 break/continue/return 跳转：循环/switch 内 break、循环内 continue、函数 return
- 004 嵌套控制流：labeled break/continue、循环内嵌 try-catch、if 内 try 内 if 混合完成
- 012 多异常完成源共存：return/throw/break/continue 在同一函数体内各自合法上下文共存
- 013 return 在嵌套结构中的异常完成：if-else 内、循环内、try 块内、嵌套 if 内、switch 内 return

### compile-fail（3/3 通过）

- 005 throw 非 Error 类型（`throw 42`）在编译期被正确拒绝
- 006 break 在循环/switch 外部（if 块内）在编译期被正确拒绝
- 007 continue 在循环外部（if 块内）在编译期被正确拒绝

### runtime（5/5 — ark VM 真实执行 + assert）

- 008 正常完成执行流：顺序赋值 a=1→a+2→a*3=9、if-else 分支、for 累加、while 计数、空语句后继续执行
- 009 突然完成 try-catch：throw 触发异常完成后被 try-catch 捕获，嵌套 try-catch 和 finally 正确执行
- 010 return 异常完成：return 从函数内多层嵌套控制结构（if-else、循环、try-catch）中正确退出，verify 返回值
- 011 finally 总是执行：正常路径和异常抛出路径下 finally 块均被正确执行，覆盖 3 个场景
- 014 多异常完成路径：同一函数内 return/throw/break 多条路径共存，运行时第一个命中的 abrupt 语句决定实际完成方式

---

## 修复记录

| 用例 | 异常 | 修复 |
|------|------|------|
| -- | 无异常 | -- |

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.1_Normal_and_Abrupt_Statement_Execution" bash run_statements_cases_wsl.sh
```
