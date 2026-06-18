# 8.7 while 与 do 语句 - 测试执行报告

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
| compile-pass | 16 | 16 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 7 | 7 | 0 | 100% |
| **总计** | **25** | **25** | **0** | **100%** |

**修复记录：** 新增2个 compile-fail（语法错误：while 缺少括号、do 缺少 while 关键字），compile-pass 扩展至16个（新增 break/continue/try-catch/complex-logical/bigint/enum），runtime 扩展至7个（新增 break/continue/do-while at-least-once/while zero-iterations）。

---

## 详细执行结果

### compile-pass（16/16 通过）
验证 while 与 do-while 语句的编译期行为：boolean 条件（literal、variable、logical-expression）、空循环体（空 block/空语句）、嵌套循环（while/do-while 交叉嵌套）、Extended Conditional Expressions 允许的非 boolean 条件（number、string、non-bool、bigint、enum）、break 在嵌套 if 中、continue、循环体含 try-catch。

### compile-fail（2/2 通过）
验证语法层面非法构造在编译期正确拒绝：while 条件缺少括号（`while true {}`）产生 Syntax error、do 块缺少 while 关键字（`do {}` 无 `while (...)` 子句）产生语法错误。

### runtime（7/7 — ark VM 真实执行 + assert）
验证 while 与 do-while 运行时语义：`while (false)` 循环体执行 0 次、`do { } while (false)` 循环体至少执行 1 次、相同 false 条件下 while 迭代 0 次 vs do-while 迭代 1 次的行为差异、do-while 体内 continue 跳转到条件判断、while 内嵌套 if 使用 break 提前退出、do-while 体内 break 在首次迭代即退出验证 at-least-once 语义、while 条件初始 false 下多场景 0 次迭代验证。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.7_while_Statements_and_do_Statements" bash run_statements_cases_wsl.sh
```
