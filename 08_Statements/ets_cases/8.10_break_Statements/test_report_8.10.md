# 8.10 break 语句 - 测试执行报告

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

验证无标签 break 在 while/for/for-of/switch 中的编译，以及带标签 break 跳出外层循环的编译，es2panda 均正确接受。

### compile-fail（3/3 通过）

验证 break 在非循环/switch 上下文（if 块内）、标签未匹配、标签指向非循环/switch 的标记块语句时，es2panda 均正确产生编译错误。

### runtime（3/3 — ark VM 真实执行 + assert）

验证无标签 break 在 while 循环中的控制流跳出、带标签 break 跳出外层标记循环、以及 break 在 switch 中防止 fallthrough 的运行时行为，全部断言通过。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.10_break_Statements" bash run_statements_cases_wsl.sh
```
