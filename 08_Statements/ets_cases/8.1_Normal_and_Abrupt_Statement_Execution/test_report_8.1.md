# 8.1 正常与突然语句执行 - 测试执行报告

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

验证赋值语句、表达式语句、块语句、if-else、for/while/do-while 循环、空语句等正常完成的编译通过，以及 break/continue/return 跳转语句、try-catch-finally 异常处理、嵌套控制流（labeled break/continue、循环内嵌 try-catch）的正确编译。

### compile-fail（3/3 通过）

验证 `throw 42`（非 Error 类型抛出）、break 和 continue 在循环/switch 外部使用（if 块内）均产生编译错误，确认 es2panda 正确拒绝违反 ArkTS 语句完成语义的代码。

### runtime（2/2 — ark VM 真实执行 + assert）

验证正常完成的语句按预期顺序执行并产生正确结果（顺序赋值 a=1→a+2→a*3=9、if-else 分支、for 累加、while 计数、空语句后继续执行），以及 throw 触发异常完成后被 try-catch 捕获、嵌套 try-catch 和 finally 在异常后正确执行的运行时行为。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.1_Normal_and_Abrupt_Statement_Execution" bash run_statements_cases_wsl.sh
```
