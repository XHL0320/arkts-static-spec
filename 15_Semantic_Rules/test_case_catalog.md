# 15 Semantic Rules — 测试用例目录

**生成日期：** 2026-06-23
**共计：** 780 个测试用例

> 此章节按规则类别组织，用例文件名前缀 `SEM_`，存放于各规则子章节的 `compile-pass/` / `compile-fail/` / `runtime/` 目录。

---

## 15.1 Semantic Essentials（73 用例）

### 15.1.1 Type of Standalone Expression（6）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_01_001_PASS_int_literal | compile-pass | 验证整数字面量类型为 int |
| 002 | SEM_15_01_01_002_PASS_string_literal | compile-pass | 验证字符串字面量类型为 string |
| 003 | SEM_15_01_01_003_PASS_bool_literal | compile-pass | 验证布尔字面量类型为 boolean |
| 004 | SEM_15_01_01_004_PASS_float_literal | compile-pass | 浮点数字面量类型 |
| 090 | SEM_15_01_01_090_FAIL_unresolved_type | compile-fail | 未解析的类型 |
| 020 | SEM_15_01_01_020_RUNTIME_standalone | runtime | standalone expression 运行时 |

### 15.1.2 Specifics of Assignment-like Contexts（7）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_02_001_PASS_numeric_widening | compile-pass | 赋值上下文数值拓宽 |
| 002 | SEM_15_01_02_002_PASS_subtype_assignment | compile-pass | 子类型赋值 |
| 003 | SEM_15_01_02_003_PASS_undefined_assignment | compile-pass | undefined 赋值 |
| 004 | SEM_15_01_02_004_PASS_boxing_unboxing | compile-pass | 装箱/拆箱 |
| 090 | SEM_15_01_02_090_FAIL_narrowing_assignment | compile-fail | 赋值窄化拒绝 |
| 091 | SEM_15_01_02_091_FAIL_type_mismatch | compile-fail | 类型不匹配 |
| 020 | SEM_15_01_02_020_RUNTIME_assignment | runtime | 赋值上下文运行时 |

### 15.1.3 Specifics of Variable Initialization Context（8）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_03_001_PASS_init_typed | compile-pass | 带类型初始化 |
| 002 | SEM_15_01_03_002_PASS_init_inferred | compile-pass | 推断类型初始化 |
| 003 | SEM_15_01_03_003_PASS_init_undefined | compile-pass | undefined 初始化 |
| 004 | SEM_15_01_03_004_PASS_init_default | compile-pass | 默认初始化 |
| 005 | SEM_15_01_03_005_PASS_destructuring_init | compile-pass | 解构初始化 |
| 006 | SEM_15_01_03_006_PASS_init_with_expression | compile-pass | 表达式初始化 |
| 090 | SEM_15_01_03_090_FAIL_narrowing_init | compile-fail | 初始化窄化拒绝 |
| 020 | SEM_15_01_03_020_RUNTIME_init | runtime | 初始化运行时 |

### 15.1.4 Specifics of Numeric Operator Contexts（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_04_001_PASS_arithmetic | compile-pass | 算术运算 |
| 002 | SEM_15_01_04_002_PASS_bitwise | compile-pass | 位运算 |
| 003 | SEM_15_01_04_003_PASS_comparison | compile-pass | 关系运算 |
| 090 | SEM_15_01_04_090_FAIL_type_mismatch | compile-fail | 类型不匹配 |
| 020 | SEM_15_01_04_020_RUNTIME_numeric | runtime | 数值运算运行时 |

### 15.1.5 Specifics of String Operator Contexts（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_05_001_PASS_concat | compile-pass | 字符串拼接 |
| 002 | SEM_15_01_05_002_PASS_template | compile-pass | 模板字符串 |
| 003 | SEM_15_01_05_003_PASS_comparison | compile-pass | 字符串比较 |
| 090 | SEM_15_01_05_090_FAIL_wrong_operand | compile-fail | 操作数错误 |
| 020 | SEM_15_01_05_020_RUNTIME_string | runtime | 字符串运算运行时 |

### 15.1.6 Other Contexts（8）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_06_001_PASS_call_context | compile-pass | 调用上下文 |
| 002 | SEM_15_01_06_002_PASS_return_context | compile-pass | 返回上下文 |
| 003 | SEM_15_01_06_003_PASS_conditional | compile-pass | 条件表达式 |
| 004 | SEM_15_01_06_004_PASS_throw_context | compile-pass | throw 上下文 |
| 005 | SEM_15_01_06_005_PASS_yield_context | compile-pass | yield 上下文 |
| 006 | SEM_15_01_06_006_PASS_await_context | compile-pass | await 上下文 |
| 090 | SEM_15_01_06_090_FAIL_context_mismatch | compile-fail | 上下文不匹配 |
| 020 | SEM_15_01_06_020_RUNTIME_other | runtime | 其他上下文运行时 |

### 15.1.7 Specifics of Type Parameters（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 030 | SEM_15_01_030_PASS_TYPE_PARAM_RETURN | compile-pass | 类型参数作为返回值类型 |
| 031 | SEM_15_01_031_PASS_TYPE_PARAM_CONSTRAINT | compile-pass | 类型参数约束 |
| 034 | SEM_15_01_034_FAIL_TYPE_PARAM_LHS_INFERENCE | compile-fail | 类型参数 LHS 不提供推断 |
| 035 | SEM_15_01_035_FAIL_TYPE_PARAM_CONSTRAINT | compile-fail | 类型参数约束违反 |
| 032 | SEM_15_01_032_RUNTIME_TYPE_PARAM | runtime | 类型参数运行时 |

### 15.1.8 Semantic Essentials Summary（3）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_08_001_PASS_summary | compile-pass | 语义要点汇总正向 |
| 090 | SEM_15_01_08_090_FAIL_summary | compile-fail | 语义要点汇总反向 |
| 020 | SEM_15_01_08_020_RUNTIME_summary | runtime | 语义要点汇总运行时 |

### 15.1_Semantic_Essentials（父章节，26）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_001_PASS_semantic_essentials | compile-pass | 语义基础正向 |
| ... | ... | ... | ... |

---

## 15.2 Subtyping（128 用例）

### 15.2.1 Non-Generic Classes and Interfaces（7）
### 15.2.2 Generic Classes and Interfaces（14）
### 15.2.3 Literal Types（4）
### 15.2.4 Tuple Types（9）
### 15.2.5 Union Types（16）
### 15.2.6 Function Types（12）
### 15.2.7 Fixed Size Array Types（7）
### 15.2.8 Intersection Types（5）
### 15.2.9 Difference Types（5）
### 15.2_Subtyping（父章节，54）

---

## 15.3 Type Identity（27 用例）

## 15.4 Assignability（30 用例）

## 15.5 Invariance, Covariance, Contravariance（24 用例）

## 15.6 Compatibility of Call Arguments（34 用例）

## 15.7 Type Inference（30 用例）

### 15.7.1 Constant Expressions（10）
### 15.7.2 Return Type Inference（9）
### 15.7_Type_Inference（父章节，30）

---

## 15.8 Smart Casts and Smart Types（104 用例）

### 15.8.1 Type Expression（7）
### 15.8.2 Intersection Types（4）
### 15.8.3 Difference Types（4）
### 15.8.4 Computing Smart Types（3）
### 15.8.5 Control Flow Graph（3）
### 15.8.6 Type Expression Simplification（3）
### 15.8.7 Smart Cast Examples（7）
### 15.8_Smart_Casts_and_Smart_Types（父章节，63）

---

## 15.9 Overriding（66 用例）

### 15.9.1 Overriding in Classes（10）
### 15.9.2 Overriding in Interfaces（10）
### 15.9.3 Override Compatible Signatures（11）
### 15.9_Overriding（父章节，35）

---

## 15.10 Overloading（74 用例）

### 15.10.1 Implicit Function Overloading（10）
### 15.10.2 Implicit Method Overloading（7）
### 15.10.3 Implicit Constructor Overloading（4）
### 15.10.4 Overload Equivalent Signatures（4）
### 15.10_Overloading（父章节，49）

---

## 15.11 Overload Resolution（145 用例）

### 15.11.1 Forming an Overload Set（5）
### 15.11.2 Overload Set for Functions（6）
### 15.11.3 Overload Set for Interface Methods（10）
### 15.11.4 Overload Set for Class Static Methods（5）
### 15.11.5 Overload Set for Class Instance Methods（9）
### 15.11.6 Overload Set for Constructors（6）
### 15.11.7 Overload Set Warning（6）
### 15.11.8 Overload Set at Method Call（6）
### 15.11.9 Overloading and Overriding（7）
### 15.11.10 Dynamic Resolution of Method Calls（5）
### 15.11_Overload_Resolution（父章节，86）

---

## 15.12 Type Erasure（38 用例）

## 15.13 Static Initialization（30 用例）

### 15.13.1 Static Initialization Safety（3）
### 15.13_Static_Initialization（父章节，27）

---

## 15.14 Compatibility Features（80 用例）

### 15.14.1 Extended Conditional Expressions（3）
### 15.14_Compatibility_Features（父章节，77）

---

## 汇总

| 主章节 | compile-pass | compile-fail | runtime | 合计 |
|--------|:-----------:|:-----------:|:-------:|:----:|
| 15.1 Semantic Essentials | 44 | 16 | 10 | 73 |
| 15.2 Subtyping | 61 | 47 | 14 | 128 |
| 15.3 Type Identity | 17 | 8 | 2 | 27 |
| 15.4 Assignability | 17 | 11 | 2 | 30 |
| 15.5 Invariance/etc | 13 | 9 | 2 | 24 |
| 15.6 Call Arguments | 15 | 13 | 6 | 34 |
| 15.7 Type Inference | 16 | 9 | 5 | 30 |
| 15.8 Smart Casts | 53 | 31 | 12 | 104 |
| 15.9 Overriding | 32 | 20 | 9 | 66 |
| 15.10 Overloading | 37 | 28 | 9 | 74 |
| 15.11 Overload Resolution | 62 | 44 | 39 | 145 |
| 15.12 Type Erasure | 17 | 15 | 6 | 38 |
| 15.13 Static Init | 10 | 7 | 13 | 30 |
| 15.14 Compatibility | 55 | 7 | 18 | 80 |
| **总计** | **419** | **265** | **96** | **780** |
