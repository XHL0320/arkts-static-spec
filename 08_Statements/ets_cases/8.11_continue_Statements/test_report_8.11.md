# 8.11 continue 语句 - 测试执行报告

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
| compile-fail | 7 | 7 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **18** | **18** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（6/6 通过）

覆盖 `continue` 在 `for`、`while`、`do-while` 循环中的基本用法，嵌套循环中带标签 `continue` 跳转到外层或内层，以及深层嵌套和多标签场景。六个用例均正常编译通过。

### compile-fail（7/7 通过）

验证 es2panda 对 `continue` 语句上下文约束的编译时检查：`continue` 不在循环体内、`continue` 位于顶层作用域、标签指向不存在的循环、标签指向非循环语句（普通 block）、`for` 循环中 `continue` 跳过更新子句的复合赋值场景。七个用例均被正确拒绝编译。

### runtime（5/5 — ark VM 真实执行 + assert）

验证 `for` 循环中跳过特定迭代、嵌套 `for` 循环中带标签跳转到外层、`while` 循环中跳过偶数迭代、`do-while` 循环中 `continue` 跳转到条件判断、以及带标签 `continue` 在嵌套 `do-while` 中的运行时行为。五个用例输出与预期一致，全部通过。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.11_continue_Statements" bash run_statements_cases_wsl.sh
```
