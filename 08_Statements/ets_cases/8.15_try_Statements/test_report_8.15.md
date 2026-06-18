# 8.15 try 语句 - 测试执行报告

**测试日期：** 2026-06-18
**编译器：** es2panda
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 9 | 9 | 0 | 100% |
| **总计** | **22** | **22** | **0** | **100%** |

**一次通过率：100%**（首次执行无任何用例失败）

---

## 详细执行结果

### compile-pass（7个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | STM_08_15_001_PASS_try_catch | 基本 try-catch 结构编译通过 | PASS |
| 002 | STM_08_15_002_PASS_try_finally | 基本 try-finally 结构编译通过 | PASS |
| 003 | STM_08_15_003_PASS_try_catch_finally | 完整 try-catch-finally 结构编译通过 | PASS |
| 004 | STM_08_15_004_PASS_try_nested | 嵌套 try 语句结构编译通过 | PASS |
| 005 | STM_08_15_005_PASS_try_catch_return | try-catch 中包含 return 语句编译通过 | PASS |
| 006 | STM_08_15_006_PASS_try_in_if_statement | try 语句在 if 语句体内组合使用 | PASS |
| 017 | STM_08_15_017_PASS_try_finally_only | 仅含 finally（无 catch）的 try 编译通过 | PASS |

### compile-fail（6个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 006 | STM_08_15_006_FAIL_try_no_catch_no_finally | try 缺少 catch 和 finally 子句 | PASS |
| 007 | STM_08_15_007_FAIL_try_catch_local_class | try 块内定义局部类 | PASS |
| 008 | STM_08_15_008_FAIL_try_finally_local_type_alias | finally 块内定义局部类型别名 | PASS |
| 009 | STM_08_15_009_FAIL_try_catch_nested_function | catch 块内定义嵌套函数 | PASS |
| 010 | STM_08_15_010_FAIL_catch_variable_out_of_scope | catch(e) 中 e 在 catch 块外部不可访问 | PASS |
| 018 | STM_08_15_018_FAIL_catch_identifier_outside_block | catch(e) 标识符在 catch 块外部赋值/使用 | PASS |

### runtime（9个，真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | STM_08_15_010_RUNTIME_try_catch_no_error | try 无异常时 catch 不执行 | 1 | PASS |
| 011 | STM_08_15_011_RUNTIME_try_catch_error | try 抛异常时 catch 捕获并处理 | 2 | PASS |
| 012 | STM_08_15_012_RUNTIME_try_finally_always | finally 始终执行（无论是否抛异常） | 2 | PASS |
| 013 | STM_08_15_013_RUNTIME_try_finally_error_propagation | try-finally 中错误传播（finally 先执行） | 2 | PASS |
| 014 | STM_08_15_014_RUNTIME_try_finally_normal | try-finally 正常完成时 finally 执行 | 1 | PASS |
| 015 | STM_08_15_015_RUNTIME_try_catch_only_sequential | 连续多个 try-catch（无 finally）行为 | 3 | PASS |
| 016 | STM_08_15_016_RUNTIME_try_catch_finally_error | try-catch-finally 抛错时三块均执行 | 3 | PASS |
| 019 | STM_08_15_019_RUNTIME_try_normal_completion_after | try-catch-finally 正常完成后后续代码执行 | 1 | PASS |
| 020 | STM_08_15_020_RUNTIME_try_nested_inner_catch | 嵌套 try 内层 catch 捕获后外层不执行 | 2 | PASS |

---

## 执行过程异常

**首次运行无失败用例，无需修复。**

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.15_try_Statements" bash run_statements_cases_wsl.sh
```
