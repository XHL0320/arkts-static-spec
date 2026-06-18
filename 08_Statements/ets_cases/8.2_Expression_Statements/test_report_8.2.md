# 8.2 表达式语句 - 测试执行报告

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
赋值表达式、自增自减、函数调用、复合赋值及多种表达式语句组合均通过编译。

### compile-fail（3/3 通过）
delete 运算符、super 在非法上下文、访问未定义变量作为表达式语句均被编译器正确拒绝。

### runtime（3/3 — ark VM 真实执行 + assert）
赋值副作用、自增自减副作用、函数调用副作用（push/shift）在 ark VM 上运行时行为正确，所有断言通过。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.2_Expression_Statements" bash run_statements_cases_wsl.sh
```
