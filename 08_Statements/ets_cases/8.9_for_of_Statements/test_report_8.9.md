# 8.9 for-of 语句 - 测试执行报告

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
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 7 | 7 | 0 | 100% |
| **总计** | **23** | **23** | **0** | **100%** |

**一次通过率：100%**（首次执行无任何用例失败）

---

## 详细执行结果

### compile-pass（10个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | STM_08_09_001_PASS_array_for_of | Array\<T\> 的 for-of 迭代，变量类型推断为 T | PASS |
| 002 | STM_08_09_002_PASS_string_for_of | string 的 for-of 迭代，变量类型推断为 string | PASS |
| 003 | STM_08_09_003_PASS_let_modifiable | let 声明 forVariable，循环体内可修改 | PASS |
| 004 | STM_08_09_004_PASS_external_variable | 外部声明变量作为 forVariable，类型兼容 | PASS |
| 005 | STM_08_09_005_PASS_FixedArray_for_of | FixedArray\<T\> 的 for-of 迭代，类型推断为 T | PASS |
| 013 | STM_08_09_013_PASS_const_with_type_annotation | const forVariable + 显式类型注解（实验特性） | PASS |
| 014 | STM_08_09_014_PASS_let_with_type_annotation | let forVariable + 显式类型注解，循环体内可修改 | PASS |
| 015 | STM_08_09_015_PASS_nested_for_of | 嵌套 for-of，外层 Array\<Array\<int\>\>，内层 Array\<int\> | PASS |
| 020 | STM_08_09_020_PASS_for_of_const_variable | const forVariable（无类型注解），不可赋值，类型正确推断 | PASS |
| 021 | STM_08_09_021_PASS_ResizableArray_for_of | ResizableArray\<T\>（T[] 语法）的 for-of 迭代 | PASS |

### compile-fail（6个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 006 | STM_08_09_006_FAIL_non_iterable | int 字面量作为 for-of 迭代对象，非 iterable 拒绝 | PASS |
| 007 | STM_08_09_007_FAIL_type_mismatch | 外部变量类型与迭代元素类型不匹配，拒绝 | PASS |
| 008 | STM_08_09_008_FAIL_const_assignment | const forVariable 赋值，拒绝 | PASS |
| 009 | STM_08_09_009_FAIL_non_iterable_class | 未实现 Iterable 接口的自定义类，拒绝 | PASS |
| 019 | STM_08_09_019_FAIL_external_variable_array_type_mismatch | 外部变量 int 与 Array\<string\> 元素类型不匹配，拒绝 | PASS |
| 023 | STM_08_09_023_FAIL_external_variable_wrong_type | 外部变量 string 与 Array\<int\> 元素类型不匹配，拒绝 | PASS |

### runtime（7个，真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | STM_08_09_010_RUNTIME_array_iteration | Array\<int\> 求和与末元素值断言 | 3 | PASS |
| 011 | STM_08_09_011_RUNTIME_string_iteration | string 字符拼接与迭代计数 | 2 | PASS |
| 012 | STM_08_09_012_RUNTIME_external_variable | 外部变量 for-of 求和与末元素值 | 2 | PASS |
| 016 | STM_08_09_016_RUNTIME_break_continue | break 提前退出与 continue 跳过当前迭代 | 3 | PASS |
| 017 | STM_08_09_017_RUNTIME_FixedArray_iteration | FixedArray\<int\> 求和、末元素、迭代计数 | 3 | PASS |
| 018 | STM_08_09_018_RUNTIME_array_mutation_during_iteration | 迭代中修改数组元素值，迭代次数不变 | 3 | PASS |
| 022 | STM_08_09_022_RUNTIME_empty_array_for_of | 空数组 for-of 循环体执行 0 次 | 1 | PASS |

---

## 执行过程异常

**首次运行无失败用例，无需修复。**

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.9_for_of_Statements" bash run_statements_cases_wsl.sh
```
