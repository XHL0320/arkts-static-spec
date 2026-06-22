# 15 Semantic Rules Test Case Catalog

> 本文件记录所有测试用例的目录，随用例增删同步更新。

> 共 643 个用例，自动生成于 2026-06-22。

| ID | SubTopic | Type | Case File | Purpose |
|---|---|---|---|---|
| SEM_15_08_006 | 15.8 | compile-fail | ets_cases/15.8.3_Difference_Types/compile-fail/SEM_15_08_006_FAIL_DIFFERENCE_UNSUPPORTED.ets | 验证差分类型 — Spec §15.8.3 定义但编译器暂不支持 |
| SEM_15_08_03 | 15.8 | compile-pass | ets_cases/15.8.3_Difference_Types/compile-pass/SEM_15_08_03_001.ets | 类型自身赋值 |
| SEM_15_08_03 | 15.8 | runtime | ets_cases/15.8.3_Difference_Types/runtime/SEM_15_08_03_100.ets | 类型运行时 |
| SEM_15_01_012 | 15.1 | compile-fail | ets_cases/15.1.7_Specifics_of_Type_Parameters/compile-fail/SEM_15_01_012_FAIL_TYPE_PARAM_LHS_INFERENCE.ets | 验证类型参数作为 LHS 时不提供推断信息 |
| SEM_15_01_030 | 15.1 | compile-pass | ets_cases/15.1.7_Specifics_of_Type_Parameters/compile-pass/SEM_15_01_030_PASS_TYPE_PARAM_RETURN.ets | 验证类型参数作为返回值类型：泛型函数返回类型参数类型 |
| SEM_15_01_031 | 15.1 | compile-pass | ets_cases/15.1.7_Specifics_of_Type_Parameters/compile-pass/SEM_15_01_031_PASS_TYPE_PARAM_CONSTRAINT.ets | 验证类型参数约束：extends 约束的类型参数可调用约束方法 |
| SEM_15_01_032 | 15.1 | runtime | ets_cases/15.1.7_Specifics_of_Type_Parameters/runtime/SEM_15_01_032_RUNTIME_TYPE_PARAM.ets | 验证类型参数运行时行为：泛型函数运行时派发正确 |
| SEM_15_10_021 | 15.10 | compile-fail | ets_cases/15.10.2_Implicit_Method_Overloading/compile-fail/SEM_15_10_021_FAIL_EQUIVALENT_METHOD.ets | 方法重载不可区分拒绝 |
| SEM_15_10_002 | 15.10 | compile-pass | ets_cases/15.10.2_Implicit_Method_Overloading/compile-pass/SEM_15_10_002_PASS_METHOD_OVERLOAD.ets | 验证类方法重载：同名方法不同参数可共存 |
| SEM_15_10_022 | 15.10 | compile-pass | ets_cases/15.10.2_Implicit_Method_Overloading/compile-pass/SEM_15_10_022_PASS_METHOD_OVERLOAD_2.ets | 方法重载可区分 - 编译器选择最佳匹配 |
| SEM_15_10_02 | 15.10 | runtime | ets_cases/15.10.2_Implicit_Method_Overloading/runtime/SEM_15_10_02_100.ets | 方法重载运行时 |
| SEM_15_13_010 | 15.13 | compile-fail | ets_cases/15.13.1_Static_Initialization_Safety/compile-fail/SEM_15_13_010_FAIL_STATIC_FORWARD_REF.ets | 验证静态初始化前向引用拒绝 |
| SEM_15_13_001 | 15.13 | compile-pass | ets_cases/15.13.1_Static_Initialization_Safety/compile-pass/SEM_15_13_001_PASS_STATIC_INIT.ets | 验证静态初始化安全性：静态变量初始化顺序正确 |
| SEM_15_13_002 | 15.13 | runtime | ets_cases/15.13.1_Static_Initialization_Safety/runtime/SEM_15_13_002_RUNTIME_STATIC_INIT.ets | 验证静态初始化运行时顺序：静态字段按声明顺序初始化 |
| SEM_15_06_008 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_008_FAIL_missing_required.ets | 缺少必选参数。 |
| SEM_15_06_009 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_009_FAIL_excess_argument.ets | 传入多余参数。 |
| SEM_15_06_010 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_010_FAIL_ARG_MISMATCH.ets | 验证调用参数类型不匹配拒绝：string 传 int 声明应报错 |
| SEM_15_06_010 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_010_FAIL_arg_not_assignable.ets | 实参不可赋给形参类型。 |
| SEM_15_06_011 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_011_FAIL_ARG_COUNT.ets | 验证参数数量不匹配：少传参数应报错 |
| SEM_15_06_011 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_011_FAIL_spread_element_mismatch.ets | 展开元素类型不匹配。 |
| SEM_15_06_012 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_012_FAIL_rest_type_mismatch.ets | 剩余参数元素类型不匹配。 |
| SEM_15_06_013 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_013_FAIL_branch_outside_no_smart_arg.ets | 在缩窄分支外按子类型传参。 |
| SEM_15_06_014 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_014_FAIL_global_scope_narrowed_arg.ets | 假设全局变量缩窄稳定后传参。 |
| SEM_15_06_015 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_015_FAIL_reassigned_before_call.ets | 缩窄后重新赋值再传参。 |
| SEM_15_06_024 | 15.6 | compile-fail | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-fail/SEM_15_06_024_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_06_001 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_001_PASS_ARG_COMPATIBILITY.ets | 验证调用参数类型兼容：参数类型与声明类型匹配时通过 |
| SEM_15_06_001 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_001_PASS_exact_arguments.ets | 参数个数和类型完全匹配。 |
| SEM_15_06_002 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_002_PASS_SUBTYPE_ARG.ets | 验证子类型参数兼容：子类型参数可传父类型声明 |
| SEM_15_06_002 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_002_PASS_optional_omitted.ets | 可选参数省略。 |
| SEM_15_06_003 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_003_PASS_rest_arguments.ets | 剩余参数接收多个实参。 |
| SEM_15_06_004 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_004_PASS_spread_tuple.ets | 元组展开后匹配形参。 |
| SEM_15_06_005 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_005_PASS_spread_array_literal.ets | 数组字面量展开并线性化。 |
| SEM_15_06_006 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_006_PASS_function_scope_smart_arg.ets | 局部变量经 `instanceof` 缩窄后传给子类型参数。 |
| SEM_15_06_007 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_007_PASS_local_copy_smart_arg.ets | 全局变量复制到局部后缩窄再传参。 |
| SEM_15_06_019 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_019_PASS_optional_omitted.ets | / 必选/可选参数 / Java 没有可选参数。 / Swift 有默认值和参数标签，匹配规则不同。 / `SEM_15_06_019_PASS_optional_omitted` / `SEM_15_06_020_FAIL_missing_required` / |
| SEM_15_06_020 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_020_PASS_spread_array_literal_linearized.ets | / 剩余/展开参数 / Java varargs 类似，但无元组展开。 / Swift variadic 不按 ArkTS tuple/array spread 规则。 / `SEM_15_06_020_PASS_spread_array_literal_linearized` / `SEM_15_06_022_FAIL_spread_element_mismatch` / |
| SEM_15_06_022 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_022_PASS_local_smart_arg.ets | / 智能实参 / Java pattern variable 只在流作用域内有效。 / Swift 使用显式 narrowed binding。 / `SEM_15_06_022_PASS_local_smart_arg` / `SEM_15_06_026_FAIL_global_smart_arg_assumed` / |
| SEM_15_06_023 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_023_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_06_012 | 15.6 | runtime | ets_cases/15.6_Compatibility_of_Call_Arguments/runtime/SEM_15_06_012_RT_call_args.ets | 验证调用参数运行时行为：参数传递正确 |
| SEM_15_06_016 | 15.6 | runtime | ets_cases/15.6_Compatibility_of_Call_Arguments/runtime/SEM_15_06_016_RT_rest_argument_values.ets | 剩余参数保持顺序和值。 |
| SEM_15_06_017 | 15.6 | runtime | ets_cases/15.6_Compatibility_of_Call_Arguments/runtime/SEM_15_06_017_RT_spread_tuple_values.ets | 元组展开后运行值正确。 |
| SEM_15_06_018 | 15.6 | runtime | ets_cases/15.6_Compatibility_of_Call_Arguments/runtime/SEM_15_06_018_RT_smart_arg_branch.ets | 缩窄分支实际调用目标函数。 |
| SEM_15_06_021 | 15.6 | runtime | ets_cases/15.6_Compatibility_of_Call_Arguments/runtime/SEM_15_06_021_RT_rest_order_preserved.ets | / 从左到右检查 / Java 还涉及重载最优匹配。 / Swift 诊断更依赖上下文。 / `SEM_15_06_021_RT_rest_order_preserved` / `SEM_15_06_024_FAIL_earlier_arg_not_assignable` / |
| SEM_15_06_025 | 15.6 | runtime | ets_cases/15.6_Compatibility_of_Call_Arguments/runtime/SEM_15_06_025_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_04_008 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_008_FAIL_super_to_sub.ets | 父类型赋给子类型。 |
| SEM_15_04_009 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_009_FAIL_numeric_narrowing.ets | 隐式数值窄化。 |
| SEM_15_04_010 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_010_FAIL_TYPE_MISMATCH.ets | 验证不同类型不可赋值：string 不可赋值给 int |
| SEM_15_04_010 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_010_FAIL_unrelated_assignment.ets | 无关类型赋值。 |
| SEM_15_04_011 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_011_FAIL_UNRELATED_TYPES.ets | 验证非子类型不可赋值：无继承关系的类不可互相赋值 |
| SEM_15_04_011 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_011_FAIL_nullish_to_object.ets | `T |
| SEM_15_04_012 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_012_FAIL_union_missing_member.ets | 联合类型包含目标类型不接受的成员。 |
| SEM_15_04_013 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_013_FAIL_global_narrowing_assumed.ets | 假设全局变量缩窄后稳定。 |
| SEM_15_04_014 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_014_FAIL_reassignment_kills_narrowing.ets | 缩窄后重新赋值，再按缩窄类型赋值。 |
| SEM_15_04_015 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_015_FAIL_call_side_effect_kills_narrowing.ets | 函数调用可能修改被缩窄变量。 |
| SEM_15_04_021 | 15.4 | compile-fail | ets_cases/15.4_Assignability/compile-fail/SEM_15_04_021_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_04_001 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_001_PASS_SUBTYPE_ASSIGNABILITY.ets | 验证子类型可赋值性：S <: T ⇒ S 可赋值给 T |
| SEM_15_04_001 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_001_PASS_subtype_assignment.ets | 子类型赋给父类型。 |
| SEM_15_04_002 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_002_PASS_NUMERIC_WIDENING.ets | 验证数值拓宽可赋值性：int → double |
| SEM_15_04_003 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_003_PASS_UNDEFINED_ASSIGNABILITY.ets | 验证 undefined 可赋值性：undefined 可赋值给含 undefined 的联合类型 |
| SEM_15_04_003 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_003_PASS_literal_to_base.ets | 字面量类型赋给基础类型。 |
| SEM_15_04_004 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_004_PASS_INTERFACE_ASSIGNABILITY.ets | 验证接口实现的可赋值性：实现类可赋值给接口类型 |
| SEM_15_04_004 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_004_PASS_member_to_union.ets | 成员类型赋给联合类型。 |
| SEM_15_04_005 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_005_PASS_explicit_cast_assignment.ets | 显式 cast 后再赋值。 |
| SEM_15_04_006 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_006_PASS_function_scope_narrowed_assign.ets | 函数局部变量缩窄后赋给缩窄目标。 |
| SEM_15_04_007 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_007_PASS_local_copy_then_narrow.ets | 全局或字段复制到局部变量后再缩窄赋值。 |
| SEM_15_04_016 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_016_PASS_declared_subtype_assignment.ets | / 子类型赋值 / Java 类/接口赋值类似。 / Swift 更依赖精确类型或显式转换。 / `SEM_15_04_016_PASS_declared_subtype_assignment` / `SEM_15_04_017_FAIL_supertype_to_subtype` / |
| SEM_15_04_017 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_017_PASS_valid_numeric_widening.ets | / 数值转换 / Java 有 primitive widening，但数值体系不同。 / Swift 通常要求显式数值转换。 / `SEM_15_04_017_PASS_valid_numeric_widening` / `SEM_15_04_019_FAIL_double_to_int` / |
| SEM_15_04_018 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_018_PASS_undefined_to_nullish_union.ets | / nullish / Java `null` 可赋给引用类型。 / Swift `nil` 只能赋给 Optional。 / `SEM_15_04_018_PASS_undefined_to_nullish_union` / `SEM_15_04_021_FAIL_nullish_to_Object` / |
| SEM_15_04_019 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_019_PASS_local_smart_assign.ets | / 智能赋值 / Java pattern variable 是流作用域局部变量。 / Swift 用 `if let`/`as?` 生成稳定绑定。 / `SEM_15_04_019_PASS_local_smart_assign` / `SEM_15_04_023_FAIL_reassignment_kills_smart_assign` / |
| SEM_15_04_020 | 15.4 | compile-pass | ets_cases/15.4_Assignability/compile-pass/SEM_15_04_020_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_04_020 | 15.4 | runtime | ets_cases/15.4_Assignability/runtime/SEM_15_04_020_RUNTIME_ASSIGNABILITY.ets | 验证可赋值性运行时行为：子类型赋值后方法调用正确 |
| SEM_15_04_022 | 15.4 | runtime | ets_cases/15.4_Assignability/runtime/SEM_15_04_022_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_11_08 | 15.11 | compile-fail | ets_cases/15.11.8_Overload_Set_at_Method_Call/compile-fail/SEM_15_11_08_099.ets | 调用时重载拒绝 |
| SEM_15_11_08 | 15.11 | compile-pass | ets_cases/15.11.8_Overload_Set_at_Method_Call/compile-pass/SEM_15_11_08_001.ets | 调用时重载集：按实参解析 |
| SEM_15_11_08 | 15.11 | runtime | ets_cases/15.11.8_Overload_Set_at_Method_Call/runtime/SEM_15_11_08_100.ets | 调用时重载运行时 |
| SEM_15_11_05 | 15.11 | compile-fail | ets_cases/15.11.5_Overload_Set_for_Class_Instance_Methods/compile-fail/SEM_15_11_05_099.ets | 实例方法重载拒绝 |
| SEM_15_11_05 | 15.11 | compile-pass | ets_cases/15.11.5_Overload_Set_for_Class_Instance_Methods/compile-pass/SEM_15_11_05_001.ets | 类实例方法重载集 |
| SEM_15_11_05 | 15.11 | runtime | ets_cases/15.11.5_Overload_Set_for_Class_Instance_Methods/runtime/SEM_15_11_05_100.ets | 实例方法重载运行时 |
| SEM_15_09_007 | 15.9 | compile-fail | ets_cases/15.9_Overriding/compile-fail/SEM_15_09_007_FAIL_param_count_mismatch.ets | 参数个数不一致。 |
| SEM_15_09_008 | 15.9 | compile-fail | ets_cases/15.9_Overriding/compile-fail/SEM_15_09_008_FAIL_param_wrong_direction.ets | 参数 variance 方向错误。 |
| SEM_15_09_009 | 15.9 | compile-fail | ets_cases/15.9_Overriding/compile-fail/SEM_15_09_009_FAIL_return_wrong_direction.ets | 返回父类型。 |
| SEM_15_09_010 | 15.9 | compile-fail | ets_cases/15.9_Overriding/compile-fail/SEM_15_09_010_FAIL_access_reduction.ets | public 降为 protected/private。 |
| SEM_15_09_011 | 15.9 | compile-fail | ets_cases/15.9_Overriding/compile-fail/SEM_15_09_011_FAIL_private_override.ets | 把父类 private 方法当作可重写方法。 |
| SEM_15_09_012 | 15.9 | compile-fail | ets_cases/15.9_Overriding/compile-fail/SEM_15_09_012_FAIL_erased_signature_conflict.ets | 有效签名冲突但不满足重写兼容。 |
| SEM_15_09_021 | 15.9 | compile-fail | ets_cases/15.9_Overriding/compile-fail/SEM_15_09_021_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_09_099 | 15.9 | compile-fail | ets_cases/15.9_Overriding/compile-fail/SEM_15_09_099.ets | 覆写拒绝 |
| SEM_15_09_001 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_001_PASS_exact_override.ets | 完全相同签名重写。 |
| SEM_15_09_002 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_002_PASS_return_covariance.ets | 重写方法返回子类型。 |
| SEM_15_09_003 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_003_PASS_parameter_contravariance.ets | 重写方法参数使用父类型。 |
| SEM_15_09_004 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_004_PASS_protected_to_public.ets | 访问级别从 protected 放宽为 public。 |
| SEM_15_09_005 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_005_PASS_interface_override.ets | 接口方法重写兼容。 |
| SEM_15_09_006 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_006_PASS_one_method_overrides_multiple.ets | 一个方法同时重写多个兼容方法。 |
| SEM_15_09_016 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_016_PASS_exact_class_override.ets | / 类方法重写 / Java 参数类型变化不是重写。 / Swift 要求显式 `override` 且签名更严格。 / `SEM_15_09_016_PASS_exact_class_override` / `SEM_15_09_017_FAIL_private_method_override_assumed` / |
| SEM_15_09_017 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_017_PASS_subinterface_compatible_override.ets | / 接口重写 / Java default method 冲突规则不同。 / Swift protocol refinement 模型不同。 / `SEM_15_09_017_PASS_subinterface_compatible_override` / `SEM_15_09_019_FAIL_Object_public_method_in_interface` / |
| SEM_15_09_018 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_018_PASS_param_contravariant_override.ets | / 重写兼容签名 / Java 只支持返回协变，不支持参数逆变作为重写。 / Swift 通常不允许参数 variance 重写。 / `SEM_15_09_018_PASS_param_contravariant_override` / `SEM_15_09_021_FAIL_param_covariant_override` / |
| SEM_15_09_019 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_019_PASS_one_method_overrides_multiple.ets | / 有效签名冲突 / Java 擦除冲突相似但范围不同。 / Swift 重载同一性不同。 / `SEM_15_09_019_PASS_one_method_overrides_multiple` / `SEM_15_09_023_FAIL_erased_signature_conflict` / |
| SEM_15_09_020 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_020_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_09_100 | 15.9 | compile-pass | ets_cases/15.9_Overriding/compile-pass/SEM_15_09_100.ets | 覆写基础：方法覆写 |
| SEM_15_09_013 | 15.9 | runtime | ets_cases/15.9_Overriding/runtime/SEM_15_09_013_RT_dynamic_override.ets | 父类引用调用子类重写实现。 |
| SEM_15_09_014 | 15.9 | runtime | ets_cases/15.9_Overriding/runtime/SEM_15_09_014_RT_overload_plus_override.ets | 先静态选择重载，再动态分派重写。 |
| SEM_15_09_015 | 15.9 | runtime | ets_cases/15.9_Overriding/runtime/SEM_15_09_015_RT_unoverridden_overload.ets | 未重写的重载调用父类实现。 |
| SEM_15_09_022 | 15.9 | runtime | ets_cases/15.9_Overriding/runtime/SEM_15_09_022_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_09_101 | 15.9 | runtime | ets_cases/15.9_Overriding/runtime/SEM_15_09_101.ets | 覆写运行时 |
| SEM_15_08_05 | 15.8 | compile-fail | ets_cases/15.8.5_Control_flow_Graph/compile-fail/SEM_15_08_05_099.ets | 控制流拒绝 |
| SEM_15_08_05 | 15.8 | compile-pass | ets_cases/15.8.5_Control_flow_Graph/compile-pass/SEM_15_08_05_001.ets | 控制流图：if/else 分支类型 |
| SEM_15_08_05 | 15.8 | runtime | ets_cases/15.8.5_Control_flow_Graph/runtime/SEM_15_08_05_100.ets | 控制流运行时 |
| SEM_15_10_010 | 15.10 | compile-fail | ets_cases/15.10.4_Overload_Equivalent_Signatures/compile-fail/SEM_15_10_010_FAIL_EQUIVALENT_SIG.ets | 验证等价签名拒绝：仅返回值不同的重载应报错 |
| SEM_15_10_04 | 15.10 | compile-pass | ets_cases/15.10.4_Overload_Equivalent_Signatures/compile-pass/SEM_15_10_04_001.ets | 可区分重载通过 |
| SEM_15_10_04 | 15.10 | runtime | ets_cases/15.10.4_Overload_Equivalent_Signatures/runtime/SEM_15_10_04_100.ets | 等价签名运行时 |
| SEM_15_11_03 | 15.11 | compile-fail | ets_cases/15.11.3_Overload_Set_for_Interface_Methods/compile-fail/SEM_15_11_03_099.ets | 接口方法重载类型拒绝 |
| SEM_15_11_03 | 15.11 | compile-pass | ets_cases/15.11.3_Overload_Set_for_Interface_Methods/compile-pass/SEM_15_11_03_001.ets | 接口方法重载集 |
| SEM_15_11_03 | 15.11 | runtime | ets_cases/15.11.3_Overload_Set_for_Interface_Methods/runtime/SEM_15_11_03_100.ets | 接口方法重载运行时 |
| SEM_15_02_013 | 15.2 | compile-fail | ets_cases/15.2.7_Subtyping_for_Fixed_Size_Array_Types/compile-fail/SEM_15_02_013_FAIL_FIXED_ARRAY_GAP.ets | 验证 FixedArray<Object> 不是 FixedArray<string> 的子类型（逆变拒绝） |
| SEM_15_02_007 | 15.2 | compile-pass | ets_cases/15.2.7_Subtyping_for_Fixed_Size_Array_Types/compile-pass/SEM_15_02_007_PASS_fixed_array_element_covariance.ets | 验证 FixedArray 元素协变：FixedArray<Derived> 可作为 FixedArray<Base> |
| SEM_15_02_07 | 15.2 | compile-pass | ets_cases/15.2.7_Subtyping_for_Fixed_Size_Array_Types/compile-pass/SEM_15_02_07_001.ets | FixedArray 自身赋值 |
| SEM_15_02_07 | 15.2 | runtime | ets_cases/15.2.7_Subtyping_for_Fixed_Size_Array_Types/runtime/SEM_15_02_07_100.ets | FixedArray 运行时 |
| SEM_15_11_02 | 15.11 | compile-fail | ets_cases/15.11.2_Overload_Set_for_Functions/compile-fail/SEM_15_11_02_099.ets | 函数重载集拒绝 |
| SEM_15_11_001 | 15.11 | compile-pass | ets_cases/15.11.2_Overload_Set_for_Functions/compile-pass/SEM_15_11_001_PASS_OVERLOAD_RESOLUTION.ets | 验证重载解析：按参数类型选择最匹配的重载 |
| SEM_15_11_02 | 15.11 | runtime | ets_cases/15.11.2_Overload_Set_for_Functions/runtime/SEM_15_11_02_100.ets | 函数重载集运行时 |
| SEM_15_08_07 | 15.8 | compile-fail | ets_cases/15.8.7_Smart_Cast_Examples/compile-fail/SEM_15_08_07_099.ets | 智能转换拒绝 |
| SEM_15_08_07 | 15.8 | compile-pass | ets_cases/15.8.7_Smart_Cast_Examples/compile-pass/SEM_15_08_07_001.ets | 智能转换示例：典型 instanceof 使用 |
| SEM_15_08_07 | 15.8 | runtime | ets_cases/15.8.7_Smart_Cast_Examples/runtime/SEM_15_08_07_100.ets | 智能转换运行时 |
| SEM_15_08_009 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_009_FAIL_FUNC_outside_branch.ets | 在缩窄分支外使用智能类型。 |
| SEM_15_08_010 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_010_FAIL_FUNC_reassignment_kills.ets | 缩窄后重新赋值。 |
| SEM_15_08_011 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_011_FAIL_FUNC_write_uses_declared_type.ets | 写入时使用声明类型，而不是智能类型。 |
| SEM_15_08_012 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_012_FAIL_FUNC_loop_leak.ets | 循环内缩窄泄漏到循环外。 |
| SEM_15_08_013 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_013_FAIL_FUNC_closure_mutation.ets | 闭包可能修改缩窄变量。 |
| SEM_15_08_014 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_014_FAIL_FUNC_unexpressible_return.ets | 推断返回类型为不可表达智能类型。 |
| SEM_15_08_016 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_016_FAIL_GLOBAL_top_level_instanceof_then_member.ets | 顶层缩窄全局变量后直接调用子类型方法。 |
| SEM_15_08_018 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_018_FAIL_FIELD_this_field_after_method_call.ets | 字段缩窄后方法调用可能修改字段。 |
| SEM_15_08_019 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_019_FAIL_FIELD_getter_not_stable.ets | 假设 getter 多次读取稳定。 |
| SEM_15_08_028 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_028_FAIL_function_declared_base_init_derived_member.ets | 函数体内 Base 声明变量用 Derived 初始化，未显式缩窄不应访问 Derived 独有成员。 |
| SEM_15_08_029 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_029_FAIL_function_declared_base_init_derived_assign.ets | 函数体内 Base 声明变量用 Derived 初始化，不能直接赋给 Derived 变量。 |
| SEM_15_08_030 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_030_FAIL_function_declared_base_from_derived_var_member.ets | 函数体内 Base 声明变量来自 Derived 变量，未显式缩窄不应访问 Derived 独有成员。 |
| SEM_15_08_031 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_031_FAIL_top_level_declared_base_init_derived_member.ets | 顶层 Base 声明变量用 Derived 初始化，未显式缩窄不应访问 Derived 独有成员。 |
| SEM_15_08_032 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_032_FAIL_parameter_declared_base_member.ets | 函数参数声明为 Base，即使实参为 Derived，函数体内也不能直接访问 Derived 独有成员。 |
| SEM_15_08_035 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_035_FAIL_function_declared_base_after_call_member.ets | Base 声明变量由 Derived 初始化后经历函数调用，不能假设仍可按 Derived 独有成员使用。 |
| SEM_15_08_037 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_037_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_08_038 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_038_FAIL_SMART_FUNC_function_base_member_without_narrow.ets | 函数体内 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_08_099 | 15.8 | compile-fail | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-fail/SEM_15_08_099_FAIL_ST_placeholder.ets | 智能转换拒绝 |
| SEM_15_08_001 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_001_PASS_FUNC_instanceof_class.ets | 局部变量经 `instanceof` 类缩窄后调用子类方法。 |
| SEM_15_08_002 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_002_PASS_FUNC_instanceof_interface.ets | 局部变量经 `instanceof` 接口缩窄后调用接口方法。 |
| SEM_15_08_003 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_003_PASS_FUNC_nullish_check.ets | `x != null` 或等价检查移除 nullish 部分。 |
| SEM_15_08_004 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_004_PASS_FUNC_else_difference.ets | `else` 分支使用差集类型。 |
| SEM_15_08_005 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_005_PASS_FUNC_nested_narrowing.ets | 嵌套条件累积智能类型。 |
| SEM_15_08_006 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_006_PASS_FUNC_return_guard_narrowing.ets | 提前 return 后缩窄后续代码。 |
| SEM_15_08_007 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_007_PASS_FUNC_local_copy_of_field.ets | 字段复制到局部后缩窄使用。 |
| SEM_15_08_008 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_008_PASS_FUNC_local_copy_of_global.ets | 全局变量复制到局部后缩窄使用。 |
| SEM_15_08_015 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_015_PASS_GLOBAL_function_reads_global_then_local_copy.ets | 函数内读取全局变量到局部，再缩窄局部。 |
| SEM_15_08_017 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_017_PASS_FIELD_local_copy_this_field.ets | `this.f` 复制到局部后缩窄。 |
| SEM_15_08_023 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_023_PASS_instanceof_intersection.ets | / 类型表达式 / Java 不暴露通用交叉/差集智能类型表达式。 / Swift 通过新绑定表达缩窄，不使用 ArkTS 差集类型。 / `SEM_15_08_023_PASS_instanceof_intersection` / `SEM_15_08_024_FAIL_unexpressible_smart_return` / |
| SEM_15_08_024 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_024_PASS_guard_return_narrows_after.ets | / 控制流缩窄 / Java pattern variable 是流作用域。 / Swift `if let`/`guard let` 作用域显式。 / `SEM_15_08_024_PASS_guard_return_narrows_after` / `SEM_15_08_026_FAIL_outside_branch_use` / |
| SEM_15_08_025 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_025_PASS_nullish_removed_local.ets | / nullish 缩窄 / Java null check 不生成 union-minus-null 类型。 / Swift Optional unwrap 生成新值。 / `SEM_15_08_025_PASS_nullish_removed_local` / `SEM_15_08_028_FAIL_nullish_removed_without_check` / |
| SEM_15_08_026 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_026_PASS_copy_field_to_local.ets | / 存储稳定性 / Java pattern variable 是局部变量，不是字段。 / Swift 常用局部绑定避免字段不稳定。 / `SEM_15_08_026_PASS_copy_field_to_local` / `SEM_15_08_030_FAIL_getter_assumed_stable` / |
| SEM_15_08_027 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_027_PASS_no_side_effect_between_check_and_use.ets | / 副作用 / Java 也会因赋值影响 flow fact。 / Swift 捕获可变状态规则不同。 / `SEM_15_08_027_PASS_no_side_effect_between_check_and_use` / `SEM_15_08_032_FAIL_closure_or_call_mutates_value` / |
| SEM_15_08_033 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_033_PASS_function_declared_base_instanceof_member.ets | Base 声明变量经过 instanceof Derived 显式缩窄后可访问 Derived 独有成员。 |
| SEM_15_08_034 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_034_PASS_function_declared_base_reassigned_base.ets | Base 声明变量先保存 Derived 后重新赋值为 Base，后续按 Base 使用。 |
| SEM_15_08_036 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_036_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_08_100 | 15.8 | compile-pass | ets_cases/15.8_Smart_Casts_and_Smart_Types/compile-pass/SEM_15_08_100_PASS_ST_placeholder.ets | 智能类型：instanceof 类型收窄 |
| SEM_15_08_020 | 15.8 | runtime | ets_cases/15.8_Smart_Casts_and_Smart_Types/runtime/SEM_15_08_020_RT_true_branch.ets | 运行时 true 分支调用子类型方法。 |
| SEM_15_08_021 | 15.8 | runtime | ets_cases/15.8_Smart_Casts_and_Smart_Types/runtime/SEM_15_08_021_RT_false_branch.ets | 运行时 false 分支不调用子类型方法。 |
| SEM_15_08_022 | 15.8 | runtime | ets_cases/15.8_Smart_Casts_and_Smart_Types/runtime/SEM_15_08_022_RT_smart_overload.ets | 智能类型影响重载选择。 |
| SEM_15_08_039 | 15.8 | runtime | ets_cases/15.8_Smart_Casts_and_Smart_Types/runtime/SEM_15_08_039_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_08_101 | 15.8 | runtime | ets_cases/15.8_Smart_Casts_and_Smart_Types/runtime/SEM_15_08_101_RT_ST_placeholder.ets | 智能转换运行时 |
| SEM_15_11_06 | 15.11 | compile-fail | ets_cases/15.11.6_Overload_Set_for_Constructors/compile-fail/SEM_15_11_06_099.ets | 构造函数重载拒绝 |
| SEM_15_11_002 | 15.11 | compile-pass | ets_cases/15.11.6_Overload_Set_for_Constructors/compile-pass/SEM_15_11_002_PASS_CTOR_RESOLUTION.ets | 验证构造函数重载解析 |
| SEM_15_11_06 | 15.11 | runtime | ets_cases/15.11.6_Overload_Set_for_Constructors/runtime/SEM_15_11_06_100.ets | 构造函数重载运行时 |
| SEM_15_14_01 | 15.14 | compile-fail | ets_cases/15.14.1_Extended_Conditional_Expressions/compile-fail/SEM_15_14_01_099.ets | 三元表达式类型不匹配拒绝 |
| SEM_15_14_001 | 15.14 | compile-pass | ets_cases/15.14.1_Extended_Conditional_Expressions/compile-pass/SEM_15_14_001_PASS_TERNARY.ets | 验证扩展条件表达式：三元表达式类型推断 |
| SEM_15_14_01 | 15.14 | runtime | ets_cases/15.14.1_Extended_Conditional_Expressions/runtime/SEM_15_14_01_100.ets | 三元表达式运行时 |
| SEM_15_02_014 | 15.2 | compile-fail | ets_cases/15.2.1_Subtyping_for_Non_Generic_Classes_and_Interfaces/compile-fail/SEM_15_02_014_FAIL_SELF_EXTENDS.ets | 验证非泛型类无效 extends 拒绝：类不可 extends 自身 |
| SEM_15_02_001 | 15.2 | compile-pass | ets_cases/15.2.1_Subtyping_for_Non_Generic_Classes_and_Interfaces/compile-pass/SEM_15_02_001_PASS_CLASS_EXTENDS_SUBTYPE.ets | 验证非泛型类 extends 产生直接子类型关系：class B extends A → B <: A |
| SEM_15_02_002 | 15.2 | compile-pass | ets_cases/15.2.1_Subtyping_for_Non_Generic_Classes_and_Interfaces/compile-pass/SEM_15_02_002_PASS_INTERFACE_EXTENDS_SUBTYPE.ets | 验证接口 extends 产生直接子类型关系：interface I extends J → I <: J |
| SEM_15_02_015 | 15.2 | runtime | ets_cases/15.2.1_Subtyping_for_Non_Generic_Classes_and_Interfaces/runtime/SEM_15_02_015_RUNTIME_SUBTYPE.ets | 验证非泛型子类型运行时调用：父类引用调用子类方法 |
| SEM_15_02_017 | 15.2 | compile-fail | ets_cases/15.2.6_Subtyping_for_Function_Types/compile-fail/SEM_15_02_017_FAIL_PARAM_COVARIANCE.ets | 验证函数类型参数逆变违规拒绝：(Dog)=>void 不可用作 (Animal)=>void |
| SEM_15_02_006 | 15.2 | compile-pass | ets_cases/15.2.6_Subtyping_for_Function_Types/compile-pass/SEM_15_02_006_PASS_FUNCTION_TYPE_SUBTYPE.ets | 验证函数类型子类型：参数逆变，返回值协变 |
| SEM_15_02_06 | 15.2 | runtime | ets_cases/15.2.6_Subtyping_for_Function_Types/runtime/SEM_15_02_06_100.ets | 函数类型子类型运行时 |
| SEM_15_08_06 | 15.8 | compile-fail | ets_cases/15.8.6_Type_Expression_Simplification/compile-fail/SEM_15_08_06_099.ets | 类型简化拒绝 |
| SEM_15_08_06 | 15.8 | compile-pass | ets_cases/15.8.6_Type_Expression_Simplification/compile-pass/SEM_15_08_06_001.ets | 类型表达式简化：联合类型简化 |
| SEM_15_08_06 | 15.8 | runtime | ets_cases/15.8.6_Type_Expression_Simplification/runtime/SEM_15_08_06_100.ets | 类型简化运行时 |
| SEM_15_08_005 | 15.8 | compile-fail | ets_cases/15.8.2_Intersection_Types/compile-fail/SEM_15_08_005_FAIL_INTERSECTION_UNSUPPORTED.ets | 验证交叉类型 — Spec §15.8.2 定义但编译器暂不支持 |
| SEM_15_08_02 | 15.8 | compile-pass | ets_cases/15.8.2_Intersection_Types/compile-pass/SEM_15_08_02_001.ets | 类型自身赋值 |
| SEM_15_08_02 | 15.8 | runtime | ets_cases/15.8.2_Intersection_Types/runtime/SEM_15_08_02_100.ets | 类型运行时 |
| SEM_15_07_01 | 15.7 | compile-fail | ets_cases/15.7.1_Type_Inference_for_Constant_Expressions/compile-fail/SEM_15_07_01_004_FAIL_INVALID_CONST_EXPR.ets | 验证非法常量表达式拒绝：字符串与整数相乘无效 |
| SEM_15_07_01 | 15.7 | compile-pass | ets_cases/15.7.1_Type_Inference_for_Constant_Expressions/compile-pass/SEM_15_07_01_001_PASS_CONST_EXPR_TYPE.ets | 验证常量表达式类型推断：算术常量的类型从操作数推断 |
| SEM_15_07_01 | 15.7 | compile-pass | ets_cases/15.7.1_Type_Inference_for_Constant_Expressions/compile-pass/SEM_15_07_01_002_PASS_BOOL_CONST_EXPR.ets | 验证布尔常量表达式类型推断：关系运算推断为 boolean |
| SEM_15_07_01 | 15.7 | compile-pass | ets_cases/15.7.1_Type_Inference_for_Constant_Expressions/compile-pass/SEM_15_07_01_003_PASS_CONST_DECL_EXPR.ets | 验证 const 声明常量表达式计算：编译期常量可参与表达式 |
| SEM_15_07_01 | 15.7 | runtime | ets_cases/15.7.1_Type_Inference_for_Constant_Expressions/runtime/SEM_15_07_01_100.ets | 常量表达式运行时 |
| SEM_15_02_004 | 15.2 | compile-pass | ets_cases/15.2.3_Subtyping_for_Literal_Types/compile-pass/SEM_15_02_004_PASS_STRING_LITERAL_SUBTYPE.ets | 验证字符串字面量类型是其基础类型 string 的子类型 |
| SEM_15_02_012 | 15.2 | compile-pass | ets_cases/15.2.3_Subtyping_for_Literal_Types/compile-pass/SEM_15_02_012_PASS_int_widens_to_number.ets | 验证 int 可隐式拓宽为 number：int 字面量可赋值给 number/string 联合类型 |
| SEM_15_02_018 | 15.2 | runtime | ets_cases/15.2.3_Subtyping_for_Literal_Types/runtime/SEM_15_02_018_RUNTIME_LITERAL.ets | 验证字符串字面量子类型运行时行为 |
| SEM_15_08_04 | 15.8 | compile-fail | ets_cases/15.8.4_Computing_Smart_Types/compile-fail/SEM_15_08_04_099.ets | 智能类型拒绝 |
| SEM_15_08_04 | 15.8 | compile-pass | ets_cases/15.8.4_Computing_Smart_Types/compile-pass/SEM_15_08_04_001.ets | 计算智能类型：null 检查后类型收窄 |
| SEM_15_08_04 | 15.8 | runtime | ets_cases/15.8.4_Computing_Smart_Types/runtime/SEM_15_08_04_100.ets | 智能类型运行时 |
| SEM_15_10_011 | 15.10 | compile-fail | ets_cases/15.10.1_Implicit_Function_Overloading/compile-fail/SEM_15_10_011_FAIL_ERASURE_AMBIGUOUS.ets | 验证重载解析 — 类型擦除后签名不可区分时报错 |
| SEM_15_10_001 | 15.10 | compile-pass | ets_cases/15.10.1_Implicit_Function_Overloading/compile-pass/SEM_15_10_001_PASS_FUNCTION_OVERLOAD.ets | 验证函数重载：同名函数不同参数类型可共存 |
| SEM_15_10_002 | 15.10 | compile-pass | ets_cases/15.10.1_Implicit_Function_Overloading/compile-pass/SEM_15_10_002_PASS_PARAM_COUNT_OVERLOAD.ets | 验证多参数重载：不同参数数量的函数重载 |
| SEM_15_10_003 | 15.10 | compile-pass | ets_cases/15.10.1_Implicit_Function_Overloading/compile-pass/SEM_15_10_003_PASS_UNION_OVERLOAD.ets | 验证联合类型参数重载：参数类型为联合类型时的重载解析 |
| SEM_15_10_010 | 15.10 | compile-pass | ets_cases/15.10.1_Implicit_Function_Overloading/compile-pass/SEM_15_10_010_PASS_UNAMBIGUOUS_OVERLOAD.ets | 验证重载解析 — 编译器在可确定最佳匹配时允许重载 |
| SEM_15_10_012 | 15.10 | runtime | ets_cases/15.10.1_Implicit_Function_Overloading/runtime/SEM_15_10_012_RUNTIME_FUNCTION_OVERLOAD.ets | 函数重载运行时解析 |
| SEM_15_01_08 | 15.1 | compile-fail | ets_cases/15.1.8_Semantic_Essentials_Summary/compile-fail/SEM_15_01_08_099.ets | 语义总结无效操作拒绝 |
| SEM_15_01_08 | 15.1 | compile-pass | ets_cases/15.1.8_Semantic_Essentials_Summary/compile-pass/SEM_15_01_08_001.ets | 语义基础总结：综合表达式验证 |
| SEM_15_01_08 | 15.1 | runtime | ets_cases/15.1.8_Semantic_Essentials_Summary/runtime/SEM_15_01_08_100.ets | 语义总结运行时行为 |
| SEM_15_11_09 | 15.11 | compile-fail | ets_cases/15.11.9_Overloading_and_Overriding/compile-fail/SEM_15_11_09_099.ets | 重载覆写交互拒绝 |
| SEM_15_11_09 | 15.11 | compile-pass | ets_cases/15.11.9_Overloading_and_Overriding/compile-pass/SEM_15_11_09_001.ets | 重载与覆写交互 |
| SEM_15_11_09 | 15.11 | runtime | ets_cases/15.11.9_Overloading_and_Overriding/runtime/SEM_15_11_09_100.ets | 重载覆写交互运行时 |
| SEM_15_13_009 | 15.13 | compile-fail | ets_cases/15.13_Static_Initialization/compile-fail/SEM_15_13_009_FAIL_static_forward_read.ets | 编译期可检测的静态字段前向读取。 |
| SEM_15_13_010 | 15.13 | compile-fail | ets_cases/15.13_Static_Initialization/compile-fail/SEM_15_13_010_FAIL_top_level_forward_read.ets | 顶层变量初始化前读取。 |
| SEM_15_13_011 | 15.13 | compile-fail | ets_cases/15.13_Static_Initialization/compile-fail/SEM_15_13_011_FAIL_static_block_uninitialized_read.ets | 静态块读取尚未初始化字段。 |
| SEM_15_13_012 | 15.13 | compile-fail | ets_cases/15.13_Static_Initialization/compile-fail/SEM_15_13_012_FAIL_global_init_smart_assumption.ets | 全局初始化依赖不稳定智能类型状态。 |
| SEM_15_13_018 | 15.13 | compile-fail | ets_cases/15.13_Static_Initialization/compile-fail/SEM_15_13_018_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_13_099 | 15.13 | compile-fail | ets_cases/15.13_Static_Initialization/compile-fail/SEM_15_13_099.ets | 静态初始化无效引用 |
| SEM_15_13_007 | 15.13 | compile-pass | ets_cases/15.13_Static_Initialization/compile-pass/SEM_15_13_007_PASS_ordered_static_fields.ets | 静态字段按顺序初始化。 |
| SEM_15_13_008 | 15.13 | compile-pass | ets_cases/15.13_Static_Initialization/compile-pass/SEM_15_13_008_PASS_function_local_init_logic.ets | 初始化器委托给局部智能类型安全的函数。 |
| SEM_15_13_015 | 15.13 | compile-pass | ets_cases/15.13_Static_Initialization/compile-pass/SEM_15_13_015_PASS_ordered_static_fields.ets | / 初始化安全 / Java 循环初始化中可能暴露默认值。 / Swift 通过不同规则防止 use-before-init。 / `SEM_15_13_015_PASS_ordered_static_fields` / `SEM_15_13_018_FAIL_static_forward_read` / |
| SEM_15_13_016 | 15.13 | compile-pass | ets_cases/15.13_Static_Initialization/compile-pass/SEM_15_13_016_PASS_initializer_uses_local_smart_function.ets | / 智能类型交互 / Java 没有全局智能缩窄等价规则。 / Swift 顶层 flow 不是 ArkTS 智能类型状态。 / `SEM_15_13_016_PASS_initializer_uses_local_smart_function` / `SEM_15_13_020_FAIL_global_init_smart_assumption` / |
| SEM_15_13_017 | 15.13 | compile-pass | ets_cases/15.13_Static_Initialization/compile-pass/SEM_15_13_017_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_13_100 | 15.13 | compile-pass | ets_cases/15.13_Static_Initialization/compile-pass/SEM_15_13_100.ets | 静态初始化基础 |
| SEM_15_13_001 | 15.13 | runtime | ets_cases/15.13_Static_Initialization/runtime/SEM_15_13_001_RT_static_field_triggers.ets | 访问静态字段触发初始化。 |
| SEM_15_13_002 | 15.13 | runtime | ets_cases/15.13_Static_Initialization/runtime/SEM_15_13_002_RT_static_method_triggers.ets | 调用静态方法触发初始化。 |
| SEM_15_13_003 | 15.13 | runtime | ets_cases/15.13_Static_Initialization/runtime/SEM_15_13_003_RT_new_triggers.ets | 创建实例触发类初始化。 |
| SEM_15_13_004 | 15.13 | runtime | ets_cases/15.13_Static_Initialization/runtime/SEM_15_13_004_RT_namespace_function_triggers.ets | 访问 namespace 成员触发 namespace 初始化。 |
| SEM_15_13_005 | 15.13 | runtime | ets_cases/15.13_Static_Initialization/runtime/SEM_15_13_005_RT_module_variable_triggers.ets | 访问 module 变量或函数触发 module 初始化。 |
| SEM_15_13_006 | 15.13 | runtime | ets_cases/15.13_Static_Initialization/runtime/SEM_15_13_006_RT_static_init_calls_smart_function.ets | 静态初始化器调用内部使用局部智能类型的函数。 |
| SEM_15_13_013 | 15.13 | runtime | ets_cases/15.13_Static_Initialization/runtime/SEM_15_13_013_RT_static_method_trigger.ets | / 类初始化触发 / Java 类初始化类似但不完全相同。 / Swift static/global 初始化通常是 lazy。 / `SEM_15_13_013_RT_static_method_trigger` / `SEM_15_13_014_FAIL_wrong_order_assumption` / |
| SEM_15_13_014 | 15.13 | runtime | ets_cases/15.13_Static_Initialization/runtime/SEM_15_13_014_RT_namespace_member_trigger.ets | / namespace/module 初始化 / Java 没有 ArkTS namespace/module 初始化模型。 / Swift module/global 初始化不同。 / `SEM_15_13_014_RT_namespace_member_trigger` / `SEM_15_13_016_FAIL_namespace_initializer_assumed_without_use` / |
| SEM_15_13_019 | 15.13 | runtime | ets_cases/15.13_Static_Initialization/runtime/SEM_15_13_019_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_13_101 | 15.13 | runtime | ets_cases/15.13_Static_Initialization/runtime/SEM_15_13_101.ets | 静态初始化运行时 |
| SEM_15_01_027 | 15.1 | compile-fail | ets_cases/15.1.5_Specifics_of_String_Operator_Contexts/compile-fail/SEM_15_01_027_FAIL_STRING_SUB.ets | 验证二进制运算符 '-' 不可用于字符串：string - string 无效 |
| SEM_15_01_011 | 15.1 | compile-pass | ets_cases/15.1.5_Specifics_of_String_Operator_Contexts/compile-pass/SEM_15_01_011_PASS_STRING_OPERATOR_CONVERSION.ets | 验证二元 '+' 运算符在一侧为 string 时进行字符串转换 |
| SEM_15_01_025 | 15.1 | compile-pass | ets_cases/15.1.5_Specifics_of_String_Operator_Contexts/compile-pass/SEM_15_01_025_PASS_STRING_BOOL.ets | 验证字符串与布尔值拼接：string + boolean → string |
| SEM_15_01_026 | 15.1 | compile-pass | ets_cases/15.1.5_Specifics_of_String_Operator_Contexts/compile-pass/SEM_15_01_026_PASS_STRING_DOUBLE.ets | 验证字符串与 double 拼接：string + double → string |
| SEM_15_01_028 | 15.1 | runtime | ets_cases/15.1.5_Specifics_of_String_Operator_Contexts/runtime/SEM_15_01_028_RUNTIME_STRING_CONCAT.ets | 验证字符串拼接运行时行为 |
| SEM_15_09_002 | 15.9 | compile-fail | ets_cases/15.9.1_Overriding_in_Classes/compile-fail/SEM_15_09_002_FAIL_OVERRIDE_SIGNATURE.ets | 验证覆写返回类型不匹配拒绝 |
| SEM_15_09_001 | 15.9 | compile-pass | ets_cases/15.9.1_Overriding_in_Classes/compile-pass/SEM_15_09_001_PASS_CLASS_OVERRIDE.ets | 验证类方法覆写：子类 override 父类方法 |
| SEM_15_09_007 | 15.9 | runtime | ets_cases/15.9.1_Overriding_in_Classes/runtime/SEM_15_09_007_RUNTIME_OVERRIDE.ets | 验证类方法覆写运行时行为：多态派发正确 |
| SEM_15_01_005 | 15.1 | compile-fail | ets_cases/15.1.1_Type_of_Standalone_Expression/compile-fail/SEM_15_01_005_FAIL_OBJECT_LITERAL_STANDALONE.ets | 验证对象字面量作为独立表达式应产生编译错误 ESE0127 |
| SEM_15_01_001 | 15.1 | compile-pass | ets_cases/15.1.1_Type_of_Standalone_Expression/compile-pass/SEM_15_01_001_PASS_INT_LITERAL_TYPE.ets | 验证独立整数字面量推断为 int 类型 |
| SEM_15_01_002 | 15.1 | compile-pass | ets_cases/15.1.1_Type_of_Standalone_Expression/compile-pass/SEM_15_01_002_PASS_FLOAT_LITERAL_TYPE.ets | 验证独立浮点字面量推断为 double 类型 |
| SEM_15_01_003 | 15.1 | compile-pass | ets_cases/15.1.1_Type_of_Standalone_Expression/compile-pass/SEM_15_01_003_PASS_CONST_EXPR_TYPE.ets | 验证常量表达式的类型从操作数和操作推断 |
| SEM_15_01_004 | 15.1 | compile-pass | ets_cases/15.1.1_Type_of_Standalone_Expression/compile-pass/SEM_15_01_004_PASS_ARRAY_LITERAL_TYPE.ets | 验证数组字面量类型从元素推断 |
| SEM_15_01_033 | 15.1 | runtime | ets_cases/15.1.1_Type_of_Standalone_Expression/runtime/SEM_15_01_033_RUNTIME_STANDALONE.ets | 验证独立表达式运行时类型行为：整数字面量作为独立表达式推断正确 |
| SEM_15_01_010 | 15.1 | compile-fail | ets_cases/15.1_Semantic_Essentials/compile-fail/SEM_15_01_010_FAIL_standalone_object_literal.ets | 对象字面量作为独立表达式，无法推断类型。 |
| SEM_15_01_011 | 15.1 | compile-fail | ets_cases/15.1_Semantic_Essentials/compile-fail/SEM_15_01_011_FAIL_incompatible_assignment_like_rhs.ets | 右值类型已知但不可赋给目标类型。 |
| SEM_15_01_012 | 15.1 | compile-fail | ets_cases/15.1_Semantic_Essentials/compile-fail/SEM_15_01_012_FAIL_generic_target_no_extra_inference.ets | `foo<T extends number>(x: T); foo(1)` 推断为 `int`，不是 `number`。 |
| SEM_15_01_013 | 15.1 | compile-fail | ets_cases/15.1_Semantic_Essentials/compile-fail/SEM_15_01_013_FAIL_string_minus_int.ets | `string - int` 不属于字符串上下文。 |
| SEM_15_01_014 | 15.1 | compile-fail | ets_cases/15.1_Semantic_Essentials/compile-fail/SEM_15_01_014_FAIL_boolean_numeric_operator.ets | `true + 1` 在非字符串上下文中非法。 |
| SEM_15_01_015 | 15.1 | compile-fail | ets_cases/15.1_Semantic_Essentials/compile-fail/SEM_15_01_015_FAIL_implicit_numeric_narrowing.ets | 隐式数值窄化赋值，例如 `int` 到 `byte`。 |
| SEM_15_01_022 | 15.1 | compile-fail | ets_cases/15.1_Semantic_Essentials/compile-fail/SEM_15_01_022_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_01_099 | 15.1 | compile-fail | ets_cases/15.1_Semantic_Essentials/compile-fail/SEM_15_01_099.ets | 语义基础拒绝 |
| SEM_15_01_001 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_001_PASS_standalone_int_literal.ets | `let x = 1` 使用整数字面量默认类型。 |
| SEM_15_01_002 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_002_PASS_target_double_literal.ets | `let x: double = 1` 由目标类型引导字面量类型。 |
| SEM_15_01_003 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_003_PASS_array_literal_target_double.ets | `let a: double[] = [1, 2]` 数组元素使用目标类型。 |
| SEM_15_01_004 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_004_PASS_function_arg_target_type.ets | `foo(x: double); foo(1)` 调用实参使用类赋值上下文。 |
| SEM_15_01_005 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_005_PASS_string_plus_int.ets | `"x" + 1` 触发字符串转换。 |
| SEM_15_01_006 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_006_PASS_string_plus_boolean.ets | `"x" + true` 触发字符串转换。 |
| SEM_15_01_007 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_007_PASS_byte_increment.ets | `byte` 前置/后置自增不把变量拓宽成 `int`。 |
| SEM_15_01_008 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_008_PASS_short_compound_assignment.ets | `short` 复合赋值保持赋值语义。 |
| SEM_15_01_009 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_009_PASS_explicit_generic_number.ets | `foo<number>(1)` 显式指定泛型实参后通过。 |
| SEM_15_01_016 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_016_PASS_standalone_numeric_array.ets | / 独立表达式 / Java 没有 ArkTS 对象字面量；数值字面量规则不同。 / Swift 有字面量推断，但对象字面量模型不同。 / `SEM_15_01_016_PASS_standalone_numeric_array` / `SEM_15_01_017_FAIL_standalone_object_literal` / |
| SEM_15_01_017 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_017_PASS_call_arg_target_double.ets | / 类赋值上下文 / Java 方法调用转换类似，但没有 union/nullish 目标上下文。 / Swift 通常不做不同数值类型的隐式转换。 / `SEM_15_01_017_PASS_call_arg_target_double` / `SEM_15_01_019_FAIL_rhs_known_not_assignable` / |
| SEM_15_01_018 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_018_PASS_int_division_result.ets | / 数值运算符 / Java 小整数提升类似，但 ArkTS `number` 与整数除法要单独测。 / Swift 不允许隐式混合数值类型。 / `SEM_15_01_018_PASS_int_division_result` / `SEM_15_01_021_FAIL_boolean_numeric_operator` / |
| SEM_15_01_019 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_019_PASS_string_plus_nullish.ets | / 字符串 `+` / Java 也支持字符串拼接。 / Swift 需要插值或显式转换。 / `SEM_15_01_019_PASS_string_plus_nullish` / `SEM_15_01_023_FAIL_string_minus_int` / |
| SEM_15_01_020 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_020_PASS_explicit_T_number.ets | / 类型参数目标 / Java 泛型推断可受约束/目标影响。 / Swift 泛型推断与数字字面量行为不同。 / `SEM_15_01_020_PASS_explicit_T_number` / `SEM_15_01_025_FAIL_implicit_int_for_T_extends_number` / |
| SEM_15_01_021 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_021_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_01_100 | 15.1 | compile-pass | ets_cases/15.1_Semantic_Essentials/compile-pass/SEM_15_01_100.ets | 语义基础：类型注解变量声明 |
| SEM_15_01_023 | 15.1 | runtime | ets_cases/15.1_Semantic_Essentials/runtime/SEM_15_01_023_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_01_101 | 15.1 | runtime | ets_cases/15.1_Semantic_Essentials/runtime/SEM_15_01_101.ets | 语义基础运行时 |
| SEM_15_07_009 | 15.7 | compile-fail | ets_cases/15.7_Type_Inference/compile-fail/SEM_15_07_009_FAIL_native_missing_return_type.ets | native 函数缺少返回类型。 |
| SEM_15_07_010 | 15.7 | compile-fail | ets_cases/15.7_Type_Inference/compile-fail/SEM_15_07_010_FAIL_missing_return_path.ets | 存在没有 return 的执行路径。 |
| SEM_15_07_011 | 15.7 | compile-fail | ets_cases/15.7_Type_Inference/compile-fail/SEM_15_07_011_FAIL_unexpressible_smart_return.ets | 推断结果是不可表达的智能类型。 |
| SEM_15_07_012 | 15.7 | compile-fail | ets_cases/15.7_Type_Inference/compile-fail/SEM_15_07_012_FAIL_standalone_object_literal.ets | 对象字面量没有目标类型。 |
| SEM_15_07_013 | 15.7 | compile-fail | ets_cases/15.7_Type_Inference/compile-fail/SEM_15_07_013_FAIL_incompatible_return_branches.ets | 不同返回分支无法推断合法类型。 |
| SEM_15_07_014 | 15.7 | compile-fail | ets_cases/15.7_Type_Inference/compile-fail/SEM_15_07_014_FAIL_global_condition_initializer.ets | 全局初始化依赖条件缩窄。 |
| SEM_15_07_015 | 15.7 | compile-fail | ets_cases/15.7_Type_Inference/compile-fail/SEM_15_07_015_FAIL_reassignment_before_return.ets | return 前重新赋值导致智能类型失效。 |
| SEM_15_07_024 | 15.7 | compile-fail | ets_cases/15.7_Type_Inference/compile-fail/SEM_15_07_024_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_07_099 | 15.7 | compile-fail | ets_cases/15.7_Type_Inference/compile-fail/SEM_15_07_099.ets | 类型推断拒绝 |
| SEM_15_07_001 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_001_PASS_infer_int_initializer.ets | `let x = 1` 推断为默认整数类型。 |
| SEM_15_07_002 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_002_PASS_target_numeric_initializer.ets | 目标类型引导数字字面量。 |
| SEM_15_07_003 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_003_PASS_array_literal_inference.ets | 根据数组元素推断数组类型。 |
| SEM_15_07_004 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_004_PASS_return_same_type.ets | 所有 return 路径类型一致。 |
| SEM_15_07_005 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_005_PASS_return_common_supertype.ets | 多个返回路径可推断公共父类型。 |
| SEM_15_07_006 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_006_PASS_lambda_return_inference.ets | lambda 返回类型可推断。 |
| SEM_15_07_007 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_007_PASS_function_smart_return_expressible.ets | 函数局部智能类型参与返回推断且类型可表达。 |
| SEM_15_07_008 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_008_PASS_explicit_return_avoids_smart_issue.ets | 显式返回类型避免不可表达智能类型问题。 |
| SEM_15_07_019 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_019_PASS_byte_target_127.ets | / 常量数值推断 / Java 字面量窄化和重载推断不同。 / Swift 数字字面量由协议和上下文驱动。 / `SEM_15_07_019_PASS_byte_target_127` / `SEM_15_07_020_FAIL_byte_target_128` / |
| SEM_15_07_020 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_020_PASS_int_or_double_target.ets | / union 目标推断 / Java 无 union 目标类型。 / Swift 无通用 union 类型。 / `SEM_15_07_020_PASS_int_or_double_target` / `SEM_15_07_022_FAIL_numeric_union_ambiguous` / |
| SEM_15_07_021 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_021_PASS_all_paths_common_supertype.ets | / 返回类型推断 / Java 方法必须显式写返回类型。 / Swift 允许部分函数/闭包推断，但边界不同。 / `SEM_15_07_021_PASS_all_paths_common_supertype` / `SEM_15_07_024_FAIL_missing_return_path` / |
| SEM_15_07_022 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_022_PASS_object_literal_with_class_target.ets | / 字面量推断 / Java 有数组初始化器但无对象字面量。 / Swift collection literal 推断不同。 / `SEM_15_07_022_PASS_object_literal_with_class_target` / `SEM_15_07_026_FAIL_standalone_object_literal` / |
| SEM_15_07_023 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_023_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_07_100 | 15.7 | compile-pass | ets_cases/15.7_Type_Inference/compile-pass/SEM_15_07_100.ets | 类型推断：从初始化器推断类型 |
| SEM_15_07_016 | 15.7 | runtime | ets_cases/15.7_Type_Inference/runtime/SEM_15_07_016_RT_inferred_return_value.ets | 推断返回值运行结果正确。 |
| SEM_15_07_017 | 15.7 | runtime | ets_cases/15.7_Type_Inference/runtime/SEM_15_07_017_RT_lambda_inferred_return_value.ets | lambda 推断返回值正确。 |
| SEM_15_07_018 | 15.7 | runtime | ets_cases/15.7_Type_Inference/runtime/SEM_15_07_018_RT_smart_branch_return.ets | 智能分支返回执行路径正确。 |
| SEM_15_07_025 | 15.7 | runtime | ets_cases/15.7_Type_Inference/runtime/SEM_15_07_025_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_07_101 | 15.7 | runtime | ets_cases/15.7_Type_Inference/runtime/SEM_15_07_101.ets | 类型推断运行时 |
| SEM_15_02_010 | 15.2 | compile-fail | ets_cases/15.2.9_Subtyping_for_Difference_Types/compile-fail/SEM_15_02_010_FAIL_DIFFERENCE_UNSUPPORTED.ets | 验证差分类型 — Spec 要求 T \ U <: T 但编译器暂不支持差分类型 |
| SEM_15_02_09 | 15.2 | compile-pass | ets_cases/15.2.9_Subtyping_for_Difference_Types/compile-pass/SEM_15_02_09_001.ets | 差分类型自身赋值 |
| SEM_15_02_09 | 15.2 | runtime | ets_cases/15.2.9_Subtyping_for_Difference_Types/runtime/SEM_15_02_09_100.ets | 差分类型运行时 |
| SEM_15_11_011 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_011_FAIL_no_valid_overload.ets | 没有任何重载接受当前实参。 |
| SEM_15_11_012 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_012_FAIL_missing_required_all.ets | 所有重载都缺少必选参数。 |
| SEM_15_11_013 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_013_FAIL_excess_arg_all.ets | 多余参数导致所有重载无效。 |
| SEM_15_11_014 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_014_FAIL_not_assignable_all.ets | 实参不可赋给任何重载形参。 |
| SEM_15_11_019 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_019_FAIL_global_not_narrowed_for_overload.ets | 全局变量缩窄不应稳定影响重载选择。 |
| SEM_15_11_038 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_038_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_11_041 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_041_FAIL_ARCHIVE_object_method_reject_null.ets | 归档吸纳：object method reject null。来源 `NullishOverloadResolution\compile-fail\SEM_FAIL_001_object_method_reject_null.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_042 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_042_FAIL_ARCHIVE_object_method_reject_undefined.ets | 归档吸纳：object method reject undefined。来源 `NullishOverloadResolution\compile-fail\SEM_FAIL_002_object_method_reject_undefined.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_055 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_055_FAIL_ARCHIVE_no_matching_function.ets | 归档吸纳：no matching function。来源 `Overloading\compile-fail\OVERLOAD_FAIL_001_no_matching_function.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_056 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_056_FAIL_ARCHIVE_return_type_not_used_for_resolution.ets | 归档吸纳：return type not used for resolution。来源 `Overloading\compile-fail\OVERLOAD_FAIL_003_return_type_not_used_for_resolution.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_057 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_057_FAIL_ARCHIVE_constructor_no_matching.ets | 归档吸纳：constructor no matching。来源 `Overloading\compile-fail\OVERLOAD_FAIL_015_constructor_no_matching.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_058 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_058_FAIL_ARCHIVE_union_common_member_overloaded.ets | 归档吸纳：union common member overloaded。来源 `Overloading\compile-fail\OVERLOAD_FAIL_017_union_common_member_overloaded.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_059 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_059_FAIL_ARCHIVE_receiver_overload_method_call.ets | 归档吸纳：receiver overload method call。来源 `Overloading\compile-fail\OVERLOAD_FAIL_018_receiver_overload_method_call.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_060 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_060_FAIL_ARCHIVE_static_method_not_inherited_for_overload.ets | 归档吸纳：static method not inherited for overload。来源 `Overloading\compile-fail\OVERLOAD_FAIL_026_static_method_not_inherited_for_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_061 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_061_FAIL_ARCHIVE_receiver_same_name_instance_method.ets | 归档吸纳：receiver same name instance method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_027_receiver_same_name_instance_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_099 | 15.11 | compile-fail | ets_cases/15.11_Overload_Resolution/compile-fail/SEM_15_11_099.ets | 重载解析拒绝 |
| SEM_15_11_015 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_015_PASS_unreachable_entity.ets | 后面的重载永远不可达。 |
| SEM_15_11_016 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_016_PASS_broad_hides_narrow.ets | 宽泛重载排在前导致窄重载不可达。 |
| SEM_15_11_023 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_023_PASS_broad_hides_narrow.ets | / 不可达告警 / Java 没有同类“顺序导致不可达”告警。 / Swift 诊断规则不同。 / `SEM_15_11_023_WARN_broad_hides_narrow` / `SEM_15_11_026_FAIL_invalid_signature_not_warning` / |
| SEM_15_11_037 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_037_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_11_043 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_043_PASS_ARCHIVE_null_selects_inherited_generic_method.ets | 归档吸纳：null selects inherited generic method。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_001_null_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_044 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_044_PASS_ARCHIVE_undefined_selects_inherited_generic_method.ets | 归档吸纳：undefined selects inherited generic method。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_002_undefined_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_045 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_045_PASS_ARCHIVE_explicit_null_generic_selects_parent.ets | 归档吸纳：explicit null generic selects parent。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_003_explicit_null_generic_selects_parent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_046 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_046_PASS_ARCHIVE_object_selects_child_overload.ets | 归档吸纳：object selects child overload。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_004_object_selects_child_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_047 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_047_PASS_ARCHIVE_parent_static_type_keeps_parent_generic.ets | 归档吸纳：parent static type keeps parent generic。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_005_parent_static_type_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_048 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_048_PASS_ARCHIVE_parent_static_type_null_keeps_parent_generic.ets | 归档吸纳：parent static type null keeps parent generic。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_006_parent_static_type_null_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_062 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_062_PASS_ARCHIVE_subclass_reorders_explicit_overload.ets | 归档吸纳：subclass reorders explicit overload。来源 `Overloading\compile-pass\OVERLOAD_PASS_009_subclass_reorders_explicit_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_063 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_063_PASS_ARCHIVE_receiver_function_overload_as_function.ets | 归档吸纳：receiver function overload as function。来源 `Overloading\compile-pass\OVERLOAD_PASS_012_receiver_function_overload_as_function.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_064 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_064_PASS_ARCHIVE_overload_set_warning_unreachable.ets | 归档吸纳：overload set warning unreachable。来源 `Overloading\compile-pass\OVERLOAD_PASS_017_overload_set_warning_unreachable.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_065 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_065_PASS_ARCHIVE_interface_extends_order.ets | 归档吸纳：interface extends order。来源 `Overloading\compile-pass\OVERLOAD_PASS_019_interface_extends_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_066 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_066_PASS_ARCHIVE_interface_override_dedup.ets | 归档吸纳：interface override dedup。来源 `Overloading\compile-pass\OVERLOAD_PASS_020_interface_override_dedup.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_067 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_067_PASS_ARCHIVE_class_parent_before_interface.ets | 归档吸纳：class parent before interface。来源 `Overloading\compile-pass\OVERLOAD_PASS_021_class_parent_before_interface.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_068 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_068_PASS_ARCHIVE_receiver_instance_method_priority_combined.ets | Archive import: instance method lookup has priority for method-call syntax, while receiver function remains callable as a function. |
| SEM_15_11_069 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_069_PASS_ARCHIVE_overload_resolution_then_override_dispatch.ets | 归档吸纳：overload resolution then override dispatch。来源 `Overloading\compile-pass\OVERLOAD_PASS_023_overload_resolution_then_override_dispatch.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_070 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_070_PASS_ARCHIVE_super_static_no_override_dispatch.ets | 归档吸纳：super static no override dispatch。来源 `Overloading\compile-pass\OVERLOAD_PASS_024_super_static_no_override_dispatch.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_071 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_071_PASS_ARCHIVE_direct_supertypes_only.ets | 归档吸纳：direct supertypes only。来源 `Overloading\compile-pass\OVERLOAD_PASS_025_direct_supertypes_only.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_072 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_072_PASS_ARCHIVE_declared_receiver_type_top_level.ets | 归档吸纳：declared receiver type top level。来源 `Overloading\compile-pass\OVERLOAD_PASS_026_declared_receiver_type_top_level.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_073 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_073_PASS_ARCHIVE_declared_receiver_type_function_body.ets | 归档吸纳：declared receiver type function body。来源 `Overloading\compile-pass\OVERLOAD_PASS_027_declared_receiver_type_function_body.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_100 | 15.11 | compile-pass | ets_cases/15.11_Overload_Resolution/compile-pass/SEM_15_11_100.ets | 重载解析：按参数类型选择最佳匹配 |
| SEM_15_11_001 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_001_RT_broad_before_narrow.ets | 宽泛重载写在窄重载前。 |
| SEM_15_11_002 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_002_RT_narrow_before_broad.ets | 窄重载写在宽泛重载前。 |
| SEM_15_11_003 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_003_RT_generic_before_nongeneric.ets | 泛型重载在非泛型重载前。 |
| SEM_15_11_004 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_004_RT_nongeneric_before_generic.ets | 非泛型重载在泛型重载前。 |
| SEM_15_11_005 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_005_RT_interface_super_order.ets | 接口重载集包含父接口方法顺序。 |
| SEM_15_11_006 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_006_RT_class_instance_order.ets | 类实例重载集按类、父类、父接口顺序。 |
| SEM_15_11_007 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_007_RT_static_method_order.ets | 静态方法重载集顺序。 |
| SEM_15_11_008 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_008_RT_constructor_order.ets | 构造器重载集顺序。 |
| SEM_15_11_009 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_009_RT_receiver_vs_method.ets | receiver 函数和方法同时存在时的方法重载集。 |
| SEM_15_11_010 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_010_RT_overload_override_dynamic.ets | 静态重载选择加动态重写分派。 |
| SEM_15_11_017 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_017_RT_function_smart_selects_subtype.ets | 函数局部智能类型选择子类型重载。 |
| SEM_15_11_018 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_018_RT_declared_type_selects_base.ets | 没有智能缩窄时按声明类型选择父类型重载。 |
| SEM_15_11_020 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_020_RT_reassignment_changes_selection.ets | 重新赋值后不应使用旧智能类型选择重载。 |
| SEM_15_11_021 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_021_RT_class_instance_order.ets | / 重载集形成 / Java 收集候选后选最具体。 / Swift 使用标签、上下文和排名。 / `SEM_15_11_021_RT_class_instance_order` / `SEM_15_11_022_FAIL_identifier_not_single_entity` / |
| SEM_15_11_022 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_022_RT_broad_before_narrow_selects_broad.ets | / 第一个有效匹配 / Java 可能选择后面更具体的重载。 / Swift 不使用 ArkTS 文本顺序优先规则。 / `SEM_15_11_022_RT_broad_before_narrow_selects_broad` / `SEM_15_11_024_FAIL_no_valid_overload` / |
| SEM_15_11_024 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_024_RT_static_select_dynamic_dispatch.ets | / 重载加重写 / Java 也区分编译期重载和运行期重写，但重载排名不同。 / Swift 分派和重载选择不同。 / `SEM_15_11_024_RT_static_select_dynamic_dispatch` / `SEM_15_11_028_FAIL_runtime_type_used_without_smart_cast` / |
| SEM_15_11_025 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_025_RT_receiver_declared_base_function_scope.ets | 函数体内：子类对象赋给父类声明变量后调用 overload，应按 receiver 声明静态类型 Base 的 overload set 解析。 |
| SEM_15_11_026 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_026_RT_receiver_declared_base_top_level.ets | 顶层语句：子类对象赋给父类声明变量后调用 overload，应按 receiver 声明静态类型 Base 的 overload set 解析。 |
| SEM_15_11_027 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_027_RT_receiver_declared_base_direct_new_function.ets | 函数体内 let b: Base = new Derived() 后调用 overload，应选择 Base overload set。 |
| SEM_15_11_028 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_028_RT_receiver_declared_base_parameter_function.ets | 函数参数 b: Base 接收 Derived 实参后调用 overload，应选择 Base overload set。 |
| SEM_15_11_029 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_029_RT_receiver_declared_base_from_return_function.ets | 函数返回 Derived 但赋给 Base 后调用 overload，应选择 Base overload set。 |
| SEM_15_11_030 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_030_RT_receiver_declared_base_field_access.ets | 字段声明为 Base 且保存 Derived 后调用 overload，应选择 Base overload set。 |
| SEM_15_11_031 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_031_RT_receiver_declared_base_local_copy_global.ets | 全局 Derived 复制到函数局部 Base 后调用 overload，应选择 Base overload set。 |
| SEM_15_11_032 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_032_RT_receiver_declared_base_after_reassignment.ets | Base 局部变量先保存 Derived 再重新赋值为 Base，调用 overload 应选择 Base overload set。 |
| SEM_15_11_033 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_033_RT_receiver_declared_base_after_side_effect_call.ets | Base 局部变量由 Derived 初始化后经历普通函数调用，调用 overload 仍应基于声明类型。 |
| SEM_15_11_034 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_034_RT_receiver_declared_base_explicit_cast.ets | Derived 显式 cast 为 Base 后调用 overload，应选择 Base overload set。 |
| SEM_15_11_035 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_035_RT_receiver_declared_derived_still_derived.ets | receiver 声明类型为 Derived 时调用 overload，应选择 Derived overload set。 |
| SEM_15_11_036 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_036_RT_receiver_smart_instanceof_selects_derived.ets | Base receiver 经过 instanceof Derived 显式缩窄后调用 overload，可选择 Derived overload set。 |
| SEM_15_11_039 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_039_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_11_040 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_040_RT_SMART_FUNC_overload_declared_base_function.ets | 函数体内 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_11_049 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_049_RT_ARCHIVE_null_selects_inherited_generic_method.ets | 归档吸纳：null selects inherited generic method。来源 `NullishOverloadResolution\runtime\SEM_RT_001_null_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_050 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_050_RT_ARCHIVE_undefined_selects_inherited_generic_method.ets | 归档吸纳：undefined selects inherited generic method。来源 `NullishOverloadResolution\runtime\SEM_RT_002_undefined_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_051 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_051_RT_ARCHIVE_explicit_null_generic_selects_parent.ets | 归档吸纳：explicit null generic selects parent。来源 `NullishOverloadResolution\runtime\SEM_RT_003_explicit_null_generic_selects_parent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_052 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_052_RT_ARCHIVE_object_selects_child_overload.ets | 归档吸纳：object selects child overload。来源 `NullishOverloadResolution\runtime\SEM_RT_004_object_selects_child_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_053 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_053_RT_ARCHIVE_parent_static_type_keeps_parent_generic.ets | 归档吸纳：parent static type keeps parent generic。来源 `NullishOverloadResolution\runtime\SEM_RT_005_parent_static_type_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_054 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_054_RT_ARCHIVE_parent_static_type_null_keeps_parent_generic.ets | 归档吸纳：parent static type null keeps parent generic。来源 `NullishOverloadResolution\runtime\SEM_RT_006_parent_static_type_null_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_11_101 | 15.11 | runtime | ets_cases/15.11_Overload_Resolution/runtime/SEM_15_11_101.ets | 重载解析运行时 |
| SEM_15_07_02 | 15.7 | compile-fail | ets_cases/15.7.2_Return_Type_Inference/compile-fail/SEM_15_07_02_010_FAIL_RETURN_MISMATCH.ets | 验证返回类型不匹配拒绝：声明的 int 返回 string 应报错 |
| SEM_15_07_02 | 15.7 | compile-fail | ets_cases/15.7.2_Return_Type_Inference/compile-fail/SEM_15_07_02_011_FAIL_MISSING_RETURN.ets | 验证缺少 return 语句：非 void 函数缺少 return 应报错 |
| SEM_15_07_02 | 15.7 | compile-pass | ets_cases/15.7.2_Return_Type_Inference/compile-pass/SEM_15_07_02_001_PASS_RETURN_MATCH.ets | 验证函数返回类型推断：显式返回类型匹配 |
| SEM_15_07_02 | 15.7 | compile-pass | ets_cases/15.7.2_Return_Type_Inference/compile-pass/SEM_15_07_02_002_PASS_RETURN_COVARIANCE.ets | 验证返回值协变：子类方法可返回子类型 |
| SEM_15_07_02 | 15.7 | runtime | ets_cases/15.7.2_Return_Type_Inference/runtime/SEM_15_07_02_012_RUNTIME_RETURN.ets | 验证返回类型运行时行为 |
| SEM_15_09_006 | 15.9 | compile-fail | ets_cases/15.9.3_Override_Compatible_Signatures/compile-fail/SEM_15_09_006_FAIL_INCOMPATIBLE_OVERRIDE.ets | 验证覆写签名不可兼容拒绝：逆变返回值 + 协变参数 |
| SEM_15_09_005 | 15.9 | compile-pass | ets_cases/15.9.3_Override_Compatible_Signatures/compile-pass/SEM_15_09_005_PASS_COMPATIBLE_OVERRIDE.ets | 验证覆写兼容签名：返回值协变 + 参数逆变时签名兼容 |
| SEM_15_09_008 | 15.9 | runtime | ets_cases/15.9.3_Override_Compatible_Signatures/runtime/SEM_15_09_008_RUNTIME_COMPATIBLE_OVERRIDE.ets | 验证兼容签名覆写运行时行为：基类引用调用派生类方法 |
| SEM_15_01_019 | 15.1 | compile-fail | ets_cases/15.1.3_Specifics_of_Variable_Initialization_Context/compile-fail/SEM_15_01_019_FAIL_INIT_TYPE_MISMATCH.ets | 验证初始化器类型不匹配拒绝：显式类型与初始化器类型冲突 |
| SEM_15_01_008 | 15.1 | compile-pass | ets_cases/15.1.3_Specifics_of_Variable_Initialization_Context/compile-pass/SEM_15_01_008_PASS_EXPLICIT_TYPE_INIT.ets | 验证有显式类型注解的变量初始化与赋值上下文规则一致 |
| SEM_15_01_009 | 15.1 | compile-pass | ets_cases/15.1.3_Specifics_of_Variable_Initialization_Context/compile-pass/SEM_15_01_009_PASS_INFER_FROM_INITIALIZER.ets | 验证无显式类型注解时从初始化器推断类型 |
| SEM_15_01_017 | 15.1 | compile-pass | ets_cases/15.1.3_Specifics_of_Variable_Initialization_Context/compile-pass/SEM_15_01_017_PASS_CONST_INIT.ets | 验证 const 声明初始化类型推断 |
| SEM_15_01_018 | 15.1 | compile-pass | ets_cases/15.1.3_Specifics_of_Variable_Initialization_Context/compile-pass/SEM_15_01_018_PASS_EXPR_INIT.ets | 验证初始化器中表达式推断：复杂表达式作为初始化器 |
| SEM_15_01_020 | 15.1 | runtime | ets_cases/15.1.3_Specifics_of_Variable_Initialization_Context/runtime/SEM_15_01_020_RUNTIME_INIT.ets | 验证变量初始化运行时行为 |
| SEM_15_11_10 | 15.11 | compile-fail | ets_cases/15.11.10_Dynamic_Resolution_of_Method_Calls/compile-fail/SEM_15_11_10_099.ets | 动态解析拒绝 |
| SEM_15_11_10 | 15.11 | compile-pass | ets_cases/15.11.10_Dynamic_Resolution_of_Method_Calls/compile-pass/SEM_15_11_10_001.ets | 方法调用动态解析：多态派发 |
| SEM_15_11_10 | 15.11 | runtime | ets_cases/15.11.10_Dynamic_Resolution_of_Method_Calls/runtime/SEM_15_11_10_100.ets | 动态解析运行时 |
| SEM_15_10_006 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_006_FAIL_nongeneric_equivalent.ets | 两个非泛型重载等价签名。 |
| SEM_15_10_007 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_007_FAIL_overload_main.ets | 模块级 `main` 重载。 |
| SEM_15_10_008 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_008_FAIL_return_only_difference.ets | 只靠返回类型区分重载。 |
| SEM_15_10_009 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_009_FAIL_erasure_equivalent_conflict.ets | 擦除或有效签名后等价冲突。 |
| SEM_15_10_017 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_017_FAIL_static_method_not_inherited_by_subclass_name.ets | static 方法不应作为继承成员参与子类名访问；Derived.select(26) 不应解析到 Base.select(int)。 |
| SEM_15_10_019 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_019_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_10_021 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_021_FAIL_ARCHIVE_explicit_overload_missing_identifier.ets | 归档吸纳：explicit overload missing identifier。来源 `Overloading\compile-fail\OVERLOAD_FAIL_004_explicit_overload_missing_identifier.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_022 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_022_FAIL_ARCHIVE_explicit_overload_non_function.ets | 归档吸纳：explicit overload non function。来源 `Overloading\compile-fail\OVERLOAD_FAIL_005_explicit_overload_non_function.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_023 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_023_FAIL_ARCHIVE_explicit_overload_implicit_name.ets | 归档吸纳：explicit overload implicit name。来源 `Overloading\compile-fail\OVERLOAD_FAIL_006_explicit_overload_implicit_name.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_024 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_024_FAIL_ARCHIVE_overload_name_same_as_function_not_listed.ets | 归档吸纳：overload name same as function not listed。来源 `Overloading\compile-fail\OVERLOAD_FAIL_007_overload_name_same_as_function_not_listed.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_025 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_025_FAIL_ARCHIVE_export_overload_contains_unexported.ets | 归档吸纳：export overload contains unexported。来源 `Overloading\compile-fail\OVERLOAD_FAIL_008_export_overload_contains_unexported.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_026 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_026_FAIL_ARCHIVE_public_overload_contains_protected.ets | 归档吸纳：public overload contains protected。来源 `Overloading\compile-fail\OVERLOAD_FAIL_009_public_overload_contains_protected.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_027 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_027_FAIL_ARCHIVE_static_overload_non_static_method.ets | 归档吸纳：static overload non static method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_010_static_overload_non_static_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_028 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_028_FAIL_ARCHIVE_non_static_overload_static_method.ets | 归档吸纳：non static overload static method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_011_non_static_overload_static_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_029 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_029_FAIL_ARCHIVE_class_overload_missing_method.ets | 归档吸纳：class overload missing method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_012_class_overload_missing_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_030 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_030_FAIL_ARCHIVE_class_overload_implicit_method_name.ets | 归档吸纳：class overload implicit method name。来源 `Overloading\compile-fail\OVERLOAD_FAIL_013_class_overload_implicit_method_name.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_031 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_031_FAIL_ARCHIVE_class_overload_same_name_method_not_listed.ets | 归档吸纳：class overload same name method not listed。来源 `Overloading\compile-fail\OVERLOAD_FAIL_014_class_overload_same_name_method_not_listed.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_032 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_032_FAIL_ARCHIVE_ambient_missing_overload_target.ets | 归档吸纳：ambient missing overload target。来源 `Overloading\compile-fail\OVERLOAD_FAIL_016_ambient_missing_overload_target.d.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_033 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_033_FAIL_ARCHIVE_main_overload_prohibited.ets | 归档吸纳：main overload prohibited。来源 `Overloading\compile-fail\OVERLOAD_FAIL_025_main_overload_prohibited.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_099 | 15.10 | compile-fail | ets_cases/15.10_Overloading/compile-fail/SEM_15_10_099.ets | 重载无效参数拒绝 |
| SEM_15_10_001 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_001_PASS_implicit_function.ets | 同名函数参数类型不同。 |
| SEM_15_10_002 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_002_PASS_implicit_method.ets | 同名实例方法重载。 |
| SEM_15_10_003 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_003_PASS_implicit_constructor.ets | 多个构造器重载。 |
| SEM_15_10_004 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_004_PASS_generic_and_nongeneric_equivalent.ets | 规范允许的泛型与非泛型等价场景。 |
| SEM_15_10_005 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_005_PASS_static_method_overload.ets | 静态方法重载。 |
| SEM_15_10_013 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_013_PASS_function_overload_by_param.ets | / 函数重载 / Java 按参数列表重载，受擦除影响。 / Swift 重载还涉及参数标签和上下文。 / `SEM_15_10_013_PASS_function_overload_by_param` / `SEM_15_10_014_FAIL_return_only_difference` / |
| SEM_15_10_014 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_014_PASS_static_and_instance_overloads.ets | / 方法重载 / Java 方法擦除冲突相似。 / Swift 成员重载决议不同。 / `SEM_15_10_014_PASS_static_and_instance_overloads` / `SEM_15_10_016_FAIL_overload_equivalent_methods` / |
| SEM_15_10_015 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_015_PASS_constructor_overload.ets | / 构造器重载 / Java 构造器重载类似，但转换/排名不同。 / Swift initializer 使用标签和委托规则。 / `SEM_15_10_015_PASS_constructor_overload` / `SEM_15_10_018_FAIL_constructor_equivalent_signature` / |
| SEM_15_10_016 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_016_PASS_single_main.ets | / `main` 重载 / Java 可以重载 `main`，启动器选择特定签名。 / Swift 入口模型不同。 / `SEM_15_10_016_PASS_single_main` / `SEM_15_10_020_FAIL_overloaded_main` / |
| SEM_15_10_018 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_018_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_10_034 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_034_PASS_ARCHIVE_implicit_function_by_type.ets | 归档吸纳：implicit function by type。来源 `Overloading\compile-pass\OVERLOAD_PASS_001_implicit_function_by_type.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_035 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_035_PASS_ARCHIVE_implicit_function_by_arity.ets | 归档吸纳：implicit function by arity。来源 `Overloading\compile-pass\OVERLOAD_PASS_002_implicit_function_by_arity.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_036 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_036_PASS_ARCHIVE_explicit_function_order.ets | 归档吸纳：explicit function order。来源 `Overloading\compile-pass\OVERLOAD_PASS_003_explicit_function_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_037 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_037_PASS_ARCHIVE_explicit_function_rest.ets | 归档吸纳：explicit function rest。来源 `Overloading\compile-pass\OVERLOAD_PASS_004_explicit_function_rest.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_038 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_038_PASS_ARCHIVE_generic_explicit_type_arguments.ets | 归档吸纳：generic explicit type arguments。来源 `Overloading\compile-pass\OVERLOAD_PASS_005_generic_explicit_type_arguments.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_039 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_039_PASS_ARCHIVE_class_explicit_method.ets | 归档吸纳：class explicit method。来源 `Overloading\compile-pass\OVERLOAD_PASS_006_class_explicit_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_040 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_040_PASS_ARCHIVE_class_static_method.ets | 归档吸纳：class static method。来源 `Overloading\compile-pass\OVERLOAD_PASS_007_class_static_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_041 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_041_PASS_ARCHIVE_interface_overload_inherited_by_class.ets | 归档吸纳：interface overload inherited by class。来源 `Overloading\compile-pass\OVERLOAD_PASS_008_interface_overload_inherited_by_class.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_042 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_042_PASS_ARCHIVE_constructor_overload.ets | 归档吸纳：constructor overload。来源 `Overloading\compile-pass\OVERLOAD_PASS_010_constructor_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_043 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_043_PASS_ARCHIVE_ambient_overload_combined.ets | Archive import: ambient overload declarations are accepted and form callable overload sets in ambient type checking. |
| SEM_15_10_044 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_044_PASS_ARCHIVE_explicit_overload_list_order_over_text_order.ets | 归档吸纳：explicit overload list order over text order。来源 `Overloading\compile-pass\OVERLOAD_PASS_018_explicit_overload_list_order_over_text_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_10_100 | 15.10 | compile-pass | ets_cases/15.10_Overloading/compile-pass/SEM_15_10_100.ets | 重载基础：函数重载解析 |
| SEM_15_10_010 | 15.10 | runtime | ets_cases/15.10_Overloading/runtime/SEM_15_10_010_RT_function_overload_value.ets | 选中的函数输出指定标记。 |
| SEM_15_10_011 | 15.10 | runtime | ets_cases/15.10_Overloading/runtime/SEM_15_10_011_RT_method_overload_value.ets | 选中的方法输出指定标记。 |
| SEM_15_10_012 | 15.10 | runtime | ets_cases/15.10_Overloading/runtime/SEM_15_10_012_RT_constructor_overload_value.ets | 选中的构造器初始化指定值。 |
| SEM_15_10_020 | 15.10 | runtime | ets_cases/15.10_Overloading/runtime/SEM_15_10_020_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_10_101 | 15.10 | runtime | ets_cases/15.10_Overloading/runtime/SEM_15_10_101.ets | 重载运行时行为 |
| SEM_15_14_015 | 15.14 | compile-fail | ets_cases/15.14_Compatibility_Features/compile-fail/SEM_15_14_015_FAIL_logical_result_wrong_assignment.ets | `&&` 或 ` |
| SEM_15_14_016 | 15.14 | compile-fail | ets_cases/15.14_Compatibility_Features/compile-fail/SEM_15_14_016_FAIL_union_truthiness_wrong_assumption.ets | union truthiness 分支错误移除成员。 |
| SEM_15_14_017 | 15.14 | compile-fail | ets_cases/15.14_Compatibility_Features/compile-fail/SEM_15_14_017_FAIL_global_truthiness_narrowing.ets | 假设全局变量 truthiness 缩窄稳定。 |
| SEM_15_14_018 | 15.14 | compile-fail | ets_cases/15.14_Compatibility_Features/compile-fail/SEM_15_14_018_FAIL_falsy_literal_wrong_branch_type.ets | falsy 字面量分支类型判断错误。 |
| SEM_15_14_023 | 15.14 | compile-fail | ets_cases/15.14_Compatibility_Features/compile-fail/SEM_15_14_023_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_14_099 | 15.14 | compile-fail | ets_cases/15.14_Compatibility_Features/compile-fail/SEM_15_14_099.ets | 兼容特性拒绝 |
| SEM_15_14_013 | 15.14 | compile-pass | ets_cases/15.14_Compatibility_Features/compile-pass/SEM_15_14_013_PASS_function_truthiness_nullish.ets | 函数局部 truthiness 缩窄 nullish。 |
| SEM_15_14_014 | 15.14 | compile-pass | ets_cases/15.14_Compatibility_Features/compile-pass/SEM_15_14_014_PASS_local_copy_truthiness.ets | 全局变量复制到局部后做 truthiness 判断。 |
| SEM_15_14_022 | 15.14 | compile-pass | ets_cases/15.14_Compatibility_Features/compile-pass/SEM_15_14_022_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_14_100 | 15.14 | compile-pass | ets_cases/15.14_Compatibility_Features/compile-pass/SEM_15_14_100.ets | 兼容特性基础 |
| SEM_15_14_001 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_001_RT_empty_string_false.ets | 空字符串为 false。 |
| SEM_15_14_002 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_002_RT_nonempty_string_true.ets | 非空字符串为 true。 |
| SEM_15_14_003 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_003_RT_zero_int_false.ets | 整数 `0` 为 false。 |
| SEM_15_14_004 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_004_RT_nonzero_int_true.ets | 非零整数为 true。 |
| SEM_15_14_005 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_005_RT_nan_false.ets | `NaN` 为 false。 |
| SEM_15_14_006 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_006_RT_null_false.ets | `null` 为 false。 |
| SEM_15_14_007 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_007_RT_undefined_false.ets | `undefined` 为 false。 |
| SEM_15_14_008 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_008_RT_object_true.ets | 非 nullish 对象为 true。 |
| SEM_15_14_009 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_009_RT_false_or_int.ets | `false |
| SEM_15_14_010 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_010_RT_true_or_int.ets | `true |
| SEM_15_14_011 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_011_RT_zero_and_string.ets | `0 && "x"` 的值和类型行为。 |
| SEM_15_14_012 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_012_RT_one_and_string.ets | `1 && "x"` 的值和类型行为。 |
| SEM_15_14_019 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_019_RT_empty_string_false.ets | / 扩展条件表达式 / Java 条件必须是 `boolean`。 / Swift 条件必须是 `Bool`。 / `SEM_15_14_019_RT_empty_string_false` / `SEM_15_14_020_FAIL_truthiness_wrong_branch_type` / |
| SEM_15_14_020 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_020_RT_null_false.ets | / nullish truthiness / Java 的 `null` 不能直接作为条件。 / Swift Optional 不能直接作为 `Bool`。 / `SEM_15_14_020_RT_null_false` / `SEM_15_14_022_FAIL_global_truthiness_narrow_assumed` / |
| SEM_15_14_021 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_021_RT_false_or_int.ets | / `&&` / `//` 值结果 / Java 结果总是 boolean。 / Swift 结果总是 `Bool`。 / `SEM_15_14_021_RT_false_or_int` / `SEM_15_14_024_FAIL_assume_boolean_result_only` / |
| SEM_15_14_024 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_024_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_14_101 | 15.14 | runtime | ets_cases/15.14_Compatibility_Features/runtime/SEM_15_14_101.ets | 兼容特性运行时 |
| SEM_15_02_005 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_005_FAIL_CLASS_base_to_derived.ets | `Base` 赋给 `Derived`。 |
| SEM_15_02_006 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_006_FAIL_CLASS_unrelated_classes.ets | 无关类之间赋值。 |
| SEM_15_02_007 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_007_FAIL_CLASS_not_implemented_interface.ets | 只“长得像”接口但没有 `implements`。 |
| SEM_15_02_008 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_008_FAIL_CLASS_sibling_interfaces.ets | 兄弟接口之间赋值。 |
| SEM_15_02_012 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_012_FAIL_GEN_invariant_mismatch.ets | 默认不变泛型中 `Box<Derived>` 赋给 `Box<Base>`。 |
| SEM_15_02_013 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_013_FAIL_GEN_wrong_arg_count.ets | 泛型类型实参数量错误。 |
| SEM_15_02_014 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_014_FAIL_GEN_variance_wrong_direction.ets | variance 方向错误。 |
| SEM_15_02_016 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_016_FAIL_LIT_string_to_literal.ets | `string` 赋给特定字符串字面量类型。 |
| SEM_15_02_019 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_019_FAIL_TUPLE_shorter_to_longer.ets | 较短元组赋给较长元组。 |
| SEM_15_02_022 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_022_FAIL_UNION_larger_to_smaller_union.ets | 较大联合赋给较小联合。 |
| SEM_15_02_025 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_025_FAIL_FUNC_return_wrong_direction.ets | 返回值方向错误。 |
| SEM_15_02_026 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_026_FAIL_FUNC_parameter_wrong_direction.ets | 参数方向错误。 |
| SEM_15_02_028 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_028_FAIL_FIXED_wrong_direction.ets | `FixedArray<Base>` 赋给 `FixedArray<Derived>`。 |
| SEM_15_02_029 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_029_FAIL_FIXED_fixed_resizable_mix.ets | `FixedArray<T>` 与普通 `Array<T>` 混用。 |
| SEM_15_02_031 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_031_FAIL_INTER_component_to_intersection.ets | 单个组成类型不能直接作为完整交叉类型。 |
| SEM_15_02_033 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_033_FAIL_DIFF_overlap_difference.ets | 与被排除类型有交集时赋值。 |
| SEM_15_02_041 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_041_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_02_099 | 15.2 | compile-fail | ets_cases/15.2_Subtyping/compile-fail/SEM_15_02_099.ets | 子类型拒绝 |
| SEM_15_02_001 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_001_PASS_CLASS_extends_class.ets | `Derived extends Base`，`Derived` 可赋给 `Base`。 |
| SEM_15_02_002 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_002_PASS_CLASS_class_to_object.ets | 未显式继承的类也是 `Object` 子类型。 |
| SEM_15_02_003 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_003_PASS_CLASS_implements_interface.ets | 类声明 `implements I` 后实例可赋给接口。 |
| SEM_15_02_004 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_004_PASS_CLASS_interface_extends.ets | 子接口可赋给父接口。 |
| SEM_15_02_009 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_009_PASS_GEN_exact_generic_super.ets | `C<T> extends B<T>` 精确类型实参赋值。 |
| SEM_15_02_010 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_010_PASS_GEN_generic_interface_extends.ets | 泛型子接口赋给泛型父接口。 |
| SEM_15_02_011 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_011_PASS_GEN_variance_compatible.ets | 符合声明处 variance 的赋值。 |
| SEM_15_02_015 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_015_PASS_LIT_string_literal_to_string.ets | 字符串字面量类型可赋给 `string`。 |
| SEM_15_02_017 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_017_PASS_TUPLE_tuple_to_tuple_base.ets | 元组可赋给 `Tuple`。 |
| SEM_15_02_018 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_018_PASS_TUPLE_longer_to_shorter.ets | 更长元组赋给相同前缀的较短元组。 |
| SEM_15_02_020 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_020_PASS_UNION_member_to_union.ets | 成员类型赋给联合类型。 |
| SEM_15_02_021 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_021_PASS_UNION_smaller_to_larger_union.ets | 较小联合赋给较大联合。 |
| SEM_15_02_023 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_023_PASS_FUNC_return_covariance.ets | 返回值协变。 |
| SEM_15_02_024 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_024_PASS_FUNC_parameter_contravariance.ets | 参数逆变。 |
| SEM_15_02_027 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_027_PASS_FIXED_ref_element_covariance.ets | `FixedArray<Derived>` 可作为 `FixedArray<Base>`。 |
| SEM_15_02_030 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_030_PASS_INTER_intersection_to_component.ets | 交叉类型可作为其中一个组成类型。 |
| SEM_15_02_032 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_032_PASS_DIFF_disjoint_difference.ets | 满足差集条件的类型赋值。 |
| SEM_15_02_034 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_034_PASS_CLASS_declared_implements.ets | / 名义类/接口 / Java 也偏名义类型；ArkTS 不接受纯结构匹配。 / Swift protocol 也需声明遵循，但 extension/existential 不同。 / `SEM_15_02_034_PASS_CLASS_declared_implements` / `SEM_15_02_035_FAIL_CLASS_structural_match_without_implements` / |
| SEM_15_02_035 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_035_PASS_GEN_out_covariant_assignment.ets | / 泛型 variance / Java 使用 use-site wildcard；ArkTS 是声明处 `in`/`out`。 / Swift 泛型容器通常不变。 / `SEM_15_02_035_PASS_GEN_out_covariant_assignment` / `SEM_15_02_037_FAIL_GEN_invariant_as_covariant` / |
| SEM_15_02_036 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_036_PASS_LIT_literal_union_to_string.ets | / 字面量/nullish / Java 没有字符串字面量类型，且 `null` 可赋给引用。 / Swift 的 `nil` 只用于 Optional。 / `SEM_15_02_036_PASS_LIT_literal_union_to_string` / `SEM_15_02_039_FAIL_LIT_null_to_Object` / |
| SEM_15_02_037 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_037_PASS_TUPLE_prefix_longer_to_shorter.ets | / 元组 / Java 无内置元组。 / Swift 元组不按 ArkTS 前缀子类型规则。 / `SEM_15_02_037_PASS_TUPLE_prefix_longer_to_shorter` / `SEM_15_02_041_FAIL_TUPLE_tuple_to_array` / |
| SEM_15_02_038 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_038_PASS_UNION_union_to_common_base.ets | / 联合 / Java 无源码级 union。 / Swift 用 enum/protocol/optional 替代。 / `SEM_15_02_038_PASS_UNION_union_to_common_base` / `SEM_15_02_043_FAIL_UNION_int_not_number_member` / |
| SEM_15_02_039 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_039_PASS_FUNC_param_contravariance.ets | / 函数类型 / Java 函数式接口是名义目标类型。 / Swift 函数类型规则不同。 / `SEM_15_02_039_PASS_FUNC_param_contravariance` / `SEM_15_02_045_FAIL_FUNC_optional_required_mismatch` / |
| SEM_15_02_040 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_040_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_02_100 | 15.2 | compile-pass | ets_cases/15.2_Subtyping/compile-pass/SEM_15_02_100.ets | 子类型基础：类型自身子类型 |
| SEM_15_02_042 | 15.2 | runtime | ets_cases/15.2_Subtyping/runtime/SEM_15_02_042_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_02_101 | 15.2 | runtime | ets_cases/15.2_Subtyping/runtime/SEM_15_02_101.ets | 子类型运行时 |
| SEM_15_11_010 | 15.11 | compile-fail | ets_cases/15.11.7_Overload_Set_Warning/compile-fail/SEM_15_11_010_FAIL_OVERLOAD_WARNING.ets | 验证重载集警告 — 编译器对不可达重载发出警告 |
| SEM_15_11_07 | 15.11 | compile-pass | ets_cases/15.11.7_Overload_Set_Warning/compile-pass/SEM_15_11_07_001.ets | 可区分重载无警告 |
| SEM_15_11_07 | 15.11 | runtime | ets_cases/15.11.7_Overload_Set_Warning/runtime/SEM_15_11_07_100.ets | 重载警告运行时 |
| SEM_15_02_003 | 15.2 | compile-fail | ets_cases/15.2.2_Subtyping_for_Generic_Classes_and_Interfaces/compile-fail/SEM_15_02_003_FAIL_GENERIC_INVARIANCE.ets | 验证泛型类不变性：Array<Derived> 不是 Array<Base> 的子类型 |
| SEM_15_02_02 | 15.2 | compile-pass | ets_cases/15.2.2_Subtyping_for_Generic_Classes_and_Interfaces/compile-pass/SEM_15_02_02_001.ets | 泛型类自身子类型 |
| SEM_15_02_02 | 15.2 | runtime | ets_cases/15.2.2_Subtyping_for_Generic_Classes_and_Interfaces/runtime/SEM_15_02_02_100.ets | 泛型子类型运行时 |
| SEM_15_11_04 | 15.11 | compile-fail | ets_cases/15.11.4_Overload_Set_for_Class_Static_Methods/compile-fail/SEM_15_11_04_099.ets | 静态方法重载拒绝 |
| SEM_15_11_04 | 15.11 | compile-pass | ets_cases/15.11.4_Overload_Set_for_Class_Static_Methods/compile-pass/SEM_15_11_04_001.ets | 类静态方法重载集 |
| SEM_15_11_04 | 15.11 | runtime | ets_cases/15.11.4_Overload_Set_for_Class_Static_Methods/runtime/SEM_15_11_04_100.ets | 静态方法重载运行时 |
| SEM_15_01_06 | 15.1 | compile-fail | ets_cases/15.1.6_Other_Contexts/compile-fail/SEM_15_01_06_099_FAIL_MISMATCH.ets | 其他上下文类型不匹配拒绝 |
| SEM_15_01_06 | 15.1 | compile-pass | ets_cases/15.1.6_Other_Contexts/compile-pass/SEM_15_01_06_001.ets | 其他上下文：独立字符串表达式推断 |
| SEM_15_01_06 | 15.1 | compile-pass | ets_cases/15.1.6_Other_Contexts/compile-pass/SEM_15_01_06_002_PASS_BOOL_CONTEXT.ets | 其他上下文：独立布尔表达式推断 |
| SEM_15_01_06 | 15.1 | compile-pass | ets_cases/15.1.6_Other_Contexts/compile-pass/SEM_15_01_06_003_PASS_ARRAY_CONTEXT.ets | 其他上下文：数组字面量作为独立表达式 |
| SEM_15_01_06 | 15.1 | compile-pass | ets_cases/15.1.6_Other_Contexts/compile-pass/SEM_15_01_06_004_PASS_FUNC_RETURN_CONTEXT.ets | 其他上下文：未分类表达式中的类型注解变量声明 |
| SEM_15_01_06 | 15.1 | compile-pass | ets_cases/15.1.6_Other_Contexts/compile-pass/SEM_15_01_06_005_PASS_PROPERTY_ACCESS.ets | 其他上下文：属性访问表达式推断 |
| SEM_15_01_06 | 15.1 | compile-pass | ets_cases/15.1.6_Other_Contexts/compile-pass/SEM_15_01_06_101.ets | 其他上下文布尔拼接 - 编译器自动转换 |
| SEM_15_01_06 | 15.1 | runtime | ets_cases/15.1.6_Other_Contexts/runtime/SEM_15_01_06_100.ets | 其他上下文运行时行为 |
| SEM_15_03_003 | 15.3 | compile-fail | ets_cases/15.3_Type_Identity/compile-fail/SEM_15_03_003_FAIL_DIFF_TYPES_NOT_IDENTICAL.ets | 验证不同类型不具同一性：int 和 string 不是同一类型 |
| SEM_15_03_004 | 15.3 | compile-fail | ets_cases/15.3_Type_Identity/compile-fail/SEM_15_03_004_FAIL_GENERIC_DIFF_ARGS.ets | 验证泛型类型不同参数不具同一性：Container<int> 和 Container<string> 不是同一类型 |
| SEM_15_03_006 | 15.3 | compile-fail | ets_cases/15.3_Type_Identity/compile-fail/SEM_15_03_006_FAIL_tuple_length_differs.ets | 元组长度不同。 |
| SEM_15_03_007 | 15.3 | compile-fail | ets_cases/15.3_Type_Identity/compile-fail/SEM_15_03_007_FAIL_tuple_element_differs.ets | 元组元素类型不同。 |
| SEM_15_03_008 | 15.3 | compile-fail | ets_cases/15.3_Type_Identity/compile-fail/SEM_15_03_008_FAIL_generic_arg_differs.ets | 泛型类型实参不同。 |
| SEM_15_03_009 | 15.3 | compile-fail | ets_cases/15.3_Type_Identity/compile-fail/SEM_15_03_009_FAIL_array_base_vs_derived.ets | `Array<Base>` 与 `Array<Derived>` 不应当作同一类型。 |
| SEM_15_03_010 | 15.3 | compile-fail | ets_cases/15.3_Type_Identity/compile-fail/SEM_15_03_010_FAIL_return_type_only_overload_identity.ets | 只靠返回类型不同来区分重载。 |
| SEM_15_03_015 | 15.3 | compile-fail | ets_cases/15.3_Type_Identity/compile-fail/SEM_15_03_015_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_03_001 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_001_PASS_TYPE_ALIAS_IDENTITY.ets | 验证类型别名同一性：type MyInt = int，MyInt 和 int 是同一类型 |
| SEM_15_03_001 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_001_PASS_same_primitive.ets | 相同基础类型，例如 `int` 与 `int`。 |
| SEM_15_03_002 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_002_PASS_GENERIC_IDENTITY.ets | 验证泛型类型实例化同一性：Container<int> 和 Container<int> 是同一类型 |
| SEM_15_03_002 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_002_PASS_same_class.ets | 同一个类类型。 |
| SEM_15_03_003 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_003_PASS_same_tuple.ets | 元组长度和元素类型都相同。 |
| SEM_15_03_004 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_004_PASS_mutual_subtyping_identity.ets | 通过相互子类型关系判定同一。 |
| SEM_15_03_005 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_005_PASS_UNION_IDENTITY.ets | 验证联合类型同一性：相同成员的联合类型视为同一类型 |
| SEM_15_03_005 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_005_PASS_same_function_signature.ets | 函数有效签名一致。 |
| SEM_15_03_006 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_006_PASS_FUNCTION_TYPE_IDENTITY.ets | 验证函数类型同一性：相同签名函数类型视为同一类型 |
| SEM_15_03_011 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_011_PASS_same_named_class.ets | / 命名类型和基础类型同一 / Java 区分 primitive、reference 和赋值转换。 / Swift 名义类型和 protocol conform 不等同。 / `SEM_15_03_011_PASS_same_named_class` / `SEM_15_03_012_FAIL_same_shape_unrelated_classes` / |
| SEM_15_03_012 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_012_PASS_same_tuple_and_function.ets | / 复合类型同一 / Java 泛型擦除可能导致签名冲突。 / Swift 通常保留泛型区分，元组标签也可能影响类型。 / `SEM_15_03_012_PASS_same_tuple_and_function` / `SEM_15_03_014_FAIL_generic_argument_differs` / |
| SEM_15_03_013 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_013_PASS_effective_literal_string.ets | / 有效类型同一 / Java 擦除主要影响泛型。 / Swift 没有 ArkTS 这种 union/nullish 有效类型映射。 / `SEM_15_03_013_PASS_effective_literal_string` / `SEM_15_03_016_FAIL_return_type_only_identity` / |
| SEM_15_03_014 | 15.3 | compile-pass | ets_cases/15.3_Type_Identity/compile-pass/SEM_15_03_014_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_03_007 | 15.3 | runtime | ets_cases/15.3_Type_Identity/runtime/SEM_15_03_007_RUNTIME_TYPE_IDENTITY.ets | 验证类型同一性运行时行为：别名类型与原始类型同一 |
| SEM_15_03_016 | 15.3 | runtime | ets_cases/15.3_Type_Identity/runtime/SEM_15_03_016_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_02_04 | 15.2 | compile-fail | ets_cases/15.2.4_Subtyping_for_Tuple_Types/compile-fail/SEM_15_02_04_099.ets | 元组元素类型不匹配 |
| SEM_15_02_008 | 15.2 | compile-pass | ets_cases/15.2.4_Subtyping_for_Tuple_Types/compile-pass/SEM_15_02_008_PASS_TUPLE_IDENTITY.ets | 验证元组类型的子类型关系：相同结构元组 <: 自身 |
| SEM_15_02_04 | 15.2 | runtime | ets_cases/15.2.4_Subtyping_for_Tuple_Types/runtime/SEM_15_02_04_100.ets | 元组子类型运行时 |
| SEM_15_05_001 | 15.5 | compile-fail | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-fail/SEM_15_05_001_FAIL_GENERIC_INVARIANCE.ets | 验证泛型类型参数不变性：Holder<Derived> 不是 Holder<Base> 的子类型 |
| SEM_15_05_006 | 15.5 | compile-fail | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-fail/SEM_15_05_006_FAIL_return_contravariant.ets | 返回类型方向反了。 |
| SEM_15_05_007 | 15.5 | compile-fail | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-fail/SEM_15_05_007_FAIL_parameter_covariant.ets | 参数类型方向反了。 |
| SEM_15_05_008 | 15.5 | compile-fail | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-fail/SEM_15_05_008_FAIL_invariant_as_covariant.ets | 把默认不变泛型当协变使用。 |
| SEM_15_05_009 | 15.5 | compile-fail | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-fail/SEM_15_05_009_FAIL_invariant_as_contravariant.ets | 把默认不变泛型当逆变使用。 |
| SEM_15_05_010 | 15.5 | compile-fail | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-fail/SEM_15_05_010_FAIL_COVARIANT_PARAM.ets | 验证协变位置禁止参数：out 类型参数不可用于参数位置 |
| SEM_15_05_010 | 15.5 | compile-fail | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-fail/SEM_15_05_010_FAIL_constraint_variance_wrong.ets | 泛型约束与 variance 方向不兼容。 |
| SEM_15_05_011 | 15.5 | compile-fail | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-fail/SEM_15_05_011_FAIL_CONTRAVARIANT_RETURN.ets | 验证逆变位置禁止返回值：in 类型参数不可用于返回值位置 |
| SEM_15_05_015 | 15.5 | compile-fail | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-fail/SEM_15_05_015_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_05_001 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_001_PASS_return_covariance.ets | 返回类型允许协变。 |
| SEM_15_05_002 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_002_PASS_RETURN_COVARIANCE.ets | 验证返回值协变：子类覆写方法返回 Dog <: Animal 允许 |
| SEM_15_05_002 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_002_PASS_parameter_contravariance.ets | 函数参数类型允许逆变。 |
| SEM_15_05_003 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_003_PASS_PARAM_CONTRAVARIANCE.ets | 验证函数参数逆变：Animal 处理器可作 Dog 参数的回调 |
| SEM_15_05_003 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_003_PASS_override_return_covariant.ets | 方法重写返回子类型。 |
| SEM_15_05_004 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_004_PASS_override_param_contravariant.ets | 方法重写参数使用父类型。 |
| SEM_15_05_005 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_005_PASS_declared_generic_variance.ets | 泛型声明处 `in`/`out` 生效。 |
| SEM_15_05_011 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_011_PASS_out_T_covariant.ets | / 泛型声明处 variance / Java 主要使用 use-site wildcard。 / Swift 泛型容器通常不变。 / `SEM_15_05_011_PASS_out_T_covariant` / `SEM_15_05_012_FAIL_invariant_used_as_out` / |
| SEM_15_05_012 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_012_PASS_param_contravariant_function.ets | / 函数签名 variance / Java 函数式接口是名义目标类型。 / Swift 函数 variance 存在但规则不同。 / `SEM_15_05_012_PASS_param_contravariant_function` / `SEM_15_05_014_FAIL_return_contravariant_function` / |
| SEM_15_05_013 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_013_PASS_override_param_supertype.ets | / 重写 variance / Java 参数变化会变成重载，不是重写。 / Swift 重写签名更严格。 / `SEM_15_05_013_PASS_override_param_supertype` / `SEM_15_05_016_FAIL_override_param_subtype` / |
| SEM_15_05_014 | 15.5 | compile-pass | ets_cases/15.5_Invariance_Covariance_Contravariance/compile-pass/SEM_15_05_014_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_05_016 | 15.5 | runtime | ets_cases/15.5_Invariance_Covariance_Contravariance/runtime/SEM_15_05_016_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
| SEM_15_05_020 | 15.5 | runtime | ets_cases/15.5_Invariance_Covariance_Contravariance/runtime/SEM_15_05_020_RT_variance.ets | 验证变体运行时行为：协变返回值 + 逆变参数的实际方法派发 |
| SEM_15_02_011 | 15.2 | compile-fail | ets_cases/15.2.5_Subtyping_for_Union_Types/compile-fail/SEM_15_02_011_FAIL_UNION_SUBTYPE_GAP.ets | 验证联合类型子类型严格检查：U <: T 要求 U 的每个成员 <: T |
| SEM_15_02_005 | 15.2 | compile-pass | ets_cases/15.2.5_Subtyping_for_Union_Types/compile-pass/SEM_15_02_005_PASS_UNION_TYPE_SUBTYPE.ets | 验证联合类型子类型：U <: T 当且仅当 U 的每个成员 <: T |
| SEM_15_02_019 | 15.2 | runtime | ets_cases/15.2.5_Subtyping_for_Union_Types/runtime/SEM_15_02_019_RUNTIME_UNION_SUBTYPE.ets | 验证联合类型子类型运行时行为 |
| SEM_15_01_014 | 15.1 | compile-fail | ets_cases/15.1.2_Specifics_of_Assignment_like_Contexts/compile-fail/SEM_15_01_014_FAIL_TYPE_MISMATCH.ets | 验证赋值上下文中类型不匹配拒绝：string 不可赋值给 int |
| SEM_15_01_015 | 15.1 | compile-fail | ets_cases/15.1.2_Specifics_of_Assignment_like_Contexts/compile-fail/SEM_15_01_015_FAIL_UNRELATED_ASSIGN.ets | 验证赋值上下文中不相关类拒绝：Dog 不可赋值给 Cat |
| SEM_15_01_006 | 15.1 | compile-pass | ets_cases/15.1.2_Specifics_of_Assignment_like_Contexts/compile-pass/SEM_15_01_006_PASS_KNOWN_RHS_ASSIGN.ets | 验证赋值上下文中 RHS 类型已知时的可赋值性检查 |
| SEM_15_01_007 | 15.1 | compile-pass | ets_cases/15.1.2_Specifics_of_Assignment_like_Contexts/compile-pass/SEM_15_01_007_PASS_UNKNOWN_RHS_INFER.ets | 验证赋值上下文中 RHS 类型未知时从 LHS 类型推断 |
| SEM_15_01_012 | 15.1 | compile-pass | ets_cases/15.1.2_Specifics_of_Assignment_like_Contexts/compile-pass/SEM_15_01_012_PASS_WIDENING_ASSIGN.ets | 验证赋值上下文中数值拓宽：int → double 可赋值 |
| SEM_15_01_013 | 15.1 | compile-pass | ets_cases/15.1.2_Specifics_of_Assignment_like_Contexts/compile-pass/SEM_15_01_013_PASS_SUBTYPE_ASSIGN.ets | 验证赋值上下文中子类型赋值：Dog → Animal 可赋值 |
| SEM_15_01_016 | 15.1 | runtime | ets_cases/15.1.2_Specifics_of_Assignment_like_Contexts/runtime/SEM_15_01_016_RUNTIME_ASSIGN_SEMANTICS.ets | 验证赋值上下文运行时行为：赋值后变量值正确 |
| SEM_15_10_031 | 15.10 | compile-fail | ets_cases/15.10.3_Implicit_Constructor_Overloading/compile-fail/SEM_15_10_031_FAIL_CTOR_OVERLOAD.ets | 构造函数重载非法参数 |
| SEM_15_10_003 | 15.10 | compile-pass | ets_cases/15.10.3_Implicit_Constructor_Overloading/compile-pass/SEM_15_10_003_PASS_CTOR_OVERLOAD.ets | 验证构造函数重载：不同参数列表的构造函数 |
| SEM_15_10_03 | 15.10 | runtime | ets_cases/15.10.3_Implicit_Constructor_Overloading/runtime/SEM_15_10_03_100.ets | 构造函数重载运行时 |
| SEM_15_01_023 | 15.1 | compile-fail | ets_cases/15.1.4_Specifics_of_Numeric_Operator_Contexts/compile-fail/SEM_15_01_023_FAIL_BOOL_NUMERIC.ets | 验证非数值运算符不可用于数值：boolean + int 无效 |
| SEM_15_01_010 | 15.1 | compile-pass | ets_cases/15.1.4_Specifics_of_Numeric_Operator_Contexts/compile-pass/SEM_15_01_010_PASS_NUMERIC_OPERATOR_WIDEN.ets | 验证数值运算符操作数拓宽到更大类型（最低 int） |
| SEM_15_01_021 | 15.1 | compile-pass | ets_cases/15.1.4_Specifics_of_Numeric_Operator_Contexts/compile-pass/SEM_15_01_021_PASS_BYTE_SHORT_INC.ets | 验证 byte/short 自增不自宽 |
| SEM_15_01_022 | 15.1 | compile-pass | ets_cases/15.1.4_Specifics_of_Numeric_Operator_Contexts/compile-pass/SEM_15_01_022_PASS_MIXED_NUMERIC.ets | 验证混合数值类型运算拓宽：int + long → long |
| SEM_15_01_024 | 15.1 | runtime | ets_cases/15.1.4_Specifics_of_Numeric_Operator_Contexts/runtime/SEM_15_01_024_RUNTIME_NUMERIC_OPS.ets | 验证数值运算符运行时行为 |
| SEM_15_09_004 | 15.9 | compile-fail | ets_cases/15.9.2_Overriding_in_Interfaces/compile-fail/SEM_15_09_004_FAIL_MISSING_IMPL.ets | 验证接口方法未实现拒绝：缺少接口方法实现应报错 |
| SEM_15_09_003 | 15.9 | compile-pass | ets_cases/15.9.2_Overriding_in_Interfaces/compile-pass/SEM_15_09_003_PASS_INTERFACE_IMPL.ets | 验证接口方法实现：类实现接口中的所有方法 |
| SEM_15_09_009 | 15.9 | runtime | ets_cases/15.9.2_Overriding_in_Interfaces/runtime/SEM_15_09_009_RUNTIME_INTERFACE_OVERRIDE.ets | 验证接口方法覆写运行时行为：多态派发正确 |
| SEM_15_11_01 | 15.11 | compile-fail | ets_cases/15.11.1_Forming_an_Overload_Set/compile-fail/SEM_15_11_01_099.ets | 重载集类型不匹配 |
| SEM_15_11_01 | 15.11 | compile-pass | ets_cases/15.11.1_Forming_an_Overload_Set/compile-pass/SEM_15_11_01_001.ets | 形成重载集：同名函数构成重载集 |
| SEM_15_11_01 | 15.11 | runtime | ets_cases/15.11.1_Forming_an_Overload_Set/runtime/SEM_15_11_01_100.ets | 重载集运行时 |
| SEM_15_02_009 | 15.2 | compile-fail | ets_cases/15.2.8_Subtyping_for_Intersection_Types/compile-fail/SEM_15_02_009_FAIL_INTERSECTION_UNSUPPORTED.ets | 验证交叉类型 — Spec 要求 A & B <: A 但编译器暂不支持交叉类型 |
| SEM_15_02_08 | 15.2 | compile-pass | ets_cases/15.2.8_Subtyping_for_Intersection_Types/compile-pass/SEM_15_02_08_001_PASS_PLACEHOLDER.ets | 交叉类型—仅用于概念验证 |
| SEM_15_02_08 | 15.2 | runtime | ets_cases/15.2.8_Subtyping_for_Intersection_Types/runtime/SEM_15_02_08_100.ets | 交叉类型运行时 |
| SEM_15_08_003 | 15.8 | compile-fail | ets_cases/15.8.1_Type_Expression/compile-fail/SEM_15_08_003_FAIL_TYPEOF_GAP.ets | 验证 typeof smart cast — Spec 要求 typeof 收窄，编译器未实现 |
| SEM_15_08_004 | 15.8 | compile-fail | ets_cases/15.8.1_Type_Expression/compile-fail/SEM_15_08_004_FAIL_SMART_CAST_OUTSIDE.ets | 验证不再使用 smart cast — 此场景编译器已知值类型，不验证作用域限制 |
| SEM_15_08_001 | 15.8 | compile-pass | ets_cases/15.8.1_Type_Expression/compile-pass/SEM_15_08_001_PASS_INSTANCEOF_SMART_CAST.ets | 验证 instanceof smart cast：instanceof 检查后类型收窄 |
| SEM_15_08_002 | 15.8 | compile-pass | ets_cases/15.8.1_Type_Expression/compile-pass/SEM_15_08_002_PASS_NULL_SMART_CAST.ets | 验证 null/undefined smart cast：!= undefined 检查后类型收窄 |
| SEM_15_08_01 | 15.8 | runtime | ets_cases/15.8.1_Type_Expression/runtime/SEM_15_08_01_100.ets | 类型表达式运行时 |
| SEM_15_12_001 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_001_FAIL_PROMISE_FIXEDARRAY.ets | 验证类型擦除后类型不可用于 FixedArray 类型参数 |
| SEM_15_12_007 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_007_FAIL_erased_signature_conflict.ets | 擦除后签名冲突。 |
| SEM_15_12_008 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_008_FAIL_default_any_object_member.ets | 无约束类型参数默认 `Any`，不能假设有 `Object` 成员。 |
| SEM_15_12_009 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_009_FAIL_tuple_effective_mismatch.ets | 元组有效类型不匹配。 |
| SEM_15_12_010 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_010_FAIL_ERASURE_LIMIT.ets | 验证 FixedArray 泛型擦除限制：擦除后类型不可作 FixedArray 类型参数 |
| SEM_15_12_010 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_010_FAIL_function_effective_mismatch.ets | 函数有效类型不匹配。 |
| SEM_15_12_011 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_011_FAIL_never_wrong_context.ets | `never` 在错误上下文中使用。 |
| SEM_15_12_019 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_019_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
| SEM_15_12_021 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_021_FAIL_ARCHIVE_overload_equivalent_return_ignored.ets | 归档吸纳：overload equivalent return ignored。来源 `Overloading\compile-fail\OVERLOAD_FAIL_002_overload_equivalent_return_ignored.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_022 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_022_FAIL_ARCHIVE_function_type_parameters_erased_equivalent.ets | 归档吸纳：function type parameters erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_019_function_type_parameters_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_023 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_023_FAIL_ARCHIVE_tuple_same_arity_erased_equivalent.ets | 归档吸纳：tuple same arity erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_020_tuple_same_arity_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_024 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_024_FAIL_ARCHIVE_method_array_type_args_erased_equivalent.ets | 归档吸纳：method array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_021_method_array_type_args_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_025 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_025_FAIL_ARCHIVE_static_method_array_type_args_erased_equivalent.ets | 归档吸纳：static method array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_022_static_method_array_type_args_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_026 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_026_FAIL_ARCHIVE_constructor_array_type_args_erased_equivalent.ets | 归档吸纳：constructor array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_023_constructor_array_type_args_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_027 | 15.12 | compile-fail | ets_cases/15.12_Type_Erasure/compile-fail/SEM_15_12_027_FAIL_ARCHIVE_ambient_function_array_type_args_erased_equivalent.ets | 归档吸纳：ambient function array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_024_ambient_function_array_type_args_erased_equivalent.d.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_001 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_001_PASS_TYPE_ERASURE.ets | 验证泛型类型擦除：泛型函数调用正确 |
| SEM_15_12_001 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_001_PASS_string_literal_effective_string.ets | 字符串字面量有效类型为 `string`。 |
| SEM_15_12_002 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_002_PASS_type_parameter_constraint.ets | 类型参数有效类型为其约束。 |
| SEM_15_12_003 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_003_PASS_union_effective.ets | 联合类型有效类型由成员有效类型组成。 |
| SEM_15_12_004 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_004_PASS_array_effective_array.ets | `T[]` 映射为 `Array<T>`。 |
| SEM_15_12_005 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_005_PASS_fixed_array_preserved.ets | 定长数组有效类型保持定长数组语义。 |
| SEM_15_12_006 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_006_PASS_nonnullish_effective.ets | `NonNullish<T>` 移除 nullish。 |
| SEM_15_12_015 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_015_PASS_literal_effective_string.ets | / 有效类型映射 / Java 擦除主要覆盖泛型。 / Swift 没有 ArkTS union/nullish 有效类型映射。 / `SEM_15_12_015_PASS_literal_effective_string` / `SEM_15_12_016_FAIL_unconstrained_T_assume_Object` / |
| SEM_15_12_016 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_016_PASS_non_conflicting_effective_signatures.ets | / 擦除签名冲突 / Java 泛型擦除冲突类似，但范围更窄。 / Swift 通常保留更多泛型区分。 / `SEM_15_12_016_PASS_non_conflicting_effective_signatures` / `SEM_15_12_018_FAIL_Array_string_vs_Array_number_conflict` / |
| SEM_15_12_018 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_018_PASS_SMART_FUNC_instanceof_narrowing.ets | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
| SEM_15_12_028 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_028_PASS_ARCHIVE_different_arity_not_equivalent.ets | 归档吸纳：different arity not equivalent。来源 `Overloading\compile-pass\OVERLOAD_PASS_013_different_arity_not_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_029 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_029_PASS_ARCHIVE_explicit_equivalent_signatures_allowed.ets | 归档吸纳：explicit equivalent signatures allowed。来源 `Overloading\compile-pass\OVERLOAD_PASS_014_explicit_equivalent_signatures_allowed.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_030 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_030_PASS_ARCHIVE_generic_plain_equivalent_textual_order.ets | 归档吸纳：generic plain equivalent textual order。来源 `Overloading\compile-pass\OVERLOAD_PASS_015_generic_plain_equivalent_textual_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_031 | 15.12 | compile-pass | ets_cases/15.12_Type_Erasure/compile-pass/SEM_15_12_031_PASS_ARCHIVE_generic_class_method_equivalent_textual_order.ets | 归档吸纳：generic class method equivalent textual order。来源 `Overloading\compile-pass\OVERLOAD_PASS_016_generic_class_method_equivalent_textual_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
| SEM_15_12_002 | 15.12 | runtime | ets_cases/15.12_Type_Erasure/runtime/SEM_15_12_002_RUNTIME_ERASURE.ets | 验证泛型类型擦除运行时行为：擦除后类型信息不影响运行时 |
| SEM_15_12_012 | 15.12 | runtime | ets_cases/15.12_Type_Erasure/runtime/SEM_15_12_012_RT_generic_cast_erased.ets | 泛型 cast 按有效/擦除类型检查。 |
| SEM_15_12_013 | 15.12 | runtime | ets_cases/15.12_Type_Erasure/runtime/SEM_15_12_013_RT_erased_generic_field_read.ets | 读取泛型字段暴露擦除风险。 |
| SEM_15_12_014 | 15.12 | runtime | ets_cases/15.12_Type_Erasure/runtime/SEM_15_12_014_RT_literal_runtime_string.ets | 字面量运行时按字符串行为。 |
| SEM_15_12_017 | 15.12 | runtime | ets_cases/15.12_Type_Erasure/runtime/SEM_15_12_017_RT_generic_cast_effective_class.ets | / 运行时擦除检查 / Java 参数化类型 cast 常有 unchecked 行为。 / Swift cast 可能保留更多泛型信息。 / `SEM_15_12_017_RT_generic_cast_effective_class` / `SEM_15_12_020_RT_class_cast_error_path` / |
| SEM_15_12_020 | 15.12 | runtime | ets_cases/15.12_Type_Erasure/runtime/SEM_15_12_020_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
