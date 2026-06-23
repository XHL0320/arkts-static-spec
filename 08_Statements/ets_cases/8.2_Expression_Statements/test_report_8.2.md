# 8.2 表达式语句 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **17** | **17** | **0** | **100%** |

🎯 一次通过率：100%

---

## 详细执行结果

### compile-pass（8个）

001-005（v1 基础）：赋值表达式、自增自减、函数调用、复合赋值、多种表达式语句组合均通过编译。

012-014（v2 新增）：构造函数调用(new)作为语句、属性访问和方法链式调用作为语句、字面量表达式（数字/字符串/布尔/数组/变量）作为语句均编译通过。

### compile-fail（4个）

006-008（v1 基础）：delete 运算符、super 在非法上下文、访问未定义变量作为表达式语句均被编译器正确拒绝。

017（v2 新增）：逗号表达式在非 for 语句上下文中作为表达式语句，被编译器正确拒绝（ArkTS 仅允许逗号表达式出现在 for 头部）。

### runtime（5个，真实执行 + assert）

009-011（v1 基础）：赋值副作用、自增自减副作用、函数调用副作用（push/shift）在 ark VM 上运行时行为正确，所有断言通过。

015-016（v2 新增）：new 表达式语句中构造函数副作用正确执行且返回值被丢弃；属性访问和方法链式调用副作用正确执行，链中每个调用均触发且最终返回值被丢弃。所有断言通过。

---

## 执行过程异常

- **v1**（5 compile-pass / 3 compile-fail / 3 runtime）：基础覆盖，全部通过。
- **v2**（+3 compile-pass / +1 compile-fail / +2 runtime）：新增构造函数调用(new)语句、属性访问链语句、字面量表达式语句的编译测试；新增逗号表达式非法上下文编译失败测试；新增构造函数调用和属性链的运行时验证。全部通过，无回归。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.2_Expression_Statements" bash run_statements_cases_wsl.sh
```
