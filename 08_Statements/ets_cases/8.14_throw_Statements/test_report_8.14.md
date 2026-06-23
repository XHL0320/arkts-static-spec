# 8.14 throw 语句 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda
**运行时：** ark VM + boot files
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 7 | 7 |
| compile-fail | 6 | 6 |
| runtime | 6 | 6 |
| **总计** | **19** | **19** |

🎯 一次通过率 100%

---

## 详细执行结果

### compile-pass（7个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | STM_08_14_001_PASS_throw_new_error | 直接 throw new Error() | PASS |
| 002 | STM_08_14_002_PASS_throw_error_variable | 通过变量抛出 Error 实例 | PASS |
| 003 | STM_08_14_003_PASS_throw_custom_error | 抛出自定义 Error 子类 | PASS |
| 004 | STM_08_14_004_PASS_throw_range_error | 抛出标准 Error 子类 RangeError | PASS |
| 010 | STM_08_14_010_PASS_throw_error_with_extra_properties | Error 实例带额外属性后 throw | PASS |
| 011 | STM_08_14_011_PASS_throw_after_return_unreachable | return 后 throw 不可达 | PASS |
| 017 | STM_08_14_017_PASS_throw_error_string_concat | throw Error 对象含字符串拼接 | PASS |

### compile-fail（6个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 005 | STM_08_14_005_FAIL_throw_string | throw "string" 编译拒绝 | PASS |
| 006 | STM_08_14_006_FAIL_throw_null | throw null 编译拒绝 | PASS |
| 007 | STM_08_14_007_FAIL_throw_undefined | throw undefined 编译拒绝 | PASS |
| 012 | STM_08_14_012_FAIL_throw_number | throw number 编译拒绝 | PASS |
| 013 | STM_08_14_013_FAIL_throw_boolean | throw boolean 编译拒绝 | PASS |
| 019 | STM_08_14_019_FAIL_throw_plain_object | throw 普通对象编译拒绝 | PASS |

### runtime（6个，真实执行 + assert）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 008 | STM_08_14_008_RUNTIME_throw_caught | 单层 try-catch 捕获 throw | PASS |
| 009 | STM_08_14_009_RUNTIME_throw_rethrow | catch 中 rethrow 由外层 catch 捕获 | PASS |
| 014 | STM_08_14_014_RUNTIME_throw_from_nested_function | 嵌套函数内 throw 传播 | PASS |
| 015 | STM_08_14_015_RUNTIME_multi_nested_try_catch | 多层嵌套 try-catch | PASS |
| 016 | STM_08_14_016_RUNTIME_throw_immediate_control_transfer | throw 即时控制转移 | PASS |
| 018 | STM_08_14_018_RUNTIME_throw_deeply_nested | 深层嵌套 throw 传播 | PASS |

---

## 执行过程异常

**首次运行无失败用例，无需修复。**

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.14_throw_Statements" bash run_statements_cases_wsl.sh
```
