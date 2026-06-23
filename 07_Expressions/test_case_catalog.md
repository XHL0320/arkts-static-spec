# 07 Expressions Test Case Catalog

| ID | SubTopic | Type | Case File | Purpose | Expected |
|----|----------|------|-----------|---------|---------|
| 001 | 7.1.1 | compile-pass | EXP_07_01_01_001_PASS_GROUPING_PAREN.ets | 括号分组优先级最高 | compile-pass |
| 002 | 7.1.1 | compile-pass | EXP_07_01_01_002_PASS_MULTIPLICATIVE_BEFORE_ADDITIVE.ets | 乘法优先于加法 | compile-pass |
| 003 | 7.1.1 | compile-pass | EXP_07_01_01_003_PASS_ADDITIVE_BEFORE_SHIFT.ets | 加法优先于移位 | compile-pass |
| 004 | 7.1.1 | compile-pass | EXP_07_01_01_004_PASS_SHIFT_BEFORE_RELATIONAL.ets | 移位优先于关系 | compile-pass |
| 005 | 7.1.1 | compile-pass | EXP_07_01_01_005_PASS_RELATIONAL_BEFORE_EQUALITY.ets | 关系优先于相等 | compile-pass |
| 006 | 7.1.1 | compile-pass | EXP_07_01_01_006_PASS_BITWISE_AND_XOR_OR.ets | 按位与/异或/或优先级 | compile-pass |
| 007 | 7.1.1 | compile-pass | EXP_07_01_01_007_PASS_LOGICAL_AND_OR.ets | 逻辑与优先于逻辑或 | compile-pass |
| 008 | 7.1.1 | compile-pass | EXP_07_01_01_008_PASS_ASSIGNMENT_RIGHT_ASSOC.ets | 赋值右结合 | compile-pass |
| 009 | 7.1.1 | compile-pass | EXP_07_01_01_009_PASS_EXPONENTIATION_RIGHT_ASSOC.ets | 幂运算右结合 | compile-pass |
| 010 | 7.1.1 | compile-pass | EXP_07_01_01_010_PASS_TERNARY_RIGHT_ASSOC.ets | 三元右结合 | compile-pass |
| 011 | 7.1.1 | compile-pass | EXP_07_01_01_011_PASS_UNARY_MINUS_EXPONENTIATION.ets | 一元与幂运算 | compile-pass |
| 012 | 7.1.1 | compile-pass | EXP_07_01_01_012_PASS_CAST_AND_ADDITIVE.ets | as 与加法优先级 | compile-pass |
| 013 | 7.1.1 | compile-pass | EXP_07_01_01_013_PASS_MEMBER_ACCESS_PRECEDENCE.ets | 成员访问优先级 | compile-pass |
| 014 | 7.1.1 | compile-pass | EXP_07_01_01_014_PASS_NULLISH_COALESCING_PRECEDENCE.ets | null 合并优先级 | compile-pass |
| 015 | 7.1.1 | compile-pass | EXP_07_01_01_015_PASS_COMPOUND_ASSIGN_ARITH.ets | 复合赋值与算术 | compile-pass |
| 016 | 7.1.1 | compile-pass | EXP_07_01_01_016_PASS_MIXED_OPERATOR_CHAIN.ets | 多级运算符混合 | compile-pass |
| 017 | 7.1.1 | compile-pass | EXP_07_01_01_017_PASS_POSTFIX_INCREMENT_ARITH.ets | 后置递增与算术 | compile-pass |
| 018 | 7.1.1 | compile-pass | EXP_07_01_01_018_PASS_PREFIX_INCREMENT_EXPONENT.ets | 前置递增与幂运算 | compile-pass |
| 019 | 7.1.1 | compile-pass | EXP_07_01_01_019_PASS_STRING_CONCAT_ADDITION.ets | 字符串拼接与加法 | compile-pass |
| 020 | 7.1.1 | compile-pass | EXP_07_01_01_020_PASS_COMPLEX_EXPRESSION.ets | 复杂表达式 | compile-pass |
| 021 | 7.1.1 | compile-fail | EXP_07_01_01_021_FAIL_ASSIGN_TO_NON_LVALUE.ets | 加法优先赋值给非左值 | compile-fail（⚠️ SPEC不一致） |
| 022 | 7.1.1 | compile-fail | EXP_07_01_01_022_FAIL_DOUBLE_POSTFIX_INCREMENT.ets | 双重复增 | compile-fail |
| 023 | 7.1.1 | compile-fail | EXP_07_01_01_023_FAIL_LOGICAL_AND_ASSIGNMENT.ets | 逻辑与后赋值给非左值 | compile-fail（⚠️ SPEC不一致） |
| 024 | 7.1.1 | compile-fail | EXP_07_01_01_024_FAIL_TERNARY_PRECEDENCE_TYPE.ets | 空合并后三元条件类型 | compile-fail（⚠️ SPEC不一致） |
| 025 | 7.1.1 | runtime | EXP_07_01_01_025_RUNTIME_PAREN_OVERRIDES.ets | 括号覆盖优先级 | runtime ✅ |
| 026 | 7.1.1 | runtime | EXP_07_01_01_026_RUNTIME_ARITH_MIXED.ets | 算术混合优先级 | runtime ✅ |
| 027 | 7.1.1 | runtime | EXP_07_01_01_027_RUNTIME_SHIFT_ARITH_MIXED.ets | 移位和算术混合 | runtime ✅ |
| 028 | 7.1.1 | runtime | EXP_07_01_01_028_RUNTIME_RELATIONAL_EQUALITY.ets | 关系与相等优先级 | runtime ✅ |
| 029 | 7.1.1 | runtime | EXP_07_01_01_029_RUNTIME_BITWISE_CHAIN.ets | 按位运算符优先级链 | runtime ✅ |
| 030 | 7.1.1 | runtime | EXP_07_01_01_030_RUNTIME_LOGICAL_PRECEDENCE.ets | 逻辑运算符优先级 | runtime ✅ |
| 031 | 7.1.1 | runtime | EXP_07_01_01_031_RUNTIME_ASSIGN_RIGHT_ASSOC.ets | 赋值右结合 | runtime ✅ |
| 032 | 7.1.1 | runtime | EXP_07_01_01_032_RUNTIME_EXPONENT_RIGHT_ASSOC.ets | 幂运算右结合 | runtime ✅ |
| 033 | 7.1.1 | runtime | EXP_07_01_01_033_RUNTIME_TERNARY_RIGHT_ASSOC.ets | 三元右结合 | runtime ✅ |
| 034 | 7.1.1 | runtime | EXP_07_01_01_034_RUNTIME_NULLISH_ARITH.ets | null 合并与加法 | runtime ✅ |
| 035 | 7.1.1 | runtime | EXP_07_01_01_035_RUNTIME_COMPLEX_OVERALL.ets | 复杂表达式综合验证 | runtime ✅ |
| 036 | 7.2.1 | compile-pass | EXP_07_02_01_001_PASS_STANDALONE_INT.ets | standalone int 推断 | compile-pass |
| 037 | 7.2.1 | compile-pass | EXP_07_02_01_002_PASS_STANDALONE_STRING.ets | standalone string 推断 | compile-pass |
| 038 | 7.2.1 | compile-pass | EXP_07_02_01_003_PASS_STANDALONE_BOOLEAN.ets | standalone boolean 推断 | compile-pass |
| 039 | 7.2.1 | compile-pass | EXP_07_02_01_004_PASS_STANDALONE_ARRAY.ets | standalone 数组推断 | compile-pass |
| 040 | 7.2.1 | compile-pass | EXP_07_02_01_005_PASS_NON_STANDALONE_ANNOTATION.ets | 显式类型注解 target | compile-pass |
| 041 | 7.2.1 | compile-pass | EXP_07_02_01_006_PASS_FUNC_PARAM_TARGET.ets | 函数参数 target | compile-pass |
| 042 | 7.2.1 | compile-pass | EXP_07_02_01_007_PASS_RETURN_TARGET.ets | 返回值 target | compile-pass |
| 043 | 7.2.1 | compile-pass | EXP_07_02_01_008_PASS_OBJLIT_CLASS_TARGET.ets | 对象字面量 class target | compile-pass |
| 044 | 7.2.1 | compile-pass | EXP_07_02_01_009_PASS_ASSIGNMENT_TARGET.ets | 赋值 target type | compile-pass |
| 045 | 7.2.1 | compile-pass | EXP_07_02_01_010_PASS_WRITABLE_TO_READONLY.ets | writable→readonly | compile-pass |
| 046 | 7.2.1 | compile-pass | EXP_07_02_01_011_PASS_EXPRESSION_STATEMENT.ets | 表达式语句 | compile-pass |
| 047 | 7.2.1 | compile-pass | EXP_07_02_01_012_PASS_READONLY_TO_READONLY.ets | readonly→readonly | compile-pass |
| 048 | 7.2.1 | compile-pass | EXP_07_02_01_013_PASS_GENERIC_TARGET.ets | 泛型推断 | compile-pass |
| 049 | 7.2.1 | compile-pass | EXP_07_02_01_014_PASS_NESTED_EXPR_TARGET.ets | 嵌套表达式 | compile-pass |
| 050 | 7.2.1 | compile-pass | EXP_07_02_01_015_PASS_TERNARY_TARGET.ets | 三目表达式 | compile-pass |
| 051 | 7.2.1 | compile-fail | EXP_07_02_01_016_FAIL_STANDALONE_OBJLIT.ets | standalone 对象字面量 | compile-fail |
| 052 | 7.2.1 | compile-fail | EXP_07_02_01_017_FAIL_READONLY_TO_WRITABLE.ets | readonly→writable | compile-fail |
| 053 | 7.2.1 | compile-fail | EXP_07_02_01_018_FAIL_TYPE_MISMATCH.ets | 类型不匹配 | compile-fail |
| 054 | 7.2.1 | compile-fail | EXP_07_02_01_019_FAIL_FUNC_ARG_MISMATCH.ets | 函数参数类型不匹配 | compile-fail |
| 055 | 7.2.1 | compile-fail | EXP_07_02_01_020_FAIL_RETURN_TYPE_MISMATCH.ets | 返回值类型不匹配 | compile-fail |
| 056 | 7.2.1 | runtime | EXP_07_02_01_021_RUNTIME_STANDALONE_TYPES.ets | standalone 类型值 | runtime ✅ |
| 057 | 7.2.1 | runtime | EXP_07_02_01_022_RUNTIME_TARGET_TYPE_FUNC.ets | 函数参数 target | runtime ✅ |
| 058 | 7.2.1 | runtime | EXP_07_02_01_023_RUNTIME_READONLY_PARAM.ets | readonly 数组参数 | runtime ✅ |
| 059 | 7.2.1 | runtime | EXP_07_02_01_024_RUNTIME_OBJLIT_TARGET.ets | object literal target | runtime ✅ |
| 060 | 7.2.1 | runtime | EXP_07_02_01_025_RUNTIME_ARRAY_STANDALONE.ets | standalone 数组 | runtime ✅ |
| 061 | 7.2.2 | compile-pass | EXP_07_02_02_001_PASS_NORMAL_COMPLETION_ARITH.ets | 算术表达式正常完成 | compile-pass |
| 062 | 7.2.2 | compile-pass | EXP_07_02_02_002_PASS_NORMAL_ARRAY_INDEX.ets | 数组有效索引 | compile-pass |
| 063 | 7.2.2 | compile-pass | EXP_07_02_02_003_PASS_NORMAL_FIXED_ARRAY_ASSIGN.ets | 定长数组正确赋值 | compile-pass |
| 064 | 7.2.2 | compile-pass | EXP_07_02_02_004_PASS_NORMAL_CAST.ets | 类型转换正常完成 | compile-pass |
| 065 | 7.2.2 | compile-pass | EXP_07_02_02_005_PASS_NORMAL_DIVISION.ets | 除法正常（非零除数） | compile-pass |
| 066 | 7.2.2 | compile-pass | EXP_07_02_02_006_PASS_NORMAL_REMAINDER.ets | 取余正常（非零除数） | compile-pass |
| 067 | 7.2.2 | compile-pass | EXP_07_02_02_007_PASS_NORMAL_CHAINED_EXPR.ets | 链式表达式正常 | compile-pass |
| 068 | 7.2.2 | compile-pass | EXP_07_02_02_008_PASS_NORMAL_FUNC_CALL.ets | 函数调用正常完成 | compile-pass |
| 069 | 7.2.2 | compile-pass | EXP_07_02_02_009_PASS_NORMAL_STRING_INDEX.ets | 字符串有效索引 | compile-pass |
| 070 | 7.2.2 | compile-pass | EXP_07_02_02_010_PASS_NORMAL_NULLISH.ets | nullish 合并正常 | compile-pass |
| 071 | 7.2.2 | compile-pass | EXP_07_02_02_011_PASS_NORMAL_TERNARY.ets | 三元表达式正常 | compile-pass |
| 072 | 7.2.2 | compile-pass | EXP_07_02_02_012_PASS_NORMAL_MIXED.ets | 混合表达式正常 | compile-pass |
| 073 | 7.2.2 | compile-fail | EXP_07_02_02_013_FAIL_DIVISION_BY_LITERAL_ZERO.ets | 整数除字面量零 | compile-fail |
| 074 | 7.2.2 | compile-fail | EXP_07_02_02_014_FAIL_REMAINDER_BY_LITERAL_ZERO.ets | 整数取余字面量零 | compile-fail |
| 075 | 7.2.2 | compile-fail | EXP_07_02_02_017_FAIL_NEGATIVE_ARRAY_INDEX.ets | 负数组索引（⚠️SPEC不一致） | compile-fail |
| 076 | 7.2.2 | runtime | EXP_07_02_02_015_RUNTIME_NORMAL_COMPLETION.ets | 正常完成多断言 | runtime ✅ |
| 077 | 7.2.2 | runtime | EXP_07_02_02_016_RUNTIME_ARRAY_INDEX_OOB.ets | 数组越界 RangeError | runtime ✅ |
| 078 | 7.2.2 | runtime | EXP_07_02_02_018_RUNTIME_CLASS_CAST_ERROR.ets | 类型转换失败 ClassCastError | runtime ✅ |
| 079 | 7.2.2 | runtime | EXP_07_02_02_019_RUNTIME_DIVISION_BY_ZERO.ets | 整数除零 ArithmeticError | runtime ✅ |
| 080 | 7.2.2 | runtime | EXP_07_02_02_020_RUNTIME_REMAINDER_BY_ZERO.ets | 整数取余零 ArithmeticError | runtime ✅ |
| 081 | 7.2.2 | runtime | EXP_07_02_02_021_RUNTIME_STRING_INDEX_OOB.ets | 字符串越界 RangeError | runtime ✅ |
| 082 | 7.2.2 | runtime | EXP_07_02_02_022_RUNTIME_STRING_NEGATIVE_INDEX.ets | 字符串负索引 RangeError | runtime ✅ |
| 083 | 7.2.3 | compile-pass | EXP_07_02_03_001_PASS_BINARY_LEFT_RIGHT.ets | 二元运算左到右求值 | compile-pass |
| 084 | 7.2.3 | compile-pass | EXP_07_02_03_002_PASS_TERNARY_FIRST.ets | 三元条件优先求值 | compile-pass |
| 085 | 7.2.3 | compile-pass | EXP_07_02_03_003_PASS_SHORT_AND_TRUE.ets | && true 路径 | compile-pass |
| 086 | 7.2.3 | compile-pass | EXP_07_02_03_004_PASS_SHORT_OR_FALSE.ets | \|\| false 路径 | compile-pass |
| 087 | 7.2.3 | compile-pass | EXP_07_02_03_005_PASS_ASSIGN_RIGHT_ASSOC_ORDER.ets | 赋值右结合求值顺序 | compile-pass |
| 088 | 7.2.3 | compile-pass | EXP_07_02_03_006_PASS_FUNC_ARGS_LEFT_RIGHT.ets | 函数参数从左到右 | compile-pass |
| 089 | 7.2.3 | compile-pass | EXP_07_02_03_007_PASS_INT_ASSOCIATIVE.ets | 整数加乘可结合 | compile-pass |
| 090 | 7.2.3 | compile-pass | EXP_07_02_03_008_PASS_PAREN_OVERRIDE.ets | 括号覆盖优先级 | compile-pass |
| 091 | 7.2.3 | compile-pass | EXP_07_02_03_009_PASS_MIXED_COMPOUND.ets | 混合复合表达式 | compile-pass |
| 092 | 7.2.3 | compile-pass | EXP_07_02_03_010_PASS_NULLISH_COALESCING.ets | nullish 合并 | compile-pass |
| 093 | 7.2.3 | compile-pass | EXP_07_02_03_011_PASS_CHAINED_LOGICAL.ets | 链式逻辑运算 | compile-pass |
| 094 | 7.2.3 | compile-pass | EXP_07_02_03_012_PASS_MULTI_BINARY.ets | 多层二元运算 | compile-pass |
| 095 | 7.2.3 | compile-fail | EXP_07_02_03_013_FAIL_NULLISH_MIXED_AND.ets | ?? 与 && 混合无括号 | compile-fail |
| 096 | 7.2.3 | compile-fail | EXP_07_02_03_014_FAIL_NULLISH_MIXED_OR.ets | ?? 与 \|\| 混合无括号 | compile-fail |
| 097 | 7.2.3 | runtime | EXP_07_02_03_015_RUNTIME_BINARY_ORDER.ets | 二元运算左到右顺序 | runtime ✅ |
| 098 | 7.2.3 | runtime | EXP_07_02_03_016_RUNTIME_TERNARY_BRANCH.ets | 三元条件+分支 | runtime ✅ |
| 099 | 7.2.3 | runtime | EXP_07_02_03_017_RUNTIME_SHORT_AND.ets | && 短路跳过右 | runtime ✅ |
| 100 | 7.2.3 | runtime | EXP_07_02_03_018_RUNTIME_SHORT_OR.ets | \|\| 短路跳过右 | runtime ✅ |
| 101 | 7.2.3 | runtime | EXP_07_02_03_019_RUNTIME_ASSIGN_RIGHT_ASSOC.ets | 赋值右结合+值传播 | runtime ✅ |
| 102 | 7.2.3 | runtime | EXP_07_02_03_020_RUNTIME_FUNC_ARGS_ORDER.ets | 函数参数左到右顺序 | runtime ✅ |
| 103 | 7.2.3 | runtime | EXP_07_02_03_021_RUNTIME_ARGS_ABRUPT.ets | 参数异常跳过后 | runtime ✅ |
| 104 | 7.2.3 | runtime | EXP_07_02_03_022_RUNTIME_CHAINED_LOGICAL.ets | 链式逻辑短路 | runtime ✅ |
| 105 | 7.2.3 | runtime | EXP_07_02_03_023_RUNTIME_PAREN_OVERRIDE_ORDER.ets | 括号改变求值顺序 | runtime ✅ |
| 106 | 7.2.3 | runtime | EXP_07_02_03_024_RUNTIME_FLOAT_NON_ASSOC.ets | 浮点数非结合性 | runtime ✅ |
| 107 | 7.2.3 | runtime | EXP_07_02_03_025_RUNTIME_NULLISH_SHORT.ets | nullish 短路 | runtime ✅ |
| 108 | 7.2.4 | compile-pass | EXP_07_02_04_001_PASS_FUNC_ARGS_LTR.ets | 函数调用参数左到右基本编译 | compile-pass |
| 109 | 7.2.4 | compile-pass | EXP_07_02_04_002_PASS_METHOD_ARGS_LTR.ets | 方法调用参数左到右基本编译 | compile-pass |
| 110 | 7.2.4 | compile-pass | EXP_07_02_04_003_PASS_CONSTRUCTOR_ARGS_LTR.ets | 构造函数参数左到右基本编译 | compile-pass |
| 111 | 7.2.4 | compile-pass | EXP_07_02_04_004_PASS_MIXED_CALL_TYPES.ets | 三种调用类型混合编译 | compile-pass |
| 112 | 7.2.4 | runtime | EXP_07_02_04_005_RUNTIME_FUNC_ARGS_ORDER.ets | 函数参数 L→M→R 顺序 | runtime ✅ |
| 113 | 7.2.4 | runtime | EXP_07_02_04_006_RUNTIME_METHOD_ARGS_ORDER.ets | 方法参数 A→B→C 顺序 | runtime ✅ |
| 114 | 7.2.4 | runtime | EXP_07_02_04_007_RUNTIME_CONSTRUCTOR_ARGS_ORDER.ets | 构造参数 X→Y→Z 顺序 | runtime ✅ |
| 115 | 7.2.4 | runtime | EXP_07_02_04_008_RUNTIME_LEFT_ABRUPT_SKIP_RIGHT.ets | 左参数错误→右参数跳过 | runtime ✅ |
| 116 | 7.2.4 | runtime | EXP_07_02_04_009_RUNTIME_NESTED_FUNC_ARGS_ORDER.ets | 嵌套函数调用参数顺序 | runtime ✅ |
| 117 | 7.2.5 | compile-pass | EXP_07_02_05_001_PASS_CLASS_INSTANCE.ets | 类实例创建(new)基本编译 | compile-pass |
| 118 | 7.2.5 | compile-pass | EXP_07_02_05_002_PASS_ARRAY_CREATION.ets | 数组创建基本编译 | compile-pass |
| 119 | 7.2.5 | compile-pass | EXP_07_02_05_003_PASS_INDEXING.ets | 索引表达式基本编译 | compile-pass |
| 120 | 7.2.5 | compile-pass | EXP_07_02_05_004_PASS_METHOD_CALL.ets | 方法调用表达式基本编译 | compile-pass |
| 121 | 7.2.5 | compile-pass | EXP_07_02_05_005_PASS_INDEX_ASSIGNMENT.ets | 索引赋值基本编译 | compile-pass |
| 122 | 7.2.5 | compile-pass | EXP_07_02_05_006_PASS_LAMBDA.ets | Lambda 表达式基本编译 | compile-pass |
| 123 | 7.2.5 | runtime | EXP_07_02_05_007_RUNTIME_CLASS_INSTANCE_ARGS.ets | new 参数 AB 顺序 | runtime ✅ |
| 124 | 7.2.5 | runtime | EXP_07_02_05_008_RUNTIME_ARRAY_LITERAL_ORDER.ets | 数组字面量元素 XYZ 顺序 | runtime ✅ |
| 125 | 7.2.5 | runtime | EXP_07_02_05_009_RUNTIME_INDEXING_ORDER.ets | 数组先于索引求值 | runtime ✅ |
| 126 | 7.2.5 | runtime | EXP_07_02_05_010_RUNTIME_METHOD_CALL_ORDER.ets | 对象先于参数求值 | runtime ✅ |
| 127 | 7.2.5 | runtime | EXP_07_02_05_011_RUNTIME_INDEX_ASSIGN_ORDER.ets | 索引赋值 AIV 顺序 | runtime ✅ |
| 128 | 7.2.5 | runtime | EXP_07_02_05_012_RUNTIME_LAMBDA_LAZY.ets | Lambda 惰性求值 | runtime ✅ |
| 129 | 7.3 | compile-pass | EXP_07_03_001_PASS_INTEGER_LITERAL.ets | 整数字面量（十进制/十六进制/八进制/二进制） | compile-pass |
| 130 | 7.3 | compile-pass | EXP_07_03_002_PASS_FLOAT_BIGINT_LITERAL.ets | 浮点数和 bigint 字面量 | compile-pass |
| 131 | 7.3 | compile-pass | EXP_07_03_003_PASS_STRING_BOOL_NULL.ets | 字符串/布尔/null/undefined 字面量 | compile-pass |
| 132 | 7.3 | compile-pass | EXP_07_03_004_PASS_NUMERIC_TYPE_INFERENCE.ets | 数值字面量类型推断 | compile-pass |
| 133 | 7.3 | compile-pass | EXP_07_03_005_PASS_UNDERSCORE_CHAR_LITERAL.ets | 下划线分隔数值字面量 | compile-pass |
| 134 | 7.3 | compile-fail | EXP_07_03_006_FAIL_INTEGER_TOO_LARGE.ets | 整数超出 long 范围 | compile-fail |
| 135 | 7.3 | compile-fail | EXP_07_03_007_FAIL_FLOAT_TOO_LARGE.ets | float 超出范围 | compile-fail |
| 136 | 7.3 | runtime | EXP_07_03_008_RUNTIME_INTEGER_VALUES.ets | 各进制整数值验证 | runtime ✅ |
| 137 | 7.3 | runtime | EXP_07_03_009_RUNTIME_FLOAT_VALUES.ets | 浮点数值验证 | runtime ✅ |
| 138 | 7.3 | runtime | EXP_07_03_010_RUNTIME_BIGINT_STRING_VALUES.ets | bigint/字符串值验证 | runtime ✅ |
| 139 | 7.3 | runtime | EXP_07_03_011_RUNTIME_BOOLEAN_NULL_ASSIGN.ets | 布尔值验证 | runtime ✅ |
| 140 | 7.4.1 | compile-pass | EXP_07_04_01_001_PASS_BASIC_FUNCTION_REF.ets | 基本函数引用 | compile-pass |
| 141 | 7.4.1 | compile-pass | EXP_07_04_01_002_PASS_FUNCTION_REF_TYPE_INFERENCE.ets | 函数引用类型推导 | compile-pass |
| 142 | 7.4.1 | compile-pass | EXP_07_04_01_003_PASS_FUNCTION_REF_CALL.ets | 函数引用调用 | compile-pass |
| 143 | 7.4.1 | compile-pass | EXP_07_04_01_004_PASS_GENERIC_FUNCTION_REF.ets | 泛型函数引用（显式类型参数） | compile-pass |
| 144 | 7.4.1 | compile-pass | EXP_07_04_01_005_PASS_INDIVIDUAL_OVERLOAD_REF.ets | 显式重载单函数引用 | compile-pass |
| 145 | 7.4.1 | compile-fail | EXP_07_04_01_006_FAIL_GENERIC_REF_NO_ARGS.ets | 泛型无类型参数引用 | compile-fail |
| 146 | 7.4.1 | compile-fail | EXP_07_04_01_007_FAIL_OVERLOADED_FUNC_NAME.ets | 隐式重载函数名引用 | compile-fail |
| 147 | 7.4.1 | compile-fail | EXP_07_04_01_008_FAIL_EXPLICIT_OVERLOAD_NAME.ets | 显式重载名称引用 | compile-fail |
| 148 | 7.4.1 | runtime | EXP_07_04_01_009_RUNTIME_FUNCTION_REF_CALL_RESULT.ets | 引用调用结果验证 | runtime ✅ |
| 149 | 7.4.1 | runtime | EXP_07_04_01_010_RUNTIME_GENERIC_REF_CALL.ets | 泛型引用调用验证 | runtime ✅ |
| 150 | 7.4.2 | compile-pass | EXP_07_04_02_001_PASS_STATIC_METHOD_REF.ets | 静态方法引用 | compile-pass |
| 151 | 7.4.2 | compile-pass | EXP_07_04_02_002_PASS_INSTANCE_METHOD_REF.ets | 实例方法引用 | compile-pass |
| 152 | 7.4.2 | compile-pass | EXP_07_04_02_003_PASS_METHOD_REF_BINDING.ets | 实例绑定 | compile-pass |
| 153 | 7.4.2 | compile-pass | EXP_07_04_02_004_PASS_GENERIC_METHOD_REF.ets | 泛型方法引用（显式类型参数） | compile-pass |
| 154 | 7.4.2 | compile-pass | EXP_07_04_02_005_PASS_INDIVIDUAL_OVERLOAD_METHOD_REF.ets | 显式重载单方法引用 | compile-pass |
| 155 | 7.4.2 | compile-fail | EXP_07_04_02_006_FAIL_GENERIC_METHOD_REF_NO_ARGS.ets | 泛型方法无类型参数 | compile-fail |
| 156 | 7.4.2 | compile-fail | EXP_07_04_02_007_FAIL_IMPLICIT_OVERLOADED_METHOD_REF.ets | 隐式重载方法名引用 | compile-fail |
| 157 | 7.4.2 | compile-fail | EXP_07_04_02_008_FAIL_EXPLICIT_OVERLOAD_METHOD_REF.ets | 显式重载方法名引用 | compile-fail |
| 158 | 7.4.2 | runtime | EXP_07_04_02_009_RUNTIME_INSTANCE_BINDING.ets | 实例绑定隔离 | runtime ✅ |
| 159 | 7.4.2 | runtime | EXP_07_04_02_010_RUNTIME_STATIC_METHOD_REF_CALL.ets | 静态引用调用 | runtime ✅ |
| 160 | 7.4.2 | runtime | EXP_07_04_02_011_RUNTIME_GENERIC_METHOD_REF_CALL.ets | 泛型方法引用调用 | runtime ✅ |
| 161 | 7.5.1 | compile-pass | EXP_07_05_01_001_PASS_VAR_DECL_CONTEXT.ets | 变量声明类型标注上下文 | compile-pass |
| 162 | 7.5.1 | compile-pass | EXP_07_05_01_002_PASS_ASSIGNMENT_CONTEXT.ets | 赋值左值类型上下文 | compile-pass |
| 163 | 7.5.1 | compile-pass | EXP_07_05_01_003_PASS_CAST_CONTEXT.ets | Cast 目标类型上下文 | compile-pass |
| 164 | 7.5.1 | compile-pass | EXP_07_05_01_004_PASS_PARAM_TYPE_CONTEXT.ets | 参数类型上下文 | compile-pass |
| 165 | 7.5.1 | compile-pass | EXP_07_05_01_005_PASS_ELEMENT_TYPE_CONTEXT.ets | 数组元素类型上下文（多维数组） | compile-pass |
| 166 | 7.5.1 | compile-pass | EXP_07_05_01_006_PASS_TUPLE_CONTEXT.ets | Tuple 类型上下文 | compile-pass |
| 167 | 7.5.1 | compile-pass | EXP_07_05_01_007_PASS_FIXED_ARRAY_CONTEXT.ets | FixedArray 上下文 | compile-pass |
| 168 | 7.5.1 | compile-pass | EXP_07_05_01_008_PASS_VALUE_ARRAY_CONTEXT.ets | ValueArray<int> 上下文 | compile-pass |
| 169 | 7.5.1 | compile-pass | EXP_07_05_01_009_PASS_ARRAY_GENERIC_CONTEXT.ets | Array<string> 泛型上下文 | compile-pass |
| 170 | 7.5.1 | compile-pass | EXP_07_05_01_010_PASS_SQUARE_BRACKET_SYNTAX_CONTEXT.ets | string[] 语法上下文 | compile-pass |
| 171 | 7.5.1 | compile-pass | EXP_07_05_01_011_PASS_OBJECT_ARRAY_CONTEXT.ets | Object[] 混合类型上下文 | compile-pass |
| 172 | 7.5.1 | compile-pass | EXP_07_05_01_012_PASS_OBJECT_CONTEXT.ets | Object 上下文（元素类型推断） | compile-pass |
| 173 | 7.5.1 | compile-pass | EXP_07_05_01_013_PASS_ANY_CONTEXT.ets | Any 上下文 | compile-pass |
| 174 | 7.5.1 | compile-pass | EXP_07_05_01_014_PASS_FIXED_ARRAY_OBJECT_ELEMENT.ets | FixedArray<Object> 混合元素 | compile-pass |
| 175 | 7.5.1 | compile-pass | EXP_07_05_01_015_PASS_VALUE_ARRAY_DOUBLE.ets | ValueArray<double> 接受 int | compile-pass |
| 176 | 7.5.1 | compile-pass | EXP_07_05_01_016_PASS_UNION_CONTEXT_SINGLE.ets | Union 唯一匹配上下文 | compile-pass |
| 177 | 7.5.1 | compile-pass | EXP_07_05_01_017_PASS_CLASS_ARRAY_CONTEXT.ets | 类类型数组上下文 | compile-pass |
| 178 | 7.5.1 | compile-pass | EXP_07_05_01_018_PASS_READONLY_ARRAY_CONTEXT.ets | readonly 数组上下文 | compile-pass |
| 179 | 7.5.1 | compile-fail | EXP_07_05_01_019_FAIL_TUPLE_ELEMENT_MISMATCH.ets | Tuple 元素类型不匹配 | compile-fail |
| 180 | 7.5.1 | compile-fail | EXP_07_05_01_020_FAIL_FIXED_ARRAY_ELEMENT_MISMATCH.ets | FixedArray<string> = [1, 2] | compile-fail |
| 181 | 7.5.1 | compile-fail | EXP_07_05_01_021_FAIL_VALUE_ARRAY_ELEMENT_MISMATCH.ets | ValueArray<int> = [3.14] | compile-fail |
| 182 | 7.5.1 | compile-fail | EXP_07_05_01_022_FAIL_RESIZABLE_ARRAY_ELEMENT_MISMATCH.ets | string[] = ["aa", 2] | compile-fail |
| 183 | 7.5.1 | compile-fail | EXP_07_05_01_023_FAIL_UNION_CONTEXT_AMBIGUOUS.ets | Union 歧义（两者皆可） | compile-fail |
| 184 | 7.5.1 | compile-fail | EXP_07_05_01_024_FAIL_NON_ARRAY_INTERFACE_CONTEXT.ets | 非数组接口上下文 | compile-fail |
| 185 | 7.5.1 | runtime | EXP_07_05_01_025_RUNTIME_BASIC_ARRAY_VALUES.ets | int[] 字面量值验证 | runtime ✅ |
| 186 | 7.5.1 | runtime | EXP_07_05_01_026_RUNTIME_TUPLE_ACCESS.ets | Tuple 元素访问 | runtime ✅ |
| 187 | 7.5.1 | runtime | EXP_07_05_01_027_RUNTIME_ARRAY_VIA_CAST.ets | Cast 上下文数组值 | runtime ✅ |
| 188 | 7.5.1 | runtime | EXP_07_05_01_028_RUNTIME_STRING_ARRAY_VALUES.ets | string[] 字面量值 | runtime ✅ |
| 189 | 7.5.2 | compile-pass | EXP_07_05_02_001_PASS_SAME_TYPE_STRING.ets | 同类型 string → string[] | compile-pass |
| 190 | 7.5.2 | compile-pass | EXP_07_05_02_002_PASS_SAME_TYPE_INT.ets | 同类型 int → int[] | compile-pass |
| 191 | 7.5.2 | compile-pass | EXP_07_05_02_003_PASS_NUMERIC_TYPES_MIXED.ets | 数值混合 → number[] | compile-pass |
| 192 | 7.5.2 | compile-pass | EXP_07_05_02_004_PASS_MIXED_STRING_NUMBER.ets | string+number 混合 → union[] | compile-pass |
| 193 | 7.5.2 | compile-pass | EXP_07_05_02_005_PASS_LITERAL_TYPE_PROMOTION.ets | 字面量类型提升 | compile-pass |
| 194 | 7.5.2 | compile-pass | EXP_07_05_02_006_PASS_FUNCTION_CLASS_MIXED.ets | 函数+类混合 → union[] | compile-pass |
| 195 | 7.5.2 | compile-pass | EXP_07_05_02_007_PASS_SINGLE_ELEMENT.ets | 单一元素 [42] → int[] | compile-pass |
| 196 | 7.5.2 | compile-pass | EXP_07_05_02_008_PASS_SAME_TYPE_BOOLEAN.ets | 同类型 boolean → boolean[] | compile-pass |
| 197 | 7.5.2 | compile-pass | EXP_07_05_02_009_PASS_NUMERIC_INT_DOUBLE_FLOAT.ets | int+double 混合 → number[] | compile-pass |
| 198 | 7.5.2 | compile-pass | EXP_07_05_02_010_PASS_MIXED_STRING_BOOL_INT.ets | string+bool+int 混合 → union[] | compile-pass |
| 199 | 7.5.2 | compile-fail | EXP_07_05_02_011_FAIL_EMPTY_ARRAY.ets | 空数组无上下文 | compile-fail |
| 200 | 7.5.2 | compile-pass | EXP_07_05_02_012_PASS_EMPTY_ARRAY_WITH_CONTEXT.ets | 空数组有上下文 | compile-pass |
| 201 | 7.5.2 | runtime | EXP_07_05_02_013_RUNTIME_INT_ARRAY_VALUES.ets | int[] 值验证 | runtime ✅ |
| 202 | 7.5.2 | runtime | EXP_07_05_02_014_RUNTIME_NUMERIC_ARRAY_VALUES.ets | number[] 值验证 | runtime ✅ |
| 203 | 7.5.2 | runtime | EXP_07_05_02_015_RUNTIME_STRING_ARRAY_SINGLE.ets | string[] 单元素值验证 | runtime ✅ |
| 204 | 7.6.1 | compile-pass | EXP_07_06_01_001_PASS_VAR_TYPE_CONTEXT.ets | 变量类型上下文推断 | compile-pass |
| 205 | 7.6.1 | compile-pass | EXP_07_06_01_002_PASS_FUNC_PARAM_CONTEXT.ets | 函数参数上下文推断 | compile-pass |
| 206 | 7.6.1 | compile-pass | EXP_07_06_01_003_PASS_SKIP_FIELDS_DEFAULTS.ets | 跳过所有有默认值字段 | compile-pass |
| 207 | 7.6.1 | compile-pass | EXP_07_06_01_004_PASS_SKIP_EXPLICIT_INITIALIZER.ets | 跳过有显式初始化字段 | compile-pass |
| 208 | 7.6.1 | compile-pass | EXP_07_06_01_005_PASS_IMPLICIT_DEFAULT_CTOR.ets | 隐式默认构造器 | compile-pass |
| 209 | 7.6.1 | compile-pass | EXP_07_06_01_006_PASS_EXPLICIT_PARAMLESS_CTOR.ets | 显式无参构造器 | compile-pass |
| 210 | 7.6.1 | compile-pass | EXP_07_06_01_007_PASS_OPTIONAL_PARAM_CTOR.ets | 全可选参数构造器 | compile-pass |
| 211 | 7.6.1 | compile-pass | EXP_07_06_01_008_PASS_DEFAULT_VALUE_FIELD.ets | 值类型字段默认值跳过 | compile-pass |
| 212 | 7.6.1 | compile-pass | EXP_07_06_01_009_PASS_SETTER_ACCESSOR.ets | setter 访问器作为字段 | compile-pass |
| 213 | 7.6.1 | compile-pass | EXP_07_06_01_010_PASS_PARTIAL_FIELDS.ets | 部分字段，其余默认值 | compile-pass |
| 214 | 7.6.1 | compile-fail | EXP_07_06_01_011_FAIL_PRIVATE_FIELD.ets | private 字段不可用 | compile-fail |
| 215 | 7.6.1 | compile-fail | EXP_07_06_01_012_FAIL_PROTECTED_FIELD.ets | protected 字段不可用 | compile-fail |
| 216 | 7.6.1 | compile-fail | EXP_07_06_01_013_FAIL_TYPE_MISMATCH.ets | 字段类型不兼容 | compile-fail |
| 217 | 7.6.1 | compile-fail | EXP_07_06_01_014_FAIL_MISSING_REQUIRED_FIELD.ets | 必需字段未提供 | compile-fail |
| 218 | 7.6.1 | compile-fail | EXP_07_06_01_015_FAIL_NO_PARAMLESS_CTOR.ets | 无无参构造器 | compile-fail |
| 219 | 7.6.1 | compile-fail | EXP_07_06_01_016_FAIL_PRIVATE_CTOR.ets | private 构造器不可访问 | compile-fail |
| 220 | 7.6.1 | compile-fail | EXP_07_06_01_017_FAIL_READONLY_FIELD.ets | 显式设置 readonly 字段 | compile-fail |
| 221 | 7.6.1 | compile-fail | EXP_07_06_01_018_FAIL_GETTER_ONLY_ACCESSOR.ets | getter-only 作为字段 | compile-fail |
| 222 | 7.6.1 | runtime | EXP_07_06_01_019_RUNTIME_BASIC_VALUES.ets | name/age 字段值验证 | runtime ✅ |
| 223 | 7.6.1 | runtime | EXP_07_06_01_020_RUNTIME_SETTER_ACCESSOR.ets | setter 触发验证 | runtime ✅ |
| 224 | 7.6.1 | runtime | EXP_07_06_01_021_RUNTIME_DEFAULT_VALUES.ets | 跳过字段默认值验证 | runtime ✅ |
| 225 | 7.6.2 | compile-pass | EXP_07_06_02_001_PASS_BASIC_INTERFACE.ets | 基本接口类型（多种属性形式） | compile-pass |
| 226 | 7.6.2 | compile-pass | EXP_07_06_02_002_PASS_OPTIONAL_SKIP.ets | 可选属性跳过 | compile-pass |
| 227 | 7.6.2 | compile-pass | EXP_07_06_02_003_PASS_METHOD_NO_DEFAULT.ets | 实现无默认方法 | compile-pass |
| 228 | 7.6.2 | compile-pass | EXP_07_06_02_004_PASS_DEFAULT_METHOD_SKIP.ets | 跳过有默认方法 | compile-pass |
| 229 | 7.6.2 | compile-pass | EXP_07_06_02_005_PASS_DEFAULT_METHOD_OVERRIDE.ets | 覆盖有默认方法 | compile-pass |
| 230 | 7.6.2 | compile-pass | EXP_07_06_02_006_PASS_OVERRIDE_COMPATIBLE.ets | Override-compatible 宽签名 | compile-pass |
| 231 | 7.6.2 | compile-pass | EXP_07_06_02_007_PASS_MULTIPLE_OVERLOADS.ets | 多个重载实现 | compile-pass |
| 232 | 7.6.2 | compile-pass | EXP_07_06_02_008_PASS_THIS_REFERENCE.ets | this 引用匿名类 | compile-pass |
| 233 | 7.6.2 | compile-pass | EXP_07_06_02_009_PASS_SETTER_ONLY_PROP.ets | Setter-only 属性创建 | compile-pass |
| 234 | 7.6.2 | compile-pass | EXP_07_06_02_010_PASS_GETTER_ONLY_PROP.ets | Getter-only 属性创建 | compile-pass |
| 235 | 7.6.2 | compile-pass | EXP_07_06_02_011_PASS_READONLY_PROP.ets | Readonly 属性创建 | compile-pass |
| 236 | 7.6.2 | compile-pass | EXP_07_06_02_012_PASS_REGULAR_PROP.ets | 普通属性创建 | compile-pass |
| 237 | 7.6.2 | compile-pass | EXP_07_06_02_013_PASS_GETTER_SETTER_MATCH.ets | Getter+setter 类型一致 | compile-pass |
| 238 | 7.6.2 | compile-fail | EXP_07_06_02_014_FAIL_NON_OPTIONAL_SKIP.ets | 非可选属性跳过 | compile-fail |
| 239 | 7.6.2 | compile-fail | EXP_07_06_02_015_FAIL_NEW_METHOD.ets | 引入新方法 | compile-fail |
| 240 | 7.6.2 | compile-fail | EXP_07_06_02_016_FAIL_GETTER_SETTER_MISMATCH.ets | Getter/setter 类型不匹配 | compile-fail |
| 241 | 7.6.2 | compile-fail | EXP_07_06_02_017_FAIL_MISSING_METHOD.ets | 缺少必需方法 | compile-fail |
| 242 | 7.6.2 | compile-fail | EXP_07_06_02_018_FAIL_SETTER_ONLY_READ.ets | 读取 setter-only 属性 | compile-fail |
| 243 | 7.6.2 | compile-fail | EXP_07_06_02_019_FAIL_GETTER_ONLY_WRITE.ets | 写入 getter-only 属性 | compile-fail |
| 244 | 7.6.2 | compile-fail | EXP_07_06_02_020_FAIL_READONLY_WRITE.ets | 写入 readonly 属性 | compile-fail |
| 245 | 7.6.2 | compile-fail | EXP_07_06_02_021_FAIL_TYPE_MISMATCH.ets | 属性值类型不匹配 | compile-fail |
| 246 | 7.6.2 | runtime | EXP_07_06_02_022_RUNTIME_BASIC_VALUES.ets | name/age 字段值验证 | runtime ✅ |
| 247 | 7.6.2 | runtime | EXP_07_06_02_023_RUNTIME_THIS_REFERENCE.ets | this 引用验证 | runtime ✅ |
| 248 | 7.6.2 | runtime | EXP_07_06_02_024_RUNTIME_METHOD_CALL.ets | 方法调用验证 | runtime ✅ |
| 249 | 7.6.2 | runtime | EXP_07_06_02_025_RUNTIME_OPTIONAL_UNDEFINED.ets | 可选属性 undefined 验证 | runtime ✅ |
| 250 | 7.6.2 | runtime | EXP_07_06_02_026_RUNTIME_DEFAULT_METHOD.ets | 默认接口方法验证 | runtime ✅ |
| 251 | 7.6.3 | compile-pass | EXP_07_06_03_001_PASS_BASIC_STRING_NUMBER.ets | Record<string, number> 基本键值对 | compile-pass |
| 252 | 7.6.3 | compile-pass | EXP_07_06_03_002_PASS_OBJECT_VALUES.ets | Record<string, PersonInfo> 对象值 | compile-pass |
| 253 | 7.6.3 | compile-pass | EXP_07_06_03_003_PASS_NUMERIC_KEYS.ets | Record<number, string> 数值键 | compile-pass |
| 254 | 7.6.3 | compile-pass | EXP_07_06_03_004_PASS_BOOLEAN_VALUES.ets | Record<string, boolean> 布尔值 | compile-pass |
| 255 | 7.6.3 | compile-pass | EXP_07_06_03_005_PASS_LITERAL_UNION_ALL.ets | 字面量 union Key 全部提供 | compile-pass |
| 256 | 7.6.3 | compile-pass | EXP_07_06_03_006_PASS_SINGLE_ENTRY.ets | 单条目 | compile-pass |
| 257 | 7.6.3 | compile-pass | EXP_07_06_03_007_PASS_TRAILING_COMMA.ets | 尾部逗号 | compile-pass |
| 258 | 7.6.3 | compile-pass | EXP_07_06_03_008_PASS_INT_VALUES.ets | Record<string, int> 整数值 | compile-pass |
| 259 | 7.6.3 | compile-pass | EXP_07_06_03_009_PASS_ARRAY_VALUES.ets | Record<string, string[]> 数组值 | compile-pass |
| 260 | 7.6.3 | compile-pass | EXP_07_06_03_010_PASS_THREE_LITERAL_KEYS.ets | 三变体 union Key 全部提供 | compile-pass |
| 261 | 7.6.3 | compile-fail | EXP_07_06_03_011_FAIL_MISSING_LITERAL_KEY.ets | 字面量 union Key 缺少变体 | compile-fail |
| 262 | 7.6.3 | compile-fail | EXP_07_06_03_012_FAIL_KEY_TYPE_MISMATCH.ets | Key 类型不兼容 | compile-fail |
| 263 | 7.6.3 | compile-fail | EXP_07_06_03_013_FAIL_VALUE_TYPE_MISMATCH.ets | Value 类型不兼容 | compile-fail |
| 264 | 7.6.3 | compile-fail | EXP_07_06_03_014_FAIL_INVALID_KEY_TYPE.ets | Key 类型不合法(boolean) | compile-fail |
| 265 | 7.6.3 | runtime | EXP_07_06_03_015_RUNTIME_STRING_INDEXING.ets | 字符串索引取值 | runtime ✅ |
| 266 | 7.6.3 | runtime | EXP_07_06_03_016_RUNTIME_OBJECT_VALUES.ets | 对象值嵌套访问 | runtime ✅ |
| 267 | 7.6.3 | runtime | EXP_07_06_03_017_RUNTIME_NUMERIC_INDEXING.ets | 数值索引访问 | runtime ✅ |
| 268 | 7.6.4 | compile-pass | EXP_07_06_04_001_PASS_CLASS_LITERAL.ets | 命名类对象字面量 | compile-pass |
| 269 | 7.6.4 | compile-pass | EXP_07_06_04_002_PASS_INTERFACE_LITERAL.ets | 接口类型对象字面量 | compile-pass |
| 270 | 7.6.4 | compile-pass | EXP_07_06_04_003_PASS_MULTIPLE_FIELDS.ets | 多字段对象字面量 | compile-pass |
| 271 | 7.6.4 | compile-pass | EXP_07_06_04_004_PASS_FIELD_EXPRESSIONS.ets | 字段含表达式 | compile-pass |
| 272 | 7.6.4 | compile-pass | EXP_07_06_04_005_PASS_CTOR_EXECUTION.ets | 构造器执行+字段覆盖 | compile-pass |
| 273 | 7.6.4 | runtime | EXP_07_06_04_006_RUNTIME_NORMAL_COMPLETION.ets | 正常完成验证 | runtime ✅ |
| 274 | 7.6.4 | runtime | EXP_07_06_04_007_RUNTIME_LEFT_TO_RIGHT.ets | 从左到右求值顺序 | runtime ✅ |
| 275 | 7.6.4 | runtime | EXP_07_06_04_008_RUNTIME_CTOR_ABRUPT.ets | 构造器异常完成 | runtime ✅ |
| 276 | 7.6.4 | runtime | EXP_07_06_04_009_RUNTIME_FIELD_ABRUPT.ets | 字段表达式异常完成 | runtime ✅ |
| 277 | 7.6.4 | runtime | EXP_07_06_04_010_RUNTIME_CTOR_THEN_FIELDS.ets | 构造器先于字段赋值 | runtime ✅ |
| 278 | 7.6.4 | runtime | EXP_07_06_04_011_RUNTIME_INTERFACE_CTOR.ets | 接口匿名类构造器验证 | runtime ✅ |
| 279 | 7.7 | compile-pass | EXP_07_07_001_PASS_BASIC_ARRAY_SPREAD.ets | 基本数组扩展 | compile-pass |
| 280 | 7.7 | compile-pass | EXP_07_07_002_PASS_FIXED_ARRAY_SPREAD.ets | FixedArray 扩展 | compile-pass |
| 281 | 7.7 | compile-pass | EXP_07_07_003_PASS_MULTIPLE_SPREADS.ets | 多扩展合并 | compile-pass |
| 282 | 7.7 | compile-pass | EXP_07_07_004_PASS_SPREAD_MIXED.ets | 扩展与字面量混合 | compile-pass |
| 283 | 7.7 | compile-pass | EXP_07_07_005_PASS_SPREAD_FUNC_CALL.ets | 函数调用扩展 | compile-pass |
| 284 | 7.7 | compile-pass | EXP_07_07_006_PASS_MULTIPLE_SPREADS_CALL.ets | 多扩展函数调用 | compile-pass |
| 285 | 7.7 | compile-pass | EXP_07_07_007_PASS_SPREAD_FUNC_RETURN.ets | 函数返回值扩展 | compile-pass |
| 286 | 7.7 | compile-pass | EXP_07_07_008_PASS_NESTED_SPREAD.ets | 嵌套扩展 | compile-pass |
| 287 | 7.7 | compile-pass | EXP_07_07_009_PASS_READONLY_SOURCE_SPREAD.ets | 只读源数组扩展 | compile-pass |
| 288 | 7.7 | compile-pass | EXP_07_07_010_PASS_TUPLE_SPREAD_CALL.ets | 元组扩展函数调用 | compile-pass |
| 289 | 7.7 | compile-pass | EXP_07_07_011_PASS_STRING_SPREAD.ets | 字符串类型扩展 | compile-pass |
| 290 | 7.7 | compile-pass | EXP_07_07_012_PASS_TUPLE_SPREAD_LITERAL.ets | 元组扩展字面量 | compile-pass |
| 291 | 7.7 | compile-fail | EXP_07_07_013_FAIL_NON_ITERABLE_CLASS.ets | 非 iterable 类扩展 | compile-fail |
| 292 | 7.7 | compile-fail | EXP_07_07_014_FAIL_NON_ITERABLE_NUMBER.ets | 数值类型扩展 | compile-fail |
| 293 | 7.7 | compile-fail | EXP_07_07_015_FAIL_SPREAD_NON_REST_ARRAY.ets | 数组扩展到非 rest 参数 | compile-fail |
| 294 | 7.7 | compile-fail | EXP_07_07_016_FAIL_SPREAD_NON_REST_TUPLE.ets | 元组扩展到非 rest 参数 | compile-fail |
| 295 | 7.7 | runtime | EXP_07_07_017_RUNTIME_BASIC_SPREAD.ets | 基本扩展值验证 | runtime ✅ |
| 296 | 7.7 | runtime | EXP_07_07_018_RUNTIME_COPY_SEMANTICS.ets | 复制语义验证 | runtime ✅ |
| 297 | 7.7 | runtime | EXP_07_07_019_RUNTIME_MULTIPLE_SPREADS.ets | 多扩展合并 | runtime ✅ |
| 298 | 7.7 | runtime | EXP_07_07_020_RUNTIME_SPREAD_MIXED.ets | 扩展混合字面量 | runtime ✅ |
| 299 | 7.7 | runtime | EXP_07_07_021_RUNTIME_FUNC_CALL_SPREAD.ets | 函数调用扩展运行时 | runtime ✅ |
| 300 | 7.7 | runtime | EXP_07_07_022_RUNTIME_READONLY_SOURCE.ets | 只读源扩展运行时 | runtime ✅ |
| 301 | 7.8 | compile-pass | EXP_07_08_001_PASS_BASIC_ARITHMETIC.ets | 基本算术括号分组 | compile-pass |
| 302 | 7.8 | compile-pass | EXP_07_08_002_PASS_NESTED_PARENS.ets | 多层嵌套括号 | compile-pass |
| 303 | 7.8 | compile-pass | EXP_07_08_003_PASS_FUNC_CALL_PARENS.ets | 函数调用括号表达式 | compile-pass |
| 304 | 7.8 | compile-pass | EXP_07_08_004_PASS_CONDITION_PARENS.ets | 条件语句括号表达式 | compile-pass |
| 305 | 7.8 | compile-pass | EXP_07_08_005_PASS_ARRAY_WITH_PARENS.ets | 数组元素括号表达式 | compile-pass |
| 306 | 7.8 | compile-pass | EXP_07_08_006_PASS_STRING_AND_BOOL_PARENS.ets | 字符串/布尔括号表达式 | compile-pass |
| 307 | 7.8 | compile-fail | EXP_07_08_007_FAIL_EMPTY_PARENS.ets | 空括号不是有效表达式 | compile-fail |
| 308 | 7.8 | runtime | EXP_07_08_008_RUNTIME_VALUE_PRESERVATION.ets | 括号值不变性验证 | runtime ✅ |
| 309 | 7.8 | runtime | EXP_07_08_009_RUNTIME_GROUPING_ORDER.ets | 分组改变求值顺序 | runtime ✅ |
| 310 | 7.8 | runtime | EXP_07_08_010_RUNTIME_MIXED_TYPES_PARENS.ets | 多类型括号等价性 | runtime ✅ |
| 311 | 7.9 | compile-pass | EXP_07_09_001_PASS_INSTANCE_METHOD_THIS.ets | 实例方法 this | compile-pass |
| 312 | 7.9 | compile-pass | EXP_07_09_002_PASS_CTOR_THIS.ets | 构造器 this | compile-pass |
| 313 | 7.9 | compile-pass | EXP_07_09_003_PASS_FIELD_LAMBDA_THIS.ets | 字段 lambda this | compile-pass |
| 314 | 7.9 | compile-pass | EXP_07_09_004_PASS_OBJECT_LITERAL_METHOD_THIS.ets | 对象字面量方法 this | compile-pass |
| 315 | 7.9 | compile-pass | EXP_07_09_005_PASS_OBJECT_LITERAL_LAMBDA_THIS.ets | 对象字面量 lambda this | compile-pass |
| 316 | 7.9 | compile-pass | EXP_07_09_006_PASS_INTERFACE_DEFAULT_THIS.ets | 接口默认方法 this | compile-pass |
| 317 | 7.9 | compile-fail | EXP_07_09_007_FAIL_THIS_TOP_LEVEL.ets | 顶层作用域 this | compile-fail |
| 318 | 7.9 | compile-fail | EXP_07_09_008_FAIL_THIS_IN_STATIC.ets | 静态方法 this | compile-fail |
| 319 | 7.9 | runtime | EXP_07_09_009_RUNTIME_THIS_IN_METHOD.ets | 实例方法 this 运行时 | runtime ✅ |
| 320 | 7.9 | runtime | EXP_07_09_010_RUNTIME_THIS_IN_CTOR.ets | 构造器 this 运行时 | runtime ✅ |
| 321 | 7.9 | runtime | EXP_07_09_011_RUNTIME_THIS_IN_OBJECT_LITERAL.ets | 对象字面量 this 运行时 | runtime ✅ |
| 322 | 7.10.1 | compile-pass | EXP_07_10_01_001_PASS_STATIC_FIELD_ACCESS.ets | 基本静态字段访问 | compile-pass |
| 323 | 7.10.1 | compile-pass | EXP_07_10_01_002_PASS_STATIC_FIELD_ASSIGNMENT.ets | 非 readonly 静态字段赋值 | compile-pass |
| 324 | 7.10.1 | compile-pass | EXP_07_10_01_003_PASS_READONLY_STATIC_ACCESS.ets | readonly 静态字段读取 | compile-pass |
| 325 | 7.10.1 | compile-pass | EXP_07_10_01_004_PASS_STATIC_FIELD_EXPR.ets | 静态字段在表达式 | compile-pass |
| 326 | 7.10.1 | compile-pass | EXP_07_10_01_005_PASS_MULTI_CLASS_STATIC.ets | 多类静态字段 | compile-pass |
| 327 | 7.10.1 | compile-pass | EXP_07_10_01_006_PASS_STATIC_READONLY_INIT_BLOCK.ets | readonly 静态字段初始化 | compile-pass |
| 328 | 7.10.1 | compile-fail | EXP_07_10_01_007_FAIL_STATIC_FIELD_INSTANCE_REF.ets | 实例引用访问静态字段 | compile-fail |
| 329 | 7.10.1 | compile-fail | EXP_07_10_01_008_FAIL_READONLY_STATIC_ASSIGN.ets | readonly 静态字段赋值 | compile-fail |
| 330 | 7.10.1 | runtime | EXP_07_10_01_009_RUNTIME_STATIC_FIELD_VALUE.ets | 静态字段值运行验证 | runtime ✅ |
| 331 | 7.10.1 | runtime | EXP_07_10_01_010_RUNTIME_STATIC_FIELD_MUTATION.ets | 静态字段修改运行验证 | runtime ✅ |
| 332 | 7.10.1 | runtime | EXP_07_10_01_011_RUNTIME_READONLY_STATIC_VALUE.ets | readonly 静态字段值验证 | runtime ✅ |
| 333 | 7.10.2 | compile-pass | EXP_07_10_02_001_PASS_BASIC_FIELD_ACCESS.ets | 基本实例字段访问 | compile-pass |
| 334 | 7.10.2 | compile-pass | EXP_07_10_02_002_PASS_FIELD_ASSIGNMENT.ets | 非 readonly 字段赋值 | compile-pass |
| 335 | 7.10.2 | compile-pass | EXP_07_10_02_003_PASS_READONLY_FIELD_ACCESS.ets | readonly 字段读取 | compile-pass |
| 336 | 7.10.2 | compile-pass | EXP_07_10_02_004_PASS_READONLY_CTOR_ASSIGN.ets | 构造器内 readonly 赋值 | compile-pass |
| 337 | 7.10.2 | compile-pass | EXP_07_10_02_005_PASS_METHOD_RETURN_FIELD.ets | 方法返回值字段访问 | compile-pass |
| 338 | 7.10.2 | compile-pass | EXP_07_10_02_006_PASS_ACCESSOR_GETTER.ets | getter 调用 | compile-pass |
| 339 | 7.10.2 | compile-pass | EXP_07_10_02_007_PASS_ACCESSOR_SETTER.ets | setter 调用 | compile-pass |
| 340 | 7.10.2 | compile-fail | EXP_07_10_02_008_FAIL_READONLY_FIELD_OUTSIDE_CTOR.ets | readonly 字段外部赋值 | compile-fail |
| 341 | 7.10.2 | compile-fail | EXP_07_10_02_009_FAIL_NULLISH_REF_FIELD_ACCESS.ets | nullish 引用字段访问 | compile-fail |
| 342 | 7.10.2 | runtime | EXP_07_10_02_010_RUNTIME_FIELD_VALUE.ets | 实例字段值运行验证 | runtime ✅ |
| 343 | 7.10.2 | runtime | EXP_07_10_02_011_RUNTIME_FIELD_MUTATION.ets | 实例字段修改运行验证 | runtime ✅ |
| 344 | 7.10.2 | runtime | EXP_07_10_02_012_RUNTIME_STATIC_DISPATCH.ets | 字段覆写语义运行验证 | runtime ✅ |
| 345 | 7.10.3 | compile-pass | EXP_07_10_03_001_PASS_SUPER_GETTER.ets | super getter 调用 | compile-pass |
| 346 | 7.10.3 | compile-pass | EXP_07_10_03_002_PASS_SUPER_SETTER.ets | super setter 调用 | compile-pass |
| 347 | 7.10.3 | compile-pass | EXP_07_10_03_003_PASS_SUPER_GETTER_SETTER.ets | super getter+setter | compile-pass |
| 348 | 7.10.3 | compile-fail | EXP_07_10_03_004_FAIL_SUPER_FIELD_READ.ets | super 读取字段 | compile-fail |
| 349 | 7.10.3 | compile-fail | EXP_07_10_03_005_FAIL_SUPER_FIELD_WRITE.ets | super 赋值字段 | compile-fail |
| 350 | 7.10.3 | runtime | EXP_07_10_03_006_RUNTIME_SUPER_GETTER_VALUE.ets | super getter 运行时 | runtime ✅ |
| 351 | 7.10.3 | runtime | EXP_07_10_03_007_RUNTIME_SUPER_SETTER_VALUE.ets | super setter 运行时 | runtime ✅ |
| 352 | 7.10.3 | runtime | EXP_07_10_03_008_RUNTIME_SUPER_GETSET_CHAIN.ets | super 完整链运行时 | runtime ✅ |
| 353 | 7.11.1 | compile-pass | EXP_07_11_01_001_PASS_TYPEREF_STATIC_METHOD.ets | typeReference 静态方法 | compile-pass |
| 354 | 7.11.1 | compile-pass | EXP_07_11_01_002_PASS_SUPER_METHOD_CALL.ets | super 方法调用 | compile-pass |
| 355 | 7.11.1 | compile-pass | EXP_07_11_01_003_PASS_CLASS_EXPR_METHOD.ets | 类实例方法 | compile-pass |
| 356 | 7.11.1 | compile-pass | EXP_07_11_01_004_PASS_INTERFACE_EXPR_METHOD.ets | 接口引用方法 | compile-pass |
| 357 | 7.11.1 | compile-pass | EXP_07_11_01_005_PASS_UNION_EXPR_METHOD.ets | union 类型方法 | compile-pass |
| 358 | 7.11.1 | compile-pass | EXP_07_11_01_006_PASS_TYPE_PARAM_METHOD.ets | 泛型类型参数方法 | compile-pass |
| 359 | 7.11.1 | compile-fail | EXP_07_11_01_007_FAIL_INTERFACE_TYPEREF.ets | 接口 typeReference | compile-fail |
| 360 | 7.11.1 | compile-fail | EXP_07_11_01_008_FAIL_PRIMITIVE_EXPR_METHOD.ets | null 表达式调用方法 | compile-fail |
| 361 | 7.11.1 | runtime | EXP_07_11_01_009_RUNTIME_STATIC_METHOD.ets | 静态方法运行时 | runtime ✅ |
| 362 | 7.11.1 | runtime | EXP_07_11_01_010_RUNTIME_SUPER_METHOD.ets | super 方法运行时 | runtime ✅ |
| 363 | 7.11.1 | runtime | EXP_07_11_01_011_RUNTIME_INTERFACE_METHOD.ets | 接口方法多态运行时 | runtime ✅ |
| 364 | 7.11.1 | runtime | EXP_07_11_01_012_RUNTIME_TYPE_PARAM_METHOD.ets | 泛型方法运行时 | runtime ✅ |
| 365 | 7.11.2 | compile-pass | EXP_07_11_02_001_PASS_TYPEREF_STATIC_METHOD.ets | typeReference 静态方法 | compile-pass |
| 366 | 7.11.2 | compile-pass | EXP_07_11_02_002_PASS_SUPER_METHOD_CALL.ets | super 方法调用 | compile-pass |
| 367 | 7.11.2 | compile-pass | EXP_07_11_02_003_PASS_CLASS_EXPR_METHOD.ets | 类表达式实例方法 | compile-pass |
| 368 | 7.11.2 | compile-pass | EXP_07_11_02_004_PASS_UNION_COMMON_METHOD.ets | union 公共方法 | compile-pass |
| 369 | 7.11.2 | compile-pass | EXP_07_11_02_005_PASS_OVERLOAD_RESOLUTION.ets | 重载解析 | compile-pass |
| 370 | 7.11.2 | compile-pass | EXP_07_11_02_006_PASS_INTERFACE_EXPR_METHOD.ets | 接口表达式方法 | compile-pass |
| 371 | 7.11.2 | compile-fail | EXP_07_11_02_007_FAIL_TYPEREF_INSTANCE_METHOD.ets | typeReference 不存在方法 | compile-fail |
| 372 | 7.11.2 | compile-fail | EXP_07_11_02_008_FAIL_UNION_NO_COMMON_METHOD.ets | union 无公共方法 | compile-fail |
| 373 | 7.11.2 | runtime | EXP_07_11_02_009_RUNTIME_DYNAMIC_DISPATCH.ets | 动态分发运行时 | runtime ✅ |
| 374 | 7.11.2 | runtime | EXP_07_11_02_010_RUNTIME_OVERLOAD_RESOLUTION.ets | 重载解析运行时 | runtime ✅ |
| 375 | 7.11.2 | runtime | EXP_07_11_02_011_RUNTIME_SUPER_METHOD.ets | super 方法运行时 | runtime ✅ |
| 376 | 7.11.2 | runtime | EXP_07_11_02_012_RUNTIME_UNION_COMMON_METHOD.ets | 接口公共方法运行时 | runtime ✅ |
| 377 | 7.11.3 | compile-pass | EXP_07_11_03_001_PASS_TYPEREF_STATIC_METHOD.ets | typeReference → static 方法 | compile-pass |
| 378 | 7.11.3 | compile-pass | EXP_07_11_03_002_PASS_EXPR_INSTANCE_METHOD.ets | expression → instance 方法 | compile-pass |
| 379 | 7.11.3 | compile-pass | EXP_07_11_03_003_PASS_SUPER_INSTANCE_METHOD.ets | super → 非 abstract 非 static 方法 | compile-pass |
| 380 | 7.11.3 | compile-pass | EXP_07_11_03_004_PASS_TYPEREF_STATIC_COMPATIBLE_ARGS.ets | 静态方法参数兼容性 | compile-pass |
| 381 | 7.11.3 | compile-pass | EXP_07_11_03_005_PASS_EXPR_INSTANCE_COMPATIBLE_ARGS.ets | 实例方法参数兼容性 | compile-pass |
| 382 | 7.11.3 | compile-fail | EXP_07_11_03_006_FAIL_TYPEREF_INSTANCE_METHOD.ets | typeReference → 实例方法 | compile-fail |
| 383 | 7.11.3 | compile-fail | EXP_07_11_03_007_FAIL_EXPR_STATIC_METHOD.ets | expression → static 方法 | compile-fail |
| 384 | 7.11.3 | compile-fail | EXP_07_11_03_008_FAIL_SUPER_ABSTRACT_METHOD.ets | super → abstract 方法 | compile-fail |
| 385 | 7.11.3 | compile-fail | EXP_07_11_03_009_FAIL_SUPER_STATIC_METHOD.ets | super → static 方法 | compile-fail |
| 386 | 7.11.3 | runtime | EXP_07_11_03_010_RUNTIME_TYPEREF_STATIC.ets | typeReference 静态方法运行时 | runtime ✅ |
| 387 | 7.11.3 | runtime | EXP_07_11_03_011_RUNTIME_EXPR_INSTANCE.ets | expression 实例方法运行时 | runtime ✅ |
| 388 | 7.11.3 | runtime | EXP_07_11_03_012_RUNTIME_SUPER_METHOD.ets | super 方法运行时 | runtime ✅ |
| 389 | 7.11.4 | compile-pass | EXP_07_11_04_001_PASS_STATIC_VOID_AS_STATEMENT.ets | static void 方法作为语句 | compile-pass |
| 390 | 7.11.4 | compile-pass | EXP_07_11_04_002_PASS_INSTANCE_VOID_AS_STATEMENT.ets | instance void 方法作为语句 | compile-pass |
| 391 | 7.11.4 | compile-pass | EXP_07_11_04_003_PASS_STATIC_RETURN_ASSIGNED.ets | static 返回 int 赋值给变量 | compile-pass |
| 392 | 7.11.4 | compile-pass | EXP_07_11_04_004_PASS_INSTANCE_RETURN_ASSIGNED.ets | instance 返回 string 赋值给变量 | compile-pass |
| 393 | 7.11.4 | compile-pass | EXP_07_11_04_005_PASS_TYPE_INFERENCE_RETURN.ets | 方法返回值类型推导 | compile-pass |
| 394 | 7.11.4 | compile-pass | EXP_07_11_04_006_PASS_RETURN_IN_EXPRESSION.ets | 方法返回值在表达式 | compile-pass |
| 395 | 7.11.4 | compile-fail | EXP_07_11_04_007_FAIL_STATIC_VOID_ASSIGNED.ets | static void 结果赋值（⚠️SPEC不一致） | compile-fail |
| 396 | 7.11.4 | compile-fail | EXP_07_11_04_008_FAIL_INSTANCE_VOID_ASSIGNED.ets | instance void 结果赋值（⚠️SPEC不一致） | compile-fail |
| 397 | 7.11.4 | runtime | EXP_07_11_04_009_RUNTIME_STATIC_RETURN_VALUE.ets | static 返回 int 运行时 | runtime ✅ |
| 398 | 7.11.4 | runtime | EXP_07_11_04_010_RUNTIME_INSTANCE_RETURN_VALUE.ets | instance 返回 string 运行时 | runtime ✅ |
| 399 | 7.11.4 | runtime | EXP_07_11_04_011_RUNTIME_VOID_METHOD_SIDE_EFFECT.ets | void 方法副作用运行时 | runtime ✅ |
| 400 | 7.11.4 | runtime | EXP_07_11_04_012_RUNTIME_METHOD_CHAIN_RETURN.ets | 链式调用返回值运行时 | runtime ✅ |
| 401 | 7.12.1 | compile-pass | EXP_07_12_01_001_PASS_EMPTY_ARGUMENTS.ets | 空参调用 | compile-pass |
| 402 | 7.12.1 | compile-pass | EXP_07_12_01_002_PASS_SINGLE_ARGUMENT.ets | 单参数调用 | compile-pass |
| 403 | 7.12.1 | compile-pass | EXP_07_12_01_003_PASS_MULTIPLE_ARGUMENTS.ets | 多参数调用 | compile-pass |
| 404 | 7.12.1 | compile-pass | EXP_07_12_01_004_PASS_TRAILING_COMMA.ets | 尾部逗号 | compile-pass |
| 405 | 7.12.1 | compile-pass | EXP_07_12_01_005_PASS_SPREAD_REST_PARAM.ets | spread rest 参数 | compile-pass |
| 406 | 7.12.1 | compile-pass | EXP_07_12_01_006_PASS_ARGUMENT_EXPRESSION.ets | 表达式参数 | compile-pass |
| 407 | 7.12.1 | compile-pass | EXP_07_12_01_007_PASS_TRAILING_LAMBDA.ets | trailing lambda | compile-pass |
| 408 | 7.12.1 | compile-fail | EXP_07_12_01_008_FAIL_SPREAD_NON_REST_PARAM.ets | spread 非 rest 参数 | compile-fail |
| 409 | 7.12.1 | compile-fail | EXP_07_12_01_009_FAIL_TRAILING_LAMBDA_NON_FUNC.ets | trailing lambda 非函数类型 | compile-fail |
| 410 | 7.12.1 | compile-fail | EXP_07_12_01_010_FAIL_SPREAD_NON_ITERABLE.ets | spread 非 iterable | compile-fail |
| 411 | 7.12.1 | runtime | EXP_07_12_01_011_RUNTIME_MULTIPLE_ARGS.ets | 多参数运行时 | runtime ✅ |
| 412 | 7.12.1 | runtime | EXP_07_12_01_012_RUNTIME_TRAILING_COMMA.ets | 尾部逗号运行时 | runtime ✅ |
| 413 | 7.12.1 | runtime | EXP_07_12_01_013_RUNTIME_SPREAD_REST_PARAM.ets | spread rest 运行时 | runtime ✅ |
| 414 | 7.12.1 | runtime | EXP_07_12_01_014_RUNTIME_ARGUMENT_EXPRESSIONS.ets | 表达式参数运行时 | runtime ✅ |
| 415 | 7.13.1 | compile-pass | EXP_07_13_01_001_PASS_INT_INDEX.ets | int 索引基本访问 | compile-pass |
| 416 | 7.13.1 | compile-pass | EXP_07_13_01_002_PASS_SHORT_BYTE_INDEX.ets | byte/short 索引加宽 | compile-pass |
| 417 | 7.13.1 | compile-pass | EXP_07_13_01_003_PASS_ELEMENT_ASSIGNMENT.ets | 元素赋值 | compile-pass |
| 418 | 7.13.1 | compile-pass | EXP_07_13_01_004_PASS_REF_TYPE_FIELD_MODIFY.ets | 引用类型字段修改 | compile-pass |
| 419 | 7.13.1 | compile-pass | EXP_07_13_01_005_PASS_CHAINING_OPERATOR.ets | 链式操作符+数组 | compile-pass |
| 420 | 7.13.1 | compile-pass | EXP_07_13_01_006_PASS_LONG_TO_INT_CONVERSION.ets | long→.toInt() 转换 | compile-pass |
| 421 | 7.13.1 | compile-pass | EXP_07_13_01_007_PASS_FLOAT_DOUBLE_TO_INT.ets | float/double→.toInt() | compile-pass |
| 422 | 7.13.1 | compile-fail | EXP_07_13_01_008_FAIL_STRING_INDEX.ets | 字符串索引 | compile-fail |
| 423 | 7.13.1 | compile-fail | EXP_07_13_01_009_FAIL_FLOAT_LITERAL_INDEX.ets | 浮点字面量索引 3.5 | compile-fail |
| 424 | 7.13.1 | compile-fail | EXP_07_13_01_010_FAIL_NUMBER_TYPE_INDEX.ets | number 类型索引 | compile-fail |
| 425 | 7.13.1 | compile-fail | EXP_07_13_01_011_FAIL_LONG_INDEX.ets | long 无转换索引 | compile-fail |
| 426 | 7.13.1 | compile-fail | EXP_07_13_01_012_FAIL_FLOAT_INDEX.ets | float 无转换索引 | compile-fail |
| 427 | 7.13.1 | compile-fail | EXP_07_13_01_013_FAIL_DOUBLE_INDEX.ets | double 无转换索引 | compile-fail |
| 428 | 7.13.1 | runtime | EXP_07_13_01_014_RUNTIME_ELEMENT_ACCESS.ets | 元素访问+赋值运行时 | runtime ✅ |
| 429 | 7.13.1 | runtime | EXP_07_13_01_015_RUNTIME_OUT_OF_BOUNDS.ets | 越界 RangeError 运行时 | runtime ✅ |
| 430 | 7.13.1 | runtime | EXP_07_13_01_016_RUNTIME_REF_FIELD_MODIFY.ets | 引用字段修改运行时 | runtime ✅ |
| 431 | 7.13.1 | runtime | EXP_07_13_01_017_RUNTIME_CHAINING_ARRAY.ets | 链式操作符运行时 | runtime ✅ |
| 432 | 7.13.2 | compile-pass | EXP_07_13_02_001_PASS_INT_LITERAL_INDEX.ets | int 字面量索引字符串 | compile-pass |
| 433 | 7.13.2 | compile-pass | EXP_07_13_02_002_PASS_INT_VARIABLE_INDEX.ets | int 变量索引字符串 | compile-pass |
| 434 | 7.13.2 | compile-pass | EXP_07_13_02_003_PASS_BYTE_INDEX.ets | byte 索引（加宽到 int） | compile-pass |
| 435 | 7.13.2 | compile-pass | EXP_07_13_02_004_PASS_SHORT_INDEX.ets | short 索引（加宽到 int） | compile-pass |
| 436 | 7.13.2 | compile-pass | EXP_07_13_02_005_PASS_INDEX_FIRST_LAST.ets | 首尾索引 | compile-pass |
| 437 | 7.13.2 | compile-pass | EXP_07_13_02_006_PASS_LONG_TO_INT_INDEX.ets | long→.toInt() 转换索引 | compile-pass |
| 438 | 7.13.2 | compile-pass | EXP_07_13_02_007_PASS_CHAINING_SELF_INDEX.ets | 链式调用索引 | compile-pass |
| 439 | 7.13.2 | compile-fail | EXP_07_13_02_008_FAIL_IMMUTABLE_ASSIGN.ets | 字符串不可变性修改 | compile-fail |
| 440 | 7.13.2 | compile-fail | EXP_07_13_02_009_FAIL_STRING_INDEX.ets | 字符串索引 | compile-fail |
| 441 | 7.13.2 | compile-fail | EXP_07_13_02_010_FAIL_FLOAT_LITERAL_INDEX.ets | 浮点字面量 3.5 索引 | compile-fail |
| 442 | 7.13.2 | compile-fail | EXP_07_13_02_011_FAIL_LONG_INDEX.ets | long 无转换索引 | compile-fail |
| 443 | 7.13.2 | compile-fail | EXP_07_13_02_012_FAIL_FLOAT_INDEX.ets | float 无转换索引 | compile-fail |
| 444 | 7.13.2 | compile-fail | EXP_07_13_02_013_FAIL_DOUBLE_INDEX.ets | double 无转换索引 | compile-fail |
| 445 | 7.13.2 | runtime | EXP_07_13_02_014_RUNTIME_CHAR_ACCESS.ets | 字符访问运行时 | runtime ✅ |
| 446 | 7.13.2 | runtime | EXP_07_13_02_015_RUNTIME_VARIABLE_INDEX.ets | 变量索引运行时 | runtime ✅ |
| 447 | 7.13.2 | runtime | EXP_07_13_02_016_RUNTIME_OUT_OF_BOUNDS.ets | 越界 RangeError 运行时 | runtime ✅ |
| 448 | 7.13.2 | runtime | EXP_07_13_02_017_RUNTIME_NEGATIVE_INDEX.ets | 负索引 RangeError 运行时 | runtime ✅ |
| 449 | 7.13.3 | compile-pass | EXP_07_13_03_001_PASS_CASE1_LITERAL_READ.ets | Case1 字面量联合 Key 读取 | compile-pass |
| 450 | 7.13.3 | compile-pass | EXP_07_13_03_002_PASS_CASE1_LITERAL_WRITE.ets | Case1 字面量联合 Key 写入 | compile-pass |
| 451 | 7.13.3 | compile-pass | EXP_07_13_03_003_PASS_CASE1_FIELD_ACCESS.ets | Case1 字段访问符号 x.key2（⚠️SPEC不一致） | compile-pass |
| 452 | 7.13.3 | compile-pass | EXP_07_13_03_004_PASS_CASE2_DIRECT_LITERAL_INDEX.ets | Case2 直接字面量索引 | compile-pass |
| 453 | 7.13.3 | compile-pass | EXP_07_13_03_005_PASS_CASE2_NUMBER_KEY.ets | Case2 number 键索引 | compile-pass |
| 454 | 7.13.3 | compile-pass | EXP_07_13_03_006_PASS_CASE2_STRING_KEY.ets | Case2 string 键索引 | compile-pass |
| 455 | 7.13.3 | compile-pass | EXP_07_13_03_007_PASS_CASE2_UNDEFINED_CHECK.ets | Case2 undefined 检查 | compile-pass |
| 456 | 7.13.3 | compile-fail | EXP_07_13_03_008_FAIL_CASE1_INVALID_LITERAL_READ.ets | Case1 无效字面量读取 | compile-fail |
| 457 | 7.13.3 | compile-fail | EXP_07_13_03_009_FAIL_CASE1_INVALID_LITERAL_WRITE.ets | Case1 无效字面量写入 | compile-fail |
| 458 | 7.13.3 | compile-fail | EXP_07_13_03_010_FAIL_CASE1_VARIABLE_INDEX.ets | Case1 变量索引（⚠️SPEC不一致） | compile-fail |
| 459 | 7.13.3 | compile-fail | EXP_07_13_03_011_FAIL_CASE1_NUMERIC_NOT_IN_UNION.ets | Case1 数值不在联合中 | compile-fail |
| 460 | 7.13.3 | compile-fail | EXP_07_13_03_012_FAIL_CASE1_INVALID_FIELD_ACCESS.ets | Case1 无效字段访问 | compile-fail |
| 461 | 7.13.3 | runtime | EXP_07_13_03_013_RUNTIME_CASE1_VALID_KEYS.ets | Case1 有效键值运行时 | runtime ✅ |
| 462 | 7.13.3 | runtime | EXP_07_13_03_014_RUNTIME_CASE2_MISSING_UNDEFINED.ets | Case2 缺失键 undefined | runtime ✅ |
| 463 | 7.13.3 | runtime | EXP_07_13_03_015_RUNTIME_CASE2_NARROW_UNDEFINED.ets | Case2 undefined 收窄 | runtime ✅ |
| 464 | 7.13.3 | runtime | EXP_07_13_03_016_RUNTIME_CASE1_FIELD_ACCESS_VALUE.ets | Case1 方括号索引运行时 | runtime ✅ |
| 465 | 7.14 | compile-pass | EXP_07_14_001_PASS_NULLISH_FIELD_ACCESS.ets | nullish 字段访问 ?. | compile-pass |
| 466 | 7.14 | compile-pass | EXP_07_14_002_PASS_NULLISH_METHOD_CALL.ets | nullish 方法调用 ?. | compile-pass |
| 467 | 7.14 | compile-pass | EXP_07_14_003_PASS_NULLISH_INDEXING.ets | nullish 索引 ?.[i] | compile-pass |
| 468 | 7.14 | compile-pass | EXP_07_14_004_PASS_NON_NULLISH_NO_EFFECT.ets | 非 nullish 类型无效果 | compile-pass |
| 469 | 7.14 | compile-pass | EXP_07_14_005_PASS_MIX_NULLISH_NON_NULLISH.ets | nullish+非nullish混合 | compile-pass |
| 470 | 7.14 | compile-pass | EXP_07_14_006_PASS_INSTANCE_METHOD_OK.ets | 实例方法 ?. 合法 | compile-pass |
| 471 | 7.14 | compile-pass | EXP_07_14_007_PASS_NESTED_CHAINING.ets | 嵌套链式 | compile-pass |
| 472 | 7.14 | compile-pass | EXP_07_14_008_PASS_FUNC_CALL_CHAINING.ets | 函数链式调用 ?.() | compile-pass |
| 473 | 7.14 | compile-fail | EXP_07_14_009_FAIL_STATIC_METHOD.ets | 静态方法 ?. | compile-fail |
| 474 | 7.14 | compile-fail | EXP_07_14_010_FAIL_ASSIGNMENT_LHS.ets | ?. 在赋值左侧 | compile-fail |
| 475 | 7.14 | compile-fail | EXP_07_14_011_FAIL_POSTFIX_INCREMENT.ets | ?. 在后置递增 | compile-fail |
| 476 | 7.14 | compile-fail | EXP_07_14_012_FAIL_PREFIX_INCREMENT.ets | ?. 在前置递增 | compile-fail |
| 477 | 7.14 | compile-fail | EXP_07_14_013_FAIL_POSTFIX_DECREMENT.ets | ?. 在后置递减 | compile-fail |
| 478 | 7.14 | compile-fail | EXP_07_14_014_FAIL_PREFIX_DECREMENT.ets | ?. 在前置递减 | compile-fail |
| 479 | 7.14 | runtime | EXP_07_14_015_RUNTIME_NULLISH_UNDEFINED.ets | nullish 链式 undefined | runtime ✅ |
| 480 | 7.14 | runtime | EXP_07_14_016_RUNTIME_NON_NULLISH_VALUE.ets | 非 nullish 返回值 | runtime ✅ |
| 481 | 7.14 | runtime | EXP_07_14_017_RUNTIME_NESTED_CHAINING.ets | 嵌套链式运行时 | runtime ✅ |
| 482 | 7.14 | runtime | EXP_07_14_018_RUNTIME_METHOD_CHAINING.ets | 方法链式运行时 | runtime ✅ |
| 483 | 7.15 | compile-pass | EXP_07_15_001_PASS_BASIC_NEW.ets | 基本 new A() 默认构造器 | compile-pass |
| 484 | 7.15 | compile-pass | EXP_07_15_002_PASS_NEW_WITH_ARGS.ets | 带参数构造器 new A(42) | compile-pass |
| 485 | 7.15 | compile-pass | EXP_07_15_003_PASS_NEW_STORE_VARIABLE.ets | new 结果赋值给变量 | compile-pass |
| 486 | 7.15 | compile-pass | EXP_07_15_004_PASS_NEW_METHOD_CHAIN.ets | new A().method() 方法链 | compile-pass |
| 487 | 7.15 | compile-pass | EXP_07_15_005_PASS_PAREN_NEW_METHOD.ets | (new A).method() 括号包裹 | compile-pass |
| 488 | 7.15 | compile-pass | EXP_07_15_006_PASS_NEW_NO_PARENS.ets | 无括号 new A | compile-pass |
| 489 | 7.15 | compile-pass | EXP_07_15_007_PASS_GENERIC_NEW.ets | 泛型类 new MyBox<int>(42) | compile-pass |
| 490 | 7.15 | compile-fail | EXP_07_15_008_FAIL_NEW_METHOD_NO_PARENS.ets | new A.method() 缺少括号 | compile-fail |
| 491 | 7.15 | compile-fail | EXP_07_15_009_FAIL_NEW_TYPE_PARAM.ets | 类型参数 new T() | compile-fail |
| 492 | 7.15 | compile-fail | EXP_07_15_010_FAIL_FIXED_ARRAY_TYPE_PARAM.ets | FixedArray<T> 类型参数 | compile-fail |
| 493 | 7.15 | compile-fail | EXP_07_15_011_FAIL_NEW_INTERFACE.ets | 接口实例化 | compile-fail |
| 494 | 7.15 | compile-fail | EXP_07_15_012_FAIL_NEW_ABSTRACT.ets | 抽象类实例化 | compile-fail |
| 495 | 7.15 | runtime | EXP_07_15_013_RUNTIME_BASIC_NEW.ets | new A(42) 字段值验证 | runtime ✅ |
| 496 | 7.15 | runtime | EXP_07_15_014_RUNTIME_NEW_METHOD_CHAIN.ets | new A().method() 方法链运行时 | runtime ✅ |
| 497 | 7.15 | runtime | EXP_07_15_015_RUNTIME_NEW_NO_PARENS.ets | 无括号 new A 运行时 | runtime ✅ |
| 498 | 7.15 | runtime | EXP_07_15_016_RUNTIME_CTOR_THROWS.ets | 构造器异常 throw | runtime ✅ |
| 499 | 7.16 | compile-pass | EXP_07_16_001_PASS_BASIC_INSTANCEOF.ets | 基本 instanceof 类层次结构 | compile-pass |
| 500 | 7.16 | compile-pass | EXP_07_16_002_PASS_INSTANCEOF_SMART_CAST.ets | if 子句中 smart cast | compile-pass |
| 501 | 7.16 | compile-pass | EXP_07_16_003_PASS_GENERIC_TYPE_NAME.ets | 泛型类名（擦除）检查 | compile-pass |
| 502 | 7.16 | compile-pass | EXP_07_16_004_PASS_UNRELATED_TYPE.ets | 不相关类型 instanceof | compile-pass |
| 503 | 7.16 | compile-pass | EXP_07_16_005_PASS_SUPERCLASS_CHECK.ets | 子类 instanceof 父类 | compile-pass |
| 504 | 7.16 | compile-pass | EXP_07_16_006_PASS_BOOLEAN_EXPRESSION.ets | 布尔表达式 instanceof | compile-pass |
| 505 | 7.16 | compile-pass | EXP_07_16_007_PASS_ALWAYS_TRUE_WARNING.ets | 始终 true 编译警告 | compile-pass |
| 506 | 7.16 | compile-pass | EXP_07_16_008_PASS_ALWAYS_FALSE_WARNING.ets | 始终 false 编译警告 | compile-pass |
| 507 | 7.16 | compile-fail | EXP_07_16_009_FAIL_GENERIC_TYPE_ARG.ets | 泛型参数 B\<T\> 未保留 | compile-fail |
| 508 | 7.16 | compile-fail | EXP_07_16_010_FAIL_TYPE_PARAM_DIRECT.ets | 类型参数 T 直接使用 | compile-fail |
| 509 | 7.16 | runtime | EXP_07_16_011_RUNTIME_TRUE_CASE.ets | 子类 instanceof true | runtime ✅ |
| 510 | 7.16 | runtime | EXP_07_16_012_RUNTIME_FALSE_CASE.ets | 不相关类型 instanceof false | runtime ✅ |
| 511 | 7.16 | runtime | EXP_07_16_013_RUNTIME_NULL_INSTANCEOF.ets | undefined instanceof false | runtime ✅ |
| 512 | 7.16 | runtime | EXP_07_16_014_RUNTIME_INTERFACE_INSTANCEOF.ets | 接口引用 instanceof | runtime ✅ |
| 513 | 7.17.1 | compile-pass | EXP_07_17_01_001_PASS_NUMERIC_LITERAL_BYTE.ets | 数值字面量 as byte | compile-pass |
| 514 | 7.17.1 | compile-pass | EXP_07_17_01_002_PASS_NUMERIC_LITERAL_DOUBLE.ets | 数值字面量 as double | compile-pass |
| 515 | 7.17.1 | compile-pass | EXP_07_17_01_003_PASS_ARRAY_LITERAL_DOUBLE.ets | 数组字面量 as double[] | compile-pass |
| 516 | 7.17.1 | compile-pass | EXP_07_17_01_004_PASS_ARRAY_LITERAL_TUPLE.ets | 数组字面量 as 元组 | compile-pass |
| 517 | 7.17.1 | compile-pass | EXP_07_17_01_005_PASS_OBJECT_LITERAL_CLASS.ets | 对象字面量 as 类 | compile-pass |
| 518 | 7.17.1 | compile-pass | EXP_07_17_01_006_PASS_OBJECT_LITERAL_INTERFACE.ets | 对象字面量 as 接口 | compile-pass |
| 519 | 7.17.1 | compile-fail | EXP_07_17_01_007_FAIL_NUMERIC_OVERFLOW.ets | 数值溢出 as byte | compile-fail |
| 520 | 7.17.1 | compile-fail | EXP_07_17_01_008_FAIL_WRONG_TARGET_TYPE.ets | 数组 as 非数组类型 | compile-fail |
| 521 | 7.17.1 | compile-fail | EXP_07_17_01_009_FAIL_WRONG_ELEMENT_TYPE.ets | 数组元素类型不匹配 | compile-fail |
| 522 | 7.17.1 | compile-fail | EXP_07_17_01_010_FAIL_WRONG_TUPLE_ELEMENT.ets | 元组元素类型不匹配 | compile-fail |
| 523 | 7.17.1 | compile-fail | EXP_07_17_01_011_FAIL_INCOMPATIBLE_TARGET.ets | 数组 as 不兼容类型 | compile-fail |
| 524 | 7.17.1 | runtime | EXP_07_17_01_012_RUNTIME_NUMERIC_CAST.ets | 数值 as 运行时值验证 | runtime ✅ |
| 525 | 7.17.1 | runtime | EXP_07_17_01_013_RUNTIME_ARRAY_CAST.ets | 数组 as 运行时值验证 | runtime ✅ |
| 526 | 7.17.1 | runtime | EXP_07_17_01_014_RUNTIME_TUPLE_CAST.ets | 元组 as 运行时值验证 | runtime ✅ |
| 527 | 7.17.1 | runtime | EXP_07_17_01_015_RUNTIME_OBJECT_CAST.ets | 对象 as 运行时值验证 | runtime ✅ |
| 528 | 7.17.2 | compile-pass | EXP_07_17_02_001_PASS_OBJECT_AS_STRING.ets | Object 变量 as string 运行时检查 | compile-pass |
| 529 | 7.17.2 | compile-pass | EXP_07_17_02_002_PASS_SUBTYPE_AS_SUPERTYPE.ets | 子类 as 超类（always-success 警告）| compile-pass |
| 530 | 7.17.2 | compile-pass | EXP_07_17_02_003_PASS_UNRELATED_AS_WARNING.ets | 不相关子类 as（always-throws 警告）| compile-pass |
| 531 | 7.17.2 | compile-pass | EXP_07_17_02_004_PASS_INSTANCEOF_GUARD_AS.ets | instanceof 守卫后 as cast | compile-pass |
| 532 | 7.17.2 | compile-pass | EXP_07_17_02_005_PASS_VARIABLE_AS_OBJECT.ets | string 变量 as Object | compile-pass |
| 533 | 7.17.2 | compile-pass | EXP_07_17_02_006_PASS_INSTANCEOF_ALTERNATIVE_SMART_CAST.ets | instanceof 替代 as 的 smart cast | compile-pass |
| 534 | 7.17.2 | runtime | EXP_07_17_02_011_RUNTIME_SUBTYPE_CAST_OK.ets | 子类 as 超类运行时成功 | runtime ✅ |
| 535 | 7.17.2 | runtime | EXP_07_17_02_012_RUNTIME_NON_SUBTYPE_CLASS_CAST_ERROR.ets | 非子类型 as→ClassCastError | runtime ✅ |
| 536 | 7.17.2 | runtime | EXP_07_17_02_013_RUNTIME_INSTANCEOF_PREVENTS_ERROR.ets | instanceof 守卫避免运行时错误 | runtime ✅ |
| 537 | 7.17.2 | runtime | EXP_07_17_02_014_RUNTIME_UNRELATED_CLASS_CAST_ERROR.ets | 不相关类 as→ClassCastError | runtime ✅ |
| 538 | 7.17.2 | runtime | EXP_07_17_02_015_RUNTIME_INSTANCEOF_FALSE_AS_ERROR.ets | instanceof false 后 as→ClassCastError | runtime ✅ |
| 539 | 7.18 | compile-pass | EXP_07_18_001_PASS_TYPEOF_STRING_BOOLEAN.ets | typeof string/boolean 编译通过 | compile-pass |
| 540 | 7.18 | compile-pass | EXP_07_18_002_PASS_TYPEOF_BIGINT_NUMBER.ets | typeof bigint/number/double 编译通过 | compile-pass |
| 541 | 7.18 | compile-pass | EXP_07_18_003_PASS_TYPEOF_NUMERIC_BYTE_INT.ets | typeof byte/short/int/long/float 编译通过 | compile-pass |
| 542 | 7.18 | compile-pass | EXP_07_18_005_PASS_TYPEOF_OBJECT_FUNCTION.ets | typeof Object/function 编译通过 | compile-pass |
| 543 | 7.18 | compile-pass | EXP_07_18_006_PASS_TYPEOF_NULL_UNDEFINED.ets | typeof null/undefined 编译通过 | compile-pass |
| 544 | 7.18 | compile-pass | EXP_07_18_007_PASS_TYPEOF_ENUM.ets | typeof enum 编译通过 | compile-pass |
| 545 | 7.18 | compile-pass | EXP_07_18_008_PASS_TYPEOF_UNION.ets | typeof union 编译通过 | compile-pass |
| 546 | 7.18 | compile-fail | EXP_07_18_021_FAIL_TYPEOF_OVERLOADED_FUNC.ets | typeof 重载函数名编译错误 | compile-fail |
| 547 | 7.18 | runtime | EXP_07_18_031_RUNTIME_TYPEOF_STRING_BOOLEAN.ets | typeof string→"string", boolean→"boolean" | runtime ✅ |
| 548 | 7.18 | runtime | EXP_07_18_032_RUNTIME_TYPEOF_NUMERIC.ets | typeof int/byte/double/bigint 运行时值 | runtime ✅ |
| 549 | 7.18 | runtime | EXP_07_18_034_RUNTIME_TYPEOF_NULL_UNDEFINED.ets | typeof null→"object", undefined→"undefined" | runtime ✅ |
| 550 | 7.18 | runtime | EXP_07_18_035_RUNTIME_TYPEOF_ENUM.ets | typeof int enum→"int", string enum→"string" | runtime ✅ |
| 551 | 7.18 | runtime | EXP_07_18_036_RUNTIME_TYPEOF_OBJECT_RUNTIME.ets | typeof Object 运行时类型 | runtime ✅ |
| 552 | 7.18 | runtime | EXP_07_18_037_RUNTIME_TYPEOF_UNION.ets | typeof union 运行时类型 | runtime ✅ |
| 553 | 7.18 | runtime | EXP_07_18_038_RUNTIME_TYPEOF_TYPE_PARAM.ets | typeof 类型参数运行时 | runtime ✅ |
| 554 | 7.20 | compile-pass | EXP_07_20_001_PASS_BASIC_NULLISH.ets | undefined ?? "default" 基本空值合并编译通过 | compile-pass |
| 555 | 7.20 | compile-pass | EXP_07_20_002_PASS_BASIC_NON_NULLISH.ets | 非 nullish 变量 ?? default 编译通过 | compile-pass |
| 556 | 7.20 | compile-pass | EXP_07_20_003_PASS_NULL_LHS.ets | null ?? 42 编译通过 | compile-pass |
| 557 | 7.20 | compile-pass | EXP_07_20_004_PASS_NULLABLE_VARIABLE.ets | T\|undefined / T\|null 变量 ?? default | compile-pass |
| 558 | 7.20 | compile-pass | EXP_07_20_005_PASS_CHAINED.ets | 链式 ?? 编译通过 | compile-pass |
| 559 | 7.20 | compile-pass | EXP_07_20_006_PASS_WITH_PARENS.ets | 括号隔离 \|\| 后 ?? 编译通过 | compile-pass |
| 560 | 7.20 | compile-pass | EXP_07_20_007_PASS_EMPTY_STRING_FALSE.ets | 空串/false 变量 ?? default 编译通过 | compile-pass |
| 561 | 7.20 | compile-pass | EXP_07_20_008_PASS_ZERO_EMPTY_OBJECT.ets | 0 变量/对象 ?? default 编译通过 | compile-pass |
| 562 | 7.20 | compile-fail | EXP_07_20_021_FAIL_MIXED_OR.ets | ?? 与 \|\| 无括号混用编译时错误 | compile-fail |
| 563 | 7.20 | compile-fail | EXP_07_20_022_FAIL_MIXED_AND.ets | ?? 与 && 无括号混用编译时错误 | compile-fail |
| 564 | 7.20 | compile-fail | EXP_07_20_023_FAIL_MIXED_COMPLEX.ets | ?? 与 \|\| && 复杂混用编译时错误 | compile-fail |
| 565 | 7.20 | runtime | EXP_07_20_031_RUNTIME_NULLISH_UNDEFINED.ets | undefined??"default" → "default" | runtime ✅ |
| 566 | 7.20 | runtime | EXP_07_20_032_RUNTIME_NON_NULLISH_VALUE.ets | 非 nullish 变量??"world" → "hello" | runtime ✅ |
| 567 | 7.20 | runtime | EXP_07_20_033_RUNTIME_NULL_LHS.ets | null??42 → 42 | runtime ✅ |
| 568 | 7.20 | runtime | EXP_07_20_034_RUNTIME_FALSE_IS_NOT_NULLISH.ets | false 变量??true → false（false 非 nullish） | runtime ✅ |
| 569 | 7.20 | runtime | EXP_07_20_035_RUNTIME_ZERO_IS_NOT_NULLISH.ets | 0 变量??99 → 0（0 非 nullish） | runtime ✅ |
| 570 | 7.20 | runtime | EXP_07_20_036_RUNTIME_EMPTY_STRING.ets | 空串变量??"fallback" → ""（空串非 nullish） | runtime ✅ |
| 571 | 7.20 | runtime | EXP_07_20_037_RUNTIME_CHAINED.ets | undefined??null??"last" → "last" | runtime ✅ |
| 572 | 7.20 | runtime | EXP_07_20_038_RUNTIME_LAZY_EVALUATION.ets | 非 nullish LHS → RHS 不执行（无副作用） | runtime ✅ |
| 573 | 7.21.1 | compile-pass | EXP_07_21_01_001_PASS_INT.ets | int 后置递增编译通过 | compile-pass |
| 574 | 7.21.1 | compile-pass | EXP_07_21_01_002_PASS_SHORT.ets | short 后置递增编译通过 | compile-pass |
| 575 | 7.21.1 | compile-pass | EXP_07_21_01_003_PASS_LONG.ets | long 后置递增编译通过 | compile-pass |
| 576 | 7.21.1 | compile-pass | EXP_07_21_01_004_PASS_BYTE.ets | byte 后置递增编译通过（类型保持） | compile-pass |
| 577 | 7.21.1 | compile-pass | EXP_07_21_01_005_PASS_FLOAT.ets | float 后置递增编译通过 | compile-pass |
| 578 | 7.21.1 | compile-pass | EXP_07_21_01_006_PASS_DOUBLE.ets | double 后置递增编译通过 | compile-pass |
| 579 | 7.21.1 | compile-pass | EXP_07_21_01_007_PASS_BIGINT.ets | bigint 后置递增编译通过 | compile-pass |
| 580 | 7.21.1 | compile-fail | EXP_07_21_01_021_FAIL_STRING.ets | string 类型 ++ 编译时错误 | compile-fail |
| 581 | 7.21.1 | compile-fail | EXP_07_21_01_022_FAIL_BOOLEAN.ets | boolean 类型 ++ 编译时错误 | compile-fail |
| 582 | 7.21.1 | compile-fail | EXP_07_21_01_023_FAIL_ENUM.ets | enum 类型 ++ 编译时错误 | compile-fail |
| 583 | 7.21.1 | compile-fail | EXP_07_21_01_024_FAIL_LITERAL.ets | 字面量 5++ 非 LHS 编译时错误 | compile-fail |
| 584 | 7.21.1 | compile-fail | EXP_07_21_01_025_FAIL_FUNC_CALL.ets | 函数调用结果 ++ 非 LHS 编译时错误 | compile-fail |
| 585 | 7.21.1 | runtime | EXP_07_21_01_031_RUNTIME_INT_VALUE.ets | int++ 返回旧值 5，x 变为 6 | runtime ✅ |
| 586 | 7.21.1 | runtime | EXP_07_21_01_032_RUNTIME_SHORT_VALUE.ets | short++ 返回旧值 1，x 变为 2 | runtime ✅ |
| 587 | 7.21.1 | runtime | EXP_07_21_01_033_RUNTIME_LONG_VALUE.ets | long++ 返回旧值 10000000000，x 变为 10000000001 | runtime ✅ |
| 588 | 7.21.1 | runtime | EXP_07_21_01_034_RUNTIME_BYTE_VALUE.ets | byte++ 返回旧值 10，x 变为 11 | runtime ✅ |
| 589 | 7.21.1 | runtime | EXP_07_21_01_035_RUNTIME_FLOAT_VALUE.ets | float++ 返回旧值 1.5，x 变为 2.5 | runtime ✅ |
| 590 | 7.21.1 | runtime | EXP_07_21_01_036_RUNTIME_DOUBLE_VALUE.ets | double++ 返回旧值 1.0，x 变为 2.0 | runtime ✅ |
| 591 | 7.21.1 | runtime | EXP_07_21_01_037_RUNTIME_BIGINT_VALUE.ets | bigint++ 返回旧值 1n，x 变为 2n | runtime ✅ |
| 592 | 7.21.1 | runtime | EXP_07_21_01_038_RUNTIME_INT_OVERFLOW.ets | int.MAX 值 ++ 返回 2147483647，x 变为 -2147483648 | runtime ✅ |
| 593 | 7.21.2 | compile-pass | EXP_07_21_02_001_PASS_INT.ets | int 后置递减编译通过 | compile-pass |
| 594 | 7.21.2 | compile-pass | EXP_07_21_02_002_PASS_SHORT.ets | short 后置递减编译通过 | compile-pass |
| 595 | 7.21.2 | compile-pass | EXP_07_21_02_003_PASS_LONG.ets | long 后置递减编译通过 | compile-pass |
| 596 | 7.21.2 | compile-pass | EXP_07_21_02_004_PASS_BYTE.ets | byte 后置递减编译通过（类型保持） | compile-pass |
| 597 | 7.21.2 | compile-pass | EXP_07_21_02_005_PASS_FLOAT.ets | float 后置递减编译通过 | compile-pass |
| 598 | 7.21.2 | compile-pass | EXP_07_21_02_006_PASS_DOUBLE.ets | double 后置递减编译通过 | compile-pass |
| 599 | 7.21.2 | compile-pass | EXP_07_21_02_007_PASS_BIGINT.ets | bigint 后置递减编译通过 | compile-pass |
| 600 | 7.21.2 | compile-fail | EXP_07_21_02_021_FAIL_STRING.ets | string 类型 -- 编译时错误 | compile-fail |
| 601 | 7.21.2 | compile-fail | EXP_07_21_02_022_FAIL_BOOLEAN.ets | boolean 类型 -- 编译时错误 | compile-fail |
| 602 | 7.21.2 | compile-fail | EXP_07_21_02_023_FAIL_ENUM.ets | enum 类型 -- 编译时错误 | compile-fail |
| 603 | 7.21.2 | compile-fail | EXP_07_21_02_024_FAIL_LITERAL.ets | 字面量 5-- 非 LHS 编译时错误 | compile-fail |
| 604 | 7.21.2 | compile-fail | EXP_07_21_02_025_FAIL_FUNC_CALL.ets | 函数调用结果 -- 非 LHS 编译时错误 | compile-fail |
| 605 | 7.21.2 | runtime | EXP_07_21_02_031_RUNTIME_INT_VALUE.ets | int-- 返回旧值 5，x 变为 4 | runtime ✅ |
| 606 | 7.21.2 | runtime | EXP_07_21_02_032_RUNTIME_SHORT_VALUE.ets | short-- 返回旧值 1，x 变为 0 | runtime ✅ |
| 607 | 7.21.2 | runtime | EXP_07_21_02_033_RUNTIME_LONG_VALUE.ets | long-- 返回旧值 10000000001，x 变为 10000000000 | runtime ✅ |
| 608 | 7.21.2 | runtime | EXP_07_21_02_034_RUNTIME_BYTE_VALUE.ets | byte-- 返回旧值 10，x 变为 9 | runtime ✅ |
| 609 | 7.21.2 | runtime | EXP_07_21_02_035_RUNTIME_FLOAT_VALUE.ets | float-- 返回旧值 1.5，x 变为 0.5 | runtime ✅ |
| 610 | 7.21.2 | runtime | EXP_07_21_02_036_RUNTIME_DOUBLE_VALUE.ets | double-- 返回旧值 2.0，x 变为 1.0 | runtime ✅ |
| 611 | 7.21.2 | runtime | EXP_07_21_02_037_RUNTIME_BIGINT_VALUE.ets | bigint-- 返回旧值 2n，x 变为 1n | runtime ✅ |
| 612 | 7.21.2 | runtime | EXP_07_21_02_038_RUNTIME_INT_UNDERFLOW.ets | int.MIN 值 -- 返回 -2147483648，x 变为 2147483647 | runtime ✅ |
| 613 | 7.21.3 | compile-pass | EXP_07_21_03_001_PASS_INT.ets | int 前置递增编译通过 | compile-pass |
| 614 | 7.21.3 | compile-pass | EXP_07_21_03_002_PASS_SHORT.ets | short 前置递增编译通过 | compile-pass |
| 615 | 7.21.3 | compile-pass | EXP_07_21_03_003_PASS_LONG.ets | long 前置递增编译通过 | compile-pass |
| 616 | 7.21.3 | compile-pass | EXP_07_21_03_004_PASS_BYTE.ets | byte 前置递增编译通过（类型保持） | compile-pass |
| 617 | 7.21.3 | compile-pass | EXP_07_21_03_005_PASS_FLOAT.ets | float 前置递增编译通过 | compile-pass |
| 618 | 7.21.3 | compile-pass | EXP_07_21_03_006_PASS_DOUBLE.ets | double 前置递增编译通过 | compile-pass |
| 619 | 7.21.3 | compile-pass | EXP_07_21_03_007_PASS_BIGINT.ets | bigint 前置递增编译通过 | compile-pass |
| 620 | 7.21.3 | compile-fail | EXP_07_21_03_021_FAIL_STRING.ets | string 前置递增编译时错误 | compile-fail |
| 621 | 7.21.3 | compile-fail | EXP_07_21_03_022_FAIL_BOOLEAN.ets | boolean 前置递增编译时错误 | compile-fail |
| 622 | 7.21.3 | compile-fail | EXP_07_21_03_023_FAIL_ENUM.ets | enum 前置递增编译时错误 | compile-fail |
| 623 | 7.21.3 | compile-fail | EXP_07_21_03_024_FAIL_LITERAL.ets | ++5 非 LHS 编译时错误 | compile-fail |
| 624 | 7.21.3 | compile-fail | EXP_07_21_03_025_FAIL_FUNC_CALL.ets | ++函数调用结果非 LHS 编译时错误 | compile-fail |
| 625 | 7.21.3 | runtime | EXP_07_21_03_031_RUNTIME_INT_VALUE.ets | ++int 返回新值 6，x 变为 6 | runtime ✅ |
| 626 | 7.21.3 | runtime | EXP_07_21_03_032_RUNTIME_SHORT_VALUE.ets | ++short 返回新值 2，x 变为 2 | runtime ✅ |
| 627 | 7.21.3 | runtime | EXP_07_21_03_033_RUNTIME_LONG_VALUE.ets | ++long 返回新值 10000000001，x 变 10000000001 | runtime ✅ |
| 628 | 7.21.3 | runtime | EXP_07_21_03_034_RUNTIME_BYTE_VALUE.ets | ++byte 返回新值 11，x 变为 11 | runtime ✅ |
| 629 | 7.21.3 | runtime | EXP_07_21_03_035_RUNTIME_FLOAT_VALUE.ets | ++float 返回新值 2.5，x 变为 2.5 | runtime ✅ |
| 630 | 7.21.3 | runtime | EXP_07_21_03_036_RUNTIME_DOUBLE_VALUE.ets | ++double 返回新值 2.0，x 变为 2.0 | runtime ✅ |
| 631 | 7.21.3 | runtime | EXP_07_21_03_037_RUNTIME_BIGINT_VALUE.ets | ++bigint 返回新值 2n，x 变为 2n | runtime ✅ |
| 632 | 7.21.3 | runtime | EXP_07_21_03_038_RUNTIME_INT_OVERFLOW.ets | ++int.MAX 返回 -2147483648（溢出新值）| runtime ✅ |
| 633 | 7.21.4 | compile-pass | EXP_07_21_04_001_PASS_INT.ets | int 前置递减编译通过 | compile-pass |
| 634 | 7.21.4 | compile-pass | EXP_07_21_04_002_PASS_SHORT.ets | short 前置递减编译通过 | compile-pass |
| 635 | 7.21.4 | compile-pass | EXP_07_21_04_003_PASS_LONG.ets | long 前置递减编译通过 | compile-pass |
| 636 | 7.21.4 | compile-pass | EXP_07_21_04_004_PASS_BYTE.ets | byte 前置递减编译通过（类型保持） | compile-pass |
| 637 | 7.21.4 | compile-pass | EXP_07_21_04_005_PASS_FLOAT.ets | float 前置递减编译通过 | compile-pass |
| 638 | 7.21.4 | compile-pass | EXP_07_21_04_006_PASS_DOUBLE.ets | double 前置递减编译通过 | compile-pass |
| 639 | 7.21.4 | compile-pass | EXP_07_21_04_007_PASS_BIGINT.ets | bigint 前置递减编译通过 | compile-pass |
| 640 | 7.21.4 | compile-fail | EXP_07_21_04_021_FAIL_STRING.ets | string 前置递减编译时错误 | compile-fail |
| 641 | 7.21.4 | compile-fail | EXP_07_21_04_022_FAIL_BOOLEAN.ets | boolean 前置递减编译时错误 | compile-fail |
| 642 | 7.21.4 | compile-fail | EXP_07_21_04_023_FAIL_ENUM.ets | enum 前置递减编译时错误 | compile-fail |
| 643 | 7.21.4 | compile-fail | EXP_07_21_04_024_FAIL_LITERAL.ets | --5 非 LHS 编译时错误 | compile-fail |
| 644 | 7.21.4 | compile-fail | EXP_07_21_04_025_FAIL_FUNC_CALL.ets | --函数调用结果非 LHS 编译时错误 | compile-fail |
| 645 | 7.21.4 | runtime | EXP_07_21_04_031_RUNTIME_INT_VALUE.ets | --int 返回新值 4，x 变为 4 | runtime ✅ |
| 646 | 7.21.4 | runtime | EXP_07_21_04_032_RUNTIME_SHORT_VALUE.ets | --short 返回新值 0，x 变为 0 | runtime ✅ |
| 647 | 7.21.4 | runtime | EXP_07_21_04_033_RUNTIME_LONG_VALUE.ets | --long 返回新值 10000000000，x 变 10000000000 | runtime ✅ |
| 648 | 7.21.4 | runtime | EXP_07_21_04_034_RUNTIME_BYTE_VALUE.ets | --byte 返回新值 9，x 变为 9 | runtime ✅ |
| 649 | 7.21.4 | runtime | EXP_07_21_04_035_RUNTIME_FLOAT_VALUE.ets | --float 返回新值 0.5，x 变为 0.5 | runtime ✅ |
| 650 | 7.21.4 | runtime | EXP_07_21_04_036_RUNTIME_DOUBLE_VALUE.ets | --double 返回新值 1.0，x 变为 1.0 | runtime ✅ |
| 651 | 7.21.4 | runtime | EXP_07_21_04_037_RUNTIME_BIGINT_VALUE.ets | --bigint 返回新值 1n，x 变为 1n | runtime ✅ |
| 652 | 7.21.4 | runtime | EXP_07_21_04_038_RUNTIME_INT_UNDERFLOW.ets | --int.MIN 返回 2147483647（溢出新值）| runtime ✅ |
| 653 | 7.21.5 | compile-pass | EXP_07_21_05_001_PASS_INT.ets | +int 编译通过 | compile-pass |
| 654 | 7.21.5 | compile-pass | EXP_07_21_05_002_PASS_SHORT.ets | +short 拓宽为 int 编译通过 | compile-pass |
| 655 | 7.21.5 | compile-pass | EXP_07_21_05_003_PASS_LONG.ets | +long 编译通过（保持 long）| compile-pass |
| 656 | 7.21.5 | compile-pass | EXP_07_21_05_004_PASS_BYTE.ets | +byte 拓宽为 int 编译通过 | compile-pass |
| 657 | 7.21.5 | compile-pass | EXP_07_21_05_005_PASS_FLOAT.ets | +float 编译通过（保持 float）| compile-pass |
| 658 | 7.21.5 | compile-pass | EXP_07_21_05_006_PASS_DOUBLE.ets | +double 编译通过（保持 double）| compile-pass |
| 659 | 7.21.5 | compile-pass | EXP_07_21_05_007_PASS_BIGINT.ets | +bigint 编译通过（保持 bigint）| compile-pass |
| 660 | 7.21.5 | compile-fail | EXP_07_21_05_021_FAIL_STRING.ets | +string 非数值编译时错误 | compile-fail |
| 661 | 7.21.5 | compile-fail | EXP_07_21_05_022_FAIL_BOOLEAN.ets | +boolean 非数值编译时错误 | compile-fail |
| 662 | 7.21.5 | compile-fail | EXP_07_21_05_023_FAIL_OBJECT.ets | +Object 非数值编译时错误 | compile-fail |
| 663 | 7.21.5 | compile-fail | EXP_07_21_05_024_FAIL_NULL.ets | +null 非数值编译时错误 | compile-fail |
| 664 | 7.21.5 | runtime | EXP_07_21_05_031_RUNTIME_INT_VALUE.ets | +5=5, +(-3)=-3 int 值验证 | runtime ✅ |
| 665 | 7.21.5 | runtime | EXP_07_21_05_032_RUNTIME_SHORT_WIDEN.ets | +short(1)→int(1) 拓宽值验证 | runtime ✅ |
| 666 | 7.21.5 | runtime | EXP_07_21_05_033_RUNTIME_BYTE_WIDEN.ets | +byte(10)→int(10) 拓宽值验证 | runtime ✅ |
| 667 | 7.21.5 | runtime | EXP_07_21_05_034_RUNTIME_LONG_VALUE.ets | +long 值 10000000000 验证 | runtime ✅ |
| 668 | 7.21.5 | runtime | EXP_07_21_05_035_RUNTIME_FLOAT_DOUBLE.ets | +float(1.5) +double(3.14) 值验证 | runtime ✅ |
| 669 | 7.21.5 | runtime | EXP_07_21_05_036_RUNTIME_BIGINT_VALUE.ets | +bigint(1n)=1n 值验证 | runtime ✅ |
| 670 | 7.21.6 | compile-pass | EXP_07_21_06_001_PASS_INT.ets | -int 编译通过 | compile-pass |
| 671 | 7.21.6 | compile-pass | EXP_07_21_06_002_PASS_SHORT.ets | -short 拓宽为 int 编译通过 | compile-pass |
| 672 | 7.21.6 | compile-pass | EXP_07_21_06_003_PASS_LONG.ets | -long 编译通过（保持 long）| compile-pass |
| 673 | 7.21.6 | compile-pass | EXP_07_21_06_004_PASS_BYTE.ets | -byte 拓宽为 int 编译通过 | compile-pass |
| 674 | 7.21.6 | compile-pass | EXP_07_21_06_005_PASS_FLOAT.ets | -float 编译通过（保持 float）| compile-pass |
| 675 | 7.21.6 | compile-pass | EXP_07_21_06_006_PASS_DOUBLE.ets | -double 编译通过（保持 double）| compile-pass |
| 676 | 7.21.6 | compile-pass | EXP_07_21_06_007_PASS_BIGINT.ets | -bigint 编译通过（保持 bigint）| compile-pass |
| 677 | 7.21.6 | compile-pass | EXP_07_21_06_008_PASS_NEGATE_INT_MIN.ets | -int.MIN 静默包装编译通过 | compile-pass |
| 678 | 7.21.6 | compile-fail | EXP_07_21_06_021_FAIL_STRING.ets | -string 非数值编译时错误 | compile-fail |
| 679 | 7.21.6 | compile-fail | EXP_07_21_06_022_FAIL_BOOLEAN.ets | -boolean 非数值编译时错误 | compile-fail |
| 680 | 7.21.6 | compile-fail | EXP_07_21_06_023_FAIL_OBJECT.ets | -Object 非数值编译时错误 | compile-fail |
| 681 | 7.21.6 | compile-fail | EXP_07_21_06_024_FAIL_NULL.ets | -null 非数值编译时错误 | compile-fail |
| 682 | 7.21.6 | runtime | EXP_07_21_06_031_RUNTIME_INT_VALUE.ets | -5=-5, -(-3)=3 int 求反 | runtime ✅ |
| 683 | 7.21.6 | runtime | EXP_07_21_06_032_RUNTIME_INT_MIN_NEGATE.ets | -int.MIN→int.MIN 溢出包装 | runtime ✅ |
| 684 | 7.21.6 | runtime | EXP_07_21_06_033_RUNTIME_SHORT_WIDEN.ets | -short(1)→int(-1) 拓宽求反 | runtime ✅ |
| 685 | 7.21.6 | runtime | EXP_07_21_06_034_RUNTIME_BYTE_WIDEN.ets | -byte(10)→int(-10) 拓宽求反 | runtime ✅ |
| 686 | 7.21.6 | runtime | EXP_07_21_06_035_RUNTIME_LONG_VALUE.ets | -long 10000000000 求反 | runtime ✅ |
| 687 | 7.21.6 | runtime | EXP_07_21_06_036_RUNTIME_FLOAT_DOUBLE.ets | -float/-double 符号反转 | runtime ✅ |
| 688 | 7.21.6 | runtime | EXP_07_21_06_037_RUNTIME_BIGINT_VALUE.ets | -bigint(1n)=-1n 求反 | runtime ✅ |
| 689 | 7.21.6 | runtime | EXP_07_21_06_038_RUNTIME_FLOAT_SPECIAL.ets | -0.0→+0.0, -inf→inf, -NaN=NaN | runtime ✅ |
| 690 | 7.21.7 | compile-pass | EXP_07_21_07_001_PASS_INT.ets | ~int 编译通过 | compile-pass ✅ |
| 691 | 7.21.7 | compile-pass | EXP_07_21_07_002_PASS_SHORT.ets | ~short 拓宽为 int | compile-pass ✅ |
| 692 | 7.21.7 | compile-pass | EXP_07_21_07_003_PASS_LONG.ets | ~long 保持 long | compile-pass ✅ |
| 693 | 7.21.7 | compile-pass | EXP_07_21_07_004_PASS_BYTE.ets | ~byte 拓宽为 int | compile-pass ✅ |
| 694 | 7.21.7 | compile-pass | EXP_07_21_07_005_PASS_FLOAT.ets | ~float 截断为 int | compile-pass ✅ |
| 695 | 7.21.7 | compile-pass | EXP_07_21_07_006_PASS_DOUBLE.ets | ~double 截断为 long | compile-pass ✅ |
| 696 | 7.21.7 | compile-pass | EXP_07_21_07_007_PASS_BIGINT.ets | ~bigint 保持 bigint | compile-pass ✅ |
| 697 | 7.21.7 | compile-pass | EXP_07_21_07_008_PASS_IDENTITY.ets | ~x = (-x)-1 恒等式 | compile-pass ✅ |
| 698 | 7.21.7 | compile-fail | EXP_07_21_07_021_FAIL_STRING.ets | ~string 非数值 | compile-fail ✅ |
| 699 | 7.21.7 | compile-fail | EXP_07_21_07_022_FAIL_BOOLEAN.ets | ~boolean 非数值 | compile-fail ✅ |
| 700 | 7.21.7 | compile-fail | EXP_07_21_07_023_FAIL_OBJECT.ets | ~Object 非数值 | compile-fail ✅ |
| 701 | 7.21.7 | compile-fail | EXP_07_21_07_024_FAIL_NULL.ets | ~null 非数值 | compile-fail ✅ |
| 702 | 7.21.7 | compile-fail | EXP_07_21_07_025_FAIL_ENUM.ets | ~enum（⚠️ D 类 Spec 不一致）| compile-fail ⚠️ |
| 703 | 7.21.7 | runtime | EXP_07_21_07_031_RUNTIME_INT_VALUE.ets | ~int 运行时值 | runtime ✅ |
| 704 | 7.21.7 | runtime | EXP_07_21_07_032_RUNTIME_SHORT_VALUE.ets | ~short 运行时值 | runtime ✅ |
| 705 | 7.21.7 | runtime | EXP_07_21_07_033_RUNTIME_LONG_VALUE.ets | ~long 运行时值 | runtime ✅ |
| 706 | 7.21.7 | runtime | EXP_07_21_07_034_RUNTIME_BYTE_VALUE.ets | ~byte 运行时值 | runtime ✅ |
| 707 | 7.21.7 | runtime | EXP_07_21_07_035_RUNTIME_FLOAT_VALUE.ets | ~float 截断求反 | runtime ✅ |
| 708 | 7.21.7 | runtime | EXP_07_21_07_036_RUNTIME_DOUBLE_VALUE.ets | ~double 截断求反 | runtime ✅ |
| 709 | 7.21.7 | runtime | EXP_07_21_07_037_RUNTIME_BIGINT_VALUE.ets | ~bigint 运行时值 | runtime ✅ |
| 710 | 7.21.7 | runtime | EXP_07_21_07_038_RUNTIME_IDENTITY.ets | ~x = (-x)-1 恒等式运行时验证 | runtime ✅ |
| 711 | 7.21.8 | compile-pass | EXP_07_21_08_001_PASS_BASIC.ets | !true / !false 基本 | compile-pass ✅ |
| 712 | 7.21.8 | compile-pass | EXP_07_21_08_002_PASS_VARIABLE.ets | !boolean 变量 | compile-pass ✅ |
| 713 | 7.21.8 | compile-pass | EXP_07_21_08_003_PASS_DOUBLE_NEG.ets | !!boolean 双重取反 | compile-pass ✅ |
| 714 | 7.21.8 | compile-fail | EXP_07_21_08_021_FAIL_INT.ets | !int（⚠️ D 类 Spec 不一致）| compile-fail ⚠️ |
| 715 | 7.21.8 | compile-fail | EXP_07_21_08_022_FAIL_STRING.ets | !string（⚠️ D 类 Spec 不一致）| compile-fail ⚠️ |
| 716 | 7.21.8 | compile-fail | EXP_07_21_08_023_FAIL_OBJECT.ets | !Object（⚠️ D 类 Spec 不一致）| compile-fail ⚠️ |
| 717 | 7.21.8 | compile-fail | EXP_07_21_08_024_FAIL_NULL.ets | !null（⚠️ D 类 Spec 不一致）| compile-fail ⚠️ |
| 718 | 7.21.8 | compile-fail | EXP_07_21_08_025_FAIL_ENUM.ets | !enum（⚠️ D 类 Spec 不一致）| compile-fail ⚠️ |
| 719 | 7.21.8 | runtime | EXP_07_21_08_031_RUNTIME_BASIC.ets | !true=false, !false=true | runtime ✅ |
| 720 | 7.21.8 | runtime | EXP_07_21_08_032_RUNTIME_VARIABLE.ets | boolean 变量取反 | runtime ✅ |
| 721 | 7.21.8 | runtime | EXP_07_21_08_033_RUNTIME_DOUBLE_NEG.ets | !!x == x 恒等式 | runtime ✅ |
| 722 | 7.21.8 | runtime | EXP_07_21_08_034_RUNTIME_COMPLEX.ets | De Morgan 定律 | runtime ✅ |
| 723 | 7.21.8 | runtime | EXP_07_21_08_035_RUNTIME_NONBOOL_INT.ets | !int truthy/falsy 语义 | runtime ✅ |
| 724 | 7.21.8 | runtime | EXP_07_21_08_036_RUNTIME_NONBOOL_STRING.ets | !string truthy/falsy | runtime ✅ |
| 725 | 7.21.8 | runtime | EXP_07_21_08_037_RUNTIME_NONBOOL_NULL_UNDEFINED.ets | !null/!undefined/!Object | runtime ✅ |
| 726 | 7.21.8 | runtime | EXP_07_21_08_038_RUNTIME_NONBOOL_ALL_TYPES.ets | 综合 truthy/falsy 校验 | runtime ✅ |
| 727 | 7.22 | compile-pass | EXP_07_22_001_PASS_MULTIPLICATIVE_TYPE_COMBOS.ets | byte*byte→int, long*int→long, float*int→float, double*int→double | compile-pass ✅ |
| 728 | 7.22 | compile-pass | EXP_07_22_002_PASS_BIGINT_MULTIPLICATIVE_EXPONENTIATION.ets | bigint*/%/** 结果类型为 bigint | compile-pass ✅ |
| 729 | 7.22 | compile-pass | EXP_07_22_003_PASS_EXPONENTIATION_DOUBLE_RESULT.ets | int/long/float/double ** → number(double) | compile-pass ✅ |
| 730 | 7.22 | compile-pass | EXP_07_22_004_PASS_STRING_CONCATENATION.ets | string+string/int/boolean/null → string | compile-pass ✅ |
| 731 | 7.22 | compile-pass | EXP_07_22_005_PASS_ADDITIVE_TYPE_COMBOS.ets | byte+byte→int, int+long→long, int+float→float | compile-pass ✅ |
| 732 | 7.22 | compile-pass | EXP_07_22_006_PASS_BIGINT_ADDITIVE.ets | bigint+bigint→bigint, bigint-bigint→bigint | compile-pass ✅ |
| 733 | 7.22 | compile-pass | EXP_07_22_007_PASS_SHIFT_TYPE_BY_LHS.ets | int<<→int(LHS), long>>→long(LHS), float<<→int, double>>→long | compile-pass ✅ |
| 734 | 7.22 | compile-pass | EXP_07_22_008_PASS_BIGINT_SHIFT.ets | bigint<<bigint→bigint, bigint>>bigint→bigint | compile-pass ✅ |
| 735 | 7.22 | compile-pass | EXP_07_22_009_PASS_RELATIONAL_TYPE_COMBOS.ets | int/string/boolean 关系运算符 → boolean | compile-pass ✅ |
| 736 | 7.22 | compile-pass | EXP_07_22_010_PASS_ENUM_RELATIONAL.ets | enum(numeric/string) 关系比较 → boolean | compile-pass ✅ |
| 737 | 7.22 | compile-pass | EXP_07_22_011_PASS_EQUALITY_TYPE_COMBOS.ets | int/boolean/string/bigint ==/!= 结果 → boolean | compile-pass ✅ |
| 738 | 7.22 | compile-pass | EXP_07_22_012_PASS_EQUALITY_SPECIAL_TYPES.ets | enum==enum, null==null, undefined!==undefined → boolean | compile-pass ✅ |
| 739 | 7.22 | compile-pass | EXP_07_22_013_PASS_BITWISE_AND_XOR_OR.ets | boolean&/int|/long^ 正确结果类型 | compile-pass ✅ |
| 740 | 7.22 | compile-pass | EXP_07_22_014_PASS_BIGINT_BITWISE.ets | bigint&/|/^ → bigint | compile-pass ✅ |
| 741 | 7.22 | compile-pass | EXP_07_22_015_PASS_LOGICAL_AND_OR.ets | boolean&&/|| → boolean, 短路验证 | compile-pass ✅ |
| 742 | 7.22 | compile-fail | EXP_07_22_021_FAIL_STRING_MULTIPLICATIVE.ets | string * string 编译错误 | compile-fail ✅ |
| 743 | 7.22 | compile-fail | EXP_07_22_022_FAIL_BOOLEAN_MULTIPLICATIVE.ets | boolean * boolean 编译错误 | compile-fail ✅ |
| 744 | 7.22 | compile-fail | EXP_07_22_023_FAIL_BIGINT_MIXED_MULTIPLICATIVE.ets | bigint * int 混合类型编译错误 | compile-fail ✅ |
| 745 | 7.22 | compile-fail | EXP_07_22_024_FAIL_STRING_SHIFT.ets | string << int 编译错误 | compile-fail ✅ |
| 746 | 7.22 | compile-fail | EXP_07_22_025_FAIL_BOOLEAN_SHIFT.ets | boolean >> int 编译错误 | compile-fail ✅ |
| 747 | 7.22 | compile-fail | EXP_07_22_026_FAIL_STRING_BITWISE.ets | string & string 编译错误 | compile-fail ✅ |
| 748 | 7.22 | compile-fail | EXP_07_22_027_FAIL_BOOLEAN_INT_BITWISE.ets | boolean & int 混合类型编译错误 | compile-fail ✅ |
| 749 | 7.22 | runtime | EXP_07_22_031_RUNTIME_OPERAND_ORDER_NOTE1.ets | Note 1: 操作数顺序不影响结果类型 | runtime ✅ |
| 750 | 7.22 | runtime | EXP_07_22_032_RUNTIME_SHIFT_LHS_NOTE2.ets | Note 2: 移位结果类型取决于 LHS | runtime ✅ |
| 751 | 7.22 | runtime | EXP_07_22_033_RUNTIME_SHORT_CIRCUIT_AND_OR.ets | &&/|| 短路求值 | runtime ✅ |
| 752 | 7.22 | runtime | EXP_07_22_034_RUNTIME_EXTENDED_CONDITIONAL_NOTE5.ets | Note 5: Extended Conditional truthy/falsy | runtime ✅ |
| 753 | 7.22 | runtime | EXP_07_22_035_RUNTIME_EXPONENTIATION_DOUBLE.ets | 幂运算 int→number, bigint→bigint | runtime ✅ |
| 754 | 7.23.1 | compile-pass | EXP_07_23_01_001_PASS_BYTE_SHORT_PROMOTION.ets | byte/short 隐式提升到 int | compile-pass ✅ |
| 755 | 7.23.1 | compile-pass | EXP_07_23_01_002_PASS_INT_LONG_TYPE_COMBOS.ets | int/int/long 乘法类型组合 | compile-pass ✅ |
| 756 | 7.23.1 | compile-pass | EXP_07_23_01_003_PASS_FLOAT_TYPE_COMBOS.ets | float 乘法类型组合 | compile-pass ✅ |
| 757 | 7.23.1 | compile-pass | EXP_07_23_01_004_PASS_DOUBLE_TYPE_COMBOS.ets | double 乘法类型组合（typeof=number） | compile-pass ✅ |
| 758 | 7.23.1 | compile-pass | EXP_07_23_01_005_PASS_BIGINT_MULTIPLICATION.ets | bigint*bigint→bigint | compile-pass ✅ |
| 759 | 7.23.1 | compile-pass | EXP_07_23_01_006_PASS_MIXED_NUMERIC_PROMOTION.ets | byte→int→long→float→double 完整提升链 | compile-pass ✅ |
| 760 | 7.23.1 | compile-pass | EXP_07_23_01_007_PASS_NEGATIVE_SIGNED_OPERANDS.ets | 负数/有符号操作数乘法 | compile-pass ✅ |
| 761 | 7.23.1 | compile-pass | EXP_07_23_01_008_PASS_COMMUTATIVE_ASSOCIATIVE_DECL.ets | 结合律/交换律表达式编译通过 | compile-pass ✅ |
| 762 | 7.23.1 | compile-fail | EXP_07_23_01_021_FAIL_STRING_MULTIPLICATION.ets | string * string 编译错误 | compile-fail ✅ |
| 763 | 7.23.1 | compile-fail | EXP_07_23_01_022_FAIL_BOOLEAN_MULTIPLICATION.ets | boolean * boolean 编译错误 | compile-fail ✅ |
| 764 | 7.23.1 | compile-fail | EXP_07_23_01_023_FAIL_STRING_INT_MULTIPLICATION.ets | string * int 编译错误 | compile-fail ✅ |
| 765 | 7.23.1 | compile-fail | EXP_07_23_01_024_FAIL_BOOLEAN_INT_MULTIPLICATION.ets | boolean * int 编译错误 | compile-fail ✅ |
| 766 | 7.23.1 | compile-fail | EXP_07_23_01_025_FAIL_BIGINT_MIXED_INT.ets | bigint * int 混合类型编译错误 | compile-fail ✅ |
| 767 | 7.23.1 | compile-fail | EXP_07_23_01_026_FAIL_BIGINT_MIXED_DOUBLE.ets | bigint * double 混合类型编译错误 | compile-fail ✅ |
| 768 | 7.23.1 | runtime | EXP_07_23_01_031_RUNTIME_INTEGER_OVERFLOW.ets | int 溢出低 32 位截断 | runtime ✅ |
| 769 | 7.23.1 | runtime | EXP_07_23_01_032_RUNTIME_FLOAT_NAN.ets | IEEE 754 NaN 乘法（NaN*any, Inf*0=NaN） | runtime ✅ |
| 770 | 7.23.1 | runtime | EXP_07_23_01_033_RUNTIME_FLOAT_INF_MULTIPLY.ets | IEEE 754 Infinity*有限数=有符号 Infinity | runtime ✅ |
| 771 | 7.23.1 | runtime | EXP_07_23_01_034_RUNTIME_FLOAT_SIGN_RULES.ets | IEEE 754 乘法符号规则 | runtime ✅ |
| 772 | 7.23.1 | runtime | EXP_07_23_01_035_RUNTIME_FLOAT_OVERFLOW.ets | float/double 溢出到 Infinity | runtime ✅ |
| 773 | 7.23.1 | runtime | EXP_07_23_01_036_RUNTIME_BIGINT_ASSOCIATIVE.ets | bigint 乘法结合律 | runtime ✅ |
| 774 | 7.23.1 | runtime | EXP_07_23_01_037_RUNTIME_INT_ASSOCIATIVE.ets | 整数同类型结合律 | runtime ✅ |
| 775 | 7.23.1 | runtime | EXP_07_23_01_038_RUNTIME_FLOAT_NOT_ASSOCIATIVE.ets | 浮点乘法不满足结合律 | runtime ✅ |
| 776 | 7.23.1 | runtime | EXP_07_23_01_039_RUNTIME_NEVER_THROWS.ets | 乘法从不抛异常 | runtime ✅ |
| 777 | 7.23.2 | compile-pass | EXP_07_23_02_001_PASS_BYTE_SHORT_PROMOTION.ets | byte/byte→int, short/short→int 提升 | compile-pass ✅ |
| 778 | 7.23.2 | compile-pass | EXP_07_23_02_002_PASS_INT_LONG_TYPE_COMBOS.ets | int/int/long 除法类型组合 | compile-pass ✅ |
| 779 | 7.23.2 | compile-pass | EXP_07_23_02_003_PASS_FLOAT_TYPE_COMBOS.ets | float 除法类型组合 | compile-pass ✅ |
| 780 | 7.23.2 | compile-pass | EXP_07_23_02_004_PASS_DOUBLE_TYPE_COMBOS.ets | double 除法类型组合（typeof=number） | compile-pass ✅ |
| 781 | 7.23.2 | compile-pass | EXP_07_23_02_005_PASS_BIGINT_DIVISION.ets | bigint/bigint→bigint | compile-pass ✅ |
| 782 | 7.23.2 | compile-pass | EXP_07_23_02_006_PASS_NEGATIVE_SIGNED_OPERANDS.ets | 负数/有符号操作数除法 | compile-pass ✅ |
| 783 | 7.23.2 | compile-fail | EXP_07_23_02_021_FAIL_STRING_DIVISION.ets | string / string 编译错误 | compile-fail ✅ |
| 784 | 7.23.2 | compile-fail | EXP_07_23_02_022_FAIL_BOOLEAN_DIVISION.ets | boolean / boolean 编译错误 | compile-fail ✅ |
| 785 | 7.23.2 | compile-fail | EXP_07_23_02_023_FAIL_STRING_INT_DIVISION.ets | string / int 编译错误 | compile-fail ✅ |
| 786 | 7.23.2 | compile-fail | EXP_07_23_02_024_FAIL_BOOLEAN_INT_DIVISION.ets | boolean / int 编译错误 | compile-fail ✅ |
| 787 | 7.23.2 | compile-fail | EXP_07_23_02_025_FAIL_BIGINT_MIXED_INT.ets | bigint / int 混合类型编译错误 | compile-fail ✅ |
| 788 | 7.23.2 | compile-fail | EXP_07_23_02_026_FAIL_BIGINT_MIXED_DOUBLE.ets | bigint / double 混合类型编译错误 | compile-fail ✅ |
| 789 | 7.23.2 | compile-fail | EXP_07_23_02_027_FAIL_DIVISION_BY_ZERO_LITERAL.ets | 字面量整数除零（⚠️ SPEC不一致） | compile-fail ✅（⚠️ D类） |
| 790 | 7.23.2 | compile-fail | EXP_07_23_02_028_FAIL_BIGINT_DIVISION_BY_ZERO_LITERAL.ets | bigint 字面量 0n 除零编译错误 | compile-fail ✅ |
| 791 | 7.23.2 | runtime | EXP_07_23_02_031_RUNTIME_INT_DIVISION_ROUND_TO_ZERO.ets | 整数除法向零取整 + 符号规则 | runtime ✅ |
| 792 | 7.23.2 | runtime | EXP_07_23_02_032_RUNTIME_INT_MIN_DIV_MINUS_ONE.ets | INT_MIN / -1 溢出 | runtime ✅ |
| 793 | 7.23.2 | runtime | EXP_07_23_02_033_RUNTIME_INT_DIVISION_BY_ZERO.ets | 整数除零抛 ArithmeticError | runtime ✅ |
| 794 | 7.23.2 | runtime | EXP_07_23_02_034_RUNTIME_BIGINT_ROUND_TO_ZERO.ets | bigint 除法向零取整 | runtime ✅ |
| 795 | 7.23.2 | runtime | EXP_07_23_02_035_RUNTIME_BIGINT_DIVISION_BY_ZERO.ets | bigint 除零抛运行时错误 | runtime ✅ |
| 796 | 7.23.2 | runtime | EXP_07_23_02_036_RUNTIME_FLOAT_NAN_DIVISION.ets | IEEE 754 NaN 除法 | runtime ✅ |
| 797 | 7.23.2 | runtime | EXP_07_23_02_037_RUNTIME_FLOAT_INF_DIVISION.ets | IEEE 754 Infinity 除法 | runtime ✅ |
| 798 | 7.23.2 | runtime | EXP_07_23_02_038_RUNTIME_FLOAT_SIGNED_ZERO.ets | IEEE 754 有符号零 | runtime ✅ |
| 799 | 7.23.2 | runtime | EXP_07_23_02_039_RUNTIME_FLOAT_SIGN_OVERFLOW.ets | 浮点符号规则 + 溢出到 Infinity | runtime ✅ |
| 800 | 7.23.2 | runtime | EXP_07_23_02_040_RUNTIME_NEVER_THROWS.ets | 浮点除法不抛异常 | runtime ✅ |
| 801 | 7.23.3 | compile-pass | EXP_07_23_03_001_PASS_BYTE_SHORT_PROMOTION.ets | byte/byte→int, short/short→int 提升 | compile-pass ✅ |
| 802 | 7.23.3 | compile-pass | EXP_07_23_03_002_PASS_INT_LONG_TYPE_COMBOS.ets | int/int/long 取余类型组合 | compile-pass ✅ |
| 803 | 7.23.3 | compile-pass | EXP_07_23_03_003_PASS_FLOAT_TYPE_COMBOS.ets | float 取余类型组合 | compile-pass ✅ |
| 804 | 7.23.3 | compile-pass | EXP_07_23_03_004_PASS_DOUBLE_TYPE_COMBOS.ets | double 取余类型组合 | compile-pass ✅ |
| 805 | 7.23.3 | compile-pass | EXP_07_23_03_005_PASS_BIGINT_REMAINDER.ets | bigint/bigint→bigint | compile-pass ✅ |
| 806 | 7.23.3 | compile-pass | EXP_07_23_03_006_PASS_NEGATIVE_SIGNED_OPERANDS.ets | 负数/有符号操作数取余 | compile-pass ✅ |
| 807 | 7.23.3 | compile-fail | EXP_07_23_03_021_FAIL_STRING_REMAINDER.ets | string % string 编译错误 | compile-fail ✅ |
| 808 | 7.23.3 | compile-fail | EXP_07_23_03_022_FAIL_BOOLEAN_REMAINDER.ets | boolean % boolean 编译错误 | compile-fail ✅ |
| 809 | 7.23.3 | compile-fail | EXP_07_23_03_023_FAIL_STRING_INT_REMAINDER.ets | string % int 编译错误 | compile-fail ✅ |
| 810 | 7.23.3 | compile-fail | EXP_07_23_03_024_FAIL_BOOLEAN_INT_REMAINDER.ets | boolean % int 编译错误 | compile-fail ✅ |
| 811 | 7.23.3 | compile-fail | EXP_07_23_03_025_FAIL_BIGINT_MIXED_INT.ets | bigint % int 混合类型编译错误 | compile-fail ✅ |
| 812 | 7.23.3 | compile-fail | EXP_07_23_03_026_FAIL_BIGINT_MIXED_DOUBLE.ets | bigint % double 混合类型编译错误 | compile-fail ✅ |
| 813 | 7.23.3 | compile-fail | EXP_07_23_03_027_FAIL_REMAINDER_BY_ZERO_LITERAL.ets | 字面量整数取余除零（⚠️ SPEC不一致） | compile-fail ✅（⚠️ D类） |
| 814 | 7.23.3 | compile-fail | EXP_07_23_03_028_FAIL_BIGINT_REMAINDER_BY_ZERO_LITERAL.ets | bigint 字面量 0n 取余除零（⚠️ SPEC不一致） | compile-fail ✅（⚠️ D类） |
| 815 | 7.23.3 | runtime | EXP_07_23_03_031_RUNTIME_INT_REMAINDER_SIGN_MAGNITUDE.ets | 整数取余符号规则 + 恒等式 | runtime ✅ |
| 816 | 7.23.3 | runtime | EXP_07_23_03_032_RUNTIME_INT_MIN_REMAINDER_MINUS_ONE.ets | INT_MIN % -1 = 0 | runtime ✅ |
| 817 | 7.23.3 | runtime | EXP_07_23_03_033_RUNTIME_INT_REMAINDER_BY_ZERO.ets | 整数取余除零抛 ArithmeticError | runtime ✅ |
| 818 | 7.23.3 | runtime | EXP_07_23_03_034_RUNTIME_BIGINT_REMAINDER_IDENTITY.ets | bigint 取余恒等式 | runtime ✅ |
| 819 | 7.23.3 | runtime | EXP_07_23_03_035_RUNTIME_BIGINT_REMAINDER_BY_ZERO.ets | bigint 取余除零运行时错误 | runtime ✅ |
| 820 | 7.23.3 | runtime | EXP_07_23_03_036_RUNTIME_FLOAT_REMAINDER_NAN.ets | IEEE 754 浮点取余 NaN | runtime ✅ |
| 821 | 7.23.3 | runtime | EXP_07_23_03_037_RUNTIME_FLOAT_REMAINDER_SIGN.ets | 浮点取余符号规则 | runtime ✅ |
| 822 | 7.23.3 | runtime | EXP_07_23_03_038_RUNTIME_FLOAT_REMAINDER_SPECIAL.ets | 浮点取余特殊值 + r=n-(d*q) 公式 | runtime ✅ |
| 823 | 7.23.3 | runtime | EXP_07_23_03_039_RUNTIME_FLOAT_REMAINDER_NEVER_THROWS.ets | 浮点取余除零不抛异常 | runtime ✅ |
| 824 | 7.24 | compile-pass | EXP_07_24_001_PASS_BYTE_SHORT_PROMOTION.ets | byte/short→double 提升 | compile-pass ✅ |
| 825 | 7.24 | compile-pass | EXP_07_24_002_PASS_INT_LONG_TYPE_COMBOS.ets | int/long→double 提升 | compile-pass ✅ |
| 826 | 7.24 | compile-pass | EXP_07_24_003_PASS_FLOAT_DOUBLE_TYPE_COMBOS.ets | double/int 类型组合 | compile-pass ✅ |
| 827 | 7.24 | compile-pass | EXP_07_24_004_PASS_BIGINT_EXPONENTIATION.ets | bigint**bigint 正指数 | compile-pass ✅ |
| 828 | 7.24 | compile-pass | EXP_07_24_005_PASS_BIGINT_ZERO_EXPONENT.ets | bigint**0n=1n | compile-pass ✅ |
| 829 | 7.24 | compile-pass | EXP_07_24_006_PASS_NEGATIVE_BASE.ets | 负数基底编译 | compile-pass ✅ |
| 830 | 7.24 | compile-fail | EXP_07_24_021_FAIL_STRING_EXPONENTIATION.ets | string**string | compile-fail ✅ |
| 831 | 7.24 | compile-fail | EXP_07_24_022_FAIL_BOOLEAN_EXPONENTIATION.ets | boolean**boolean | compile-fail ✅ |
| 832 | 7.24 | compile-fail | EXP_07_24_023_FAIL_STRING_INT_EXPONENTIATION.ets | string**int | compile-fail ✅ |
| 833 | 7.24 | compile-fail | EXP_07_24_024_FAIL_BOOLEAN_INT_EXPONENTIATION.ets | boolean**int | compile-fail ✅ |
| 834 | 7.24 | compile-fail | EXP_07_24_025_FAIL_BIGINT_MIXED_INT.ets | bigint**int | compile-fail ✅ |
| 835 | 7.24 | compile-fail | EXP_07_24_026_FAIL_BIGINT_MIXED_DOUBLE.ets | bigint**double | compile-fail ✅ |
| 836 | 7.24 | compile-fail | EXP_07_24_027_FAIL_BIGINT_NEGATIVE_EXPONENT.ets | bigint**-1n 负指数 | compile-fail ✅ |
| 837 | 7.24 | runtime | EXP_07_24_031_RUNTIME_BIGINT_EXPONENTIATION.ets | bigint 幂运算 | runtime ✅ |
| 838 | 7.24 | runtime | EXP_07_24_032_RUNTIME_BIGINT_NEGATIVE_EXPONENT_THROWS.ets | bigint 负指数异常 | runtime ✅（预期抛异常）|
| 839 | 7.24 | runtime | EXP_07_24_033_RUNTIME_POW_ZERO_EXPONENT.ets | x**+/-0=1 | runtime ✅ |
| 840 | 7.24 | runtime | EXP_07_24_034_RUNTIME_ZERO_BASE_POSITIVE_EXPONENT.ets | +/-0**正指数 | runtime ✅ |
| 841 | 7.24 | runtime | EXP_07_24_035_RUNTIME_ZERO_BASE_NEGATIVE_EXPONENT.ets | +/-0**负指数 | runtime ✅ |
| 842 | 7.24 | runtime | EXP_07_24_036_RUNTIME_ZERO_BASE_INFINITY_EXPONENT.ets | +/-0**+/-Inf | runtime ✅ |
| 843 | 7.24 | runtime | EXP_07_24_037_RUNTIME_ONE_ANY_EXPONENT.ets | +/-1**y=1 | runtime ✅ |
| 844 | 7.24 | runtime | EXP_07_24_038_RUNTIME_NAN_INF_EXPONENTIATION.ets | NaN/Infinity 基底幂运算 | runtime ✅ |
| 845 | 7.24 | runtime | EXP_07_24_039_RUNTIME_NEG_INF_EXPONENTIATION.ets | -Infinity**y | runtime ✅ |
| 846 | 7.24 | runtime | EXP_07_24_040_RUNTIME_X_INFINITY_EXPONENT.ets | x**+/-Inf 范围规则 | runtime ✅ |
| 847 | 7.24 | runtime | EXP_07_24_041_RUNTIME_NEGATIVE_BASE_NON_INTEGER_EXPONENT.ets | 负数**非整数=NaN | runtime ✅ |
| 848 | 7.24 | runtime | EXP_07_24_042_RUNTIME_NEVER_THROWS_RIGHT_ASSOC.ets | 不抛异常+右结合性 | runtime ✅ |
| 849 | 7.25.1 | compile-pass | EXP_07_25_01_001_PASS_STRING_STRING_BASIC.ets | string+string 基本拼接 | compile-pass ✅ |
| 850 | 7.25.1 | compile-pass | EXP_07_25_01_002_PASS_STRING_INT.ets | string+int 整数→十进制 | compile-pass ✅ |
| 851 | 7.25.1 | compile-pass | EXP_07_25_01_003_PASS_STRING_FLOAT.ets | string+double/float 浮点→十进制 | compile-pass ✅ |
| 852 | 7.25.1 | compile-pass | EXP_07_25_01_004_PASS_STRING_BOOLEAN.ets | string+boolean→"true"/"false" | compile-pass ✅ |
| 853 | 7.25.1 | compile-pass | EXP_07_25_01_005_PASS_STRING_BIGINT.ets | string+bigint→十进制 | compile-pass ✅ |
| 854 | 7.25.1 | compile-pass | EXP_07_25_01_006_PASS_STRING_NULLISH.ets | string+null/undefined | compile-pass ✅ |
| 855 | 7.25.1 | compile-pass | EXP_07_25_01_007_PASS_INT_STRING_RHS.ets | int+string RHS string | compile-pass ✅ |
| 856 | 7.25.1 | compile-pass | EXP_07_25_01_008_PASS_MULTI_CONCAT.ets | 多操作数连续拼接 | compile-pass ✅ |
| 857 | 7.25.1 | compile-pass | EXP_07_25_01_009_PASS_MIXED_TYPES_CHAIN.ets | 混合类型链 | compile-pass ✅ |
| 858 | 7.25.1 | compile-pass | EXP_07_25_01_010_PASS_STRING_REFERENCE_TYPE.ets | string+引用类型 toString() | compile-pass ✅ |
| 859 | 7.25.1 | compile-fail | EXP_07_25_01_021_FAIL_VOID_EXPRESSION.ets | void 表达式无字符串转换 | compile-fail ✅ |
| 860 | 7.25.1 | compile-fail | EXP_07_25_01_022_FAIL_NON_STRING_BOTH.ets | int+boolean 无数值转换 | compile-fail ✅ |
| 861 | 7.25.1 | runtime | EXP_07_25_01_031_RUNTIME_STRING_STRING.ets | "Hello"+"World"="HelloWorld" | runtime ✅ |
| 862 | 7.25.1 | runtime | EXP_07_25_01_032_RUNTIME_STRING_NUMERIC.ets | string+42="val42" | runtime ✅ |
| 863 | 7.25.1 | runtime | EXP_07_25_01_033_RUNTIME_STRING_BOOLEAN.ets | boolean→"true"/"false" | runtime ✅ |
| 864 | 7.25.1 | runtime | EXP_07_25_01_034_RUNTIME_STRING_BIGINT.ets | bigint→十进制字符串 | runtime ✅ |
| 865 | 7.25.1 | runtime | EXP_07_25_01_035_RUNTIME_STRING_NULLISH.ets | null→"null", undefined→"undefined" | runtime ✅ |
| 866 | 7.25.1 | runtime | EXP_07_25_01_036_RUNTIME_MIXED_ORDER.ets | 左结合 1+2+"!"="3!" | runtime ✅ |
| 867 | 7.25.1 | runtime | EXP_07_25_01_037_RUNTIME_MULTI_CONCAT.ets | 多字符串拼接 "ABCD" | runtime ✅ |
| 868 | 7.25.2 | compile-pass | EXP_07_25_02_001_PASS_INT_ADD_BASIC.ets | int+int→int, int-int 纯 int 运算 | compile-pass ✅ |
| 869 | 7.25.2 | compile-pass | EXP_07_25_02_002_PASS_INT_LONG_PROMOTION.ets | int+long→long 类型提升 | compile-pass ✅ |
| 870 | 7.25.2 | compile-pass | EXP_07_25_02_003_PASS_INT_FLOAT_PROMOTION.ets | int+float→float 浮点提升 | compile-pass ✅ |
| 871 | 7.25.2 | compile-pass | EXP_07_25_02_004_PASS_INT_DOUBLE_PROMOTION.ets | int+double→double 最大类型提升 | compile-pass ✅ |
| 872 | 7.25.2 | compile-pass | EXP_07_25_02_005_PASS_BYTE_SHORT_PROMOTION.ets | byte/short→int 自动提升 | compile-pass ✅ |
| 873 | 7.25.2 | compile-pass | EXP_07_25_02_006_PASS_BIGINT_ADD_SUB.ets | bigint+bigint, bigint-bigint | compile-pass ✅ |
| 874 | 7.25.2 | compile-pass | EXP_07_25_02_007_PASS_CHAINED_ADDITIVE.ets | 链式 a+b-c+d 左结合性 | compile-pass ✅ |
| 875 | 7.25.2 | compile-pass | EXP_07_25_02_008_PASS_FLOAT_DOUBLE_PROMOTION.ets | float+double→double 提升 | compile-pass ✅ |
| 876 | 7.25.2 | compile-fail | EXP_07_25_02_021_FAIL_BOOLEAN_INT_ADD.ets | boolean+int 无数值转换 | compile-fail ✅ |
| 877 | 7.25.2 | compile-fail | EXP_07_25_02_022_FAIL_BOOLEAN_INT_SUB.ets | boolean-int 无数值转换 | compile-fail ✅ |
| 878 | 7.25.2 | compile-fail | EXP_07_25_02_023_FAIL_STRING_SUB.ets | string-string 无字符串语义 | compile-fail ✅ |
| 879 | 7.25.2 | compile-fail | EXP_07_25_02_024_FAIL_STRING_INT_SUB.ets | string-int 不可转换 | compile-fail ✅ |
| 880 | 7.25.2 | compile-fail | EXP_07_25_02_025_FAIL_BIGINT_INT_ADD.ets | bigint+int 混合类型 | compile-fail ✅ |
| 881 | 7.25.2 | compile-fail | EXP_07_25_02_026_FAIL_BIGINT_INT_SUB.ets | bigint-int 混合类型 | compile-fail ✅ |
| 882 | 7.25.2 | runtime | EXP_07_25_02_031_RUNTIME_INT_ADD_BASIC.ets | int+int 基本加法值 | runtime ✅ |
| 883 | 7.25.2 | runtime | EXP_07_25_02_032_RUNTIME_INT_OVERFLOW.ets | int 溢出：MAX_INT+1=MIN_INT | runtime ✅ |
| 884 | 7.25.2 | runtime | EXP_07_25_02_033_RUNTIME_LONG_ADD_OVERFLOW.ets | long+long 加法/溢出 | runtime ✅ |
| 885 | 7.25.2 | runtime | EXP_07_25_02_034_RUNTIME_INT_SUB.ets | int-int 减法值 | runtime ✅ |
| 886 | 7.25.2 | runtime | EXP_07_25_02_035_RUNTIME_INT_ASSOCIATIVE.ets | int/long 加法结合律 | runtime ✅ |
| 887 | 7.25.2 | runtime | EXP_07_25_02_036_RUNTIME_FLOAT_NAN_INF.ets | float NaN/Infinity 规则 | runtime ✅ |
| 888 | 7.25.2 | runtime | EXP_07_25_02_037_RUNTIME_FLOAT_ZERO.ets | float 零规则 | runtime ✅ |
| 889 | 7.25.2 | runtime | EXP_07_25_02_038_RUNTIME_FLOAT_NOT_ASSOCIATIVE.ets | float 非结合性 | runtime ✅ |
| 890 | 7.25.2 | runtime | EXP_07_25_02_039_RUNTIME_FLOAT_OVERFLOW.ets | float 溢出→有符号 Infinity | runtime ✅ |
| 891 | 7.25.2 | runtime | EXP_07_25_02_040_RUNTIME_SUB_EQUALS_ADD_NEG.ets | a-b = a+(-b) 等价性 | runtime ✅ |
| 892 | 7.25.2 | runtime | EXP_07_25_02_041_RUNTIME_SUB_FROM_ZERO.ets | 0-x vs -x 浮点差异 | runtime ✅ |
| 893 | 7.25.2 | runtime | EXP_07_25_02_042_RUNTIME_NEVER_THROWS.ets | 溢出/下溢从不抛异常 | runtime ✅ |
| 894 | 7.26 | compile-pass | EXP_07_26_001_PASS_INT_SHIFT_BASIC.ets | int 类型三个移位运算符（<<, >>, >>>）的基本编译通过验证 | compile-pass ✅ |
| 895 | 7.26 | compile-pass | EXP_07_26_002_PASS_LONG_SHIFT_BASIC.ets | long 类型三个移位运算符（<<, >>, >>>）的基本编译通过验证 | compile-pass ✅ |
| 896 | 7.26 | compile-pass | EXP_07_26_003_PASS_BIGINT_SHIFT.ets | bigint 类型移位运算符（<<, >>）编译通过验证，bigint 不支持 >>> | compile-pass ✅ |
| 897 | 7.26 | compile-pass | EXP_07_26_004_PASS_BYTE_SHORT_PROMOTION.ets | byte/short 左操作数在移位运算中自动提升为 int | compile-pass ✅ |
| 898 | 7.26 | compile-pass | EXP_07_26_005_PASS_SHIFT_GROUPING.ets | 移位运算符左结合性验证：a << b >> c = (a << b) >> c | compile-pass ✅ |
| 899 | 7.26 | compile-pass | EXP_07_26_006_PASS_FLOAT_DOUBLE_TRUNCATION.ets | double/float 操作数在移位运算中先截断为 long/int 后再移位 | compile-pass ✅ |
| 900 | 7.26 | compile-fail | EXP_07_26_021_FAIL_BIGINT_UNSIGNED_RIGHT.ets | bigint 类型不支持 >>>（无符号右移），应产生编译时错误 | compile-fail ✅ |
| 901 | 7.26 | compile-fail | EXP_07_26_022_FAIL_BIGINT_NUMERIC_MIXED.ets | bigint 与数值类型混合用于移位运算应产生编译时错误 | compile-fail ✅ |
| 902 | 7.26 | compile-fail | EXP_07_26_023_FAIL_SHIFT_STRING.ets | string 类型不能用于移位运算，应产生编译时错误 | compile-fail ✅ |
| 903 | 7.26 | compile-fail | EXP_07_26_024_FAIL_SHIFT_BOOLEAN.ets | boolean 类型不能用于移位运算，应产生编译时错误 | compile-fail ✅ |
| 904 | 7.26 | compile-fail | EXP_07_26_025_FAIL_SHIFT_OBJECT.ets | Object 类型不能用于移位运算，应产生编译时错误 | compile-fail ✅ |
| 905 | 7.26 | compile-fail | EXP_07_26_026_FAIL_NON_NUMERIC_BOTH.ets | 双方都为非数值类型的移位运算应产生编译时错误 | compile-fail ✅ |
| 906 | 7.26 | runtime | EXP_07_26_031_RUNTIME_INT_SHIFT_LEFT.ets | int 类型左移 << 的运行时值验证 | runtime ✅ |
| 907 | 7.26 | runtime | EXP_07_26_032_RUNTIME_INT_SIGNED_RIGHT.ets | int 类型带符号右移 >> 的运行时值验证 | runtime ✅ |
| 908 | 7.26 | runtime | EXP_07_26_033_RUNTIME_INT_UNSIGNED_RIGHT.ets | int 类型无符号右移 >>> 的运行时值验证 | runtime ✅ |
| 909 | 7.26 | runtime | EXP_07_26_034_RUNTIME_LONG_SHIFT.ets | long 类型三个移位运算符（<<, >>, >>>）的运行时值验证 | runtime ✅ |
| 910 | 7.26 | runtime | EXP_07_26_035_RUNTIME_INT_SHIFT_DISTANCE_MASK.ets | int 类型移位距离掩码验证：只取右操作数低 5 位（0x1f） | runtime ✅ |
| 911 | 7.26 | runtime | EXP_07_26_036_RUNTIME_LONG_SHIFT_DISTANCE_MASK.ets | long 类型移位距离掩码验证：只取右操作数低 6 位（0x3f） | runtime ✅ |
| 912 | 7.26 | runtime | EXP_07_26_037_RUNTIME_INT_SHIFT_LEFT_OVERFLOW.ets | int 左移溢出行为验证：等价于乘以 2^s，即使溢出也按乘法等效 | runtime ✅ |
| 913 | 7.26 | runtime | EXP_07_26_038_RUNTIME_BIGINT_SHIFT.ets | bigint 类型移位运算（<<, >>）的运行时值验证 | runtime ✅ |
| 914 | 7.26 | runtime | EXP_07_26_039_RUNTIME_SHIFT_NEGATIVE_DISTANCE.ets | 负移位距离在掩码后变为正数距离的验证 | runtime ✅ |
| 915 | 7.26 | runtime | EXP_07_26_040_RUNTIME_UNSIGNED_RIGHT_FORMULA.ets | 验证 >>> 的公式定义对负值成立：n >>> s = (n >> s) + (2 << ~s) | runtime ✅ |
| 916 | 7.27.1 | compile-pass | EXP_07_27_01_001_PASS_INT_RELATIONAL.ets | int 类型的 <, <=, >, >= 四个数值关系运算符编译通过 | compile-pass ✅ |
| 917 | 7.27.1 | compile-pass | EXP_07_27_01_002_PASS_LONG_RELATIONAL.ets | long 类型的 <, <=, >, >= 四个数值关系运算符编译通过 | compile-pass ✅ |
| 918 | 7.27.1 | compile-pass | EXP_07_27_01_003_PASS_FLOAT_RELATIONAL.ets | float 类型的 <, <=, >, >= 四个数值关系运算符编译通过 | compile-pass ✅ |
| 919 | 7.27.1 | compile-pass | EXP_07_27_01_004_PASS_DOUBLE_RELATIONAL.ets | double 类型的 <, <=, >, >= 四个数值关系运算符编译通过 | compile-pass ✅ |
| 920 | 7.27.1 | compile-pass | EXP_07_27_01_005_PASS_BYTE_SHORT_PROMOTION.ets | byte/short 在数值关系比较中自动提升为 int 后编译通过 | compile-pass ✅ |
| 921 | 7.27.1 | compile-pass | EXP_07_27_01_006_PASS_MIXED_NUMERIC.ets | 混合数值类型在关系比较中编译通过（int+long、int+float 等） | compile-pass ✅ |
| 922 | 7.27.1 | compile-fail | EXP_07_27_01_021_FAIL_STRING_OPERAND.ets | string 与 int 进行 < 比较时产生编译时错误 | compile-fail ✅ |
| 923 | 7.27.1 | compile-fail | EXP_07_27_01_022_FAIL_BOOLEAN_OPERAND.ets | boolean 与 int 进行 <= 比较时产生编译时错误 | compile-fail ✅ |
| 924 | 7.27.1 | compile-fail | EXP_07_27_01_023_FAIL_OBJECT_OPERAND.ets | Object 与 int 进行 > 比较时产生编译时错误 | compile-fail ✅ |
| 925 | 7.27.1 | compile-fail | EXP_07_27_01_024_FAIL_NULLISH_OPERAND.ets | null/undefined 与 int 进行 >= 比较时产生编译时错误 | compile-fail ✅ |
| 926 | 7.27.1 | compile-fail | EXP_07_27_01_025_FAIL_NON_NUMERIC_BOTH.ets | 双方均为非数值类型进行关系比较时产生编译时错误 | compile-fail ✅ |
| 927 | 7.27.1 | runtime | EXP_07_27_01_031_RUNTIME_INT_COMPARISON.ets | int 类型 <, <=, >, >= 四个关系运算符的基本值正确性 | runtime ✅ |
| 928 | 7.27.1 | runtime | EXP_07_27_01_032_RUNTIME_INT_EDGE.ets | int 边界值（MAX_VALUE、MIN_VALUE、负数边界）的关系比较 | runtime ✅ |
| 929 | 7.27.1 | runtime | EXP_07_27_01_033_RUNTIME_LONG_COMPARISON.ets | long 类型 <, <=, >, >= 四个关系运算符的基本值正确性 | runtime ✅ |
| 930 | 7.27.1 | runtime | EXP_07_27_01_034_RUNTIME_FLOAT_COMPARISON.ets | float 类型 <, <=, >, >= 四个关系运算符的基本值正确性 | runtime ✅ |
| 931 | 7.27.1 | runtime | EXP_07_27_01_035_RUNTIME_DOUBLE_COMPARISON.ets | double 类型 <, <=, >, >= 四个关系运算符的基本值正确性 | runtime ✅ |
| 932 | 7.27.1 | runtime | EXP_07_27_01_036_RUNTIME_IEEE754_SPECIAL.ets | IEEE 754：NaN 恒 false、-Inf<有限值、+Inf>有限值、+0=-0 | runtime ✅ |
| 933 | 7.27.1 | runtime | EXP_07_27_01_037_RUNTIME_MIXED_TYPES.ets | 混合数值类型在关系比较中的值正确性 | runtime ✅ |
| 934 | 7.27.1 | runtime | EXP_07_27_01_038_RUNTIME_BYTE_SHORT.ets | byte/short 提升为 int 后的关系比较值正确性 | runtime ✅ |
| 935 | 7.27.2 | compile-pass | EXP_07_27_02_001_PASS_BIGINT_BIGINT.ets | bigint vs bigint 全部四个关系运算符编译通过 | compile-pass ✅ |
| 936 | 7.27.2 | compile-pass | EXP_07_27_02_002_PASS_BIGINT_INT.ets | bigint 与 int 关系运算编译通过，int 隐式转换为 bigint | compile-pass ✅ |
| 937 | 7.27.2 | compile-pass | EXP_07_27_02_003_PASS_BIGINT_LONG.ets | bigint 与 long 关系运算编译通过，long 隐式转换为 bigint | compile-pass ✅ |
| 938 | 7.27.2 | compile-pass | EXP_07_27_02_004_PASS_BIGINT_BYTE_SHORT.ets | bigint 与 byte/short 关系运算编译通过，byte/short→bigint | compile-pass ✅ |
| 939 | 7.27.2 | compile-pass | EXP_07_27_02_005_PASS_BIGINT_DOUBLE.ets | bigint 与 double 关系运算编译通过，bigint→double 后比较 | compile-pass ✅ |
| 940 | 7.27.2 | compile-pass | EXP_07_27_02_006_PASS_BIGINT_FLOAT.ets | bigint 与 float 关系运算编译通过，两者→double 后比较 | compile-pass ✅ |
| 941 | 7.27.2 | compile-fail | EXP_07_27_02_011_FAIL_BIGINT_STRING.ets | bigint 与 string 关系运算产生编译时错误 | compile-fail ✅ |
| 942 | 7.27.2 | compile-fail | EXP_07_27_02_012_FAIL_BIGINT_BOOLEAN.ets | bigint 与 boolean 关系运算产生编译时错误 | compile-fail ✅ |
| 943 | 7.27.2 | compile-fail | EXP_07_27_02_013_FAIL_BIGINT_OBJECT.ets | bigint 与 Object 关系运算产生编译时错误 | compile-fail ✅ |
| 944 | 7.27.2 | compile-fail | EXP_07_27_02_014_FAIL_BIGINT_NULL.ets | bigint 与 null 关系运算产生编译时错误 | compile-fail ✅ |
| 945 | 7.27.2 | compile-fail | EXP_07_27_02_015_FAIL_BIGINT_UNDEFINED.ets | bigint 与 undefined 关系运算产生编译时错误 | compile-fail ✅ |
| 946 | 7.27.2 | runtime | EXP_07_27_02_021_RUNTIME_BIGINT_BIGINT.ets | bigint vs bigint 四种关系运算符运行时行为验证 | runtime ✅ |
| 947 | 7.27.2 | runtime | EXP_07_27_02_022_RUNTIME_BIGINT_EDGE.ets | bigint 边界值比较运行时验证（大正数、大负数、零） | runtime ✅ |
| 948 | 7.27.2 | runtime | EXP_07_27_02_023_RUNTIME_BIGINT_INT.ets | bigint 与 int 关系运算运行时验证，int→bigint 后比较 | runtime ✅ |
| 949 | 7.27.2 | runtime | EXP_07_27_02_024_RUNTIME_BIGINT_LONG.ets | bigint 与 long 关系运算运行时验证，long→bigint 后比较 | runtime ✅ |
| 950 | 7.27.2 | runtime | EXP_07_27_02_025_RUNTIME_BIGINT_DOUBLE.ets | bigint 与 double 关系运算运行时验证，bigint→double 后比较 | runtime ✅ |
| 951 | 7.27.2 | runtime | EXP_07_27_02_026_RUNTIME_BIGINT_FLOAT.ets | bigint 与 float 关系运算运行时验证，两者→double 后比较 | runtime ✅ |
| 952 | 7.27.2 | runtime | EXP_07_27_02_027_RUNTIME_BIGINT_MIXED_ALL.ets | bigint 与全部数值类型混合比较运行时验证 | runtime ✅ |
| 953 | 7.27.2 | runtime | EXP_07_27_02_028_RUNTIME_SPEC_EXAMPLES.ets | Spec 文档中全部 bigint 关系运算符示例运行时验证 | runtime ✅ |
| 954 | 7.27.3 | compile-pass | EXP_07_27_03_001_PASS_STRING_BASIC.ets | 字符串四个关系运算符在基本字符串上编译通过 | compile-pass ✅ |
| 955 | 7.27.3 | compile-pass | EXP_07_27_03_002_PASS_STRING_EMPTY.ets | 空字符串与普通字符串的四个关系运算符编译通过 | compile-pass ✅ |
| 956 | 7.27.3 | compile-pass | EXP_07_27_03_003_PASS_STRING_CASE.ets | 字符串大小写比较的四个关系运算符编译通过 | compile-pass ✅ |
| 957 | 7.27.3 | compile-pass | EXP_07_27_03_004_PASS_STRING_ASCII_ORDER.ets | ASCII 字符顺序（数字<大写字母<小写字母）关系运算符编译通过 | compile-pass ✅ |
| 958 | 7.27.3 | compile-pass | EXP_07_27_03_005_PASS_STRING_EQUAL.ets | 相同字符串比较编译通过 | compile-pass ✅ |
| 959 | 7.27.3 | compile-pass | EXP_07_27_03_006_PASS_STRING_VARIABLES.ets | 字符串变量比较的所有关系运算符编译通过 | compile-pass ✅ |
| 960 | 7.27.3 | compile-fail | EXP_07_27_03_011_FAIL_STRING_INT.ets | string 与 int 关系运算产生编译时错误 | compile-fail ✅ |
| 961 | 7.27.3 | compile-fail | EXP_07_27_03_012_FAIL_STRING_BOOLEAN.ets | string 与 boolean 关系运算产生编译时错误 | compile-fail ✅ |
| 962 | 7.27.3 | compile-fail | EXP_07_27_03_013_FAIL_STRING_BIGINT.ets | string 与 bigint 关系运算产生编译时错误 | compile-fail ✅ |
| 963 | 7.27.3 | compile-fail | EXP_07_27_03_014_FAIL_STRING_DOUBLE.ets | string 与 double 关系运算产生编译时错误 | compile-fail ✅ |
| 964 | 7.27.3 | compile-fail | EXP_07_27_03_015_FAIL_STRING_OBJECT.ets | string 与 Object 关系运算产生编译时错误 | compile-fail ✅ |
| 965 | 7.27.3 | compile-fail | EXP_07_27_03_016_FAIL_STRING_FLOAT.ets | string 与 float 关系运算产生编译时错误 | compile-fail ✅ |
| 966 | 7.27.3 | runtime | EXP_07_27_03_021_RUNTIME_BASIC.ets | 字符串四个关系运算符的基本运行时行为 | runtime ✅ |
| 967 | 7.27.3 | runtime | EXP_07_27_03_022_RUNTIME_EMPTY_PREFIX.ets | 空字符串和前缀规则的词典序运行时行为 | runtime ✅ |
| 968 | 7.27.3 | runtime | EXP_07_27_03_023_RUNTIME_CASE_SENSITIVITY.ets | 字符串大小写敏感的词典序运行时行为 | runtime ✅ |
| 969 | 7.27.3 | runtime | EXP_07_27_03_024_RUNTIME_ASCII_ORDER.ets | ASCII 字符顺序的词典序运行时行为 | runtime ✅ |
| 970 | 7.27.3 | runtime | EXP_07_27_03_025_RUNTIME_EQUAL_STRINGS.ets | 相同字符串的关系运算符运行时行为 | runtime ✅ |
| 971 | 7.27.3 | runtime | EXP_07_27_03_026_RUNTIME_LEXICOGRAPHIC.ets | 词典序详细比较规则运行时验证 | runtime ✅ |
| 972 | 7.27.3 | runtime | EXP_07_27_03_027_RUNTIME_LONG_STRINGS.ets | 长字符串的词典序运行时行为 | runtime ✅ |
| 973 | 7.27.3 | runtime | EXP_07_27_03_028_RUNTIME_STRING_VARIABLES.ets | 字符串变量和常量比较的运行时行为 | runtime ✅ |
| 974 | 7.27.4 | compile-pass | EXP_07_27_04_001_PASS_BOOL_BASIC.ets | boolean 四个关系运算符在 true/false 文字量上编译通过 | compile-pass ✅ |
| 975 | 7.27.4 | compile-pass | EXP_07_27_04_002_PASS_BOOL_VARIABLES.ets | let boolean 变量之间关系运算编译通过 | compile-pass ✅ |
| 976 | 7.27.4 | compile-pass | EXP_07_27_04_003_PASS_BOOL_CONST.ets | const boolean 常量之间关系运算编译通过 | compile-pass ✅ |
| 977 | 7.27.4 | compile-pass | EXP_07_27_04_004_PASS_BOOL_EXPRESSION.ets | boolean 逻辑表达式作为操作数编译通过 | compile-pass ✅ |
| 978 | 7.27.4 | compile-pass | EXP_07_27_04_005_PASS_BOOL_RETURN.ets | 函数返回 boolean 值作为关系操作数编译通过 | compile-pass ✅ |
| 979 | 7.27.4 | compile-fail | EXP_07_27_04_011_FAIL_BOOL_INT.ets | boolean 与 int 混合比较产生编译时错误 | compile-fail ✅ |
| 980 | 7.27.4 | compile-fail | EXP_07_27_04_012_FAIL_BOOL_STRING.ets | boolean 与 string 混合比较产生编译时错误 | compile-fail ✅ |
| 981 | 7.27.4 | compile-fail | EXP_07_27_04_013_FAIL_BOOL_BIGINT.ets | boolean 与 bigint 混合比较产生编译时错误 | compile-fail ✅ |
| 982 | 7.27.4 | compile-fail | EXP_07_27_04_014_FAIL_BOOL_DOUBLE.ets | boolean 与 double 混合比较产生编译时错误 | compile-fail ✅ |
| 983 | 7.27.4 | compile-fail | EXP_07_27_04_015_FAIL_BOOL_OBJECT.ets | boolean 与 Object 混合比较产生编译时错误 | compile-fail ✅ |
| 984 | 7.27.4 | compile-fail | EXP_07_27_04_016_FAIL_BOOL_FLOAT.ets | boolean 与 float 混合比较产生编译时错误 | compile-fail ✅ |
| 985 | 7.27.4 | runtime | EXP_07_27_04_021_RUNTIME_BASIC.ets | boolean 完整真值表：4 运算符 × 4 组合 = 16 个结果验证 | runtime ✅ |
| 986 | 7.27.4 | runtime | EXP_07_27_04_022_RUNTIME_VARIABLES.ets | let/const boolean 变量关系运算运行时行为 | runtime ✅ |
| 987 | 7.27.4 | runtime | EXP_07_27_04_023_RUNTIME_EXPRESSIONS.ets | boolean 表达式（逻辑运算结果）作为关系操作数运行时行为 | runtime ✅ |
| 988 | 7.27.4 | runtime | EXP_07_27_04_024_RUNTIME_EDGE.ets | 函数返回值/条件表达式作为 boolean 关系操作数运行时行为 | runtime ✅ |
| 989 | 7.27.5 | compile-pass | EXP_07_27_05_001_PASS_CHAR_BASIC.ets | char 四个关系运算符在文字量上编译通过 | compile-pass ✅ |
| 990 | 7.27.5 | compile-pass | EXP_07_27_05_002_PASS_CHAR_VARIABLES.ets | let char 变量之间关系运算编译通过 | compile-pass ✅ |
| 991 | 7.27.5 | compile-pass | EXP_07_27_05_003_PASS_CHAR_CONST.ets | const char 常量之间关系运算编译通过 | compile-pass ✅ |
| 992 | 7.27.5 | compile-pass | EXP_07_27_05_004_PASS_CHAR_NUMERIC.ets | char 与数值类型 byte/int/long/double 关系运算编译通过 | compile-pass ✅ |
| 993 | 7.27.5 | compile-pass | EXP_07_27_05_005_PASS_CHAR_EXPRESSION.ets | 函数返回值作为 char 关系操作数编译通过 | compile-pass ✅ |
| 994 | 7.27.5 | compile-fail | EXP_07_27_05_011_FAIL_CHAR_STRING.ets | char 与 string 关系运算产生编译时错误 | compile-fail ✅ |
| 995 | 7.27.5 | compile-fail | EXP_07_27_05_012_FAIL_CHAR_BOOLEAN.ets | char 与 boolean 关系运算产生编译时错误 | compile-fail ✅ |
| 996 | 7.27.5 | compile-fail | EXP_07_27_05_013_FAIL_CHAR_BIGINT.ets | char 与 bigint 关系运算产生编译时错误 | compile-fail ✅ |
| 997 | 7.27.5 | runtime | EXP_07_27_05_021_RUNTIME_ORDERING.ets | ASCII 字符序验证：4 运算符 × 4 组合 = 16 断言 | runtime ✅ |
| 998 | 7.27.5 | runtime | EXP_07_27_05_022_RUNTIME_BOUNDARY.ets | 边界值比较：最小值（0）、最大值（65535） | runtime ✅ |
| 999 | 7.27.5 | runtime | EXP_07_27_05_023_RUNTIME_NUMERIC.ets | char 与 int/long/double 隐式转换比较运行时验证 | runtime ✅ |
| 1000 | 7.27.5 | runtime | EXP_07_27_05_024_RUNTIME_EDGE.ets | char 变量/函数返回值/逻辑表达式场景运行时验证 | runtime ✅ |
| 1001 | 7.27.6 | compile-pass | EXP_07_27_06_001_PASS_ENUM_INT_BASIC.ets | int 基类型枚举四个关系运算符编译通过 | compile-pass ✅ |
| 1002 | 7.27.6 | compile-pass | EXP_07_27_06_002_PASS_ENUM_LONG_BASIC.ets | long 基类型枚举四个关系运算符编译通过 | compile-pass ✅ |
| 1003 | 7.27.6 | compile-pass | EXP_07_27_06_003_PASS_ENUM_BYTE_BASIC.ets | byte 基类型枚举四个关系运算符编译通过 | compile-pass ✅ |
| 1004 | 7.27.6 | compile-pass | EXP_07_27_06_004_PASS_ENUM_STRING_BASIC.ets | string 基类型枚举四个关系运算符编译通过 | compile-pass ✅ |
| 1005 | 7.27.6 | compile-pass | EXP_07_27_06_005_PASS_ENUM_INT_MIXED.ets | 混合初始化的 int 基类型枚举关系运算编译通过 | compile-pass ✅ |
| 1006 | 7.27.6 | compile-fail | EXP_07_27_06_011_FAIL_DIFFERENT_ENUM.ets | 不同类型枚举的成员关系运算产生编译时错误 | compile-fail ✅ |
| 1007 | 7.27.6 | compile-fail | EXP_07_27_06_012_FAIL_ENUM_VS_NUMERIC.ets | 枚举与数值类型的关系运算（⚠️ SPEC不一致） | compile-fail ⚠️ |
| 1008 | 7.27.6 | compile-fail | EXP_07_27_06_013_FAIL_ENUM_VS_STRING.ets | 枚举与字符串类型的关系运算（⚠️ SPEC不一致） | compile-fail ⚠️ |
| 1009 | 7.27.6 | compile-fail | EXP_07_27_06_014_FAIL_DIFFERENT_ENUM_SAME_BASE.ets | 不同枚举类型（相同基类型）关系运算产生编译时错误 | compile-fail ✅ |
| 1010 | 7.27.6 | runtime | EXP_07_27_06_021_RUNTIME_INT_ORDER.ets | int 基类型枚举序比较运行时验证：12 断言 | runtime ✅ |
| 1011 | 7.27.6 | runtime | EXP_07_27_06_022_RUNTIME_LONG_ORDER.ets | long 基类型枚举序比较运行时验证：12 断言 | runtime ✅ |
| 1012 | 7.27.6 | runtime | EXP_07_27_06_023_RUNTIME_STRING_ORDER.ets | string 基类型枚举序比较运行时验证：12 断言 | runtime ✅ |
| 1013 | 7.27.6 | runtime | EXP_07_27_06_024_RUNTIME_BYTE_ORDER.ets | byte 基类型枚举序比较运行时验证：12 断言 | runtime ✅ |
| 1014 | 7.28.1 | compile-pass | EXP_07_28_01_001_PASS_INT_EQUALITY.ets | int 类型 ==, !=, ===, !== 编译通过 | compile-pass ✅ |
| 1015 | 7.28.1 | compile-pass | EXP_07_28_01_002_PASS_LONG_EQUALITY.ets | long 类型 ==, !=, ===, !== 编译通过 | compile-pass ✅ |
| 1016 | 7.28.1 | compile-pass | EXP_07_28_01_003_PASS_BYTE_SHORT_PROMOTION.ets | byte/short 加宽为 int 后等值比较 | compile-pass ✅ |
| 1017 | 7.28.1 | compile-pass | EXP_07_28_01_004_PASS_FLOAT_EQUALITY.ets | float 类型 ==, != 编译通过（含 NaN/Inf） | compile-pass ✅ |
| 1018 | 7.28.1 | compile-pass | EXP_07_28_01_005_PASS_DOUBLE_EQUALITY.ets | double 类型 ==, != 编译通过（含 NaN/Inf） | compile-pass ✅ |
| 1019 | 7.28.1 | compile-pass | EXP_07_28_01_006_PASS_CHAR_VS_NUMERIC.ets | char 与数值类型等值比较 | compile-pass ✅ |
| 1020 | 7.28.1 | compile-pass | EXP_07_28_01_007_PASS_MIXED_NUMERIC.ets | 混合数值类型（int+long等）等值比较 | compile-pass ✅ |
| 1021 | 7.28.1 | compile-pass | EXP_07_28_01_008_PASS_BIGINT_EQUALITY.ets | bigint 类型 ==, !=, ===, !== 编译通过 | compile-pass ✅ |
| 1022 | 7.28.1 | compile-pass | EXP_07_28_01_009_PASS_BIGINT_VS_NUMERIC.ets | bigint 与数值类型比较（结果 false，编译通过） | compile-pass ✅ |
| 1023 | 7.28.1 | compile-pass | EXP_07_28_01_010_PASS_OBJECT_WRAPPER.ets | 数值与 Number 包装对象比较 | compile-pass ✅ |
| 1024 | 7.28.1 | compile-pass | EXP_07_28_01_011_PASS_SPEC_EXAMPLES.ets | spec 示例：5==5, 5!=5, 5===5, 5==new Number(5), 5==5.0 | compile-pass ✅ |
| 1025 | 7.28.1 | compile-pass | EXP_07_28_01_012_PASS_NAN_INF_ZERO.ets | NaN/Infinity/-0.0 等值比较编译通过 | compile-pass ✅ |
| 1026 | 7.28.1 | compile-fail | EXP_07_28_01_013_FAIL_BOOLEAN_VS_NUMERIC.ets | boolean == int 编译时错误 | compile-fail ✅ |
| 1027 | 7.28.1 | compile-fail | EXP_07_28_01_014_FAIL_STRING_VS_NUMERIC.ets | string == int 编译时错误 | compile-fail ✅ |
| 1028 | 7.28.1 | compile-fail | EXP_07_28_01_015_FAIL_OBJECT_VS_NUMERIC.ets | Object == int（⚠️ SPEC不一致：实现允许通过） | compile-fail ⚠️ |
| 1029 | 7.28.1 | compile-fail | EXP_07_28_01_016_FAIL_ENUM_VS_NUMERIC.ets | enum == int（⚠️ SPEC不一致：实现允许通过） | compile-fail ⚠️ |
| 1030 | 7.28.1 | compile-fail | EXP_07_28_01_017_FAIL_NULLISH_WITH_NUMERIC.ets | null/undefined == int（⚠️ SPEC不一致：实现允许通过） | compile-fail ⚠️ |
| 1031 | 7.28.1 | runtime | EXP_07_28_01_018_RUNTIME_INT_EQUALITY.ets | int 等值基本值运行时验证：含 spec 示例 | runtime ✅ |
| 1032 | 7.28.1 | runtime | EXP_07_28_01_019_RUNTIME_FLOAT_IEEE754.ets | IEEE 754 NaN/Inf/-0.0 等值规则运行时验证 | runtime ✅ |
| 1033 | 7.28.1 | runtime | EXP_07_28_01_020_RUNTIME_MIXED_TYPES.ets | 混合类型等值比较运行时验证 | runtime ✅ |
| 1034 | 7.28.1 | runtime | EXP_07_28_01_021_RUNTIME_BIGINT.ets | bigint 等值 + bigint vs numeric 运行时验证 | runtime ✅ |
| 1035 | 7.28.2 | compile-pass | EXP_07_28_02_001_PASS_SAME_FUNCTION.ets | same function foo == foo | compile-pass ✅ |
| 1036 | 7.28.2 | compile-pass | EXP_07_28_02_002_PASS_DIFF_FUNCTION.ets | diff function foo == bar | compile-pass ✅ |
| 1037 | 7.28.2 | compile-pass | EXP_07_28_02_003_PASS_DIFF_SIGNATURE.ets | diff signature foo == goo | compile-pass ✅ |
| 1038 | 7.28.2 | compile-pass | EXP_07_28_02_004_PASS_SAME_INSTANCE_METHOD.ets | same instance same method | compile-pass ✅ |
| 1039 | 7.28.2 | compile-pass | EXP_07_28_02_005_PASS_STATIC_METHOD.ets | static method reference | compile-pass ✅ |
| 1040 | 7.28.2 | compile-pass | EXP_07_28_02_006_PASS_DIFF_INSTANCE_METHOD.ets | diff instance same method | compile-pass ✅ |
| 1041 | 7.28.2 | compile-pass | EXP_07_28_02_007_PASS_DIFF_METHOD_NAME.ets | same instance diff method | compile-pass ✅ |
| 1042 | 7.28.2 | compile-pass | EXP_07_28_02_008_PASS_STRICT_EQUALITY_FUNCTION.ets | ===/!== for functions | compile-pass ✅ |
| 1043 | 7.28.2 | compile-pass | EXP_07_28_02_009_PASS_SPEC_EXAMPLES.ets | all spec examples | compile-pass ✅ |
| 1044 | 7.28.2 | compile-fail | EXP_07_28_02_010_FAIL_FUNCTION_VS_NUMERIC.ets | function vs int | compile-fail ✅ |
| 1045 | 7.28.2 | compile-fail | EXP_07_28_02_011_FAIL_FUNCTION_VS_STRING.ets | function vs string | compile-fail ✅ |
| 1046 | 7.28.2 | compile-fail | EXP_07_28_02_012_FAIL_FUNCTION_VS_BOOLEAN.ets | function vs boolean | compile-fail ✅ |
| 1047 | 7.28.2 | runtime | EXP_07_28_02_013_RUNTIME_SAME_FUNCTION.ets | same/diff function objects | runtime ✅ |
| 1048 | 7.28.2 | runtime | EXP_07_28_02_014_RUNTIME_METHOD_REFERENCE.ets | method reference equality | runtime ✅ |
| 1049 | 7.28.2 | runtime | EXP_07_28_02_015_RUNTIME_STRICT_EQUALITY_FUNCTION.ets | ===/!== function runtime | runtime ✅ |
| 1050 | 7.28.2 | runtime | EXP_07_28_02_016_RUNTIME_ALL_SPEC_EXAMPLES.ets | all spec examples runtime | runtime ✅ |
| 1051 | 7.28.3 | compile-pass | EXP_07_28_03_001_PASS_NULL_EQ_UNDEFINED.ets | null == undefined literal comparison | compile-pass ✅ |
| 1052 | 7.28.3 | compile-pass | EXP_07_28_03_002_PASS_NULL_NULL_COMPARISON.ets | null == null, null === null | compile-pass ✅ |
| 1053 | 7.28.3 | compile-pass | EXP_07_28_03_003_PASS_UNDEFINED_UNDEFINED_COMPARISON.ets | undefined == undefined, undefined === undefined | compile-pass ✅ |
| 1054 | 7.28.3 | compile-pass | EXP_07_28_03_004_PASS_NULL_NE_UNDEFINED.ets | null != undefined, null !== undefined | compile-pass ✅ |
| 1055 | 7.28.3 | compile-pass | EXP_07_28_03_005_PASS_NULLABLE_TYPE_PARAM.ets | nullable type param comparison (spec example) | compile-pass ✅ |
| 1056 | 7.28.3 | compile-pass | EXP_07_28_03_006_PASS_NULL_VARIABLE.ets | null variable comparison | compile-pass ✅ |
| 1057 | 7.28.3 | compile-pass | EXP_07_28_03_007_PASS_UNDEFINED_VARIABLE.ets | undefined variable comparison | compile-pass ✅ |
| 1058 | 7.28.3 | compile-pass | EXP_07_28_03_008_PASS_SPEC_EXAMPLES.ets | all spec examples | compile-pass ✅ |
| 1059 | 7.28.3 | runtime | EXP_07_28_03_012_RUNTIME_NULL_UNDEFINED_LITERALS.ets | literal null/undefined equality runtime (12 assertions) | runtime ✅ |
| 1060 | 7.28.3 | runtime | EXP_07_28_03_013_RUNTIME_NULLABLE_PARAM.ets | nullable param null/undefined comparison (spec example) | runtime ✅ |
| 1061 | 7.28.3 | runtime | EXP_07_28_03_014_RUNTIME_NULLABLE_VARIABLES.ets | nullable variable null/undefined comparison (10 assertions) | runtime ✅ |
| 1062 | 7.28.3 | runtime | EXP_07_28_03_015_RUNTIME_SPEC_EXAMPLES.ets | all spec examples runtime (5 assertions) | runtime ✅ |
| 1063 | 7.29.1 | compile-pass | EXP_07_29_01_001_PASS_INT_BITWISE_BASIC.ets | int &, ^, \| basic | compile-pass ✅ |
| 1064 | 7.29.1 | compile-pass | EXP_07_29_01_002_PASS_LONG_BITWISE_BASIC.ets | long &, ^, \| basic | compile-pass ✅ |
| 1065 | 7.29.1 | compile-pass | EXP_07_29_01_003_PASS_BYTE_SHORT_PROMOTION.ets | byte/short → int promotion | compile-pass ✅ |
| 1066 | 7.29.1 | compile-pass | EXP_07_29_01_004_PASS_MIXED_INT_TYPES.ets | mixed int types (widening) | compile-pass ✅ |
| 1067 | 7.29.1 | compile-pass | EXP_07_29_01_005_PASS_FLOAT_DOUBLE_TRUNCATION.ets | float/double truncation before bitwise | compile-pass ✅ |
| 1068 | 7.29.1 | compile-pass | EXP_07_29_01_006_PASS_BIGINT_BITWISE.ets | bigint &, ^, \| basic | compile-pass ✅ |
| 1069 | 7.29.1 | compile-pass | EXP_07_29_01_007_PASS_BITWISE_CHAINED_PRECEDENCE.ets | chained bitwise with precedence (& > ^ > \|) | compile-pass ✅ |
| 1070 | 7.29.1 | compile-fail | EXP_07_29_01_008_FAIL_BIGINT_NUMERIC_MIXED.ets | bigint & int → compile error | compile-fail ✅ |
| 1071 | 7.29.1 | compile-fail | EXP_07_29_01_009_FAIL_BIGINT_FLOAT_MIXED.ets | bigint ^ float → compile error | compile-fail ✅ |
| 1072 | 7.29.1 | runtime | EXP_07_29_01_010_RUNTIME_INT_BITWISE.ets | int bitwise runtime (16 assertions) | runtime ✅ |
| 1073 | 7.29.1 | runtime | EXP_07_29_01_011_RUNTIME_LONG_BITWISE.ets | long bitwise runtime (14 assertions) | runtime ✅ |
| 1074 | 7.29.1 | runtime | EXP_07_29_01_012_RUNTIME_BIGINT_BITWISE.ets | bigint bitwise runtime (14 assertions) | runtime ✅ |
| 1075 | 7.29.1 | runtime | EXP_07_29_01_013_RUNTIME_FLOAT_DOUBLE_TRUNCATION.ets | float/double truncation runtime (10 assertions) | runtime ✅ |
| 1076 | 7.29.2 | compile-pass | EXP_07_29_02_001_PASS_BOOLEAN_AND.ets | boolean & (AND) 4 truth table combinations | compile-pass ✅ |
| 1077 | 7.29.2 | compile-pass | EXP_07_29_02_002_PASS_BOOLEAN_XOR_OR.ets | boolean ^ (XOR) and | (OR) 4 truth table combos each | compile-pass ✅ |
| 1078 | 7.29.2 | compile-pass | EXP_07_29_02_003_PASS_BOOLEAN_CHAINED.ets | chained boolean logical with parentheses & precedence | compile-pass ✅ |
| 1079 | 7.29.2 | compile-fail | EXP_07_29_02_004_FAIL_BOOLEAN_NUMERIC_MIXED.ets | boolean &/^/| with int/float/long → compile error | compile-fail ✅ |
| 1080 | 7.29.2 | compile-fail | EXP_07_29_02_005_FAIL_BOOLEAN_STRING_BIGINT_MIXED.ets | boolean &/^/| with string/bigint → compile error | compile-fail ✅ |
| 1081 | 7.29.2 | runtime | EXP_07_29_02_006_RUNTIME_BOOLEAN_LOGICAL.ets | boolean logical runtime truth tables (24 assertions) | runtime ✅ |
| 1082 | 7.30 | compile-pass | EXP_07_30_001_PASS_COND_AND_TRUTH_TABLE.ets | boolean && 4 truth table combinations | compile-pass ✅ |
| 1083 | 7.30 | compile-pass | EXP_07_30_002_PASS_COND_AND_SHORT_CIRCUIT.ets | short-circuit behavior (RHS not evaluated when LHS false) | compile-pass ✅ |
| 1084 | 7.30 | compile-pass | EXP_07_30_003_PASS_COND_AND_CHAINED.ets | chained && with associativity & parentheses | compile-pass ✅ |
| 1085 | 7.30 | compile-fail | EXP_07_30_004_FAIL_COND_AND_NUMERIC_MIXED.ets | boolean && with int/float/long → compile error | compile-fail ✅ |
| 1086 | 7.30 | compile-fail | EXP_07_30_005_FAIL_COND_AND_STRING_BIGINT_MIXED.ets | boolean && with string/bigint → compile error | compile-fail ✅ |
| 1087 | 7.30 | runtime | EXP_07_30_006_RUNTIME_COND_AND_SEMANTICS.ets | && runtime: truth table + short-circuit + chain + associativity + variable + & consistency (24 assertions) | runtime ✅ |
| 1088 | 7.31 | compile-pass | EXP_07_31_001_PASS_COND_OR_TRUTH_TABLE.ets | boolean || 4 truth table combinations | compile-pass ✅ |
| 1089 | 7.31 | compile-pass | EXP_07_31_002_PASS_COND_OR_SHORT_CIRCUIT.ets | short-circuit behavior (RHS not evaluated when LHS true) | compile-pass ✅ |
| 1090 | 7.31 | compile-pass | EXP_07_31_003_PASS_COND_OR_CHAINED.ets | chained || with associativity & parentheses | compile-pass ✅ |
| 1091 | 7.31 | compile-fail | EXP_07_31_004_FAIL_COND_OR_NUMERIC_MIXED.ets | boolean || with int/float/long → compile error | compile-fail ✅ |
| 1092 | 7.31 | compile-fail | EXP_07_31_005_FAIL_COND_OR_STRING_BIGINT_MIXED.ets | boolean || with string/bigint → compile error | compile-fail ✅ |
| 1093 | 7.31 | runtime | EXP_07_31_006_RUNTIME_COND_OR_SEMANTICS.ets | || runtime: truth table + short-circuit + chain + associativity + variable + | consistency (24 assertions) | runtime ✅ |
| 1094 | 7.32.1 | compile-pass | EXP_07_32_01_001_PASS_SIMPLE_VARIABLE_ASSIGN.ets | int/long/float/double/string/boolean 变量赋值 | compile-pass ✅ |
| 1095 | 7.32.1 | compile-pass | EXP_07_32_01_002_PASS_FIELD_ACCESS_ASSIGN.ets | field access e.f = value (int/string/boolean) | compile-pass ✅ |
| 1096 | 7.32.1 | compile-pass | EXP_07_32_01_003_PASS_ARRAY_INDEX_ASSIGN.ets | array index a[i] = value | compile-pass ✅ |
| 1097 | 7.32.1 | compile-pass | EXP_07_32_01_004_PASS_RECORD_INDEX_ASSIGN.ets | record index rec[key] = value | compile-pass ✅ |
| 1098 | 7.32.1 | compile-pass | EXP_07_32_01_005_PASS_WIDENING_ASSIGN.ets | implicit widening (byte→int→long→float→double) | compile-pass ✅ |
| 1099 | 7.32.1 | compile-pass | EXP_07_32_01_006_PASS_SPEC_EXAMPLES.ets | all 4 spec examples | compile-pass ✅ |
| 1100 | 7.32.1 | compile-fail | EXP_07_32_01_007_FAIL_TYPE_MISMATCH.ets | type mismatch (narrowing + cross-type) | compile-fail ✅ |
| 1101 | 7.32.1 | compile-fail | EXP_07_32_01_008_FAIL_READONLY_ARRAY.ets | readonly array = non-readonly array | compile-fail（⚠️ SPEC不一致）|
| 1102 | 7.32.1 | compile-fail | EXP_07_32_01_009_FAIL_READONLY_TUPLE.ets | readonly tuple = non-readonly tuple | compile-fail（⚠️ SPEC不一致）|
| 1103 | 7.32.1 | runtime | EXP_07_32_01_010_RUNTIME_SEMANTICS.ets | runtime semantics: 6type assign + field + array + record + chained (17 assertions) | runtime ✅ |
| 1104 | 7.32.1 | runtime | EXP_07_32_01_011_RUNTIME_RANGEERROR_NEGATIVE.ets | arr[negOne()]=99 → RangeError (function-call index) | runtime ✅ |
| 1105 | 7.32.1 | runtime | EXP_07_32_01_012_RUNTIME_RANGEERROR_TOO_LARGE.ets | arr[5]=99 (len=3) → RangeError | runtime ✅ |
| 1106 | 7.32.2 | compile-pass | EXP_07_32_02_001_PASS_ARITHMETIC_COMPOUND.ets | arithmetic compound (+= -= *= /= %=) int/long/float/double | compile-pass ✅ |
| 1107 | 7.32.2 | compile-pass | EXP_07_32_02_002_PASS_SHIFT_BITWISE_COMPOUND.ets | shift/bitwise compound (<<=>>=>>>=&=|=^=) int/long/boolean | compile-pass ✅ |
| 1108 | 7.32.2 | compile-pass | EXP_07_32_02_003_PASS_STRING_CONCAT_COMPOUND.ets | string += concatenation (string+string, string+int) | compile-pass ✅ |
| 1109 | 7.32.2 | compile-pass | EXP_07_32_02_004_PASS_FIELD_ARRAY_RECORD_COMPOUND.ets | field/array/record compound assignment | compile-pass ✅ |
| 1110 | 7.32.2 | compile-pass | EXP_07_32_02_006_PASS_SPEC_EXAMPLES.ets | all supported operators spec examples | compile-pass ✅ |
| 1111 | 7.32.2 | compile-fail | EXP_07_32_02_005_FAIL_NULLISH_COALESCING_UNSUPPORTED.ets | ??= syntax error (ESY0227) — compiler unsupported | compile-fail（⚠️ SPEC不一致）|
| 1112 | 7.32.2 | compile-fail | EXP_07_32_02_007_FAIL_TYPE_MISMATCH_COMPOUND.ets | operator/type mismatch (string-=, boolean+=, int+=string, etc.) | compile-fail ✅ |
| 1113 | 7.32.2 | compile-fail | EXP_07_32_02_008_FAIL_NULLISH_NONNULLABLE.ets | ??= on non-nullable (syntax error, not semantic) | compile-fail（⚠️ SPEC不一致）|
| 1114 | 7.32.2 | compile-fail | EXP_07_32_02_011_FAIL_NULLISH_BEHAVIOR_UNSUPPORTED.ets | ??= runtime semantics (syntax error, compiler unsupported) | compile-fail（⚠️ SPEC不一致）|
| 1115 | 7.32.2 | runtime | EXP_07_32_02_009_RUNTIME_SEMANTICS.ets | runtime semantics: 20+ assertions covering all operators and lhs forms | runtime ✅ |
| 1116 | 7.32.2 | runtime | EXP_07_32_02_010_RUNTIME_RANGEERROR_COMPOUND_A.ets | arr[-1] += 99 → RangeError (function-call index) | runtime ✅ |
| 1117 | 7.32.2 | runtime | EXP_07_32_02_010_RUNTIME_RANGEERROR_COMPOUND_B.ets | arr[5] += 5 (len=3) → RangeError | runtime ✅ |
| 1118 | 7.33 | compile-pass | EXP_07_33_001_PASS_TRUE_COMPILE_TIME_TYPE.ets | compile-time true → type of whenTrue | compile-pass ✅ |
| 1119 | 7.33 | compile-pass | EXP_07_33_002_PASS_FALSE_COMPILE_TIME_TYPE.ets | compile-time false → type of whenFalse | compile-pass ✅ |
| 1120 | 7.33 | compile-pass | EXP_07_33_003_PASS_CONDITION_UNKNOWN_TYPE.ets | unknown condition → union type normalization | compile-pass ✅ |
| 1121 | 7.33 | compile-pass | EXP_07_33_004_PASS_MIXED_TYPES.ets | mixed type combinations | compile-pass ✅ |
| 1122 | 7.33 | compile-pass | EXP_07_33_005_PASS_NESTED_TERNARY.ets | nested ternary right-associativity | compile-pass ✅ |
| 1123 | 7.33 | compile-pass | EXP_07_33_006_PASS_SPEC_EXAMPLES.ets | all 5 spec examples | compile-pass ✅ |
| 1124 | 7.33 | compile-pass | EXP_07_33_010_PASS_CONDITION_INT_TYPE.ets | int as condition (extended behavior) | compile-pass ✅ |
| 1125 | 7.33 | compile-pass | EXP_07_33_011_PASS_CONDITION_DOUBLE_TYPE.ets | double as condition (extended behavior) | compile-pass ✅ |
| 1126 | 7.33 | compile-pass | EXP_07_33_012_PASS_CONDITION_STRING_TYPE.ets | string as condition (extended behavior) | compile-pass ✅ |
| 1127 | 7.33 | compile-pass | EXP_07_33_013_PASS_CONDITION_OBJECT_TYPE.ets | object as condition (extended behavior) | compile-pass ✅ |
| 1128 | 7.33 | compile-fail | EXP_07_33_014_FAIL_TYPE_MISMATCH_ASSIGNMENT.ets | ternary string|int result not assignable to int | compile-fail ✅ |
| 1129 | 7.33 | runtime | EXP_07_33_015_RUNTIME_TRUE_CONDITION_VALUE.ets | true condition selects whenTrue value | runtime ✅ |
| 1130 | 7.33 | runtime | EXP_07_33_016_RUNTIME_FALSE_CONDITION_VALUE.ets | false condition selects whenFalse value | runtime ✅ |
| 1131 | 7.33 | runtime | EXP_07_33_017_RUNTIME_SHORT_CIRCUIT_SIDE_EFFECT.ets | short-circuit side effect verification | runtime ✅ |
| 1132 | 7.33 | runtime | EXP_07_33_018_RUNTIME_NESTED_TERNARY.ets | nested ternary runtime values | runtime ✅ |
| 1133 | 7.33 | runtime | EXP_07_33_019_RUNTIME_SPEC_EXAMPLES.ets | spec example runtime values | runtime ✅ |
| 1134 | 7.32.3 | compile-pass | EXP_07_32_03_001_PASS_VARIABLE_LHS.ets | variable as LHS (6 types) | compile-pass |
| 1135 | 7.32.3 | compile-pass | EXP_07_32_03_002_PASS_PARAMETER_LHS.ets | parameter (not this) as LHS | compile-pass |
| 1136 | 7.32.3 | compile-pass | EXP_07_32_03_003_PASS_FIELD_ACCESS_LHS.ets | field access as LHS | compile-pass |
| 1137 | 7.32.3 | compile-pass | EXP_07_32_03_004_PASS_ARRAY_INDEX_LHS.ets | array index as LHS | compile-pass |
| 1138 | 7.32.3 | compile-pass | EXP_07_32_03_005_PASS_RECORD_INDEX_LHS.ets | record index as LHS | compile-pass |
| 1139 | 7.32.3 | compile-pass | EXP_07_32_03_006_PASS_COMPOUND_INCREMENT_LHS.ets | compound assignment / increment on LHS | compile-pass |
| 1140 | 7.32.3 | compile-pass | EXP_07_32_03_007_PASS_NESTED_LHS.ets | nested LHS expressions | compile-pass |
| 1141 | 7.32.3 | compile-fail | EXP_07_32_03_008_FAIL_LITERAL_LHS.ets | literal (int) as LHS | compile-fail |
| 1142 | 7.32.3 | compile-fail | EXP_07_32_03_009_FAIL_METHOD_CALL_LHS.ets | method/function call as LHS | compile-fail |
| 1143 | 7.32.3 | compile-fail | EXP_07_32_03_010_FAIL_ARITHMETIC_LHS.ets | arithmetic expression as LHS | compile-fail |
| 1144 | 7.32.3 | compile-fail | EXP_07_32_03_011_FAIL_CHAINING_OP_LHS.ets | chaining operator ?. as LHS | compile-fail |
| 1145 | 7.32.3 | compile-fail | EXP_07_32_03_012_FAIL_READONLY_LHS.ets | readonly entity (const) as LHS | compile-fail |
| 1146 | 7.32.3 | compile-fail | EXP_07_32_03_013_FAIL_LAMBDA_LHS.ets | lambda expression as LHS | compile-fail |
| 1147 | 7.32.3 | compile-fail | EXP_07_32_03_014_FAIL_ARRAY_LITERAL_LHS.ets | array literal as LHS | compile-fail |
| 1148 | 7.32.3 | compile-fail | EXP_07_32_03_015_FAIL_OBJECT_LITERAL_LHS.ets | object literal as LHS | compile-fail |
| 1149 | 7.32.3 | compile-fail | EXP_07_32_03_016_FAIL_TERNARY_LHS.ets | ternary expression as LHS | compile-fail |
| 1150 | 7.32.3 | compile-fail | EXP_07_32_03_017_FAIL_NULLISH_COALESCING_LHS.ets | nullish coalescing (??) as LHS | compile-fail |
| 1151 | 7.32.3 | compile-fail | EXP_07_32_03_018_FAIL_INSTANCEOF_LHS.ets | instanceof expression as LHS | compile-fail |
| 1152 | 7.32.3 | compile-fail | EXP_07_32_03_019_FAIL_TYPEOF_LHS.ets | typeof expression as LHS | compile-fail |
| 1153 | 7.32.3 | compile-fail | EXP_07_32_03_020_FAIL_NEW_EXPRESSION_LHS.ets | new expression as LHS | compile-fail |
| 1154 | 7.32.3 | compile-fail | EXP_07_32_03_021_FAIL_READONLY_FIELD_LHS.ets | readonly field as LHS | compile-fail |
| 1155 | 7.32.3 | runtime | EXP_07_32_03_022_RUNTIME_SEMANTICS.ets | runtime verification: 17 assertions covering variable/param/field/array/record/compound/increment | runtime |
| 1156 | 7.34 | compile-pass | EXP_07_34_001_PASS_BASIC_INTERPOLATION.ets | basic variable interpolation (6 types) | compile-pass |
| 1157 | 7.34 | compile-pass | EXP_07_34_002_PASS_ARITHMETIC_INTERPOLATION.ets | arithmetic expression interpolation | compile-pass |
| 1158 | 7.34 | compile-pass | EXP_07_34_003_PASS_MULTIPLE_EXPRESSIONS.ets | multiple embedded expressions | compile-pass |
| 1159 | 7.34 | compile-pass | EXP_07_34_004_PASS_METHOD_CALL_INTERPOLATION.ets | method/function call interpolation | compile-pass |
| 1160 | 7.34 | compile-pass | EXP_07_34_005_PASS_BOOLEAN_NULL_INTERPOLATION.ets | boolean/null/undefined interpolation | compile-pass |
| 1161 | 7.34 | compile-pass | EXP_07_34_006_PASS_FIELD_ARRAY_INTERPOLATION.ets | field/array element interpolation | compile-pass |
| 1162 | 7.34 | compile-pass | EXP_07_34_007_PASS_NESTED_BACKTICK.ets | nested backtick interpolation | compile-pass |
| 1163 | 7.34 | compile-pass | EXP_07_34_008_PASS_PLAIN_BACKTICK.ets | plain backtick (no interpolation) | compile-pass |
| 1164 | 7.34 | compile-pass | EXP_07_34_009_PASS_CONCAT_EQUIVALENT.ets | concat equivalent comparison | compile-pass |
| 1165 | 7.34 | compile-pass | EXP_07_34_010_PASS_COMPLEX_EXPRESSIONS.ets | complex expressions in interpolation | compile-pass |
| 1166 | 7.34 | compile-fail | EXP_07_34_011_FAIL_TYPE_ERROR_IN_EXPRESSION.ets | type error in embedded expression | compile-fail |
| 1167 | 7.34 | compile-fail | EXP_07_34_012_FAIL_ASSIGN_TO_NON_STRING.ets | interpolation result assigned to non-string | compile-fail |
| 1168 | 7.34 | runtime | EXP_07_34_013_RUNTIME_SEMANTICS.ets | runtime verification: 12 assertions | runtime |
| 1169 | 7.35.1 | compile-pass | EXP_07_35_01_001_PASS_SINGLE_PARAM_INFERRED.ets | single param type inferred from context | compile-pass |
| 1170 | 7.35.1 | compile-pass | EXP_07_35_01_002_PASS_TYPED_PARAMETERS.ets | explicit type annotation on parameters | compile-pass |
| 1171 | 7.35.1 | compile-pass | EXP_07_35_01_003_PASS_MULTI_PARAM_WITH_TYPES.ets | multi-param with type annotations | compile-pass |
| 1172 | 7.35.1 | compile-pass | EXP_07_35_01_004_PASS_NO_PARAMS.ets | empty parameter list () => expr | compile-pass |
| 1173 | 7.35.1 | compile-pass | EXP_07_35_01_005_PASS_RETURN_TYPE_ANNOTATION.ets | explicit return type annotation | compile-pass |
| 1174 | 7.35.1 | compile-pass | EXP_07_35_01_006_PASS_GENERIC_LAMBDA_INFERENCE.ets | generic function context type inference | compile-pass |
| 1175 | 7.35.1 | compile-pass | EXP_07_35_01_007_PASS_MULTI_PARAM_INFERRED.ets | multi-param type inferred from context | compile-pass |
| 1176 | 7.35.1 | compile-fail | EXP_07_35_01_008_FAIL_DUPLICATE_PARAM_NAME.ets | two formal params with same name | compile-fail |
| 1177 | 7.35.1 | compile-fail | EXP_07_35_01_009_FAIL_TRIPLE_DUPLICATE_PARAM_NAME.ets | three params with two same-named | compile-fail |
| 1178 | 7.35.1 | compile-fail | EXP_07_35_01_010_FAIL_NO_TYPE_NO_INFERENCE.ets | no type annotation, no inference context | compile-fail |
| 1179 | 7.35.1 | compile-fail | EXP_07_35_01_011_FAIL_MULTI_PARAM_NO_INFERENCE.ets | multi-param no type, no inference context | compile-fail |
| 1180 | 7.35.1 | runtime | EXP_07_35_01_012_RUNTIME_SEMANTICS.ets | runtime verification: 7 assertions covering inferred/typed/multi-param/no-param/return-type | runtime |
| 1181 | 7.35.2 | compile-pass | EXP_07_35_02_001_PASS_EXPRESSION_BODY.ets | single-expression body: int/string/boolean/double | compile-pass |
| 1182 | 7.35.2 | compile-pass | EXP_07_35_02_002_PASS_BLOCK_BODY_RETURN.ets | block body with explicit return | compile-pass |
| 1183 | 7.35.2 | compile-pass | EXP_07_35_02_003_PASS_BLOCK_BODY_MULTI_STMT.ets | block body with multiple statements | compile-pass |
| 1184 | 7.35.2 | compile-pass | EXP_07_35_02_004_PASS_CAPTURE_LOCAL_VAR.ets | lambda captures surrounding local variable | compile-pass |
| 1185 | 7.35.2 | compile-pass | EXP_07_35_02_005_PASS_CAPTURE_INSTANCE_FIELD.ets | lambda captures this (instance field) | compile-pass |
| 1186 | 7.35.2 | compile-pass | EXP_07_35_02_006_PASS_VOID_CALL_EXPR_BODY.ets | void call expression as body | compile-pass |
| 1187 | 7.35.2 | compile-pass | EXP_07_35_02_007_PASS_VOID_EMPTY_BLOCK.ets | void return type + empty block | compile-pass |
| 1188 | 7.35.2 | compile-pass | EXP_07_35_02_008_PASS_NO_PARAMS_BLOCK_BODY.ets | no-params lambda with block body | compile-pass |
| 1189 | 7.35.2 | compile-fail | EXP_07_35_02_009_FAIL_UNINIT_LOCAL_CAPTURE.ets | uninitialized local used in lambda body | compile-fail（⚠️ SPEC不一致） |
| 1190 | 7.35.2 | compile-fail | EXP_07_35_02_010_FAIL_MISSING_RETURN_BLOCK.ets | non-void return, empty block no return | compile-fail |
| 1191 | 7.35.2 | compile-fail | EXP_07_35_02_011_FAIL_VOID_STMT_NO_RETURN.ets | non-void return, void stmts no return | compile-fail |
| 1192 | 7.35.2 | runtime | EXP_07_35_02_012_RUNTIME_SEMANTICS.ets | runtime verification: 7 assertions covering expression-body/block-body/capture | runtime |
| 1193 | 7.35.3 | compile-pass | EXP_07_35_03_001_PASS_EXPLICIT_RETURN_TYPE.ets | explicit return type annotation (int/string/boolean/double/single-param/multi-param) | compile-pass |
| 1194 | 7.35.3 | compile-pass | EXP_07_35_03_002_PASS_INFERRED_RETURN_EXPR.ets | expression body inferred return type | compile-pass |
| 1195 | 7.35.3 | compile-pass | EXP_07_35_03_003_PASS_INFERRED_RETURN_BLOCK.ets | block body inferred return type | compile-pass |
| 1196 | 7.35.3 | compile-pass | EXP_07_35_03_004_PASS_CONTEXT_INFERRED_PARAM.ets | parameter type inferred from context | compile-pass |
| 1197 | 7.35.3 | compile-pass | EXP_07_35_03_005_PASS_NO_PARAM_LAMBDA.ets | no-param lambda with multiple return types | compile-pass |
| 1198 | 7.35.3 | compile-pass | EXP_07_35_03_006_PASS_VOID_RETURN_TYPE.ets | void return type lambda | compile-pass |
| 1199 | 7.35.3 | compile-pass | EXP_07_35_03_007_PASS_LAMBDA_AS_PARAM_RETURN.ets | lambda as function parameter/return type (higher-order) | compile-pass |
| 1200 | 7.35.3 | compile-fail | EXP_07_35_03_008_FAIL_PARAM_TYPE_MISMATCH.ets | parameter type mismatch between lambda and function type | compile-fail |
| 1201 | 7.35.3 | compile-fail | EXP_07_35_03_009_FAIL_RETURN_TYPE_MISMATCH.ets | return type mismatch between lambda and function type | compile-fail |
| 1202 | 7.35.3 | compile-fail | EXP_07_35_03_010_FAIL_PARAM_COUNT_MISMATCH.ets | parameter count mismatch between lambda and function type | compile-fail |
| 1203 | 7.35.3 | runtime | EXP_07_35_03_011_RUNTIME_SEMANTICS.ets | runtime verification: 9 assertions covering explicit/inferred/context/higher-order | runtime |
| 1204 | 7.35.4 | compile-pass | EXP_07_35_04_001_PASS_LAMBDA_EVAL_NO_BODY.ets | lambda evaluation produces function type instance, body not executed during eval | compile-pass |
| 1205 | 7.35.4 | compile-pass | EXP_07_35_04_002_PASS_VARIABLE_CAPTURE_DECL.ets | variable capture declaration compiles (capture let variable in lambda) | compile-pass |
| 1206 | 7.35.4 | runtime | EXP_07_35_04_003_RUNTIME_LAMBDA_EVAL_INSTANCE.ets | lambda eval produces usable function instance, body runs only on call | runtime |
| 1207 | 7.35.4 | runtime | EXP_07_35_04_004_RUNTIME_CAPTURE_SEMANTICS.ets | capture semantics: captured variable is not a copy, changes reflect in original | runtime |
| 1208 | 7.35.4 | runtime | EXP_07_35_04_005_RUNTIME_FUNCTION_SCOPE_CAPTURE.ets | function scope capture: each call to capturingFunction has independent captured vars | runtime |
| 1209 | 7.35.4 | runtime | EXP_07_35_04_006_RUNTIME_LOOP_SCOPE_CAPTURE.ets | loop scope capture: each loop iteration captures a different index value | runtime |
| 1210 | 7.36.1 | compile-pass | EXP_07_36_01_001_PASS_INT_CONST_FOLDING.ets | integer constant folding with internal bigint type at compile time | compile-pass |
| 1211 | 7.36.1 | compile-pass | EXP_07_36_01_002_PASS_DOUBLE_FLOAT_PROMOTION.ets | double/float promotion and exponentiation in constant expressions | compile-pass |
| 1212 | 7.36.1 | compile-pass | EXP_07_36_01_003_PASS_MIXED_CONST_EXPR.ets | mixed constant expressions with relational/logical/ternary operators | compile-pass |
| 1213 | 7.36.1 | runtime | EXP_07_36_01_004_RUNTIME_CONST_ARITHMETIC.ets | runtime verification: compile-time constant arithmetic values are correct | runtime |
| 1214 | 7.36.1 | runtime | EXP_07_36_01_005_RUNTIME_TYPE_PROMOTION.ets | runtime verification: double promotion and exponentiation values | runtime |
| 1215 | 7.36.1 | runtime | EXP_07_36_01_006_RUNTIME_MIXED_CONST_EXPR.ets | runtime verification: mixed constant expression results are correct | runtime |
