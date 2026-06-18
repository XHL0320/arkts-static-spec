# 8.5 if 语句 - 测试执行报告

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
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **10** | **10** | **0** | **100%** |

**首次执行记录：** 原有3个compile-fail因Extended Conditional Expressions误判，已移至compile-pass

---

## 详细执行结果

### compile-pass（8/8 通过）

覆盖boolean字面量/变量条件、if-else双分支、嵌套if-else与dangling-else绑定及else-if链、if/else块内let声明隔离、无块级作用域单语句、以及Extended Conditional Expressions下int/string/float类型作为条件表达式（truthiness语义），全部编译通过。

### compile-fail（0/0 通过）

无compile-fail用例。原有STM_08_05_006-008的三个非boolean条件编译错误用例因ArkTS当前版本实现Extended Conditional Expressions（spec/semantics.md:2512）而意外通过，已重命名为STM_08_05_006-008_PASS_*_EXTENDED并移至compile-pass分组。

### runtime（2/2 — ark VM 真实执行 + assert）

验证boolean条件正确选择if/else分支（6个断言）与嵌套if-else多级分支选择及else-if链语义（4个断言），均通过assert验证并输出verified。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.5_if_Statements" bash run_statements_cases_wsl.sh
```
