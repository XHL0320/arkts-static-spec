# 8.5 if 语句 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 16 | 16 |
| compile-fail | 2 | 2 |
| runtime | 8 | 8 |
| **总计** | **26** | **26** |

**修复记录：** 前期 compile-fail 组原有 3 个用例（006-008）因 ArkTS 实现 Extended Conditional Expressions 而意外通过编译，已重命名为 PASS_*_EXTENDED 并移至 compile-pass。当前 compile-fail 组为 2 个新增语法错误用例（缺括号、空条件），均正确被 es2panda 拒绝。

---

## 详细执行结果

### compile-pass（16/16 通过）

覆盖 boolean 字面量/变量条件（001）、if-else 双分支（002）、嵌套 if-else 与 dangling-else 绑定及 else-if 链（003）、if/else 块内 let 声明隔离（004）、无块级作用域单语句（005）、if 省略 else 分支（020），以及 Extended Conditional Expressions 下 int/string/float/char/bigint/enum/null/undefined 类型作为条件表达式（006-008, 011, 013-017）和复杂逻辑运算符组合（012）。es2panda 全部正确接受并编译通过。

### compile-fail（2/2 通过）

验证语法层错误被正确捕获：if 条件缺少括号（009）和 if 条件为空（010）。es2panda 均产生预期编译错误。

### runtime（8/8 — ark VM 真实执行 + assert）

验证 boolean 条件正确选择 if/else 分支（009, 010）、嵌套 if-else 多级分支及 else-if 链语义（010）、char 类型条件 truthiness（012）、复杂逻辑运算符（&& / || / !）短路求值（013）、int/string/float 扩展条件 truthiness（014）、块作用域内外层变量隔离（015）、bigint 条件 truthiness（018）、enum 条件 truthiness（019）。全部 assert 通过，输出 verified。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.5_if_Statements" bash run_statements_cases_wsl.sh
```
