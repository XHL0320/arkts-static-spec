# 8.7 while 与 do 语句 - 测试执行报告

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
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 0 | 0 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **11** | **11** | **0** | **100%** |


**首次执行记录：** 原有3个compile-fail因Extended Conditional Expressions误判，已移至compile-pass


---

## 详细执行结果

### compile-pass（8/8 通过）
验证 while 与 do-while 语句的基本语法编译：boolean 条件、空循环体（空 block/空语句）、嵌套循环（while/do-while 交叉嵌套）。原有3个 compile-fail 用例（number/string/non-bool 条件）因 ArkTS Extended Conditional Expressions 允许非 boolean 类型作为条件而编译通过，已修正分类并移至 compile-pass。

### compile-fail（0/0 通过）
当前无 compile-fail 用例。原设计的非 boolean 条件错误检测用例因 Extended Conditional Expressions 特性不再适用。

### runtime（3/3 — ark VM 真实执行 + assert）
验证 while 与 do-while 运行时语义：`while (false)` 循环体不执行、`do { } while (false)` 循环体至少执行一次、相同 false 条件下 while 迭代 0 次 vs do-while 迭代 1 次的行为差异。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.7_while_Statements_and_do_Statements" bash run_statements_cases_wsl.sh
```
