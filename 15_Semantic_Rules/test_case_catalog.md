# 15 Semantic Rules — 测试用例目录

**生成日期：** 2026-06-23
**共计：** 746 个测试用例

> 此章节按规则类别组织，用例文件名前缀 `SEM_`，存放于各规则子章节的 `compile-pass/` / `compile-fail/` / `runtime/` 目录。

---

## 15.1 Semantic Essentials（73 用例）

### 15.1.1 Type of Standalone Expression（6）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_01_001_PASS_INT_LITERAL_TYPE | compile-pass | 验证整数字面量类型为 int |
| 002 | SEM_15_01_01_002_PASS_FLOAT_LITERAL_TYPE | compile-pass | 验证字符串字面量类型为 string |
| 003 | SEM_15_01_01_003_PASS_CONST_EXPR_TYPE | compile-pass | 验证布尔字面量类型为 boolean |
| 004 | SEM_15_01_01_004_PASS_ARRAY_LITERAL_TYPE | compile-pass | 浮点数字面量类型 |
| 090 | SEM_15_01_01_100_FAIL_OBJECT_LITERAL_STANDALONE | compile-fail | 未解析的类型 |
| 020 | SEM_15_01_01_200_RUNTIME_STANDALONE | runtime | standalone expression 运行时 |

### 15.1.2 Specifics of Assignment-like Contexts（7）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_02_001_PASS_KNOWN_RHS_ASSIGN | compile-pass | 赋值上下文数值拓宽 |
| 002 | SEM_15_01_02_002_PASS_UNKNOWN_RHS_INFER | compile-pass | 子类型赋值 |
| 003 | SEM_15_01_02_003_PASS_WIDENING_ASSIGN | compile-pass | undefined 赋值 |
| 004 | SEM_15_01_02_004_PASS_SUBTYPE_ASSIGN | compile-pass | 装箱/拆箱 |
| 090 | SEM_15_01_02_100_FAIL_TYPE_MISMATCH | compile-fail | 赋值窄化拒绝 |
| 091 | SEM_15_01_02_101_FAIL_UNRELATED_ASSIGN | compile-fail | 类型不匹配 |
| 020 | SEM_15_01_02_200_RUNTIME_ASSIGN_SEMANTICS | runtime | 赋值上下文运行时 |

### 15.1.3 Specifics of Variable Initialization Context（8）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_03_001_PASS_EXPLICIT_TYPE_INIT | compile-pass | 带类型初始化 |
| 002 | SEM_15_01_03_002_PASS_INFER_FROM_INITIALIZER | compile-pass | 推断类型初始化 |
| 003 | SEM_15_01_03_003_PASS_CONST_INIT | compile-pass | undefined 初始化 |
| 004 | SEM_15_01_03_004_PASS_EXPR_INIT | compile-pass | 默认初始化 |
| 005 | SEM_15_01_03_005_PASS_infer_from_param | compile-pass | 解构初始化 |
| 006 | SEM_15_01_03_006_PASS_infer_array_from_literal | compile-pass | 表达式初始化 |
| 090 | SEM_15_01_03_100_FAIL_INIT_TYPE_MISMATCH | compile-fail | 初始化窄化拒绝 |
| 020 | SEM_15_01_03_200_RUNTIME_INIT | runtime | 初始化运行时 |

### 15.1.4 Specifics of Numeric Operator Contexts（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_04_001_PASS_NUMERIC_OPERATOR_WIDEN | compile-pass | 算术运算 |
| 002 | SEM_15_01_04_002_PASS_BYTE_SHORT_INC | compile-pass | 位运算 |
| 003 | SEM_15_01_04_003_PASS_MIXED_NUMERIC | compile-pass | 关系运算 |
| 090 | SEM_15_01_04_100_FAIL_BOOL_NUMERIC | compile-fail | 类型不匹配 |
| 020 | SEM_15_01_04_200_RUNTIME_NUMERIC_OPS | runtime | 数值运算运行时 |

### 15.1.5 Specifics of String Operator Contexts（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_05_001_PASS_STRING_OPERATOR_CONVERSION | compile-pass | 字符串拼接 |
| 002 | SEM_15_01_05_002_PASS_STRING_BOOL | compile-pass | 模板字符串 |
| 003 | SEM_15_01_05_003_PASS_STRING_DOUBLE | compile-pass | 字符串比较 |
| 090 | SEM_15_01_05_100_FAIL_STRING_SUB | compile-fail | 操作数错误 |
| 020 | SEM_15_01_05_200_RUNTIME_STRING_CONCAT | runtime | 字符串运算运行时 |

### 15.1.6 Other Contexts（8）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_06_001_PASS_string_standalone | compile-pass | 调用上下文 |
| 002 | SEM_15_01_06_002_PASS_BOOL_CONTEXT | compile-pass | 返回上下文 |
| 003 | SEM_15_01_06_003_PASS_ARRAY_CONTEXT | compile-pass | 条件表达式 |
| 004 | SEM_15_01_06_004_PASS_FUNC_RETURN_CONTEXT | compile-pass | throw 上下文 |
| 005 | SEM_15_01_06_005_PASS_PROPERTY_ACCESS | compile-pass | yield 上下文 |
| 006 | SEM_15_01_06_006_PASS_bool_string_concat | compile-pass | await 上下文 |
| 090 | SEM_15_01_06_100_FAIL_MISMATCH | compile-fail | 上下文不匹配 |
| 020 | SEM_15_01_06_200_RUNTIME_other_contexts | runtime | 其他上下文运行时 |

### 15.1.7 Specifics of Type Parameters（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 030 | SEM_15_01_07_001_PASS_TYPE_PARAM_RETURN | compile-pass | 类型参数作为返回值类型 |
| 031 | SEM_15_01_07_002_PASS_TYPE_PARAM_CONSTRAINT | compile-pass | 类型参数约束 |
| 034 | SEM_15_01_07_100_FAIL_TYPE_PARAM_LHS_INFERENCE | compile-fail | 类型参数 LHS 不提供推断 |
| 035 | SEM_15_01_07_101_FAIL_type_param_ctor_inference | compile-fail | 类型参数约束违反 |
| 032 | SEM_15_01_07_200_RUNTIME_TYPE_PARAM | runtime | 类型参数运行时 |

### 15.1.8 Semantic Essentials Summary（3）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_08_001_PASS_comprehensive_expr | compile-pass | 语义要点汇总正向 |
| 090 | SEM_15_01_08_100_FAIL_invalid_operation | compile-fail | 语义要点汇总反向 |
| 020 | SEM_15_01_08_200_RUNTIME_summary | runtime | 语义要点汇总运行时 |

### 15.1_Semantic_Essentials（父章节，26）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | SEM_15_01_00_001_PASS_standalone_int_literal | compile-pass | 语义基础正向 |
| ... | ... | ... | ... |

---

## 15.2 Subtyping（136 用例）

### 15.2.1 Non-Generic Classes and Interfaces（7）
### 15.2.2 Generic Classes and Interfaces（14）
### 15.2.3 Literal Types（7）
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

## 15.14 Compatibility Features（47 用例）

### 15.14.1 Extended Conditional Expressions（3）
### 15.14_Compatibility_Features（父章节，44）

---

## 汇总

| 主章节 | compile-pass | compile-fail | runtime | 合计 |
|--------|:-----------:|:-----------:|:-------:|:----:|
| 15.1 Semantic Essentials | 45 | 18 | 10 | 73 |
| 15.2 Subtyping | 69 | 56 | 11 | 136 |
| 15.3 Type Identity | 17 | 8 | 2 | 27 |
| 15.4 Assignability | 17 | 11 | 2 | 30 |
| 15.5 Invariance/etc | 13 | 9 | 2 | 24 |
| 15.6 Call Arguments | 15 | 13 | 6 | 34 |
| 15.7 Type Inference | 26 | 16 | 7 | 49 |
| 15.8 Smart Casts | 52 | 30 | 12 | 94 |
| 15.9 Overriding | 37 | 21 | 8 | 66 |
| 15.10 Overloading | 37 | 28 | 9 | 74 |
| 15.11 Overload Resolution | 62 | 40 | 49 | 151 |
| 15.12 Type Erasure | 17 | 15 | 6 | 38 |
| 15.13 Static Init | 10 | 7 | 13 | 30 |
| 15.14 Compatibility | 29 | 3 | 15 | 47 |
| **总计** | **446** | **272** | **152** | **870** |
