# 15.14 Compatibility Features - 测试设计思维导图

## 概述
本节定义 ArkTS 中 TypeScript 兼容特性（Compatibility Features）的语义：包括真值判断、条件表达式、以及 TS 特有的类型兼容行为。

## 核心规则

### 1. 真值判断（Truthiness）
- `false` → falsy
- `0` → falsy
- `NaN` → falsy
- `""` (空字符串) → falsy
- `null` → falsy
- `undefined` → falsy
- 其他值 → truthy

### 2. 条件表达式
- `&&` 和 `||` 运算符返回操作数之一（不是 boolean）
- 条件表达式可用于类型 narrowing

### 3. 与 TypeScript 兼容性
- ArkTS 尽量与 TypeScript 兼容
- 但某些 TS 特性不支持（如 `any` 的完全兼容）

## 测试点覆盖

### compile-fail（0 个）
无编译期拒绝测试用例。

### compile-pass（0 个）
无编译期通过测试用例。

### runtime（17 个）
1. 空字符串 falsy（SEM_15_14_001_RT_empty_string_false, SEM_15_14_019_RT）
2. 非空字符串 truthy（SEM_15_14_002_RT_nonempty_string_true）
3. 0 falsy（SEM_15_14_003_RT_zero_int_false）
4. 非0数字 truthy（SEM_15_14_004_RT_nonzero_int_true）
5. NaN falsy（SEM_15_14_005_RT_nan_false）
6. null falsy（SEM_15_14_006_RT_null_false, SEM_15_14_020_RT）
7. undefined falsy（SEM_15_14_007_RT_undefined_false）
8. 对象 truthy（SEM_15_14_008_RT_object_true）
9. `false || int` 表达式（SEM_15_14_009_RT_false_or_int, SEM_15_14_021_RT）
10. `true || int` 表达式（SEM_15_14_010_RT_true_or_int）
11. `0 && string` 表达式（SEM_15_14_011_RT_zero_and_string）
12. `1 && string` 表达式（SEM_15_14_012_RT_one_and_string）
13. SMART_GLOBAL 模式：重载声明 base 顶层（SEM_15_14_024_RT_SMART_GLOBAL）
14. 一般兼容特性测试（SEM_15_14_101）

## 编号规划
- runtime: 001-012, 019-021, 024, 101

## 文件命名规范
`SEM_15_14_YYY_RT_{DESCRIPTION}.ets`

## 子章节链接
- 15.14.1: Extended Conditional Expressions
- 15.7: Type Inference
