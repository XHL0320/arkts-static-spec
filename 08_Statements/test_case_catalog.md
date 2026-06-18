# 08 语句 测试用例目录

**规范来源：** `/home/nnd/projects/arkts/docs/STATEMENTS.md` (585 行)
**测试编译器：** es2panda + ark VM
**最后执行：** 2026-06-18 | 194/194 通过

---

## 用例统计

| 子章节 | compile-pass | compile-fail | runtime | 小计 |
|-------|-------------|-------------|---------|------|
| 8.1 Normal and Abrupt Statement Execution | 4 | 3 | 2 | 9 |
| 8.2 Expression Statements | 5 | 3 | 3 | 11 |
| 8.3 Block | 5 | 3 | 2 | 10 |
| 8.4 Constant or Variable Declarations | 6 | 5 | 4 | 15 |
| 8.5 if Statements | 8 | 0 | 2 | 10 |
| 8.6 Loop Statements | 5 | 3 | 3 | 11 |
| 8.7 while and do Statements | 8 | 0 | 3 | 11 |
| 8.8 for Statements | 6 | 1 | 2 | 9 |
| 8.9 for-of Statements | 5 | 4 | 3 | 12 |
| 8.10 break Statements | 5 | 3 | 3 | 11 |
| 8.11 continue Statements | 5 | 3 | 3 | 11 |
| 8.12 return Statements | 5 | 3 | 3 | 11 |
| 8.13 switch Statements | 5 | 3 | 3 | 11 |
| 8.14 throw Statements | 4 | 3 | 2 | 9 |
| 8.15 try Statements | 5 | 4 | 3 | 12 |
| 8.15.1 catch Clause | 5 | 3 | 3 | 11 |
| 8.15.2 finally Clause | 5 | 3 | 3 | 11 |
| 8.15.3 try Statement Execution | 5 | 3 | 3 | 11 |
| **总计** | **94** | **48** | **48** | **190** |

---

## 用例详细清单

### 8.1 正常与突然语句执行

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_01_001 | compile-pass | STM_08_01_001_PASS_normal_completion.ets | 多种语句类型的正常完成编译 |
| STM_08_01_002 | compile-pass | STM_08_01_002_PASS_abrupt_in_try_catch.ets | try-catch 处理异常完成 |
| STM_08_01_003 | compile-pass | STM_08_01_003_PASS_break_continue_return.ets | break/continue/return 跳转语句 |
| STM_08_01_004 | compile-pass | STM_08_01_004_PASS_nested_control_flow.ets | 嵌套控制流混合结构 |
| STM_08_01_005 | compile-fail | STM_08_01_005_FAIL_throw_non_error.ets | throw 非 Error 类型 |
| STM_08_01_006 | compile-fail | STM_08_01_006_FAIL_break_outside_loop.ets | break 在循环/switch 外部 |
| STM_08_01_007 | compile-fail | STM_08_01_007_FAIL_continue_outside_loop.ets | continue 在循环外部 |
| STM_08_01_008 | runtime | STM_08_01_008_RUNTIME_normal_completion_flow.ets | 正常完成语句顺序执行 |
| STM_08_01_009 | runtime | STM_08_01_009_RUNTIME_abrupt_completion_try_catch.ets | throw→catch→finally 恢复流 |

### 8.2 表达式语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_02_001 | compile-pass | STM_08_02_001_PASS_assignment_expression.ets | 赋值表达式作为语句 |
| STM_08_02_002 | compile-pass | STM_08_02_002_PASS_increment_decrement.ets | 自增/自减表达式 |
| STM_08_02_003 | compile-pass | STM_08_02_003_PASS_function_call.ets | 函数调用表达式 |
| STM_08_02_004 | compile-pass | STM_08_02_004_PASS_compound_assignment.ets | 复合赋值表达式 |
| STM_08_02_005 | compile-pass | STM_08_02_005_PASS_expression_sequence.ets | 表达式序列 |
| STM_08_02_006 | compile-fail | STM_08_02_006_FAIL_delete_operator.ets | delete 运算符（非法） |
| STM_08_02_007 | compile-fail | STM_08_02_007_FAIL_super_illegal.ets | super 在非法上下文 |
| STM_08_02_008 | compile-fail | STM_08_02_008_FAIL_undefined_variable.ets | 未定义变量引用 |
| STM_08_02_009 | runtime | STM_08_02_009_RUNTIME_assignment.ets | 赋值语句运行时验证 |
| STM_08_02_010 | runtime | STM_08_02_010_RUNTIME_increment.ets | 自增语句运行时验证 |
| STM_08_02_011 | runtime | STM_08_02_011_RUNTIME_call.ets | 函数调用语句副作用验证 |

### 8.3 块语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_03_001 | compile-pass | STM_08_03_001_PASS_basic_block.ets | 基本块语句 |
| STM_08_03_002 | compile-pass | STM_08_03_002_PASS_nested_blocks.ets | 嵌套块语句 |
| STM_08_03_003 | compile-pass | STM_08_03_003_PASS_void_function_body.ets | void 函数体作为块 |
| STM_08_03_004 | compile-pass | STM_08_03_004_PASS_block_type_declarations.ets | 块内变量遮蔽 |
| STM_08_03_005 | compile-pass | STM_08_03_005_PASS_empty_block.ets | 空块 `{}` |
| STM_08_03_006 | compile-fail | STM_08_03_006_FAIL_nested_function_in_block.ets | 块内嵌套函数 |
| STM_08_03_007 | compile-fail | STM_08_03_007_FAIL_local_class_in_block.ets | 块内局部类 |
| STM_08_03_008 | compile-fail | STM_08_03_008_FAIL_local_type_alias_in_block.ets | 块内局部 type alias |
| STM_08_03_009 | runtime | STM_08_03_009_RUNTIME_block_execution_order.ets | 块顺序执行 |
| STM_08_03_010 | runtime | STM_08_03_010_RUNTIME_block_throw_error.ets | 块内 throw 提前退出 |

### 8.4 常量或变量声明

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_04_001 | compile-pass | STM_08_04_001_PASS_basic_let.ets | 基本 let 声明 |
| STM_08_04_002 | compile-pass | STM_08_04_002_PASS_basic_const.ets | 基本 const 声明 |
| STM_08_04_003 | compile-pass | STM_08_04_003_PASS_shadowing_in_block.ets | 块作用域遮蔽 |
| STM_08_04_004 | compile-pass | STM_08_04_004_PASS_let_type_annotation.ets | let 带类型注解 |
| STM_08_04_005 | compile-pass | STM_08_04_005_PASS_const_complex_types.ets | const 复杂类型 |
| STM_08_04_006 | compile-fail | STM_08_04_006_FAIL_param_local_conflict.ets | 参数与局部变量同名冲突 |
| STM_08_04_007 | compile-fail | STM_08_04_007_FAIL_reassign_const.ets | const 重新赋值 |
| STM_08_04_008 | compile-fail | STM_08_04_008_FAIL_duplicate_let_same_scope.ets | 同作用域重复 let |
| STM_08_04_009 | runtime | STM_08_04_009_RUNTIME_let_const_values.ets | let/const 值验证 |
| STM_08_04_010 | runtime | STM_08_04_010_RUNTIME_block_scope_shadow.ets | 块作用域遮蔽运行时 |
| STM_08_04_018 | compile-pass | STM_08_04_018_PASS_let_union_type.ets | let 带复杂联合类型注解 |
| STM_08_04_019 | compile-fail | STM_08_04_019_FAIL_const_top_level_no_init.ets | const 顶层无初始化器 |
| STM_08_04_020 | compile-fail | STM_08_04_020_FAIL_duplicate_let_block.ets | 块作用域重复 let |
| STM_08_04_021 | runtime | STM_08_04_021_RUNTIME_const_not_reassignable.ets | const 运行时不可变性验证 |

### 8.5 if 语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_05_001 | compile-pass | STM_08_05_001_PASS_BASIC_IF.ets | 基本 if（boolean 条件） |
| STM_08_05_002 | compile-pass | STM_08_05_002_PASS_IF_ELSE.ets | if-else 语句 |
| STM_08_05_003 | compile-pass | STM_08_05_003_PASS_NESTED_IF_ELSE.ets | 嵌套 if-else、dangling else |
| STM_08_05_004 | compile-pass | STM_08_05_004_PASS_BLOCK_SCOPE.ets | 块级作用域隔离 |
| STM_08_05_005 | compile-pass | STM_08_05_005_PASS_IF_WITHOUT_BLOCK.ets | 无块单语句 body |
| STM_08_05_006 | compile-pass | STM_08_05_006_PASS_NUMERIC_CONDITION_EXTENDED.ets | Extended Conditional: int 条件 |
| STM_08_05_007 | compile-pass | STM_08_05_007_PASS_STRING_CONDITION_EXTENDED.ets | Extended Conditional: string 条件 |
| STM_08_05_008 | compile-pass | STM_08_05_008_PASS_FLOAT_CONDITION_EXTENDED.ets | Extended Conditional: float 条件 |
| STM_08_05_009 | runtime | STM_08_05_009_RUNTIME_IF_TRUE_FALSE.ets | if/else 分支选择 |
| STM_08_05_010 | runtime | STM_08_05_010_RUNTIME_NESTED_IF_ELSE.ets | 嵌套 if-else 和 else-if 链 |

### 8.6 循环语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_06_001 | compile-pass | STM_08_06_001_PASS_BasicWhile.ets | label 标记 while |
| STM_08_06_002 | compile-pass | STM_08_06_002_PASS_BasicDoWhile.ets | label 标记 do-while |
| STM_08_06_003 | compile-pass | STM_08_06_003_PASS_BasicFor.ets | label 标记 for |
| STM_08_06_004 | compile-pass | STM_08_06_004_PASS_BasicForOf.ets | label 标记 for-of |
| STM_08_06_005 | compile-pass | STM_08_06_005_PASS_LabeledLoopBreak.ets | label + break 跳出 |
| STM_08_06_006 | compile-fail | STM_08_06_006_FAIL_LabelInLambdaContinue.ets | lambda 内 continue label |
| STM_08_06_007 | compile-fail | STM_08_06_007_FAIL_LabelInLambdaBreak.ets | lambda 内 break label |
| STM_08_06_008 | compile-fail | STM_08_06_008_FAIL_BreakToUndeclaredLabel.ets | break 到未声明 label |
| STM_08_06_009 | runtime | STM_08_06_009_RUNTIME_WhileAndDoWhile.ets | while/do-while 运行时 |
| STM_08_06_010 | runtime | STM_08_06_010_RUNTIME_ForAndForOf.ets | for/for-of 运行时 |
| STM_08_06_011 | runtime | STM_08_06_011_RUNTIME_LabeledLoop.ets | label 循环运行时 |

### 8.7 while 与 do 语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_07_001 | compile-pass | STM_08_07_001_PASS_basic_while.ets | 基本 while |
| STM_08_07_002 | compile-pass | STM_08_07_002_PASS_while_empty_body.ets | while 空循环体 |
| STM_08_07_003 | compile-pass | STM_08_07_003_PASS_basic_do_while.ets | 基本 do-while |
| STM_08_07_004 | compile-pass | STM_08_07_004_PASS_do_while_empty_body.ets | do-while 空循环体 |
| STM_08_07_005 | compile-pass | STM_08_07_005_PASS_nested_loops.ets | 嵌套循环 |
| STM_08_07_006 | compile-pass | STM_08_07_006_PASS_while_condition_number_extended.ets | Extended Conditional: number 条件 |
| STM_08_07_007 | compile-pass | STM_08_07_007_PASS_do_while_condition_string_extended.ets | Extended Conditional: string 条件 |
| STM_08_07_008 | compile-pass | STM_08_07_008_PASS_while_condition_non_bool_extended.ets | Extended Conditional: 非 bool 条件 |
| STM_08_07_009 | runtime | STM_08_07_009_RUNTIME_while_not_executed.ets | while 条件为 false 不执行 |
| STM_08_07_010 | runtime | STM_08_07_010_RUNTIME_do_while_executed_once.ets | do-while 至少执行一次 |
| STM_08_07_011 | runtime | STM_08_07_011_RUNTIME_while_vs_do_while.ets | while vs do-while 差异 |

### 8.8 for 语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_08_001 | compile-pass | STM_08_08_001_PASS_BASIC_FOR.ets | 基本 for 循环 |
| STM_08_08_002 | compile-pass | STM_08_08_002_PASS_FOR_TYPE_INFERENCE.ets | forInit 类型推断 |
| STM_08_08_003 | compile-pass | STM_08_08_003_PASS_FOR_EXISTING_VAR.ets | 使用已存在变量 |
| STM_08_08_004 | compile-pass | STM_08_08_004_PASS_FOR_EMPTY_INIT.ets | 空 forInit |
| STM_08_08_005 | compile-pass | STM_08_08_005_PASS_FOR_EMPTY_CONTINUE.ets | 空 forContinue |
| STM_08_08_006 | compile-pass | STM_08_08_006_PASS_NON_BOOLEAN_CONDITION_EXTENDED.ets | Extended Conditional: 非 boolean 条件 |
| STM_08_08_007 | compile-fail | STM_08_08_007_FAIL_VAR_OUT_OF_SCOPE.ets | forInit 变量越作用域 |
| STM_08_08_008 | runtime | STM_08_08_008_RUNTIME_FOR_BASIC.ets | for 循环运行时 |
| STM_08_08_009 | runtime | STM_08_08_009_RUNTIME_FOR_EXISTING_VAR.ets | 外部变量 for 运行时 |

### 8.9 for-of 语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_09_001 | compile-pass | STM_08_09_001_PASS_array_for_of.ets | 数组 for-of |
| STM_08_09_002 | compile-pass | STM_08_09_002_PASS_string_for_of.ets | 字符串 for-of |
| STM_08_09_003 | compile-pass | STM_08_09_003_PASS_let_modifiable.ets | let 可修改 |
| STM_08_09_004 | compile-pass | STM_08_09_004_PASS_external_variable.ets | 外部变量 |
| STM_08_09_005 | compile-pass | STM_08_09_005_PASS_FixedArray_for_of.ets | FixedArray for-of |
| STM_08_09_006 | compile-fail | STM_08_09_006_FAIL_non_iterable.ets | 非 iterable 类型 |
| STM_08_09_007 | compile-fail | STM_08_09_007_FAIL_type_mismatch.ets | 类型不匹配 |
| STM_08_09_008 | compile-fail | STM_08_09_008_FAIL_const_assignment.ets | const 重新赋值 |
| STM_08_09_009 | compile-fail | STM_08_09_009_FAIL_non_iterable_class.ets | 非 iterable 类 |
| STM_08_09_010 | runtime | STM_08_09_010_RUNTIME_array_iteration.ets | 数组迭代运行时 |
| STM_08_09_011 | runtime | STM_08_09_011_RUNTIME_string_iteration.ets | 字符串迭代运行时 |
| STM_08_09_012 | runtime | STM_08_09_012_RUNTIME_external_variable.ets | 外部变量迭代运行时 |

### 8.10 break 语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_10_001 | compile-pass | STM_08_10_001_PASS_break_basic_while.ets | break 跳出 while |
| STM_08_10_002 | compile-pass | STM_08_10_002_PASS_break_labelled.ets | label break |
| STM_08_10_003 | compile-pass | STM_08_10_003_PASS_break_for_loop.ets | break 跳出 for |
| STM_08_10_004 | compile-pass | STM_08_10_004_PASS_break_for_of.ets | break 跳出 for-of |
| STM_08_10_005 | compile-pass | STM_08_10_005_PASS_break_switch.ets | break 跳出 switch |
| STM_08_10_006 | compile-fail | STM_08_10_006_FAIL_break_outside_loop.ets | break 在循环外 |
| STM_08_10_007 | compile-fail | STM_08_10_007_FAIL_break_label_not_found.ets | break 标签不存在 |
| STM_08_10_008 | compile-fail | STM_08_10_008_FAIL_break_label_non_loop.ets | break 标签非循环 |
| STM_08_10_009 | runtime | STM_08_10_009_RUNTIME_break_while_control.ets | break while 控制流 |
| STM_08_10_010 | runtime | STM_08_10_010_RUNTIME_break_labelled_outer.ets | label break 外层 |
| STM_08_10_011 | runtime | STM_08_10_011_RUNTIME_break_switch_control.ets | break switch 控制流 |

### 8.11 continue 语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_11_001 | compile-pass | STM_08_11_001_PASS_basic_continue_in_for_loop.ets | continue 在 for 中 |
| STM_08_11_002 | compile-pass | STM_08_11_002_PASS_continue_with_label_in_nested_for.ets | label continue 嵌套 for |
| STM_08_11_003 | compile-pass | STM_08_11_003_PASS_continue_in_while_loop.ets | continue 在 while 中 |
| STM_08_11_004 | compile-pass | STM_08_11_004_PASS_continue_in_do_while_loop.ets | continue 在 do-while 中 |
| STM_08_11_005 | compile-pass | STM_08_11_005_PASS_continue_with_label_deeply_nested.ets | label continue 深层嵌套 |
| STM_08_11_006 | compile-fail | STM_08_11_006_FAIL_continue_outside_loop.ets | continue 在循环外 |
| STM_08_11_007 | compile-fail | STM_08_11_007_FAIL_continue_with_nonexistent_label.ets | continue 标签不存在 |
| STM_08_11_008 | compile-fail | STM_08_11_008_FAIL_continue_with_non_loop_label.ets | continue 标签非循环 |
| STM_08_11_009 | runtime | STM_08_11_009_RUNTIME_continue_in_for_loop_skip_iteration.ets | continue 跳过迭代 |
| STM_08_11_010 | runtime | STM_08_11_010_RUNTIME_continue_with_label_nested_loops.ets | label continue 嵌套循环 |
| STM_08_11_011 | runtime | STM_08_11_011_RUNTIME_continue_in_while_loop_skip_even.ets | continue while 跳过偶数 |

### 8.12 return 语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_12_001 | compile-pass | STM_08_12_001_PASS_return_in_void_function.ets | return 在 void 函数 |
| STM_08_12_002 | compile-pass | STM_08_12_002_PASS_return_undefined_in_void_function.ets | return undefined 在 void |
| STM_08_12_003 | compile-pass | STM_08_12_003_PASS_return_expression_matching_type.ets | return 表达式类型匹配 |
| STM_08_12_004 | compile-pass | STM_08_12_004_PASS_return_in_constructor.ets | return 在 constructor 中 |
| STM_08_12_005 | compile-pass | STM_08_12_005_PASS_multiple_return_paths.ets | 多路径 return |
| STM_08_12_006 | compile-fail | STM_08_12_006_FAIL_return_undefined_in_constructor.ets | return undefined 在 constructor |
| STM_08_12_007 | compile-fail | STM_08_12_007_FAIL_return_without_expression_in_typed_function.ets | 有类型函数 return 无表达式 |
| STM_08_12_008 | compile-fail | STM_08_12_008_FAIL_return_type_not_assignable.ets | return 类型不匹配 |
| STM_08_12_009 | runtime | STM_08_12_009_RUNTIME_return_value.ets | return 返回值 |
| STM_08_12_010 | runtime | STM_08_12_010_RUNTIME_return_early_control_flow.ets | return 提前退出 |
| STM_08_12_011 | runtime | STM_08_12_011_RUNTIME_conditional_multiple_returns.ets | 条件多路径 return |

### 8.13 switch 语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_13_001 | compile-pass | STM_08_13_001_PASS_basic_int_switch.ets | int switch |
| STM_08_13_002 | compile-pass | STM_08_13_002_PASS_fall_through.ets | fall-through 穿透 |
| STM_08_13_003 | compile-pass | STM_08_13_003_PASS_string_switch.ets | string switch |
| STM_08_13_004 | compile-pass | STM_08_13_004_PASS_boolean_switch.ets | boolean switch |
| STM_08_13_005 | compile-pass | STM_08_13_005_PASS_labeled_break_switch.ets | label break switch |
| STM_08_13_006 | compile-fail | STM_08_13_006_FAIL_string_case_on_int_switch.ets | string case 在 int switch |
| STM_08_13_007 | compile-fail | STM_08_13_007_FAIL_int_case_on_string_switch.ets | int case 在 string switch |
| STM_08_13_008 | compile-fail | STM_08_13_008_FAIL_boolean_case_on_number_switch.ets | boolean case 在 number switch |
| STM_08_13_009 | runtime | STM_08_13_009_RUNTIME_basic_switch.ets | 基本 switch 匹配 |
| STM_08_13_010 | runtime | STM_08_13_010_RUNTIME_fall_through_and_default.ets | fall-through + default |
| STM_08_13_011 | runtime | STM_08_13_011_RUNTIME_labeled_break_switch.ets | label break switch |

### 8.14 throw 语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_14_001 | compile-pass | STM_08_14_001_PASS_throw_new_error.ets | throw new Error |
| STM_08_14_002 | compile-pass | STM_08_14_002_PASS_throw_error_variable.ets | throw Error 变量 |
| STM_08_14_003 | compile-pass | STM_08_14_003_PASS_throw_custom_error.ets | throw 自定义 Error |
| STM_08_14_004 | compile-pass | STM_08_14_004_PASS_throw_range_error.ets | throw RangeError |
| STM_08_14_005 | compile-fail | STM_08_14_005_FAIL_throw_string.ets | throw string（非 Error） |
| STM_08_14_006 | compile-fail | STM_08_14_006_FAIL_throw_null.ets | throw null |
| STM_08_14_007 | compile-fail | STM_08_14_007_FAIL_throw_undefined.ets | throw undefined |
| STM_08_14_008 | runtime | STM_08_14_008_RUNTIME_throw_caught.ets | throw 被 catch 捕获 |
| STM_08_14_009 | runtime | STM_08_14_009_RUNTIME_throw_rethrow.ets | catch 内 rethrow |

### 8.15 try 语句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_15_001 | compile-pass | STM_08_15_001_PASS_try_catch.ets | try-catch |
| STM_08_15_002 | compile-pass | STM_08_15_002_PASS_try_finally.ets | try-finally |
| STM_08_15_003 | compile-pass | STM_08_15_003_PASS_try_catch_finally.ets | try-catch-finally |
| STM_08_15_004 | compile-pass | STM_08_15_004_PASS_try_nested.ets | 嵌套 try |
| STM_08_15_005 | compile-pass | STM_08_15_005_PASS_try_catch_return.ets | try-catch 含 return |
| STM_08_15_006 | compile-fail | STM_08_15_006_FAIL_try_no_catch_no_finally.ets | try 无 catch 无 finally |
| STM_08_15_007 | compile-fail | STM_08_15_007_FAIL_try_catch_local_class.ets | try-catch 内局部类 |
| STM_08_15_008 | compile-fail | STM_08_15_008_FAIL_try_finally_local_type_alias.ets | try-finally 内局部 type alias |
| STM_08_15_009 | compile-fail | STM_08_15_009_FAIL_try_catch_nested_function.ets | try-catch 内嵌套函数 |
| STM_08_15_010 | runtime | STM_08_15_010_RUNTIME_try_catch_throw.ets | try-catch 捕获 throw |
| STM_08_15_011 | runtime | STM_08_15_011_RUNTIME_try_finally_executes.ets | try-finally always 执行 |
| STM_08_15_012 | runtime | STM_08_15_012_RUNTIME_try_catch_finally_order.ets | try-catch-finally 顺序 |

### 8.15.1 catch 子句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_15_1_001 | compile-pass | STM_08_15_1_001_PASS_basic_catch.ets | 基本 catch |
| STM_08_15_1_002 | compile-pass | STM_08_15_1_002_PASS_catch_instanceof.ets | catch 内 instanceof |
| STM_08_15_1_003 | compile-pass | STM_08_15_1_003_PASS_catch_finally.ets | catch + finally |
| STM_08_15_1_004 | compile-pass | STM_08_15_1_004_PASS_catch_rethrow.ets | catch rethrow |
| STM_08_15_1_005 | compile-pass | STM_08_15_1_005_PASS_catch_error_properties.ets | catch 内 Error 属性 |
| STM_08_15_1_006 | compile-fail | STM_08_15_1_006_FAIL_catch_wrong_type_string.ets | catch 类型标注 string（过时语法） |
| STM_08_15_1_007 | compile-fail | STM_08_15_1_007_FAIL_catch_type_annotation_number.ets | catch 类型标注 number（过时语法） |
| STM_08_15_1_008 | compile-fail | STM_08_15_1_008_FAIL_catch_type_annotation_boolean.ets | catch 类型标注 boolean（过时语法） |
| STM_08_15_1_009 | runtime | STM_08_15_1_009_RUNTIME_basic_catch.ets | catch 捕获运行时 |
| STM_08_15_1_010 | runtime | STM_08_15_1_010_RUNTIME_catch_instanceof.ets | catch + instanceof 运行时 |
| STM_08_15_1_011 | runtime | STM_08_15_1_011_RUNTIME_catch_rethrow.ets | catch rethrow 运行时 |

### 8.15.2 finally 子句

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_15_2_001 | compile-pass | STM_08_15_2_001_PASS_basic_finally.ets | 基本 finally |
| STM_08_15_2_002 | compile-pass | STM_08_15_2_002_PASS_finally_after_catch.ets | finally 在 catch 后 |
| STM_08_15_2_003 | compile-pass | STM_08_15_2_003_PASS_finally_after_return.ets | finally 在 return 后 |
| STM_08_15_2_004 | compile-pass | STM_08_15_2_004_PASS_finally_no_catch.ets | finally 无 catch |
| STM_08_15_2_005 | compile-pass | STM_08_15_2_005_PASS_finally_nested.ets | 嵌套 finally |
| STM_08_15_2_006 | compile-fail | STM_08_15_2_006_FAIL_finally_reserved_word.ets | finally 关键字冲突 |
| STM_08_15_2_007 | compile-fail | STM_08_15_2_007_FAIL_finally_local_class.ets | finally 内局部类 |
| STM_08_15_2_008 | compile-fail | STM_08_15_2_008_FAIL_finally_nested_func.ets | finally 内嵌套函数 |
| STM_08_15_2_009 | runtime | STM_08_15_2_009_RUNTIME_finally_executes.ets | finally 必然执行 |
| STM_08_15_2_010 | runtime | STM_08_15_2_010_RUNTIME_finally_with_return.ets | return + finally |
| STM_08_15_2_011 | runtime | STM_08_15_2_011_RUNTIME_finally_with_error.ets | error + finally |

### 8.15.3 try 语句执行

| ID | 类型 | 文件 | 目的 |
|----|------|------|------|
| STM_08_15_3_001 | compile-pass | STM_08_15_3_001_PASS_try_normal_completion.ets | try 正常完成 |
| STM_08_15_3_002 | compile-pass | STM_08_15_3_002_PASS_try_abrupt_catch_normal.ets | try 突然完成→catch 正常 |
| STM_08_15_3_003 | compile-pass | STM_08_15_3_003_PASS_try_abrupt_no_catch_propagate.ets | try 突然完成→无 catch 传播 |
| STM_08_15_3_004 | compile-pass | STM_08_15_3_004_PASS_try_abrupt_finally_abrupt.ets | try 突然完成→finally 突然完成 |
| STM_08_15_3_005 | compile-pass | STM_08_15_3_005_PASS_try_normal_finally_abrupt.ets | try 正常完成→finally 突然完成 |
| STM_08_15_3_006 | compile-fail | STM_08_15_3_006_FAIL_try_illegal_catch.ets | 非法 catch 结构 |
| STM_08_15_3_007 | compile-fail | STM_08_15_3_007_FAIL_try_illegal_finally.ets | 非法 finally 结构 |
| STM_08_15_3_008 | compile-fail | STM_08_15_3_008_FAIL_try_empty.ets | 空 try |
| STM_08_15_3_009 | runtime | STM_08_15_3_009_RUNTIME_try_normal_flow.ets | try 正常流 |
| STM_08_15_3_010 | runtime | STM_08_15_3_010_RUNTIME_try_abrupt_catch.ets | try 突然完成→catch |
| STM_08_15_3_011 | runtime | STM_08_15_3_011_RUNTIME_try_finally_always.ets | finally 始终执行 |
