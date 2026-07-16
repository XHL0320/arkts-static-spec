# 07 Expressions Test Case Catalog

> 全量用例目录（共 2129 例，覆盖 7.1–7.36.1 全部 96 节）。
> 数据源：实际 `.ets` 文件路径（SubTopic/Type/CaseFile）+ 头部 `@design`（Purpose）/ `@expect`（Expected）。
> 最后编译验证：2026-06-26，es2panda `--extension=ets`，Linux native（7.26–7.36.1 全量实测；7.1–7.25 沿用既有分类）。
> ⚠️ 标注 = 该用例存在 spec 与实现不一致，详见 `issue_report.md`。

| ID | SubTopic | Type | Case File | Purpose | Expected |
|----|----------|------|-----------|---------|---------|
| 0001 | 7.1.1 | compile-pass | EXP_07_01_01_001_PASS_GROUPING_PAREN.ets | 括号 `()` 优先级最高，`(2 + 3) * 4` 先计算括号内加法再乘法 | compile-pass |
| 0002 | 7.1.1 | compile-pass | EXP_07_01_01_002_PASS_MULTIPLICATIVE_BEFORE_ADDITIVE.ets | 乘法 `*` `/` `%` 优先级高于加法 `+` `-`，左结合 | compile-pass |
| 0003 | 7.1.1 | compile-pass | EXP_07_01_01_003_PASS_ADDITIVE_BEFORE_SHIFT.ets | 加法 `+` `-` 优先级高于移位 `<<` `>>` `>>>` | compile-pass |
| 0004 | 7.1.1 | compile-pass | EXP_07_01_01_004_PASS_SHIFT_BEFORE_RELATIONAL.ets | 移位 `<<` `>>` 优先级高于关系 `<` `>` `<=` `>=` | compile-pass |
| 0005 | 7.1.1 | compile-pass | EXP_07_01_01_005_PASS_RELATIONAL_BEFORE_EQUALITY.ets | 关系 `<` `>` `<=` `>=` 优先级高于相等 `==` `!=` | compile-pass |
| 0006 | 7.1.1 | compile-pass | EXP_07_01_01_006_PASS_BITWISE_AND_XOR_OR.ets | 按位与 `&` 优先级高于异或 `^`，异或优先级高于或 `\|`，左结合 | compile-pass |
| 0007 | 7.1.1 | compile-pass | EXP_07_01_01_007_PASS_LOGICAL_AND_OR.ets | 逻辑与 `&&` 优先级高于逻辑或 `\|\|`，左结合 | compile-pass |
| 0008 | 7.1.1 | compile-pass | EXP_07_01_01_008_PASS_ASSIGNMENT_RIGHT_ASSOC.ets | 赋值 `=` 右结合，`a = b = 5` 等价 `a = (b = 5)` | compile-pass |
| 0009 | 7.1.1 | compile-pass | EXP_07_01_01_009_PASS_EXPONENTIATION_RIGHT_ASSOC.ets | 幂运算 `**` 右结合，`2 ** 3 ** 2` 等价 `2 ** (3 ** 2)` | compile-pass |
| 0010 | 7.1.1 | compile-pass | EXP_07_01_01_010_PASS_TERNARY_RIGHT_ASSOC.ets | 三元条件 `? :` 右结合，`a ? b : c ? d : e` 等价 `a ? b : (c ? d : e)` | compile-pass |
| 0011 | 7.1.1 | compile-pass | EXP_07_01_01_011_PASS_UNARY_MINUS_EXPONENTIATION.ets | 前置一元 `-` 优先级高于幂 `**`，`-3 ** 2` 等价 `(-3) ** 2` | compile-pass |
| 0012 | 7.1.1 | compile-pass | EXP_07_01_01_012_PASS_CAST_AND_ADDITIVE.ets | 类型转换 `as` 左结合，优先级在加法和移位之间 | compile-pass |
| 0013 | 7.1.1 | compile-pass | EXP_07_01_01_013_PASS_MEMBER_ACCESS_PRECEDENCE.ets | 成员访问 `.` 优先级高于算术运算符，字段值先取出再参与运算 | compile-pass |
| 0014 | 7.1.1 | compile-pass | EXP_07_01_01_014_PASS_NULLISH_COALESCING_PRECEDENCE.ets | null 合并 `??` 优先级低于逻辑或 `\|\|`，高于三元 `?:` | compile-pass |
| 0015 | 7.1.1 | compile-pass | EXP_07_01_01_015_PASS_COMPOUND_ASSIGN_ARITH.ets | 复合赋值 `+=` 右结合，右侧表达式先按算术优先级计算再赋值 | compile-pass |
| 0016 | 7.1.1 | compile-pass | EXP_07_01_01_016_PASS_MIXED_OPERATOR_CHAIN.ets | 多级运算符混合表达式，按优先级规则正确编译 | compile-pass |
| 0017 | 7.1.1 | compile-pass | EXP_07_01_01_017_PASS_POSTFIX_INCREMENT_ARITH.ets | 后置递增 `++` 优先级高于算术运算符 | compile-pass |
| 0018 | 7.1.1 | compile-pass | EXP_07_01_01_018_PASS_PREFIX_INCREMENT_EXPONENT.ets | 前置递增 `++` 属于一元运算符优先级组，高于幂 `**`、乘除等 | compile-pass |
| 0019 | 7.1.1 | compile-pass | EXP_07_01_01_019_PASS_STRING_CONCAT_ADDITION.ets | 字符串拼接 `+` 与数值加法 `+` 同优先级，左结合 | compile-pass |
| 0020 | 7.1.1 | compile-pass | EXP_07_01_01_020_PASS_COMPLEX_EXPRESSION.ets | 复杂表达式验证多级运算符优先级的正确编译 | compile-pass |
| 0021 | 7.1.1 | compile-fail | EXP_07_01_01_021_FAIL_ASSIGN_TO_NON_LVALUE.ets | 加法 `+` 优先级高于赋值 `=`，`a + b = c` 被解析为 `(a + b) = c`，赋值给非左值 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0022 | 7.1.1 | compile-fail | EXP_07_01_01_022_FAIL_DOUBLE_POSTFIX_INCREMENT.ets | 后置 `++` 不能重复应用，`a++` 返回右值不能再次递增 | compile-fail |
| 0023 | 7.1.1 | compile-fail | EXP_07_01_01_023_FAIL_LOGICAL_AND_ASSIGNMENT.ets | 赋值优先级低于逻辑与 `&&`，`a && b = c` 被解析为 `(a && b) = c`，赋值给非左值 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0024 | 7.1.1 | compile-fail | EXP_07_01_01_024_FAIL_TERNARY_PRECEDENCE_TYPE.ets | 三元 `?:` 优先级低于空合并 `??`，`a ?? b ? c : d` 解析为 `(a ?? b) ? c : d`，若 `(a ?? b)` 非 boolean 则类型错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0025 | 7.1.1 | runtime | EXP_07_01_01_025_RUNTIME_PAREN_OVERRIDES.ets | 括号覆盖优先级：`(2 + 3) * 4` = 20，`2 + 3 * 4` = 14 | runtime |
| 0026 | 7.1.1 | runtime | EXP_07_01_01_026_RUNTIME_ARITH_MIXED.ets | 算术混合优先级：`1 + 2 * 3 - 4 / 2` = 1 + 6 - 2 = 5 | runtime |
| 0027 | 7.1.1 | runtime | EXP_07_01_01_027_RUNTIME_SHIFT_ARITH_MIXED.ets | 移位和算术混合：`1 + 2 << 3 - 1` = 3 << 2 = 12 | runtime |
| 0028 | 7.1.1 | runtime | EXP_07_01_01_028_RUNTIME_RELATIONAL_EQUALITY.ets | 关系优先于相等：`3 < 5 == true` = true，`10 > 20 != false` = false | runtime |
| 0029 | 7.1.1 | runtime | EXP_07_01_01_029_RUNTIME_BITWISE_CHAIN.ets | 按位与 `&` 优先于异或 `^` 优先于或 `\|`：`1 \| 2 & 3 ^ 4` | runtime |
| 0030 | 7.1.1 | runtime | EXP_07_01_01_030_RUNTIME_LOGICAL_PRECEDENCE.ets | 逻辑与 `&&` 优先于逻辑或 `\|\|`：`true \|\| false && false` = true | runtime |
| 0031 | 7.1.1 | runtime | EXP_07_01_01_031_RUNTIME_ASSIGN_RIGHT_ASSOC.ets | 赋值右结合：`a = b = c = 5` 从右向左赋值，a,b,c 全部为 5 | runtime |
| 0032 | 7.1.1 | runtime | EXP_07_01_01_032_RUNTIME_EXPONENT_RIGHT_ASSOC.ets | 幂运算右结合：`2 ** 3 ** 2` = 2^(3^2) = 512（而非 (2^3)^2 = 64） | runtime |
| 0033 | 7.1.1 | runtime | EXP_07_01_01_033_RUNTIME_TERNARY_RIGHT_ASSOC.ets | 三元条件右结合：`a ? b : c ? d : e` 等价 `a ? b : (c ? d : e)` | runtime |
| 0034 | 7.1.1 | runtime | EXP_07_01_01_034_RUNTIME_NULLISH_ARITH.ets | null 合并 `??` 优先级低于加法：`null ?? 1 + 2` = 3 | runtime |
| 0035 | 7.1.1 | runtime | EXP_07_01_01_035_RUNTIME_COMPLEX_OVERALL.ets | 复杂表达式验证多种运算符优先级的综合效果 | runtime |
| 0036 | 7.2.1 | compile-pass | EXP_07_02_01_001_PASS_STANDALONE_INT.ets | standalone 数字字面量类型推断为 int，`let a = 42` | compile-pass |
| 0037 | 7.2.1 | compile-pass | EXP_07_02_01_002_PASS_STANDALONE_STRING.ets | standalone 字符串字面量类型推断为 string，`let a = "hello"` | compile-pass |
| 0038 | 7.2.1 | compile-pass | EXP_07_02_01_003_PASS_STANDALONE_BOOLEAN.ets | standalone 布尔字面量类型推断为 boolean，`let a = true` | compile-pass |
| 0039 | 7.2.1 | compile-pass | EXP_07_02_01_004_PASS_STANDALONE_ARRAY.ets | standalone 数组字面量可从元素推断类型，`let a = [1, 2, 3]` | compile-pass |
| 0040 | 7.2.1 | compile-pass | EXP_07_02_01_005_PASS_NON_STANDALONE_ANNOTATION.ets | non-standalone 显式类型注解，`let a: int = 42`，目标类型为 int | compile-pass |
| 0041 | 7.2.1 | compile-pass | EXP_07_02_01_006_PASS_FUNC_PARAM_TARGET.ets | 函数参数提供 target type，函数调用中表达式类型匹配参数类型 | compile-pass |
| 0042 | 7.2.1 | compile-pass | EXP_07_02_01_007_PASS_RETURN_TARGET.ets | 函数返回值类型作为 target type，return 表达式匹配返回类型 | compile-pass |
| 0043 | 7.2.1 | compile-pass | EXP_07_02_01_008_PASS_OBJLIT_CLASS_TARGET.ets | 对象字面量 non-standalone，以类类型作为 target type 可推断 | compile-pass |
| 0044 | 7.2.1 | compile-pass | EXP_07_02_01_009_PASS_ASSIGNMENT_TARGET.ets | 赋值表达式左侧变量类型作为 target type | compile-pass |
| 0045 | 7.2.1 | compile-pass | EXP_07_02_01_010_PASS_WRITABLE_TO_READONLY.ets | writable 数组传给 readonly 参数始终安全 | compile-pass |
| 0046 | 7.2.1 | compile-pass | EXP_07_02_01_011_PASS_EXPRESSION_STATEMENT.ets | 函数调用作为独立表达式语句（standalone） | compile-pass |
| 0047 | 7.2.1 | compile-pass | EXP_07_02_01_012_PASS_READONLY_TO_READONLY.ets | readonly 数组传给 readonly 参数 | compile-pass |
| 0048 | 7.2.1 | compile-pass | EXP_07_02_01_013_PASS_GENERIC_TARGET.ets | 泛型函数的类型参数从参数推断 | compile-pass |
| 0049 | 7.2.1 | compile-pass | EXP_07_02_01_014_PASS_NESTED_EXPR_TARGET.ets | 嵌套表达式中的 target type 传递 | compile-pass |
| 0050 | 7.2.1 | compile-pass | EXP_07_02_01_015_PASS_TERNARY_TARGET.ets | 三目表达式类型推断，两个分支类型一致或在 target type 下可兼容 | compile-pass |
| 0051 | 7.2.1 | compile-fail | EXP_07_02_01_016_FAIL_STANDALONE_OBJLIT.ets | standalone 对象字面量无法推断类型，应编译时错误 | compile-fail |
| 0052 | 7.2.1 | compile-fail | EXP_07_02_01_017_FAIL_READONLY_TO_WRITABLE.ets | readonly 数组传给 writable 参数，应编译时错误 | compile-fail |
| 0053 | 7.2.1 | compile-fail | EXP_07_02_01_018_FAIL_TYPE_MISMATCH.ets | 表达式类型与 target type 不兼容，应编译时错误 | compile-fail |
| 0054 | 7.2.1 | compile-fail | EXP_07_02_01_019_FAIL_FUNC_ARG_MISMATCH.ets | 函数调用参数类型与 target type 不匹配 | compile-fail |
| 0055 | 7.2.1 | compile-fail | EXP_07_02_01_020_FAIL_RETURN_TYPE_MISMATCH.ets | return 表达式类型与函数返回类型不匹配 | compile-fail |
| 0056 | 7.2.1 | runtime | EXP_07_02_01_021_RUNTIME_STANDALONE_TYPES.ets | standalone 表达式在运行时类型正确 | runtime |
| 0057 | 7.2.1 | runtime | EXP_07_02_01_022_RUNTIME_TARGET_TYPE_FUNC.ets | 函数参数 target type 确保正确的类型传递 | runtime |
| 0058 | 7.2.1 | runtime | EXP_07_02_01_023_RUNTIME_READONLY_PARAM.ets | readonly 数组参数正确传递和读取 | runtime |
| 0059 | 7.2.1 | runtime | EXP_07_02_01_024_RUNTIME_OBJLIT_TARGET.ets | 对象字面量在 target type 下正确构造 | runtime |
| 0060 | 7.2.1 | runtime | EXP_07_02_01_025_RUNTIME_ARRAY_STANDALONE.ets | standalone 数组字面量在运行时类型正确 | runtime |
| 0061 | 7.2.2 | compile-pass | EXP_07_02_02_001_PASS_NORMAL_COMPLETION_ARITH.ets | 验证算术表达式正常完成：加减乘除（非零除数）在整数场景下无错误抛出 | compile-pass |
| 0062 | 7.2.2 | compile-pass | EXP_07_02_02_002_PASS_NORMAL_ARRAY_INDEX.ets | 验证数组索引正常完成：有效索引（arr[0], arr[length-1]）无 RangeError 抛出 | compile-pass |
| 0063 | 7.2.2 | compile-pass | EXP_07_02_02_003_PASS_NORMAL_FIXED_ARRAY_ASSIGN.ets | 验证定长数组正确类型赋值：元素类型匹配的赋值正常完成，无 ArrayStoreError | compile-pass |
| 0064 | 7.2.2 | compile-pass | EXP_07_02_02_004_PASS_NORMAL_CAST.ets | 验证类型转换正常完成：子类转父类或兼容类型的 as 表达式无 ClassCastError | compile-pass |
| 0065 | 7.2.2 | compile-pass | EXP_07_02_02_005_PASS_NORMAL_DIVISION.ets | 验证整数除法正常完成：非零除数场景，无 ArithmeticError | compile-pass |
| 0066 | 7.2.2 | compile-pass | EXP_07_02_02_006_PASS_NORMAL_REMAINDER.ets | 验证整数取余正常完成：非零除数场景，无 ArithmeticError | compile-pass |
| 0067 | 7.2.2 | compile-pass | EXP_07_02_02_007_PASS_NORMAL_CHAINED_EXPR.ets | 验证链式/复合表达式正常完成：多步求值无错误抛出，验证子表达式顺序求值正常 | compile-pass |
| 0068 | 7.2.2 | compile-pass | EXP_07_02_02_008_PASS_NORMAL_FUNC_CALL.ets | 验证函数调用正常完成：函数调用表达式作为求值过程正常返回 | compile-pass |
| 0069 | 7.2.2 | compile-pass | EXP_07_02_02_009_PASS_NORMAL_STRING_INDEX.ets | 验证字符串索引正常完成：有效索引范围无 RangeError | compile-pass |
| 0070 | 7.2.2 | compile-pass | EXP_07_02_02_010_PASS_NORMAL_NULLISH.ets | 验证 nullish 合并表达式正常完成：空值合并求值无错误抛出 | compile-pass |
| 0071 | 7.2.2 | compile-pass | EXP_07_02_02_011_PASS_NORMAL_TERNARY.ets | 验证三元表达式正常完成：条件求值无错误抛出 | compile-pass |
| 0072 | 7.2.2 | compile-pass | EXP_07_02_02_012_PASS_NORMAL_MIXED.ets | 验证混合表达式正常完成：包含数组索引、函数调用、类型转换、算术多种表达式的混合求值 | compile-pass |
| 0073 | 7.2.2 | compile-fail | EXP_07_02_02_013_FAIL_DIVISION_BY_LITERAL_ZERO.ets | 验证整数除法字面量零在编译时报错（反向用例） | compile-fail |
| 0074 | 7.2.2 | compile-fail | EXP_07_02_02_014_FAIL_REMAINDER_BY_LITERAL_ZERO.ets | 验证整数取余字面量零在编译时报错（反向用例） | compile-fail |
| 0075 | 7.2.2 | compile-fail | EXP_07_02_02_017_FAIL_NEGATIVE_ARRAY_INDEX.ets | 验证字面量负数组索引编译时报错：spec 规定运行时抛 RangeError，但编译器额外静态检测字面量负索引 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0076 | 7.2.2 | runtime | EXP_07_02_02_015_RUNTIME_NORMAL_COMPLETION.ets | 验证正常完成场景的运行时行为：各类表达式在无错误条件下完成求值，断言结果正确 | runtime |
| 0077 | 7.2.2 | runtime | EXP_07_02_02_016_RUNTIME_ARRAY_INDEX_OOB.ets | 验证数组索引越界时抛出 RangeError：索引 ≥ 数组长度 | runtime |
| 0078 | 7.2.2 | runtime | EXP_07_02_02_018_RUNTIME_CLASS_CAST_ERROR.ets | 验证类型转换失败时抛出 ClassCastError：as 表达式在运行时类型不兼容 | runtime |
| 0079 | 7.2.2 | runtime | EXP_07_02_02_019_RUNTIME_DIVISION_BY_ZERO.ets | 验证整数除零（变量零，非字面量零）时抛出 ArithmeticError | runtime |
| 0080 | 7.2.2 | runtime | EXP_07_02_02_020_RUNTIME_REMAINDER_BY_ZERO.ets | 验证整数取余零（变量零，非字面量零）时抛出 ArithmeticError | runtime |
| 0081 | 7.2.2 | runtime | EXP_07_02_02_021_RUNTIME_STRING_INDEX_OOB.ets | 验证字符串索引越界时抛出 RangeError：索引 ≥ 字符串长度 | runtime |
| 0082 | 7.2.2 | runtime | EXP_07_02_02_022_RUNTIME_STRING_NEGATIVE_INDEX.ets | 验证字符串负索引时抛出 RangeError：索引 < 0 | runtime |
| 0083 | 7.2.3 | compile-pass | EXP_07_02_03_001_PASS_BINARY_LEFT_RIGHT.ets | 验证二元运算左到右求值编译通过：右操作数在左操作数完全求值后求值 | compile-pass |
| 0084 | 7.2.3 | compile-pass | EXP_07_02_03_002_PASS_TERNARY_FIRST.ets | 验证三元条件优先求值编译通过：条件先求值，仅一个分支被求值 | compile-pass |
| 0085 | 7.2.3 | compile-pass | EXP_07_02_03_003_PASS_SHORT_AND_TRUE.ets | 验证 && 短路求值编译通过：左为 true 时右操作数被求值 | compile-pass |
| 0086 | 7.2.3 | compile-pass | EXP_07_02_03_004_PASS_SHORT_OR_FALSE.ets | 验证 \|\| 短路求值编译通过：左为 false 时右操作数被求值 | compile-pass |
| 0087 | 7.2.3 | compile-pass | EXP_07_02_03_005_PASS_ASSIGN_RIGHT_ASSOC_ORDER.ets | 验证赋值右结合求值顺序编译通过：LHS/MID/RHS 从左到右求值，赋值从右到左 | compile-pass |
| 0088 | 7.2.3 | compile-pass | EXP_07_02_03_006_PASS_FUNC_ARGS_LEFT_RIGHT.ets | 验证函数参数从左到右求值编译通过：先左后右 | compile-pass |
| 0089 | 7.2.3 | compile-pass | EXP_07_02_03_007_PASS_INT_ASSOCIATIVE.ets | 验证整数加乘可结合编译通过：整数加法和乘法满足结合律 | compile-pass |
| 0090 | 7.2.3 | compile-pass | EXP_07_02_03_008_PASS_PAREN_OVERRIDE.ets | 验证括号覆盖优先级编译通过：括号显式改变求值顺序 | compile-pass |
| 0091 | 7.2.3 | compile-pass | EXP_07_02_03_009_PASS_MIXED_COMPOUND.ets | 验证混合复合表达式编译通过：多种运算符组合的求值顺序 | compile-pass |
| 0092 | 7.2.3 | compile-pass | EXP_07_02_03_010_PASS_NULLISH_COALESCING.ets | 验证 nullish 合并求值顺序编译通过：?? 在特定情况下短路 | compile-pass |
| 0093 | 7.2.3 | compile-pass | EXP_07_02_03_011_PASS_CHAINED_LOGICAL.ets | 验证链式逻辑运算编译通过：连续 && 或 \|\| 的求值顺序 | compile-pass |
| 0094 | 7.2.3 | compile-pass | EXP_07_02_03_012_PASS_MULTI_BINARY.ets | 验证多层二元运算编译通过：连续二元运算符的求值顺序 | compile-pass |
| 0095 | 7.2.3 | compile-fail | EXP_07_02_03_013_FAIL_NULLISH_MIXED_AND.ets | 验证 nullish 合并与 && 混合无括号报编译时错误 | compile-fail |
| 0096 | 7.2.3 | compile-fail | EXP_07_02_03_014_FAIL_NULLISH_MIXED_OR.ets | 验证 nullish 合并与 \|\| 混合无括号报编译时错误 | compile-fail |
| 0097 | 7.2.3 | runtime | EXP_07_02_03_015_RUNTIME_BINARY_ORDER.ets | 验证二元加法左到右求值顺序：全局 trace 字符串验证求值顺序为 LR | runtime |
| 0098 | 7.2.3 | runtime | EXP_07_02_03_016_RUNTIME_TERNARY_BRANCH.ets | 验证三元条件优先求值：条件先求值，仅一个分支被求值 | runtime |
| 0099 | 7.2.3 | runtime | EXP_07_02_03_017_RUNTIME_SHORT_AND.ets | 验证 && 短路求值：左为 false 时跳过右操作数 | runtime |
| 0100 | 7.2.3 | runtime | EXP_07_02_03_018_RUNTIME_SHORT_OR.ets | 验证 \|\| 短路求值：左为 true 时跳过右操作数 | runtime |
| 0101 | 7.2.3 | runtime | EXP_07_02_03_019_RUNTIME_ASSIGN_RIGHT_ASSOC.ets | 验证赋值右结合求值顺序：子表达式从左到右求值，赋值从右到左 | runtime |
| 0102 | 7.2.3 | runtime | EXP_07_02_03_020_RUNTIME_FUNC_ARGS_ORDER.ets | 验证函数参数从左到右求值顺序 | runtime |
| 0103 | 7.2.3 | runtime | EXP_07_02_03_021_RUNTIME_ARGS_ABRUPT.ets | 验证参数异常完成：左侧参数异常完成则右侧参数不被求值 | runtime |
| 0104 | 7.2.3 | runtime | EXP_07_02_03_022_RUNTIME_CHAINED_LOGICAL.ets | 验证链式逻辑短路：连续的 && 或 \|\| 短路行为 | runtime |
| 0105 | 7.2.3 | runtime | EXP_07_02_03_023_RUNTIME_PAREN_OVERRIDE_ORDER.ets | 验证括号覆盖优先级：括号改变求值顺序产生不同结果 | runtime |
| 0106 | 7.2.3 | runtime | EXP_07_02_03_024_RUNTIME_FLOAT_NON_ASSOC.ets | 验证浮点数非结合性：浮点加法不满足结合律，(a+b)+c != a+(b+c) | runtime |
| 0107 | 7.2.3 | runtime | EXP_07_02_03_025_RUNTIME_NULLISH_SHORT.ets | 验证 nullish 合并短路行为：左操作数非 null/undefined 时右操作数不被求值 | runtime |
| 0108 | 7.2.4 | compile-pass | EXP_07_02_04_001_PASS_FUNC_ARGS_LTR.ets | 函数调用参数从左到右求值基本编译通过：三个参数各自独立计算，验证参数求值顺序不影响编译 | compile-pass |
| 0109 | 7.2.4 | compile-pass | EXP_07_02_04_002_PASS_METHOD_ARGS_LTR.ets | 方法调用参数从左到右求值基本编译通过：对象方法调用中多个参数表达式 | compile-pass |
| 0110 | 7.2.4 | compile-pass | EXP_07_02_04_003_PASS_CONSTRUCTOR_ARGS_LTR.ets | 构造函数(new)调用参数从左到右求值基本编译通过：验证 new 表达式中参数从左到右编译通过 | compile-pass |
| 0111 | 7.2.4 | compile-pass | EXP_07_02_04_004_PASS_MIXED_CALL_TYPES.ets | 三种调用类型（函数/方法/构造函数）的参数编译全部通过，测试参数求值顺序规则的适用范围覆盖 | compile-pass |
| 0112 | 7.2.4 | runtime | EXP_07_02_04_005_RUNTIME_FUNC_ARGS_ORDER.ets | 函数调用参数从左到右求值：全局 trace 变量记录每个参数表达式的求值顺序，验证左到右语义 | runtime |
| 0113 | 7.2.4 | runtime | EXP_07_02_04_006_RUNTIME_METHOD_ARGS_ORDER.ets | 方法调用参数从左到右求值：对象方法调用中参数按左到右求值，验证 trace 顺序为 "ABC" | runtime |
| 0114 | 7.2.4 | runtime | EXP_07_02_04_007_RUNTIME_CONSTRUCTOR_ARGS_ORDER.ets | 构造函数(new)调用参数从左到右求值：new 表达式中参数按左到右求值，验证 trace 顺序为 "XYZ" | runtime |
| 0115 | 7.2.4 | runtime | EXP_07_02_04_008_RUNTIME_LEFT_ABRUPT_SKIP_RIGHT.ets | 左侧参数异常完成时右侧参数不被求值：全局 trace 记录求值过程，左参数除 0 抛 ArithmeticError， * 右侧参数不应执行 | runtime |
| 0116 | 7.2.4 | runtime | EXP_07_02_04_009_RUNTIME_NESTED_FUNC_ARGS_ORDER.ets | 嵌套函数调用作为参数时的求值顺序：第一参数内部包含子函数调用，验证其参数表达式先于第二参数求值 | runtime |
| 0117 | 7.2.5 | compile-pass | EXP_07_02_05_001_PASS_CLASS_INSTANCE.ets | 类实例创建表达式（new）基本编译通过：构造函数带多个参数，验证 new 表达式整体编译正确 | compile-pass |
| 0118 | 7.2.5 | compile-pass | EXP_07_02_05_002_PASS_ARRAY_CREATION.ets | 可伸缩数组创建表达式基本编译通过：数组字面量、new Array<int> 两种方式 | compile-pass |
| 0119 | 7.2.5 | compile-pass | EXP_07_02_05_003_PASS_INDEXING.ets | 索引表达式基本编译通过：数组索引、字符串索引、嵌套索引 | compile-pass |
| 0120 | 7.2.5 | compile-pass | EXP_07_02_05_004_PASS_METHOD_CALL.ets | 方法调用表达式基本编译通过：对象方法调用，验证对象先于参数求值的编译正确性 | compile-pass |
| 0121 | 7.2.5 | compile-pass | EXP_07_02_05_005_PASS_INDEX_ASSIGNMENT.ets | 索引赋值表达式基本编译通过：简单赋值 arr[i]=val、复合赋值 arr[i]+=val | compile-pass |
| 0122 | 7.2.5 | compile-pass | EXP_07_02_05_006_PASS_LAMBDA.ets | Lambda 表达式基本编译通过：箭头函数创建和调用，验证 lambda 表达式编译正确性 | compile-pass |
| 0123 | 7.2.5 | runtime | EXP_07_02_05_007_RUNTIME_CLASS_INSTANCE_ARGS.ets | 类实例创建表达式（new）的参数从左到右求值顺序：全局 trace 记录构造函数参数求值顺序 | runtime |
| 0124 | 7.2.5 | runtime | EXP_07_02_05_008_RUNTIME_ARRAY_LITERAL_ORDER.ets | 数组字面量元素从左到右求值顺序：[e1, e2, e3] 中每个元素表达式按顺序求值 | runtime |
| 0125 | 7.2.5 | runtime | EXP_07_02_05_009_RUNTIME_INDEXING_ORDER.ets | 索引表达式中数组引用先于索引求值：arr[idx] 中 arr 先求值再求 idx | runtime |
| 0126 | 7.2.5 | runtime | EXP_07_02_05_010_RUNTIME_METHOD_CALL_ORDER.ets | 方法调用表达式中对象先于参数求值：obj.method(arg) 中 obj 先求值再求 arg | runtime |
| 0127 | 7.2.5 | runtime | EXP_07_02_05_011_RUNTIME_INDEX_ASSIGN_ORDER.ets | 索引赋值表达式中数组→索引→值的求值顺序：arr[i] = val 按 A→I→V 顺序 | runtime |
| 0128 | 7.2.5 | runtime | EXP_07_02_05_012_RUNTIME_LAMBDA_LAZY.ets | Lambda 表达式惰性求值：lambda 创建时体不执行，调用时才执行体 | runtime |
| 0129 | 7.3 | compile-pass | EXP_07_03_001_PASS_INTEGER_LITERAL.ets | 验证整数字面量在所有进制形式下编译通过：十进制、十六进制、八进制、二进制 | compile-pass |
| 0130 | 7.3 | compile-pass | EXP_07_03_002_PASS_FLOAT_BIGINT_LITERAL.ets | 验证浮点数字面量和 bigint 字面量编译通过 | compile-pass |
| 0131 | 7.3 | compile-pass | EXP_07_03_003_PASS_STRING_BOOL_NULL.ets | 验证字符串、布尔、null、undefined 字面量编译通过 | compile-pass |
| 0132 | 7.3 | compile-pass | EXP_07_03_004_PASS_NUMERIC_TYPE_INFERENCE.ets | 验证数值字面量类型推断：int 范围→int，long 范围→long，float 后缀→float，无后缀→double | compile-pass |
| 0133 | 7.3 | compile-pass | EXP_07_03_005_PASS_UNDERSCORE_CHAR_LITERAL.ets | 验证带下划线的数值字面量和实验性 char 字面量编译通过 | compile-pass |
| 0134 | 7.3 | compile-fail | EXP_07_03_006_FAIL_INTEGER_TOO_LARGE.ets | 验证超出 long 范围的整数字面量产生编译时错误 | compile-fail |
| 0135 | 7.3 | compile-fail | EXP_07_03_007_FAIL_FLOAT_TOO_LARGE.ets | 验证超出 float/double 范围的浮点数字面量产生编译时错误 | compile-fail |
| 0136 | 7.3 | runtime | EXP_07_03_008_RUNTIME_INTEGER_VALUES.ets | 运行时验证整数字面量在不同进制下的值是否正确 | runtime |
| 0137 | 7.3 | runtime | EXP_07_03_009_RUNTIME_FLOAT_VALUES.ets | 运行时验证浮点数字面量值是否正确 | runtime |
| 0138 | 7.3 | runtime | EXP_07_03_010_RUNTIME_BIGINT_STRING_VALUES.ets | 运行时验证 bigint 和字符串字面量的值正确性 | runtime |
| 0139 | 7.3 | runtime | EXP_07_03_011_RUNTIME_BOOLEAN_NULL_ASSIGN.ets | 运行时验证布尔、null、undefined 字面量的使用 | runtime |
| 0140 | 7.4.1 | compile-pass | EXP_07_04_01_001_PASS_BASIC_FUNCTION_REF.ets | 基本函数引用：验证对声明函数的引用编译通过，引用的类型由函数签名推导 | compile-pass |
| 0141 | 7.4.1 | compile-pass | EXP_07_04_01_002_PASS_FUNCTION_REF_TYPE_INFERENCE.ets | 函数引用类型推导：验证不同签名的函数引用类型推导正确 | compile-pass |
| 0142 | 7.4.1 | compile-pass | EXP_07_04_01_003_PASS_FUNCTION_REF_CALL.ets | 函数引用调用：验证通过函数引用可以正常调用原函数 | compile-pass |
| 0143 | 7.4.1 | compile-pass | EXP_07_04_01_004_PASS_GENERIC_FUNCTION_REF.ets | 泛型函数引用：验证泛型函数引用必须带显式类型参数时才编译通过 | compile-pass |
| 0144 | 7.4.1 | compile-pass | EXP_07_04_01_005_PASS_INDIVIDUAL_OVERLOAD_REF.ets | 单个显式重载函数引用：验证显式重载中单个函数名可以作为引用 | compile-pass |
| 0145 | 7.4.1 | compile-fail | EXP_07_04_01_006_FAIL_GENERIC_REF_NO_ARGS.ets | 泛型函数引用无类型参数：验证无显式类型参数的泛型函数引用应产生编译时错误 | compile-fail |
| 0146 | 7.4.1 | compile-fail | EXP_07_04_01_007_FAIL_OVERLOADED_FUNC_NAME.ets | 隐式重载函数名引用：验证隐式重载函数名作为引用应产生编译时错误 | compile-fail |
| 0147 | 7.4.1 | compile-fail | EXP_07_04_01_008_FAIL_EXPLICIT_OVERLOAD_NAME.ets | 显式重载名称引用：验证显式重载名称作为引用应产生编译时错误 | compile-fail |
| 0148 | 7.4.1 | runtime | EXP_07_04_01_009_RUNTIME_FUNCTION_REF_CALL_RESULT.ets | 函数引用调用结果验证：验证通过函数引用调用的返回值正确 | runtime |
| 0149 | 7.4.1 | runtime | EXP_07_04_01_010_RUNTIME_GENERIC_REF_CALL.ets | 泛型函数引用调用结果验证：验证通过泛型函数引用调用的返回值正确 | runtime |
| 0150 | 7.4.2 | compile-pass | EXP_07_04_02_001_PASS_STATIC_METHOD_REF.ets | 静态方法引用：验证 C.foo 方式引用类的静态方法编译通过 | compile-pass |
| 0151 | 7.4.2 | compile-pass | EXP_07_04_02_002_PASS_INSTANCE_METHOD_REF.ets | 实例方法引用：验证 new C().bar 方式引用实例方法编译通过 | compile-pass |
| 0152 | 7.4.2 | compile-pass | EXP_07_04_02_003_PASS_METHOD_REF_BINDING.ets | 方法引用实例绑定：验证不同实例的方法引用各自绑定互不影响 | compile-pass |
| 0153 | 7.4.2 | compile-pass | EXP_07_04_02_004_PASS_GENERIC_METHOD_REF.ets | 泛型方法引用：验证带显式类型参数的泛型方法引用编译通过 | compile-pass |
| 0154 | 7.4.2 | compile-pass | EXP_07_04_02_005_PASS_INDIVIDUAL_OVERLOAD_METHOD_REF.ets | 单个显式重载方法引用：验证显式重载中单个方法名可以作为引用 | compile-pass |
| 0155 | 7.4.2 | compile-fail | EXP_07_04_02_006_FAIL_GENERIC_METHOD_REF_NO_ARGS.ets | 泛型方法引用无类型参数：验证无显式类型参数的泛型方法引用应产生编译时错误 | compile-fail |
| 0156 | 7.4.2 | compile-fail | EXP_07_04_02_007_FAIL_IMPLICIT_OVERLOADED_METHOD_REF.ets | 隐式重载方法名引用：验证隐式重载方法名作为引用应产生编译时错误 | compile-fail |
| 0157 | 7.4.2 | compile-fail | EXP_07_04_02_008_FAIL_EXPLICIT_OVERLOAD_METHOD_REF.ets | 显式重载方法名称引用：验证显式重载方法名称作为引用应产生编译时错误 | compile-fail |
| 0158 | 7.4.2 | runtime | EXP_07_04_02_009_RUNTIME_INSTANCE_BINDING.ets | 实例绑定运行时验证：验证不同实例的方法引用各自绑定到对应实例 | runtime |
| 0159 | 7.4.2 | runtime | EXP_07_04_02_010_RUNTIME_STATIC_METHOD_REF_CALL.ets | 静态方法引用调用验证：验证通过静态方法引用调用的返回值正确 | runtime |
| 0160 | 7.4.2 | runtime | EXP_07_04_02_011_RUNTIME_GENERIC_METHOD_REF_CALL.ets | 泛型方法引用调用验证：验证通过泛型方法引用调用的返回值正确 | runtime |
| 0161 | 7.5.1 | compile-pass | EXP_07_05_01_001_PASS_VAR_DECL_CONTEXT.ets | 变量声明类型标注作为上下文：let a: number[] = [1, 2, 3] | compile-pass |
| 0162 | 7.5.1 | compile-pass | EXP_07_05_01_002_PASS_ASSIGNMENT_CONTEXT.ets | 赋值左值类型作为上下文：先声明后赋值数组字面量 | compile-pass |
| 0163 | 7.5.1 | compile-pass | EXP_07_05_01_003_PASS_CAST_CONTEXT.ets | Cast 目标类型作为上下文：let b = [1, 2, 3] as number[] | compile-pass |
| 0164 | 7.5.1 | compile-pass | EXP_07_05_01_004_PASS_PARAM_TYPE_CONTEXT.ets | 参数类型作为上下文：函数调用传递数组字面量 | compile-pass |
| 0165 | 7.5.1 | compile-pass | EXP_07_05_01_005_PASS_ELEMENT_TYPE_CONTEXT.ets | 数组元素类型作为上下文：嵌套数组字面量 | compile-pass |
| 0166 | 7.5.1 | compile-pass | EXP_07_05_01_006_PASS_TUPLE_CONTEXT.ets | Tuple 类型上下文：let tuple: [number, string] = [1, "hello"] | compile-pass |
| 0167 | 7.5.1 | compile-pass | EXP_07_05_01_007_PASS_FIXED_ARRAY_CONTEXT.ets | FixedArray 类型上下文：let a: FixedArray<string> = ["hello", "world"] | compile-pass |
| 0168 | 7.5.1 | compile-pass | EXP_07_05_01_008_PASS_VALUE_ARRAY_CONTEXT.ets | ValueArray 类型上下文：let a: ValueArray<int> = [1, 2] | compile-pass |
| 0169 | 7.5.1 | compile-pass | EXP_07_05_01_009_PASS_ARRAY_GENERIC_CONTEXT.ets | Array<T> 泛型类型上下文：let a: Array<string> = ["aa", "bb"] | compile-pass |
| 0170 | 7.5.1 | compile-pass | EXP_07_05_01_010_PASS_SQUARE_BRACKET_SYNTAX_CONTEXT.ets | T[] 语法上下文：let b: string[] = ["aa", "bb"] | compile-pass |
| 0171 | 7.5.1 | compile-pass | EXP_07_05_01_011_PASS_OBJECT_ARRAY_CONTEXT.ets | Object[] 类型上下文：混合元素类型 int 和 string | compile-pass |
| 0172 | 7.5.1 | compile-pass | EXP_07_05_01_012_PASS_OBJECT_CONTEXT.ets | Object 上下文：let a: Object = [1, 2, 3] | compile-pass |
| 0173 | 7.5.1 | compile-pass | EXP_07_05_01_013_PASS_ANY_CONTEXT.ets | Any 上下文：let a: Any = [1, 2, 3] | compile-pass |
| 0174 | 7.5.1 | compile-pass | EXP_07_05_01_014_PASS_FIXED_ARRAY_OBJECT_ELEMENT.ets | FixedArray<Object> 混合元素类型 | compile-pass |
| 0175 | 7.5.1 | compile-pass | EXP_07_05_01_015_PASS_VALUE_ARRAY_DOUBLE.ets | ValueArray<double> 接受整数元素：值兼容 | compile-pass |
| 0176 | 7.5.1 | compile-pass | EXP_07_05_01_016_PASS_UNION_CONTEXT_SINGLE.ets | Union 类型上下文唯一匹配：string[] \| [int, int] = [1, 2] 匹配 tuple | compile-pass |
| 0177 | 7.5.1 | compile-pass | EXP_07_05_01_017_PASS_CLASS_ARRAY_CONTEXT.ets | 类类型数组上下文：Array<aClass> 使用类实例初始化 | compile-pass |
| 0178 | 7.5.1 | compile-pass | EXP_07_05_01_018_PASS_READONLY_ARRAY_CONTEXT.ets | readonly 数组上下文：let c: readonly string[] = ["aa", "bb"] | compile-pass |
| 0179 | 7.5.1 | compile-fail | EXP_07_05_01_019_FAIL_TUPLE_ELEMENT_MISMATCH.ets | Tuple 元素类型不匹配：let incorrect: [number, string] = ["hello", 1] | compile-fail |
| 0180 | 7.5.1 | compile-fail | EXP_07_05_01_020_FAIL_FIXED_ARRAY_ELEMENT_MISMATCH.ets | FixedArray 元素类型不匹配：FixedArray<string> = [1, 2] | compile-fail |
| 0181 | 7.5.1 | compile-fail | EXP_07_05_01_021_FAIL_VALUE_ARRAY_ELEMENT_MISMATCH.ets | ValueArray 元素类型不匹配：ValueArray<int> = [3.14] | compile-fail |
| 0182 | 7.5.1 | compile-fail | EXP_07_05_01_022_FAIL_RESIZABLE_ARRAY_ELEMENT_MISMATCH.ets | ResizableArray 元素类型不匹配：string[] = ["aa", 2] | compile-fail |
| 0183 | 7.5.1 | compile-fail | EXP_07_05_01_023_FAIL_UNION_CONTEXT_AMBIGUOUS.ets | Union 类型上下文歧义：number[] \| [number, number] = [1, 2] 两者皆可 | compile-fail |
| 0184 | 7.5.1 | compile-fail | EXP_07_05_01_024_FAIL_NON_ARRAY_INTERFACE_CONTEXT.ets | 非数组接口作为上下文：SomeI 不是 Array 的超接口 | compile-fail |
| 0185 | 7.5.1 | runtime | EXP_07_05_01_025_RUNTIME_BASIC_ARRAY_VALUES.ets | 数组字面量运行时值验证 | runtime |
| 0186 | 7.5.1 | runtime | EXP_07_05_01_026_RUNTIME_TUPLE_ACCESS.ets | Tuple 字面量运行时值验证 | runtime |
| 0187 | 7.5.1 | runtime | EXP_07_05_01_027_RUNTIME_ARRAY_VIA_CAST.ets | Cast 上下文数组字面量运行时值验证 | runtime |
| 0188 | 7.5.1 | runtime | EXP_07_05_01_028_RUNTIME_STRING_ARRAY_VALUES.ets | string[] 字面量运行时值验证 | runtime |
| 0189 | 7.5.2 | compile-pass | EXP_07_05_02_001_PASS_SAME_TYPE_STRING.ets | 所有元素同类型 string：let b = ["a"] 推断为 string[] | compile-pass |
| 0190 | 7.5.2 | compile-pass | EXP_07_05_02_002_PASS_SAME_TYPE_INT.ets | 所有元素同类型 int：let c = [1, 2, 3] 推断为 int[] | compile-pass |
| 0191 | 7.5.2 | compile-pass | EXP_07_05_02_003_PASS_NUMERIC_TYPES_MIXED.ets | 所有元素为数值类型混合：let d = [1, 2.1, 3] 推断为 number[] | compile-pass |
| 0192 | 7.5.2 | compile-pass | EXP_07_05_02_004_PASS_MIXED_STRING_NUMBER.ets | 混合 string + number 类型：let e = ["a" + "b", 1, 3.14] 推断为 (string \| number)[] | compile-pass |
| 0193 | 7.5.2 | compile-pass | EXP_07_05_02_005_PASS_LITERAL_TYPE_PROMOTION.ets | 字面量类型提升为超类型：let u: "A" \| "B" = "A"; [u] 推断为 string[] | compile-pass |
| 0194 | 7.5.2 | compile-pass | EXP_07_05_02_006_PASS_FUNCTION_CLASS_MIXED.ets | 混合函数和类类型：let g = [(): void => {}, new A()] 推断为 (() => void \| A)[] | compile-pass |
| 0195 | 7.5.2 | compile-pass | EXP_07_05_02_007_PASS_SINGLE_ELEMENT.ets | 单一元素：let h = [42] 推断为 int[] | compile-pass |
| 0196 | 7.5.2 | compile-pass | EXP_07_05_02_008_PASS_SAME_TYPE_BOOLEAN.ets | 所有元素同类型 boolean：let i = [true, false] 推断为 boolean[] | compile-pass |
| 0197 | 7.5.2 | compile-pass | EXP_07_05_02_009_PASS_NUMERIC_INT_DOUBLE_FLOAT.ets | 多种数值类型混合（int + double）：let j = [1, 1.5, 3] 推断为 number[] | compile-pass |
| 0198 | 7.5.2 | compile-pass | EXP_07_05_02_010_PASS_MIXED_STRING_BOOL_INT.ets | 混合 string + boolean + int：["hello", true, 1] 推断为 (string \| boolean \| int)[] | compile-pass |
| 0199 | 7.5.2 | compile-pass | EXP_07_05_02_012_PASS_EMPTY_ARRAY_WITH_CONTEXT.ets | 带上下文的空数组：函数返回类型 int[] 为 [] 提供上下文 | compile-pass |
| 0200 | 7.5.2 | compile-fail | EXP_07_05_02_011_FAIL_EMPTY_ARRAY.ets | 空数组无上下文：let a = [] 类型无法推断，编译时错误 | compile-fail |
| 0201 | 7.5.2 | runtime | EXP_07_05_02_013_RUNTIME_INT_ARRAY_VALUES.ets | int[] 字面量运行时值验证 | runtime |
| 0202 | 7.5.2 | runtime | EXP_07_05_02_014_RUNTIME_NUMERIC_ARRAY_VALUES.ets | number[] 混合数值类型运行时值验证 | runtime |
| 0203 | 7.5.2 | runtime | EXP_07_05_02_015_RUNTIME_STRING_ARRAY_SINGLE.ets | string[] 单一元素运行时值验证 | runtime |
| 0204 | 7.6.1 | compile-pass | EXP_07_06_01_001_PASS_VAR_TYPE_CONTEXT.ets | 变量类型提供上下文：let p: Person = {name: "Bob", age: 25} 中 Person 类型从变量声明推断 | compile-pass |
| 0205 | 7.6.1 | compile-pass | EXP_07_06_01_002_PASS_FUNC_PARAM_CONTEXT.ets | 函数参数提供上下文：foo({name: "Alice", age: 18}) 中 Person 类型从参数类型推断 | compile-pass |
| 0206 | 7.6.1 | compile-pass | EXP_07_06_01_003_PASS_SKIP_FIELDS_DEFAULTS.ets | 跳过所有有默认值或显式初始化的字段：let f: Friend = {} 所有字段都有默认值或显式初始化 | compile-pass |
| 0207 | 7.6.1 | compile-pass | EXP_07_06_01_004_PASS_SKIP_EXPLICIT_INITIALIZER.ets | 跳过有显式初始化的字段：class C { f1: number = 100; f2: string = "hello" }，let c: C = {} 合法 | compile-pass |
| 0208 | 7.6.1 | compile-pass | EXP_07_06_01_005_PASS_IMPLICIT_DEFAULT_CTOR.ets | 隐式默认构造器：class C {} 无显式构造器时编译器添加默认构造器，对象字面量合法 | compile-pass |
| 0209 | 7.6.1 | compile-pass | EXP_07_06_01_006_PASS_EXPLICIT_PARAMLESS_CTOR.ets | 显式无参构造器：class C { constructor() {} } 有显式无参构造器，对象字面量合法 | compile-pass |
| 0210 | 7.6.1 | compile-pass | EXP_07_06_01_007_PASS_OPTIONAL_PARAM_CTOR.ets | 可选参数构造器：class C { constructor(p?: number) {} } 所有参数为可选第二形式，对象字面量合法 | compile-pass |
| 0211 | 7.6.1 | compile-pass | EXP_07_06_01_008_PASS_DEFAULT_VALUE_FIELD.ets | 值类型默认值字段可跳过：class C { f1: number; f2: string = "hello" }，f1 为值类型有默认值 0，可跳过 | compile-pass |
| 0212 | 7.6.1 | compile-pass | EXP_07_06_01_009_PASS_SETTER_ACCESSOR.ets | setter 访问器可作对象字面量字段：class OK { set attr(val: number) { ... } }，{attr: 42} 合法 | compile-pass |
| 0213 | 7.6.1 | compile-pass | EXP_07_06_01_010_PASS_PARTIAL_FIELDS.ets | 部分字段提供，其余使用默认值：class Person { name: string = ""; age: number = 0; email: string = "unknown" }，{name: "Bob"} 只提供 name | compile-pass |
| 0214 | 7.6.1 | compile-fail | EXP_07_06_01_011_FAIL_PRIVATE_FIELD.ets | 在对象字面量中使用 private 字段：nick 是 private 不可访问，应为编译时错误 | compile-fail |
| 0215 | 7.6.1 | compile-fail | EXP_07_06_01_012_FAIL_PROTECTED_FIELD.ets | 在对象字面量中使用 protected 字段：soname 是 protected 不可访问，应为编译时错误 | compile-fail |
| 0216 | 7.6.1 | compile-fail | EXP_07_06_01_013_FAIL_TYPE_MISMATCH.ets | 字段表达式类型不可赋值给字段类型：{name: 123} 中 number 不可赋值给 string，应为编译时错误 | compile-fail |
| 0217 | 7.6.1 | compile-fail | EXP_07_06_01_014_FAIL_MISSING_REQUIRED_FIELD.ets | 无默认值/初始化器的字段未提供：f1: Object 为引用类型无默认值也未提供值，应为编译时错误 | compile-fail |
| 0218 | 7.6.1 | compile-fail | EXP_07_06_01_015_FAIL_NO_PARAMLESS_CTOR.ets | 类只有带必选参数的构造器，无无参构造器：class C { constructor(p: number) {} }，对象字面量应为编译时错误 | compile-fail |
| 0219 | 7.6.1 | compile-fail | EXP_07_06_01_016_FAIL_PRIVATE_CTOR.ets | 构造器为 private：class C { private constructor() {} }，类复合上下文中不可访问，应为编译时错误 | compile-fail |
| 0220 | 7.6.1 | compile-fail | EXP_07_06_01_017_FAIL_READONLY_FIELD.ets | 对象字面量显式设置 readonly 字段：field2 为 readonly，{field1: 654, field2: 3} 应为编译时错误 | compile-fail |
| 0221 | 7.6.1 | compile-fail | EXP_07_06_01_018_FAIL_GETTER_ONLY_ACCESSOR.ets | getter-only 访问器（无 setter）用作对象字面量字段：{attr: 42} 应为编译时错误 | compile-fail |
| 0222 | 7.6.1 | runtime | EXP_07_06_01_019_RUNTIME_BASIC_VALUES.ets | 对象字面量运行时字段值验证：创建 Person 实例并通过对象字面量设置 name 和 age，验证值正确 | runtime |
| 0223 | 7.6.1 | runtime | EXP_07_06_01_020_RUNTIME_SETTER_ACCESSOR.ets | setter 访问器运行时验证：对象字面量 {attr: 42} 触发 setter，验证 backing field 值 | runtime |
| 0224 | 7.6.1 | runtime | EXP_07_06_01_021_RUNTIME_DEFAULT_VALUES.ets | 默认值运行时验证：对象字面量只提供部分字段，跳过字段应使用默认值 | runtime |
| 0225 | 7.6.2 | compile-pass | EXP_07_06_02_001_PASS_BASIC_INTERFACE.ets | 基本接口类型：普通属性 name、setter surname、getter age 映射为匿名类字段 | compile-pass |
| 0226 | 7.6.2 | compile-pass | EXP_07_06_02_002_PASS_OPTIONAL_SKIP.ets | 可选属性可跳过：sex?: "male"\|"female" 在对象字面量中跳过，值设为 undefined | compile-pass |
| 0227 | 7.6.2 | compile-pass | EXP_07_06_02_003_PASS_METHOD_NO_DEFAULT.ets | 实现无默认实现的接口方法：print_name 无默认实现，对象字面量中必须提供 | compile-pass |
| 0228 | 7.6.2 | compile-pass | EXP_07_06_02_004_PASS_DEFAULT_METHOD_SKIP.ets | 跳过有默认实现的接口方法：print_something 有默认实现，对象字面量中可跳过 | compile-pass |
| 0229 | 7.6.2 | compile-pass | EXP_07_06_02_005_PASS_DEFAULT_METHOD_OVERRIDE.ets | 覆盖有默认实现的接口方法：method 有默认实现，对象字面量中提供新的实现 | compile-pass |
| 0230 | 7.6.2 | compile-pass | EXP_07_06_02_006_PASS_OVERRIDE_COMPATIBLE.ets | Override-compatible 签名：foo(p: Base) 同时实现 foo(p: Drv1) 和 foo(p: Drv2) | compile-pass |
| 0231 | 7.6.2 | compile-pass | EXP_07_06_02_007_PASS_MULTIPLE_OVERLOADS.ets | 多个重载实现：foo(p: Drv1) 和 foo(p: Drv2) 分别实现两个重载，用逗号分隔 | compile-pass |
| 0232 | 7.6.2 | compile-pass | EXP_07_06_02_008_PASS_THIS_REFERENCE.ets | 对象字面量方法中 this 引用匿名类实例：返回 this 表示匿名类实例 | compile-pass |
| 0233 | 7.6.2 | compile-pass | EXP_07_06_02_009_PASS_SETTER_ONLY_PROP.ets | Setter-only 属性：接口只有 setter，对象字面量创建可写字段 | compile-pass |
| 0234 | 7.6.2 | compile-pass | EXP_07_06_02_010_PASS_GETTER_ONLY_PROP.ets | Getter-only 属性：接口只有 getter，对象字面量创建只读字段（始终返回字面量值） | compile-pass |
| 0235 | 7.6.2 | compile-pass | EXP_07_06_02_011_PASS_READONLY_PROP.ets | Readonly 属性：接口中 readonly 属性，对象字面量创建只读字段 | compile-pass |
| 0236 | 7.6.2 | compile-pass | EXP_07_06_02_012_PASS_REGULAR_PROP.ets | 普通属性：接口中普通属性，对象字面量创建可读写字段 | compile-pass |
| 0237 | 7.6.2 | compile-pass | EXP_07_06_02_013_PASS_GETTER_SETTER_MATCH.ets | Getter 和 setter 类型一致：get attr(): number 和 set attr(x: number) 类型相同 | compile-pass |
| 0238 | 7.6.2 | compile-fail | EXP_07_06_02_014_FAIL_NON_OPTIONAL_SKIP.ets | 非可选属性跳过：age 为非可选，即使 number 有默认值 0，跳过也应编译时错误 | compile-fail |
| 0239 | 7.6.2 | compile-fail | EXP_07_06_02_015_FAIL_NEW_METHOD.ets | 引入新方法：接口 I 无方法，对象字面量中定义 foo() 应编译时错误 | compile-fail |
| 0240 | 7.6.2 | compile-fail | EXP_07_06_02_016_FAIL_GETTER_SETTER_MISMATCH.ets | Getter 和 setter 类型不匹配：getter 返回 number，setter 参数 string，应为编译时错误 | compile-fail |
| 0241 | 7.6.2 | compile-fail | EXP_07_06_02_017_FAIL_MISSING_METHOD.ets | 缺少必需方法：接口 I 有 print_name 无默认实现，对象字面量中未提供，应为编译时错误 | compile-fail |
| 0242 | 7.6.2 | compile-fail | EXP_07_06_02_018_FAIL_SETTER_ONLY_READ.ets | 读取 setter-only 属性：setter-only 属性无 getter，读取应编译时错误 | compile-fail |
| 0243 | 7.6.2 | compile-fail | EXP_07_06_02_019_FAIL_GETTER_ONLY_WRITE.ets | 写入 getter-only 属性：getter-only 属性只读，赋值应编译时错误 | compile-fail |
| 0244 | 7.6.2 | compile-fail | EXP_07_06_02_020_FAIL_READONLY_WRITE.ets | 写入 readonly 属性：readonly 属性只读，赋值应编译时错误 | compile-fail |
| 0245 | 7.6.2 | compile-fail | EXP_07_06_02_021_FAIL_TYPE_MISMATCH.ets | 属性值类型不匹配：name 为 string 类型，赋值为 123 (int) 应编译时错误 | compile-fail |
| 0246 | 7.6.2 | runtime | EXP_07_06_02_022_RUNTIME_BASIC_VALUES.ets | 对象字面量字段值运行时验证：接口属性映射为匿名类字段，验证字段值正确 | runtime |
| 0247 | 7.6.2 | runtime | EXP_07_06_02_023_RUNTIME_THIS_REFERENCE.ets | 验证对象字面量方法中的 this 引用正确：返回 this 并验证 identity | runtime |
| 0248 | 7.6.2 | runtime | EXP_07_06_02_024_RUNTIME_METHOD_CALL.ets | 对象字面量方法调用验证：实现的方法可正确调用并返回预期结果 | runtime |
| 0249 | 7.6.2 | runtime | EXP_07_06_02_025_RUNTIME_OPTIONAL_UNDEFINED.ets | 验证可跳过可选属性的值为 undefined | runtime |
| 0250 | 7.6.2 | runtime | EXP_07_06_02_026_RUNTIME_DEFAULT_METHOD.ets | 验证接口默认方法可以工作：有默认实现的方法在对象字面量中跳过时使用接口实现 | runtime |
| 0251 | 7.6.3 | compile-pass | EXP_07_06_03_001_PASS_BASIC_STRING_NUMBER.ets | 基本 Record<string, number> 字符串键值对 | compile-pass |
| 0252 | 7.6.3 | compile-pass | EXP_07_06_03_002_PASS_OBJECT_VALUES.ets | Record<string, 对象类型> 对象作为值 | compile-pass |
| 0253 | 7.6.3 | compile-pass | EXP_07_06_03_003_PASS_NUMERIC_KEYS.ets | Record<number, string> 数值类型的键 | compile-pass |
| 0254 | 7.6.3 | compile-pass | EXP_07_06_03_004_PASS_BOOLEAN_VALUES.ets | Record<string, boolean> 布尔类型的值 | compile-pass |
| 0255 | 7.6.3 | compile-pass | EXP_07_06_03_005_PASS_LITERAL_UNION_ALL.ets | 字面量 union Key 所有变体均列出：Record<"aa"\|"bb", number> 提供 aa 和 bb | compile-pass |
| 0256 | 7.6.3 | compile-pass | EXP_07_06_03_006_PASS_SINGLE_ENTRY.ets | Record 单条目 | compile-pass |
| 0257 | 7.6.3 | compile-pass | EXP_07_06_03_007_PASS_TRAILING_COMMA.ets | Record 字面量尾部逗号 | compile-pass |
| 0258 | 7.6.3 | compile-pass | EXP_07_06_03_008_PASS_INT_VALUES.ets | Record<string, int> 整数值类型 | compile-pass |
| 0259 | 7.6.3 | compile-pass | EXP_07_06_03_009_PASS_ARRAY_VALUES.ets | Record<string, string[]> 数组作为值类型 | compile-pass |
| 0260 | 7.6.3 | compile-pass | EXP_07_06_03_010_PASS_THREE_LITERAL_KEYS.ets | Record 字面量 union Key 三个变体全部列出：Record<"x"\|"y"\|"z", string> | compile-pass |
| 0261 | 7.6.3 | compile-fail | EXP_07_06_03_011_FAIL_MISSING_LITERAL_KEY.ets | 字面量 union Key 缺少变体：Record<"aa"\|"bb", number> 只提供 "aa"，缺少 "bb"，应编译时错误 | compile-fail |
| 0262 | 7.6.3 | compile-fail | EXP_07_06_03_012_FAIL_KEY_TYPE_MISMATCH.ets | Key 类型不兼容：Record<string, number> 提供数值键 1（应为 string），应编译时错误 | compile-fail |
| 0263 | 7.6.3 | compile-fail | EXP_07_06_03_013_FAIL_VALUE_TYPE_MISMATCH.ets | Value 类型不兼容：Record<string, number> 提供字符串值 "not a number"，应编译时错误 | compile-fail |
| 0264 | 7.6.3 | compile-fail | EXP_07_06_03_014_FAIL_INVALID_KEY_TYPE.ets | Key 类型不合法：Record<boolean, number> 中 boolean 不是合法的 Key 类型，应编译时错误 | compile-fail |
| 0265 | 7.6.3 | runtime | EXP_07_06_03_015_RUNTIME_STRING_INDEXING.ets | 验证 Record<string, number> 索引取值正确 | runtime |
| 0266 | 7.6.3 | runtime | EXP_07_06_03_016_RUNTIME_OBJECT_VALUES.ets | 验证 Record<string, PersonInfo> 对象值索引访问正确 | runtime |
| 0267 | 7.6.3 | runtime | EXP_07_06_03_017_RUNTIME_NUMERIC_INDEXING.ets | 验证 Record<number, string> 数值索引访问正确 | runtime |
| 0268 | 7.6.4 | compile-pass | EXP_07_06_04_001_PASS_CLASS_LITERAL.ets | 命名类类型对象字面量编译通过：最基本的类上下文对象字面量，验证构造器可被调用且字段编译通过 | compile-pass |
| 0269 | 7.6.4 | compile-pass | EXP_07_06_04_002_PASS_INTERFACE_LITERAL.ets | 接口类型对象字面量编译通过：接口类型推断创建匿名类对象字面量，验证构造器可被调用 | compile-pass |
| 0270 | 7.6.4 | compile-pass | EXP_07_06_04_003_PASS_MULTIPLE_FIELDS.ets | 多字段对象字面量编译通过：5 个字段从左到右排列，验证多字段字面量编译正常 | compile-pass |
| 0271 | 7.6.4 | compile-pass | EXP_07_06_04_004_PASS_FIELD_EXPRESSIONS.ets | 字段含表达式的对象字面量编译通过：字段值为函数调用和算术表达式，验证表达式求值可正常编译 | compile-pass |
| 0272 | 7.6.4 | compile-pass | EXP_07_06_04_005_PASS_CTOR_EXECUTION.ets | 构造器执行+字段覆盖编译通过：构造器设置默认值后，字段表达式覆盖该值，验证两阶段求值编译正常 | compile-pass |
| 0273 | 7.6.4 | runtime | EXP_07_06_04_006_RUNTIME_NORMAL_COMPLETION.ets | 正常完成验证：构造器成功执行，所有字段表达式成功求值并正确赋值，验证对象字面量正常完成路径 | runtime |
| 0274 | 7.6.4 | runtime | EXP_07_06_04_007_RUNTIME_LEFT_TO_RIGHT.ets | 从左到右字段求值顺序验证：使用全局 order 追踪器按字段求值顺序附加标记， * 验证先求值左字段表达式再右字段，赋值顺序也对应 | runtime |
| 0275 | 7.6.4 | runtime | EXP_07_06_04_008_RUNTIME_CTOR_ABRUPT.ets | 构造器异常完成验证：构造器抛出 Error，对象字面量求值应提前终止， * 不会执行字段表达式 | runtime |
| 0276 | 7.6.4 | runtime | EXP_07_06_04_009_RUNTIME_FIELD_ABRUPT.ets | 字段表达式异常完成验证：第二个字段表达式抛出 Error，对象字面量求值终止， * 验证第一个字段已正确赋值，第二个字段未赋值 | runtime |
| 0277 | 7.6.4 | runtime | EXP_07_06_04_010_RUNTIME_CTOR_THEN_FIELDS.ets | 构造器先于字段赋值验证：构造器将 value 设为 42，对象字面量字段提供 100， * 验证最终值为 100（构造器先执行，字段后赋值覆盖） | runtime |
| 0278 | 7.6.4 | runtime | EXP_07_06_04_011_RUNTIME_INTERFACE_CTOR.ets | 接口匿名类构造器被调用验证：通过接口类型创建匿名类对象字面量， * 验证构造器先执行，再字段赋值，字段覆盖构造器设置的默认值 | runtime |
| 0279 | 7.7 | compile-pass | EXP_07_07_001_PASS_BASIC_ARRAY_SPREAD.ets | 基本可调整数组扩展：int[] 类型数组在字面量中扩展 | compile-pass |
| 0280 | 7.7 | compile-pass | EXP_07_07_002_PASS_FIXED_ARRAY_SPREAD.ets | 固定长度数组扩展：FixedArray<int> 在字面量中扩展 | compile-pass |
| 0281 | 7.7 | compile-pass | EXP_07_07_003_PASS_MULTIPLE_SPREADS.ets | 多扩展表达式：两个数组在同一字面量中扩展 [...a1, ...a2] | compile-pass |
| 0282 | 7.7 | compile-pass | EXP_07_07_004_PASS_SPREAD_MIXED.ets | 扩展与字面量元素混合：[...a1, 42, ...a2] | compile-pass |
| 0283 | 7.7 | compile-pass | EXP_07_07_005_PASS_SPREAD_FUNC_CALL.ets | 函数调用中扩展数组：foo(...arr)，参数为 rest 参数 | compile-pass |
| 0284 | 7.7 | compile-pass | EXP_07_07_006_PASS_MULTIPLE_SPREADS_CALL.ets | 函数调用中多个扩展：foo(...a1, ...a2) | compile-pass |
| 0285 | 7.7 | compile-pass | EXP_07_07_007_PASS_SPREAD_FUNC_RETURN.ets | 函数返回值扩展：foo(...g1())，g1 返回数组 | compile-pass |
| 0286 | 7.7 | compile-pass | EXP_07_07_008_PASS_NESTED_SPREAD.ets | 嵌套扩展表达式：foo(...[...arr])，先扩展再解构 | compile-pass |
| 0287 | 7.7 | compile-pass | EXP_07_07_009_PASS_READONLY_SOURCE_SPREAD.ets | 只读源数组扩展：readonly int[] 源在扩展中，目标数组为可读写 | compile-pass |
| 0288 | 7.7 | compile-pass | EXP_07_07_010_PASS_TUPLE_SPREAD_CALL.ets | 元组扩展在函数调用中：bar(...tuple)，参数为 rest 元组 | compile-pass |
| 0289 | 7.7 | compile-pass | EXP_07_07_011_PASS_STRING_SPREAD.ets | 字符串类型扩展：string 是 iterable 类型，可在字面量中扩展 | compile-pass |
| 0290 | 7.7 | compile-pass | EXP_07_07_012_PASS_TUPLE_SPREAD_LITERAL.ets | 元组扩展在字面量中：[...tuple1, ...tuple2]，组成新字面量 | compile-pass |
| 0291 | 7.7 | compile-fail | EXP_07_07_013_FAIL_NON_ITERABLE_CLASS.ets | 非 iterable 类类型扩展：未实现 Iterable 接口的类，扩展编译时错误 | compile-fail |
| 0292 | 7.7 | compile-fail | EXP_07_07_014_FAIL_NON_ITERABLE_NUMBER.ets | 非 iterable 数值类型扩展：数字 int 类型不能被扩展 | compile-fail |
| 0293 | 7.7 | compile-fail | EXP_07_07_015_FAIL_SPREAD_NON_REST_ARRAY.ets | 扩展数组到非 rest 参数：foo 参数为非 rest 普通参数，扩展数组应报错 | compile-fail |
| 0294 | 7.7 | compile-fail | EXP_07_07_016_FAIL_SPREAD_NON_REST_TUPLE.ets | 扩展元组到非 rest 参数：bar 为非 rest 普通参数，扩展元组应报错 | compile-fail |
| 0295 | 7.7 | runtime | EXP_07_07_017_RUNTIME_BASIC_SPREAD.ets | 运行时基本扩展验证：int[] 数组扩展后的值正确性 | runtime |
| 0296 | 7.7 | runtime | EXP_07_07_018_RUNTIME_COPY_SEMANTICS.ets | 扩展复制语义验证：扩展生成新数组，修改新数组不影响原数组 | runtime |
| 0297 | 7.7 | runtime | EXP_07_07_019_RUNTIME_MULTIPLE_SPREADS.ets | 多扩展合并验证：[...a1, ...a2] 合并结果正确 | runtime |
| 0298 | 7.7 | runtime | EXP_07_07_020_RUNTIME_SPREAD_MIXED.ets | 扩展与字面量元素混合运行时验证：[...a1, 42, ...a2] 结果正确 | runtime |
| 0299 | 7.7 | runtime | EXP_07_07_021_RUNTIME_FUNC_CALL_SPREAD.ets | 函数调用扩展运行时验证：foo(...arr) 通过 rest 参数正确接收扩展值 | runtime |
| 0300 | 7.7 | runtime | EXP_07_07_022_RUNTIME_READONLY_SOURCE.ets | 只读源数组扩展运行时验证：readonly int[] 扩展后可读写目标数组 | runtime |
| 0301 | 7.8 | compile-pass | EXP_07_08_001_PASS_BASIC_ARITHMETIC.ets | 基本算术括号分组：(1 + 2) * 3 改变运算优先级，验证括号表达式编译通过 | compile-pass |
| 0302 | 7.8 | compile-pass | EXP_07_08_002_PASS_NESTED_PARENS.ets | 多层嵌套括号：(((1 + 2))) 验证多层括号嵌套编译通过 | compile-pass |
| 0303 | 7.8 | compile-pass | EXP_07_08_003_PASS_FUNC_CALL_PARENS.ets | 函数调用中括号表达式：foo((a + b))，验证括号在函数实参中使用 | compile-pass |
| 0304 | 7.8 | compile-pass | EXP_07_08_004_PASS_CONDITION_PARENS.ets | 条件语句中括号表达式：if ((x > 0))，验证括号在条件中使用 | compile-pass |
| 0305 | 7.8 | compile-pass | EXP_07_08_005_PASS_ARRAY_WITH_PARENS.ets | 数组字面量中括号表达式：[(1 + 2), (3 * 4)]，括号在数组元素中使用 | compile-pass |
| 0306 | 7.8 | compile-pass | EXP_07_08_006_PASS_STRING_AND_BOOL_PARENS.ets | 字符串和布尔型括号表达式验证：括号不影响多种类型的表达式 | compile-pass |
| 0307 | 7.8 | compile-fail | EXP_07_08_007_FAIL_EMPTY_PARENS.ets | 空括号不是有效表达式：() 不符合 '(' expression ')' 语法规则，应报编译时错误 | compile-fail |
| 0308 | 7.8 | runtime | EXP_07_08_008_RUNTIME_VALUE_PRESERVATION.ets | 括号表达式值不变性验证：(expr) 的值与 expr 相同，验证括号不改变表达式的值 | runtime |
| 0309 | 7.8 | runtime | EXP_07_08_009_RUNTIME_GROUPING_ORDER.ets | 括号分组改变求值顺序：(1 + 2) * 3 正确得到 9，验证括号改变运算优先级 | runtime |
| 0310 | 7.8 | runtime | EXP_07_08_010_RUNTIME_MIXED_TYPES_PARENS.ets | 多种类型括号表达式运行时验证：字符串、布尔值、条件表达式在括号中等价性 | runtime |
| 0311 | 7.9 | compile-pass | EXP_07_09_001_PASS_INSTANCE_METHOD_THIS.ets | 类实例方法中使用 this：this.field 访问当前对象字段，this.method() 调用当前方法 | compile-pass |
| 0312 | 7.9 | compile-pass | EXP_07_09_002_PASS_CTOR_THIS.ets | 构造器中使用 this：this.field = value 在构造器中初始化字段 | compile-pass |
| 0313 | 7.9 | compile-pass | EXP_07_09_003_PASS_FIELD_LAMBDA_THIS.ets | 字段初始化 lambda 中使用 this：lambda 体内 this 引用该字段所属的类实例 | compile-pass |
| 0314 | 7.9 | compile-pass | EXP_07_09_004_PASS_OBJECT_LITERAL_METHOD_THIS.ets | 对象字面量方法中使用 this：对象字面量的方法中 this 类型为对象字面量类型 | compile-pass |
| 0315 | 7.9 | compile-pass | EXP_07_09_005_PASS_OBJECT_LITERAL_LAMBDA_THIS.ets | 对象字面量中 lambda 的 this 引用：lambda 体内 this 引用包围类（非对象字面量类型） | compile-pass |
| 0316 | 7.9 | compile-pass | EXP_07_09_006_PASS_INTERFACE_DEFAULT_THIS.ets | 接口默认方法中使用 this：接口默认方法体中 this 类型为接口类型 | compile-pass |
| 0317 | 7.9 | compile-fail | EXP_07_09_007_FAIL_THIS_TOP_LEVEL.ets | 顶层作用域中使用 this：this 在类/接口外使用，应报编译时错误 | compile-fail |
| 0318 | 7.9 | compile-fail | EXP_07_09_008_FAIL_THIS_IN_STATIC.ets | 静态方法中使用 this：静态方法不属于实例，this 应报编译时错误 | compile-fail |
| 0319 | 7.9 | runtime | EXP_07_09_009_RUNTIME_THIS_IN_METHOD.ets | 实例方法中 this 运行时验证：this.field 返回当前对象的字段值 | runtime |
| 0320 | 7.9 | runtime | EXP_07_09_010_RUNTIME_THIS_IN_CTOR.ets | 构造器中 this 运行时验证：构造器通过 this.field 初始化字段 | runtime |
| 0321 | 7.9 | runtime | EXP_07_09_011_RUNTIME_THIS_IN_OBJECT_LITERAL.ets | 对象字面量方法中 this 运行时验证：通过对象字面量调用方法，this 指向上下文对象 | runtime |
| 0322 | 7.10.1 | compile-pass | EXP_07_10_01_001_PASS_STATIC_FIELD_ACCESS.ets | 通过类名访问非 readonly 静态字段：ClassName.staticField 语法 | compile-pass |
| 0323 | 7.10.1 | compile-pass | EXP_07_10_01_002_PASS_STATIC_FIELD_ASSIGNMENT.ets | 非 readonly 静态字段赋值：修改后后续读取反映新值（variable 语义） | compile-pass |
| 0324 | 7.10.1 | compile-pass | EXP_07_10_01_003_PASS_READONLY_STATIC_ACCESS.ets | readonly 静态字段访问：通过 ClassName.READONLY_FIELD 读取只读静态字段（value 语义） | compile-pass |
| 0325 | 7.10.1 | compile-pass | EXP_07_10_01_004_PASS_STATIC_FIELD_EXPR.ets | 静态字段在表达式中使用：算术运算、条件判断、函数调用参数 | compile-pass |
| 0326 | 7.10.1 | compile-pass | EXP_07_10_01_005_PASS_MULTI_CLASS_STATIC.ets | 多类静态字段独立访问：不同类的静态字段通过各自类名访问 | compile-pass |
| 0327 | 7.10.1 | compile-pass | EXP_07_10_01_006_PASS_STATIC_READONLY_INIT_BLOCK.ets | 在静态字段初始化器中设置 readonly 静态字段：readonly 字段可在声明时通过初始化器赋值 | compile-pass |
| 0328 | 7.10.1 | compile-fail | EXP_07_10_01_007_FAIL_STATIC_FIELD_INSTANCE_REF.ets | 通过实例引用访问静态字段：静态字段必须通过类名（typeReference）访问，而非实例 | compile-fail |
| 0329 | 7.10.1 | compile-fail | EXP_07_10_01_008_FAIL_READONLY_STATIC_ASSIGN.ets | 对 readonly 静态字段赋值：readonly 字段初始化后不允许修改 | compile-fail |
| 0330 | 7.10.1 | runtime | EXP_07_10_01_009_RUNTIME_STATIC_FIELD_VALUE.ets | 运行时验证静态字段值：不同实例共享同一静态字段，值一致 | runtime |
| 0331 | 7.10.1 | runtime | EXP_07_10_01_010_RUNTIME_STATIC_FIELD_MUTATION.ets | 运行时验证非 readonly 静态字段赋值：修改后全局可见（variable 语义） | runtime |
| 0332 | 7.10.1 | runtime | EXP_07_10_01_011_RUNTIME_READONLY_STATIC_VALUE.ets | 运行时验证 readonly 静态字段值：只读字段在运行时保持不变 | runtime |
| 0333 | 7.10.2 | compile-pass | EXP_07_10_02_001_PASS_BASIC_FIELD_ACCESS.ets | 基本实例字段访问：通过 obj.field 语法读取实例字段 | compile-pass |
| 0334 | 7.10.2 | compile-pass | EXP_07_10_02_002_PASS_FIELD_ASSIGNMENT.ets | 非 readonly 实例字段赋值：obj.field = newValue 修改字段值（variable 语义） | compile-pass |
| 0335 | 7.10.2 | compile-pass | EXP_07_10_02_003_PASS_READONLY_FIELD_ACCESS.ets | readonly 实例字段读取：obj.readonlyField 返回 value，不可作为左值 | compile-pass |
| 0336 | 7.10.2 | compile-pass | EXP_07_10_02_004_PASS_READONLY_CTOR_ASSIGN.ets | 构造器中给 readonly 实例字段赋值：构造器内允许修改 readonly 字段 | compile-pass |
| 0337 | 7.10.2 | compile-pass | EXP_07_10_02_005_PASS_METHOD_RETURN_FIELD.ets | 通过方法返回值访问字段：getObj().field 链式访问 | compile-pass |
| 0338 | 7.10.2 | compile-pass | EXP_07_10_02_006_PASS_ACCESSOR_GETTER.ets | Accessor getter 调用：字段访问不在赋值左侧时调用 getter | compile-pass |
| 0339 | 7.10.2 | compile-pass | EXP_07_10_02_007_PASS_ACCESSOR_SETTER.ets | Accessor setter 调用：字段访问在赋值左侧时调用 setter | compile-pass |
| 0340 | 7.10.2 | compile-fail | EXP_07_10_02_008_FAIL_READONLY_FIELD_OUTSIDE_CTOR.ets | 构造器外对 readonly 实例字段赋值：readonly 字段初始化后不可修改 | compile-fail |
| 0341 | 7.10.2 | compile-fail | EXP_07_10_02_009_FAIL_NULLISH_REF_FIELD_ACCESS.ets | nullish 引用类型访问字段：T \| undefined 类型的 objectReference 访问字段应报编译错误 | compile-fail |
| 0342 | 7.10.2 | runtime | EXP_07_10_02_010_RUNTIME_FIELD_VALUE.ets | 运行时验证实例字段值：对象创建后字段值正确 | runtime |
| 0343 | 7.10.2 | runtime | EXP_07_10_02_011_RUNTIME_FIELD_MUTATION.ets | 运行时验证实例字段修改：非 readonly 字段修改后反映新值 | runtime |
| 0344 | 7.10.2 | runtime | EXP_07_10_02_012_RUNTIME_STATIC_DISPATCH.ets | 声明类型决定字段可见性（Compile-time），运行时字段覆写（Override）生效 | runtime |
| 0345 | 7.10.3 | compile-pass | EXP_07_10_03_001_PASS_SUPER_GETTER.ets | 通过 super 调用超类的 getter：super.property 在子类 getter 中访问超类访问器 | compile-pass |
| 0346 | 7.10.3 | compile-pass | EXP_07_10_03_002_PASS_SUPER_SETTER.ets | 通过 super 调用超类的 setter：super.property = val 在子类 setter 中调用超类访问器 | compile-pass |
| 0347 | 7.10.3 | compile-pass | EXP_07_10_03_003_PASS_SUPER_GETTER_SETTER.ets | super 同时调用超类 getter 和 setter：子类重写 getter 和 setter，均通过 super 委托 | compile-pass |
| 0348 | 7.10.3 | compile-fail | EXP_07_10_03_004_FAIL_SUPER_FIELD_READ.ets | 通过 super 读取字段：super.field 用于访问超类字段应报编译时错误 | compile-fail |
| 0349 | 7.10.3 | compile-fail | EXP_07_10_03_005_FAIL_SUPER_FIELD_WRITE.ets | 通过 super 给字段赋值：super.field = val 应报编译时错误 | compile-fail |
| 0350 | 7.10.3 | runtime | EXP_07_10_03_006_RUNTIME_SUPER_GETTER_VALUE.ets | 运行时验证 super getter 调用：子类通过 super getter 访问超类属性值 | runtime |
| 0351 | 7.10.3 | runtime | EXP_07_10_03_007_RUNTIME_SUPER_SETTER_VALUE.ets | 运行时验证 super setter 调用：子类通过 super setter 设置超类属性值 | runtime |
| 0352 | 7.10.3 | runtime | EXP_07_10_03_008_RUNTIME_SUPER_GETSET_CHAIN.ets | 运行时验证 super getter+setter 完整链：先通过 super setter 设置，再通过 super getter 读取 | runtime |
| 0353 | 7.11.1 | compile-pass | EXP_07_11_01_001_PASS_TYPEREF_STATIC_METHOD.ets | typeReference 形式：通过类名调用静态方法，typeReference 必须为类类型 | compile-pass |
| 0354 | 7.11.1 | compile-pass | EXP_07_11_01_002_PASS_SUPER_METHOD_CALL.ets | super 形式：super.method() 调用超类的实例方法 | compile-pass |
| 0355 | 7.11.1 | compile-pass | EXP_07_11_01_003_PASS_CLASS_EXPR_METHOD.ets | expression (class) 形式：类实例表达式调用实例方法 | compile-pass |
| 0356 | 7.11.1 | compile-pass | EXP_07_11_01_004_PASS_INTERFACE_EXPR_METHOD.ets | expression (interface) 形式：接口类型表达式调用方法 | compile-pass |
| 0357 | 7.11.1 | compile-pass | EXP_07_11_01_005_PASS_UNION_EXPR_METHOD.ets | expression (union) 形式：union 类型表达式调用共有方法 | compile-pass |
| 0358 | 7.11.1 | compile-pass | EXP_07_11_01_006_PASS_TYPE_PARAM_METHOD.ets | expression (type parameter) 形式：泛型类型参数调用约束类型的方法 | compile-pass |
| 0359 | 7.11.1 | compile-fail | EXP_07_11_01_007_FAIL_INTERFACE_TYPEREF.ets | typeReference 形式使用接口名：typeReference 必须指向类，接口应报编译时错误 | compile-fail |
| 0360 | 7.11.1 | compile-fail | EXP_07_11_01_008_FAIL_PRIMITIVE_EXPR_METHOD.ets | expression 形式中非引用类型调用方法：null undefined 等不是类/接口/union/类型参数，应报编译时错误 | compile-fail |
| 0361 | 7.11.1 | runtime | EXP_07_11_01_009_RUNTIME_STATIC_METHOD.ets | 运行时验证 typeReference 形式静态方法调用 | runtime |
| 0362 | 7.11.1 | runtime | EXP_07_11_01_010_RUNTIME_SUPER_METHOD.ets | 运行时验证 super 形式方法调用 | runtime |
| 0363 | 7.11.1 | runtime | EXP_07_11_01_011_RUNTIME_INTERFACE_METHOD.ets | 运行时验证 interface 类型表达式的方法调用（多态分发） | runtime |
| 0364 | 7.11.1 | runtime | EXP_07_11_01_012_RUNTIME_TYPE_PARAM_METHOD.ets | 运行时验证泛型类型参数方法调用 | runtime |
| 0365 | 7.11.2 | compile-pass | EXP_07_11_02_001_PASS_TYPEREF_STATIC_METHOD.ets | typeReference 形式：通过类名调用静态方法，候选集合包含该静态方法且可解析 | compile-pass |
| 0366 | 7.11.2 | compile-pass | EXP_07_11_02_002_PASS_SUPER_METHOD_CALL.ets | super 形式：通过 super 调用超类实例方法，候选集合包含超类的实例方法 | compile-pass |
| 0367 | 7.11.2 | compile-pass | EXP_07_11_02_003_PASS_CLASS_EXPR_METHOD.ets | 类表达式形式：通过类实例表达式调用实例方法，候选集合包含类的实例方法 | compile-pass |
| 0368 | 7.11.2 | compile-pass | EXP_07_11_02_004_PASS_UNION_COMMON_METHOD.ets | Union 表达式形式：union 类型变量调用公共实例方法，候选集合包含各类型的公共方法 | compile-pass |
| 0369 | 7.11.2 | compile-pass | EXP_07_11_02_005_PASS_OVERLOAD_RESOLUTION.ets | 重载解析：集合包含多个候选实体时，重载解析根据参数类型选择正确的方法 | compile-pass |
| 0370 | 7.11.2 | compile-pass | EXP_07_11_02_006_PASS_INTERFACE_EXPR_METHOD.ets | 接口表达式形式：通过接口类型表达式调用实例方法，候选集合包含接口的实例方法 | compile-pass |
| 0371 | 7.11.2 | compile-fail | EXP_07_11_02_007_FAIL_TYPEREF_INSTANCE_METHOD.ets | typeReference 形式调用不存在的静态方法，候选集合为空导致编译时错误 | compile-fail |
| 0372 | 7.11.2 | compile-fail | EXP_07_11_02_008_FAIL_UNION_NO_COMMON_METHOD.ets | Union 类型表达式调用不存在公共方法的方法，候选集合为空导致编译时错误 | compile-fail |
| 0373 | 7.11.2 | runtime | EXP_07_11_02_009_RUNTIME_DYNAMIC_DISPATCH.ets | 运行时动态分发：实例方法在运行时根据实际对象类型动态解析，子类覆盖的方法通过基类引用仍调用子类版本 | runtime |
| 0374 | 7.11.2 | runtime | EXP_07_11_02_010_RUNTIME_OVERLOAD_RESOLUTION.ets | 运行时重载解析：多个候选实体时，Overload Resolution 根据参数类型选择正确的方法并执行 | runtime |
| 0375 | 7.11.2 | runtime | EXP_07_11_02_011_RUNTIME_SUPER_METHOD.ets | super 形式运行时行为：super.identifier 调用超类实例方法，候选集合包含超类实例方法 | runtime |
| 0376 | 7.11.2 | runtime | EXP_07_11_02_012_RUNTIME_UNION_COMMON_METHOD.ets | Union 类型公共方法运行时行为：接口类型变量调用公共方法，运行时分发到实际类型 | runtime |
| 0377 | 7.11.3 | compile-pass | EXP_07_11_03_001_PASS_TYPEREF_STATIC_METHOD.ets | typeReference.identifier 形式：方法声明为 static，修饰符检查通过 | compile-pass |
| 0378 | 7.11.3 | compile-pass | EXP_07_11_03_002_PASS_EXPR_INSTANCE_METHOD.ets | expression.identifier 形式：方法未声明 static，修饰符检查通过 | compile-pass |
| 0379 | 7.11.3 | compile-pass | EXP_07_11_03_003_PASS_SUPER_INSTANCE_METHOD.ets | super.identifier 形式：超类方法非 abstract 且非 static，修饰符检查通过 | compile-pass |
| 0380 | 7.11.3 | compile-pass | EXP_07_11_03_004_PASS_TYPEREF_STATIC_COMPATIBLE_ARGS.ets | typeReference.identifier 静态方法调用参数兼容性检查：参数类型匹配时通过 | compile-pass |
| 0381 | 7.11.3 | compile-pass | EXP_07_11_03_005_PASS_EXPR_INSTANCE_COMPATIBLE_ARGS.ets | expression.identifier 实例方法调用参数兼容性检查：参数类型匹配时通过 | compile-pass |
| 0382 | 7.11.3 | compile-fail | EXP_07_11_03_006_FAIL_TYPEREF_INSTANCE_METHOD.ets | typeReference.identifier 形式调用实例方法：方法未声明 static，应编译时错误 | compile-fail |
| 0383 | 7.11.3 | compile-fail | EXP_07_11_03_007_FAIL_EXPR_STATIC_METHOD.ets | expression.identifier 形式调用静态方法：方法声明 static，应编译时错误 | compile-fail |
| 0384 | 7.11.3 | compile-fail | EXP_07_11_03_008_FAIL_SUPER_ABSTRACT_METHOD.ets | super.identifier 形式调用抽象方法：超类方法为 abstract，应编译时错误 | compile-fail |
| 0385 | 7.11.3 | compile-fail | EXP_07_11_03_009_FAIL_SUPER_STATIC_METHOD.ets | super.identifier 形式调用静态方法：超类方法为 static，应编译时错误 | compile-fail |
| 0386 | 7.11.3 | runtime | EXP_07_11_03_010_RUNTIME_TYPEREF_STATIC.ets | typeReference.identifier 调用静态方法运行时验证：修饰符检查通过后，静态方法正确执行 | runtime |
| 0387 | 7.11.3 | runtime | EXP_07_11_03_011_RUNTIME_EXPR_INSTANCE.ets | expression.identifier 调用实例方法运行时验证：修饰符检查通过后，实例方法正确执行 | runtime |
| 0388 | 7.11.3 | runtime | EXP_07_11_03_012_RUNTIME_SUPER_METHOD.ets | super.identifier 调用实例方法运行时验证：修饰符检查通过后，super 方法正确执行 | runtime |
| 0389 | 7.11.4 | compile-pass | EXP_07_11_04_001_PASS_STATIC_VOID_AS_STATEMENT.ets | 验证 static void 方法作为表达式语句调用，编译通过 | compile-pass |
| 0390 | 7.11.4 | compile-pass | EXP_07_11_04_002_PASS_INSTANCE_VOID_AS_STATEMENT.ets | 验证 instance void 方法作为表达式语句调用，编译通过 | compile-pass |
| 0391 | 7.11.4 | compile-pass | EXP_07_11_04_003_PASS_STATIC_RETURN_ASSIGNED.ets | 验证 static 非 void 方法返回值赋值给变量，编译通过 | compile-pass |
| 0392 | 7.11.4 | compile-pass | EXP_07_11_04_004_PASS_INSTANCE_RETURN_ASSIGNED.ets | 验证 instance 非 void 方法返回值赋值给变量，编译通过 | compile-pass |
| 0393 | 7.11.4 | compile-pass | EXP_07_11_04_005_PASS_TYPE_INFERENCE_RETURN.ets | 验证方法返回值通过类型推导（let x = obj.method()），编译通过 | compile-pass |
| 0394 | 7.11.4 | compile-pass | EXP_07_11_04_006_PASS_RETURN_IN_EXPRESSION.ets | 验证方法返回值在表达式中使用，编译通过 | compile-pass |
| 0395 | 7.11.4 | compile-fail | EXP_07_11_04_007_FAIL_STATIC_VOID_ASSIGNED.ets | 验证 static void 方法返回值不能赋值给变量（void 不能作类型注解） | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0396 | 7.11.4 | compile-fail | EXP_07_11_04_008_FAIL_INSTANCE_VOID_ASSIGNED.ets | 验证 instance void 方法返回值不能赋值给变量（void 不能作类型注解） | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0397 | 7.11.4 | runtime | EXP_07_11_04_009_RUNTIME_STATIC_RETURN_VALUE.ets | 验证 static 方法返回值运行时正确性 | runtime |
| 0398 | 7.11.4 | runtime | EXP_07_11_04_010_RUNTIME_INSTANCE_RETURN_VALUE.ets | 验证 instance 方法返回值运行时正确性 | runtime |
| 0399 | 7.11.4 | runtime | EXP_07_11_04_011_RUNTIME_VOID_METHOD_SIDE_EFFECT.ets | 验证 void 方法作为语句调用时副作用生效 | runtime |
| 0400 | 7.11.4 | runtime | EXP_07_11_04_012_RUNTIME_METHOD_CHAIN_RETURN.ets | 验证链式方法调用返回值正确传播 | runtime |
| 0401 | 7.12.1 | compile-pass | EXP_07_12_01_001_PASS_EMPTY_ARGUMENTS.ets | 验证空参调用：callArguments 中 argumentSequence 可选，() 合法 | compile-pass |
| 0402 | 7.12.1 | compile-pass | EXP_07_12_01_002_PASS_SINGLE_ARGUMENT.ets | 验证单参数调用：func(expr) 单个表达式参数 | compile-pass |
| 0403 | 7.12.1 | compile-pass | EXP_07_12_01_003_PASS_MULTIPLE_ARGUMENTS.ets | 验证多参数调用：func(expr1, expr2, expr3) 逗号分隔 | compile-pass |
| 0404 | 7.12.1 | compile-pass | EXP_07_12_01_004_PASS_TRAILING_COMMA.ets | 验证尾部逗号：argumentSequence 允许最后一个表达式后有可选逗号 ','? | compile-pass |
| 0405 | 7.12.1 | compile-pass | EXP_07_12_01_005_PASS_SPREAD_REST_PARAM.ets | 验证 spread expression 用于 rest parameter：仅 rest parameter 可用 spread | compile-pass |
| 0406 | 7.12.1 | compile-pass | EXP_07_12_01_006_PASS_ARGUMENT_EXPRESSION.ets | 验证表达式作为参数：argumentSequence 的 expression 可以是复杂表达式 | compile-pass |
| 0407 | 7.12.1 | compile-pass | EXP_07_12_01_007_PASS_TRAILING_LAMBDA.ets | 验证 trailing lambda：callArguments 中 trailingLambda? 可选语法 | compile-pass |
| 0408 | 7.12.1 | compile-fail | EXP_07_12_01_008_FAIL_SPREAD_NON_REST_PARAM.ets | 验证 spread expression 用于非 rest parameter：仅 rest parameter 可用 spread | compile-fail |
| 0409 | 7.12.1 | compile-fail | EXP_07_12_01_009_FAIL_TRAILING_LAMBDA_NON_FUNC.ets | 验证 trailing lambda 最后参数必须为函数类型 | compile-fail |
| 0410 | 7.12.1 | compile-fail | EXP_07_12_01_010_FAIL_SPREAD_NON_ITERABLE.ets | 验证 spread expression 必须为 iterable 或 tuple 类型 | compile-fail |
| 0411 | 7.12.1 | runtime | EXP_07_12_01_011_RUNTIME_MULTIPLE_ARGS.ets | 验证多参数调用运行时值正确传递 | runtime |
| 0412 | 7.12.1 | runtime | EXP_07_12_01_012_RUNTIME_TRAILING_COMMA.ets | 验证尾部逗号不影响运行时参数传递 | runtime |
| 0413 | 7.12.1 | runtime | EXP_07_12_01_013_RUNTIME_SPREAD_REST_PARAM.ets | 验证 spread expression 在 rest parameter 中运行时正确展开 | runtime |
| 0414 | 7.12.1 | runtime | EXP_07_12_01_014_RUNTIME_ARGUMENT_EXPRESSIONS.ets | 验证表达式作为参数运行时正确求值 | runtime |
| 0415 | 7.13.1 | compile-pass | EXP_07_13_01_001_PASS_INT_INDEX.ets | 验证 int 类型索引合法：索引表达式必须为 byte/short/int | compile-pass |
| 0416 | 7.13.1 | compile-pass | EXP_07_13_01_002_PASS_SHORT_BYTE_INDEX.ets | 验证 byte 和 short 类型索引合法：通过加宽数值转换到 int | compile-pass |
| 0417 | 7.13.1 | compile-pass | EXP_07_13_01_003_PASS_ELEMENT_ASSIGNMENT.ets | 验证数组元素赋值：数组索引表达式结果是 T 类型变量 | compile-pass |
| 0418 | 7.13.1 | compile-pass | EXP_07_13_01_004_PASS_REF_TYPE_FIELD_MODIFY.ets | 验证引用类型数组元素的字段可通过结果变量修改 | compile-pass |
| 0419 | 7.13.1 | compile-pass | EXP_07_13_01_005_PASS_CHAINING_OPERATOR.ets | 验证链式操作符 ?. 后的数组索引合法 | compile-pass |
| 0420 | 7.13.1 | compile-pass | EXP_07_13_01_006_PASS_LONG_TO_INT_CONVERSION.ets | 验证 long 类型通过 .toInt() 显式转换为 int 后作为索引 | compile-pass |
| 0421 | 7.13.1 | compile-pass | EXP_07_13_01_007_PASS_FLOAT_DOUBLE_TO_INT.ets | 验证 float/double 类型通过 .toInt() 显式转换为 int 后作为索引 | compile-pass |
| 0422 | 7.13.1 | compile-fail | EXP_07_13_01_008_FAIL_STRING_INDEX.ets | 验证字符串索引编译时错误：索引必须为整数类型 | compile-fail |
| 0423 | 7.13.1 | compile-fail | EXP_07_13_01_009_FAIL_FLOAT_LITERAL_INDEX.ets | 验证非整数浮点字面量索引编译时错误：3.5 不是整数索引 | compile-fail |
| 0424 | 7.13.1 | compile-fail | EXP_07_13_01_010_FAIL_NUMBER_TYPE_INDEX.ets | 验证 number 类型索引编译时错误：number 非整数类型 | compile-fail |
| 0425 | 7.13.1 | compile-fail | EXP_07_13_01_011_FAIL_LONG_INDEX.ets | 验证 long 类型无 .toInt() 转换时索引编译时错误 | compile-fail |
| 0426 | 7.13.1 | compile-fail | EXP_07_13_01_012_FAIL_FLOAT_INDEX.ets | 验证 float 类型无 .toInt() 转换时索引编译时错误 | compile-fail |
| 0427 | 7.13.1 | compile-fail | EXP_07_13_01_013_FAIL_DOUBLE_INDEX.ets | 验证 double 类型无 .toInt() 转换时索引编译时错误 | compile-fail |
| 0428 | 7.13.1 | runtime | EXP_07_13_01_014_RUNTIME_ELEMENT_ACCESS.ets | 验证数组元素基本访问和赋值运行时正确性 | runtime |
| 0429 | 7.13.1 | runtime | EXP_07_13_01_015_RUNTIME_OUT_OF_BOUNDS.ets | 验证数组越界索引运行时抛出 RangeError | runtime |
| 0430 | 7.13.1 | runtime | EXP_07_13_01_016_RUNTIME_REF_FIELD_MODIFY.ets | 验证引用类型数组元素字段通过索引结果变量修改 | runtime |
| 0431 | 7.13.1 | runtime | EXP_07_13_01_017_RUNTIME_CHAINING_ARRAY.ets | 验证链式操作符 ?. 后的数组索引运行时正确性 | runtime |
| 0432 | 7.13.2 | compile-pass | EXP_07_13_02_001_PASS_INT_LITERAL_INDEX.ets | 验证 int 字面量作为字符串索引合法：索引表达式必须为 byte/short/int | compile-pass |
| 0433 | 7.13.2 | compile-pass | EXP_07_13_02_002_PASS_INT_VARIABLE_INDEX.ets | 验证 int 变量作为字符串索引合法 | compile-pass |
| 0434 | 7.13.2 | compile-pass | EXP_07_13_02_003_PASS_BYTE_INDEX.ets | 验证 byte 类型作为字符串索引合法：byte 可加宽到 int | compile-pass |
| 0435 | 7.13.2 | compile-pass | EXP_07_13_02_004_PASS_SHORT_INDEX.ets | 验证 short 类型作为字符串索引合法：short 可加宽到 int | compile-pass |
| 0436 | 7.13.2 | compile-pass | EXP_07_13_02_005_PASS_INDEX_FIRST_LAST.ets | 验证字符串首尾索引正确性：索引 0 和索引 len-1 | compile-pass |
| 0437 | 7.13.2 | compile-pass | EXP_07_13_02_006_PASS_LONG_TO_INT_INDEX.ets | 验证 long→.toInt() 显式转换后可作为字符串索引 | compile-pass |
| 0438 | 7.13.2 | compile-pass | EXP_07_13_02_007_PASS_CHAINING_SELF_INDEX.ets | 验证方法返回结果立即索引：链式调用字符串索引 | compile-pass |
| 0439 | 7.13.2 | compile-fail | EXP_07_13_02_008_FAIL_IMMUTABLE_ASSIGN.ets | 验证字符串不可变性：通过索引修改字符串元素为编译时错误 | compile-fail |
| 0440 | 7.13.2 | compile-fail | EXP_07_13_02_009_FAIL_STRING_INDEX.ets | 验证字符串作为字符串索引编译时错误：索引必须为整数类型 | compile-fail |
| 0441 | 7.13.2 | compile-fail | EXP_07_13_02_010_FAIL_FLOAT_LITERAL_INDEX.ets | 验证浮点字面量作为字符串索引编译时错误：索引必须为整数类型 | compile-fail |
| 0442 | 7.13.2 | compile-fail | EXP_07_13_02_011_FAIL_LONG_INDEX.ets | 验证 long 类型无转换作为字符串索引编译时错误：索引必须为 int 类型 | compile-fail |
| 0443 | 7.13.2 | compile-fail | EXP_07_13_02_012_FAIL_FLOAT_INDEX.ets | 验证 float 类型无转换作为字符串索引编译时错误：索引必须为 int 类型 | compile-fail |
| 0444 | 7.13.2 | compile-fail | EXP_07_13_02_013_FAIL_DOUBLE_INDEX.ets | 验证 double 类型无转换作为字符串索引编译时错误：索引必须为 int 类型 | compile-fail |
| 0445 | 7.13.2 | runtime | EXP_07_13_02_014_RUNTIME_CHAR_ACCESS.ets | 验证字符串索引元素访问运行时正确性：索引访问返回 string 类型字符 | runtime |
| 0446 | 7.13.2 | runtime | EXP_07_13_02_015_RUNTIME_VARIABLE_INDEX.ets | 验证 int 变量作为字符串索引运行时正确性 | runtime |
| 0447 | 7.13.2 | runtime | EXP_07_13_02_016_RUNTIME_OUT_OF_BOUNDS.ets | 验证字符串索引越界时抛出 RangeError：索引 ≥ 字符串长度 | runtime |
| 0448 | 7.13.2 | runtime | EXP_07_13_02_017_RUNTIME_NEGATIVE_INDEX.ets | 验证字符串负索引时抛出 RangeError：索引 < 0 | runtime |
| 0449 | 7.13.3 | compile-pass | EXP_07_13_03_001_PASS_CASE1_LITERAL_READ.ets | Case 1: Key 为字面量联合类型，索引必须是联合中的字面量。验证合法字面量读取编译通过 | compile-pass |
| 0450 | 7.13.3 | compile-pass | EXP_07_13_03_002_PASS_CASE1_LITERAL_WRITE.ets | Case 1: Key 为字面量联合类型，验证合法字面量赋值编译通过 | compile-pass |
| 0451 | 7.13.3 | compile-pass | EXP_07_13_03_003_PASS_CASE1_FIELD_ACCESS.ets | Case 1: 验证字段访问符号 x.key2 等价于 x['key2'] 且编译通过 | compile-pass |
| 0452 | 7.13.3 | compile-pass | EXP_07_13_03_004_PASS_CASE2_DIRECT_LITERAL_INDEX.ets | Case 2: 验证非字面量联合 Key（number/string）的 Record 直接字面量索引编译通过 | compile-pass |
| 0453 | 7.13.3 | compile-pass | EXP_07_13_03_005_PASS_CASE2_NUMBER_KEY.ets | Case 2: Key 为非字面量联合类型（如 number），索引无限制，结果类型为 Value \| undefined | compile-pass |
| 0454 | 7.13.3 | compile-pass | EXP_07_13_03_006_PASS_CASE2_STRING_KEY.ets | Case 2: Key 为 string 类型，索引无限制，结果类型为 Value \| undefined | compile-pass |
| 0455 | 7.13.3 | compile-pass | EXP_07_13_03_007_PASS_CASE2_UNDEFINED_CHECK.ets | Case 2: 验证索引结果为 Value \| undefined，可进行 undefined 检查和 nullish 合并 | compile-pass |
| 0456 | 7.13.3 | compile-fail | EXP_07_13_03_008_FAIL_CASE1_INVALID_LITERAL_READ.ets | Case 1: 验证读取字面量联合中不存在的键产生编译时错误 | compile-fail |
| 0457 | 7.13.3 | compile-fail | EXP_07_13_03_009_FAIL_CASE1_INVALID_LITERAL_WRITE.ets | Case 1: 验证对字面量联合中不存在的键赋值产生编译时错误 | compile-fail |
| 0458 | 7.13.3 | compile-fail | EXP_07_13_03_010_FAIL_CASE1_VARIABLE_INDEX.ets | Case 1: Key 为字面量联合类型时，索引必须是字面量，变量作为索引编译时错误 | compile-fail |
| 0459 | 7.13.3 | compile-fail | EXP_07_13_03_011_FAIL_CASE1_NUMERIC_NOT_IN_UNION.ets | Case 1: 数值字面量联合 Key，索引值不在联合中时编译时错误 | compile-fail |
| 0460 | 7.13.3 | compile-fail | EXP_07_13_03_012_FAIL_CASE1_INVALID_FIELD_ACCESS.ets | Case 1: 字段访问符号 x.key4 但 key4 不在字面量联合中，编译时错误 | compile-fail |
| 0461 | 7.13.3 | runtime | EXP_07_13_03_013_RUNTIME_CASE1_VALID_KEYS.ets | Case 1: 验证字面量联合 Key 的 Record 元素访问运行时值正确性 | runtime |
| 0462 | 7.13.3 | runtime | EXP_07_13_03_014_RUNTIME_CASE2_MISSING_UNDEFINED.ets | Case 2: 验证非字面量 Key 的 Record 索引缺失时返回 undefined | runtime |
| 0463 | 7.13.3 | runtime | EXP_07_13_03_015_RUNTIME_CASE2_NARROW_UNDEFINED.ets | Case 2: 验证 undefined 检查后类型收窄和安全断言的使用 | runtime |
| 0464 | 7.13.3 | runtime | EXP_07_13_03_016_RUNTIME_CASE1_FIELD_ACCESS_VALUE.ets | Case 1: 验证方括号索引的值正确性和写入后读取一致性 | runtime |
| 0465 | 7.14 | compile-pass | EXP_07_14_001_PASS_NULLISH_FIELD_ACCESS.ets | 验证可空类型的字段访问链式操作符：expr 为 nullish 类型时，结果类型为 undefined\|T | compile-pass |
| 0466 | 7.14 | compile-pass | EXP_07_14_002_PASS_NULLISH_METHOD_CALL.ets | 验证可空类型实例方法调用链式操作符：expr?.method() 结果类型为 undefined\|T | compile-pass |
| 0467 | 7.14 | compile-pass | EXP_07_14_003_PASS_NULLISH_INDEXING.ets | 验证可空数组的索引链式操作符：arr?.[0] 结果类型为 undefined\|T | compile-pass |
| 0468 | 7.14 | compile-pass | EXP_07_14_004_PASS_NON_NULLISH_NO_EFFECT.ets | 验证非 nullish 类型上链式操作符无作用：类型不受影响（仍是 T 而非 T\|undefined） | compile-pass |
| 0469 | 7.14 | compile-pass | EXP_07_14_005_PASS_MIX_NULLISH_NON_NULLISH.ets | 验证 nullish 和非 nullish 混合使用链式操作符：s1 非 nullish 类型不变，s2 nullish 类型为 T\|undefined | compile-pass |
| 0470 | 7.14 | compile-pass | EXP_07_14_006_PASS_INSTANCE_METHOD_OK.ets | 验证链式操作符在实例方法上合法：b?.g() 是实例方法调用，编译通过 | compile-pass |
| 0471 | 7.14 | compile-pass | EXP_07_14_007_PASS_NESTED_CHAINING.ets | 验证多层嵌套链式操作符：a?.b?.c?.d 编译通过 | compile-pass |
| 0472 | 7.14 | compile-pass | EXP_07_14_008_PASS_FUNC_CALL_CHAINING.ets | 验证可空函数类型变量上的链式调用：nullableFunc?.() 编译通过 | compile-pass |
| 0473 | 7.14 | compile-fail | EXP_07_14_009_FAIL_STATIC_METHOD.ets | 验证静态方法使用链式操作符产生编译时错误：A?.f() 不允许 | compile-fail |
| 0474 | 7.14 | compile-fail | EXP_07_14_010_FAIL_ASSIGNMENT_LHS.ets | 验证链式操作符在赋值左侧产生编译时错误：x?.y = value 不允许 | compile-fail |
| 0475 | 7.14 | compile-fail | EXP_07_14_011_FAIL_POSTFIX_INCREMENT.ets | 验证链式操作符在后置递增中产生编译时错误：x?.y++ 不允许 | compile-fail |
| 0476 | 7.14 | compile-fail | EXP_07_14_012_FAIL_PREFIX_INCREMENT.ets | 验证链式操作符在前置递增中产生编译时错误：++x?.y 不允许 | compile-fail |
| 0477 | 7.14 | compile-fail | EXP_07_14_013_FAIL_POSTFIX_DECREMENT.ets | 验证链式操作符在后置递减中产生编译时错误：x?.y-- 不允许 | compile-fail |
| 0478 | 7.14 | compile-fail | EXP_07_14_014_FAIL_PREFIX_DECREMENT.ets | 验证链式操作符在前置递减中产生编译时错误：--x?.y 不允许 | compile-fail |
| 0479 | 7.14 | runtime | EXP_07_14_015_RUNTIME_NULLISH_UNDEFINED.ets | 验证 nullish 对象链式操作返回 undefined：bob.spouse?.name 返回 undefined | runtime |
| 0480 | 7.14 | runtime | EXP_07_14_016_RUNTIME_NON_NULLISH_VALUE.ets | 验证非 nullish 对象链式操作返回实际值：bob.spouse?.name 返回 "Alice" | runtime |
| 0481 | 7.14 | runtime | EXP_07_14_017_RUNTIME_NESTED_CHAINING.ets | 验证多层嵌套链式操作符运行时：不同层级 nullish 时返回 undefined | runtime |
| 0482 | 7.14 | runtime | EXP_07_14_018_RUNTIME_METHOD_CHAINING.ets | 验证实例方法链式调用运行时：nullish 返回 undefined，非 nullish 返回值 | runtime |
| 0483 | 7.15 | compile-pass | EXP_07_15_001_PASS_BASIC_NEW.ets | 验证基本 new 表达式，调用默认构造器：new A() | compile-pass |
| 0484 | 7.15 | compile-pass | EXP_07_15_002_PASS_NEW_WITH_ARGS.ets | 验证带参数构造器 new A(42) | compile-pass |
| 0485 | 7.15 | compile-pass | EXP_07_15_003_PASS_NEW_STORE_VARIABLE.ets | 验证 new 表达式结果赋值给变量并访问字段 | compile-pass |
| 0486 | 7.15 | compile-pass | EXP_07_15_004_PASS_NEW_METHOD_CHAIN.ets | 验证 new 后直接调用方法 new A().method() | compile-pass |
| 0487 | 7.15 | compile-pass | EXP_07_15_005_PASS_PAREN_NEW_METHOD.ets | 验证带括号的 new 后调用方法 (new A).method() | compile-pass |
| 0488 | 7.15 | compile-pass | EXP_07_15_006_PASS_NEW_NO_PARENS.ets | 验证无参无括号 new A | compile-pass |
| 0489 | 7.15 | compile-pass | EXP_07_15_007_PASS_GENERIC_NEW.ets | 验证泛型类带类型参数实例化 new Box<int>(42) | compile-pass |
| 0490 | 7.15 | compile-fail | EXP_07_15_008_FAIL_NEW_METHOD_NO_PARENS.ets | 验证 new A.method() 编译时错误（缺少括号，应为 new A().method()） | compile-fail |
| 0491 | 7.15 | compile-fail | EXP_07_15_009_FAIL_NEW_TYPE_PARAM.ets | 验证类型参数作为 new 的 typeReference 编译时错误 | compile-fail |
| 0492 | 7.15 | compile-fail | EXP_07_15_010_FAIL_FIXED_ARRAY_TYPE_PARAM.ets | 验证 FixedArray<T> 使用类型参数作为元素类型编译时错误 | compile-fail |
| 0493 | 7.15 | compile-fail | EXP_07_15_011_FAIL_NEW_INTERFACE.ets | 验证接口类型不可用 new 实例化 | compile-fail |
| 0494 | 7.15 | compile-fail | EXP_07_15_012_FAIL_NEW_ABSTRACT.ets | 验证抽象类不可用 new 实例化 | compile-fail |
| 0495 | 7.15 | runtime | EXP_07_15_013_RUNTIME_BASIC_NEW.ets | 验证 new A(42) 运行时构造器正确初始化字段值 | runtime |
| 0496 | 7.15 | runtime | EXP_07_15_014_RUNTIME_NEW_METHOD_CHAIN.ets | 验证 new A().method() 运行时方法调用结果正确 | runtime |
| 0497 | 7.15 | runtime | EXP_07_15_015_RUNTIME_NEW_NO_PARENS.ets | 验证无括号 new A 运行时字段默认值正确 | runtime |
| 0498 | 7.15 | runtime | EXP_07_15_016_RUNTIME_CTOR_THROWS.ets | 验证构造器抛出异常时 new 表达式异常完成 | runtime |
| 0499 | 7.16 | compile-pass | EXP_07_16_001_PASS_BASIC_INSTANCEOF.ets | 验证基本 instanceof 表达式：子类实例 instanceof 父类/子类返回正确 boolean | compile-pass |
| 0500 | 7.16 | compile-pass | EXP_07_16_002_PASS_INSTANCEOF_SMART_CAST.ets | 验证 instanceof 在 if 子句中触发 smart cast，编译通过 | compile-pass |
| 0501 | 7.16 | compile-pass | EXP_07_16_003_PASS_GENERIC_TYPE_NAME.ets | 验证泛型类名（擦除后）作为 instanceof 的 T 操作数编译通过 | compile-pass |
| 0502 | 7.16 | compile-pass | EXP_07_16_004_PASS_UNRELATED_TYPE.ets | 验证无继承关系类型 instanceof 编译通过（运行时为 false） | compile-pass |
| 0503 | 7.16 | compile-pass | EXP_07_16_005_PASS_SUPERCLASS_CHECK.ets | 验证子类实例 instanceof 父类编译通过（运行时为 true） | compile-pass |
| 0504 | 7.16 | compile-pass | EXP_07_16_006_PASS_BOOLEAN_EXPRESSION.ets | 验证 instanceof 结果可用于复杂布尔表达式（&&、\|\|、!） | compile-pass |
| 0505 | 7.16 | compile-pass | EXP_07_16_007_PASS_ALWAYS_TRUE_WARNING.ets | 验证 instanceof 始终为 true 时编译通过（附带编译时警告） | compile-pass |
| 0506 | 7.16 | compile-pass | EXP_07_16_008_PASS_ALWAYS_FALSE_WARNING.ets | 验证 instanceof 始终为 false 时编译通过（附带编译时警告） | compile-pass |
| 0507 | 7.16 | compile-fail | EXP_07_16_009_FAIL_GENERIC_TYPE_ARG.ets | 验证泛型类型参数 B<T> 不作为实例保留到 undefined，编译时错误 | compile-fail |
| 0508 | 7.16 | compile-fail | EXP_07_16_010_FAIL_TYPE_PARAM_DIRECT.ets | 验证类型参数 T 直接作为 instanceof 操作数编译时错误 | compile-fail |
| 0509 | 7.16 | runtime | EXP_07_16_011_RUNTIME_TRUE_CASE.ets | 验证 instanceof 在运行时对子类实例返回 true | runtime |
| 0510 | 7.16 | runtime | EXP_07_16_012_RUNTIME_FALSE_CASE.ets | 验证 instanceof 在无继承关系类型上返回 false | runtime |
| 0511 | 7.16 | runtime | EXP_07_16_013_RUNTIME_NULL_INSTANCEOF.ets | 验证 undefined/null 值 instanceof 返回 false | runtime |
| 0512 | 7.16 | runtime | EXP_07_16_014_RUNTIME_INTERFACE_INSTANCEOF.ets | 验证接口实现类的 instanceof 运行时行为 | runtime |
| 0513 | 7.17.1 | compile-pass | EXP_07_17_01_001_PASS_NUMERIC_LITERAL_BYTE.ets | 验证数值字面量 as byte 编译通过（值在 byte 范围内） | compile-pass |
| 0514 | 7.17.1 | compile-pass | EXP_07_17_01_002_PASS_NUMERIC_LITERAL_DOUBLE.ets | 验证数值字面量 as double 编译通过 | compile-pass |
| 0515 | 7.17.1 | compile-pass | EXP_07_17_01_003_PASS_ARRAY_LITERAL_DOUBLE.ets | 验证数组字面量 as double[] 编译通过（int→double 提升） | compile-pass |
| 0516 | 7.17.1 | compile-pass | EXP_07_17_01_004_PASS_ARRAY_LITERAL_TUPLE.ets | 验证数组字面量 as [double, string] 元组类型编译通过 | compile-pass |
| 0517 | 7.17.1 | compile-pass | EXP_07_17_01_005_PASS_OBJECT_LITERAL_CLASS.ets | 验证对象字面量 as 类类型编译通过 | compile-pass |
| 0518 | 7.17.1 | compile-pass | EXP_07_17_01_006_PASS_OBJECT_LITERAL_INTERFACE.ets | 验证对象字面量 as 接口类型编译通过 | compile-pass |
| 0519 | 7.17.1 | compile-fail | EXP_07_17_01_007_FAIL_NUMERIC_OVERFLOW.ets | 验证数值字面量 as byte 超出范围编译时错误（128 > byte 范围 -128~127） | compile-fail |
| 0520 | 7.17.1 | compile-fail | EXP_07_17_01_008_FAIL_WRONG_TARGET_TYPE.ets | 验证数组字面量 as 非数组/元组类型编译时错误 | compile-fail |
| 0521 | 7.17.1 | compile-fail | EXP_07_17_01_009_FAIL_WRONG_ELEMENT_TYPE.ets | 验证数组字面量 as double[] 元素类型不匹配编译时错误 | compile-fail |
| 0522 | 7.17.1 | compile-fail | EXP_07_17_01_010_FAIL_WRONG_TUPLE_ELEMENT.ets | 验证元组 as 转换时元素类型不匹配编译时错误 | compile-fail |
| 0523 | 7.17.1 | compile-fail | EXP_07_17_01_011_FAIL_INCOMPATIBLE_TARGET.ets | 验证数组字面量 as 不兼容类型 string 编译时错误 | compile-fail |
| 0524 | 7.17.1 | runtime | EXP_07_17_01_012_RUNTIME_NUMERIC_CAST.ets | 验证数值字面量 as byte 运行时值正确 | runtime |
| 0525 | 7.17.1 | runtime | EXP_07_17_01_013_RUNTIME_ARRAY_CAST.ets | 验证数组字面量 as double[] 运行时元素值正确 | runtime |
| 0526 | 7.17.1 | runtime | EXP_07_17_01_014_RUNTIME_TUPLE_CAST.ets | 验证数组字面量 as [double, string] 元组运行时值正确 | runtime |
| 0527 | 7.17.1 | runtime | EXP_07_17_01_015_RUNTIME_OBJECT_CAST.ets | 验证对象字面量 as 类类型运行时字段值正确 | runtime |
| 0528 | 7.17.2 | compile-pass | EXP_07_17_02_001_PASS_OBJECT_AS_STRING.ets | 验证 Object 类型变量 as string 运行时检查编译通过 | compile-pass |
| 0529 | 7.17.2 | compile-pass | EXP_07_17_02_002_PASS_SUBTYPE_AS_SUPERTYPE.ets | 验证子类变量 as 超类编译通过（编译时 warning: 始终成功） | compile-pass |
| 0530 | 7.17.2 | compile-pass | EXP_07_17_02_003_PASS_UNRELATED_AS_WARNING.ets | 验证不相关子类 as 编译通过（编译时 warning: 始终抛 ClassCastError） | compile-pass |
| 0531 | 7.17.2 | compile-pass | EXP_07_17_02_004_PASS_INSTANCEOF_GUARD_AS.ets | 验证 instanceof 守卫后 as cast 编译通过 | compile-pass |
| 0532 | 7.17.2 | compile-pass | EXP_07_17_02_005_PASS_VARIABLE_AS_OBJECT.ets | 验证 string 类型变量 as Object 编译通过（始终成功） | compile-pass |
| 0533 | 7.17.2 | compile-pass | EXP_07_17_02_006_PASS_INSTANCEOF_ALTERNATIVE_SMART_CAST.ets | 验证 instanceof 替代 as cast 的 smart cast 编译通过 | compile-pass |
| 0534 | 7.17.2 | runtime | EXP_07_17_02_011_RUNTIME_SUBTYPE_CAST_OK.ets | 验证子类变量 as 超类运行时成功 | runtime |
| 0535 | 7.17.2 | runtime | EXP_07_17_02_012_RUNTIME_NON_SUBTYPE_CLASS_CAST_ERROR.ets | 验证非子类型 cast 运行时抛出 ClassCastError | runtime |
| 0536 | 7.17.2 | runtime | EXP_07_17_02_013_RUNTIME_INSTANCEOF_PREVENTS_ERROR.ets | 验证 instanceof 守卫避免 as cast 运行时错误 | runtime |
| 0537 | 7.17.2 | runtime | EXP_07_17_02_014_RUNTIME_UNRELATED_CLASS_CAST_ERROR.ets | 验证不相关类之间 as cast 运行时抛出 ClassCastError | runtime |
| 0538 | 7.17.2 | runtime | EXP_07_17_02_015_RUNTIME_INSTANCEOF_FALSE_AS_ERROR.ets | 验证 instanceof false 后 as cast 抛出 ClassCastError | runtime |
| 0539 | 7.18 | compile-pass | EXP_07_18_001_PASS_TYPEOF_STRING_BOOLEAN.ets | 验证 typeof string/boolean 编译通过 | compile-pass |
| 0540 | 7.18 | compile-pass | EXP_07_18_002_PASS_TYPEOF_BIGINT_NUMBER.ets | 验证 typeof bigint/number/double 编译通过 | compile-pass |
| 0541 | 7.18 | compile-pass | EXP_07_18_003_PASS_TYPEOF_NUMERIC_BYTE_INT.ets | 验证 typeof byte/short/int/long/float 编译通过 | compile-pass |
| 0542 | 7.18 | compile-pass | EXP_07_18_005_PASS_TYPEOF_OBJECT_FUNCTION.ets | 验证 typeof Object/function type 编译通过 | compile-pass |
| 0543 | 7.18 | compile-pass | EXP_07_18_006_PASS_TYPEOF_NULL_UNDEFINED.ets | 验证 typeof null/undefined 编译通过 | compile-pass |
| 0544 | 7.18 | compile-pass | EXP_07_18_007_PASS_TYPEOF_ENUM.ets | 验证 typeof enum 编译通过 | compile-pass |
| 0545 | 7.18 | compile-pass | EXP_07_18_008_PASS_TYPEOF_UNION.ets | 验证 typeof union 类型编译通过 | compile-pass |
| 0546 | 7.18 | compile-fail | EXP_07_18_021_FAIL_TYPEOF_OVERLOADED_FUNC.ets | 验证 typeof 重载函数名产生编译时错误 | compile-fail |
| 0547 | 7.18 | runtime | EXP_07_18_031_RUNTIME_TYPEOF_STRING_BOOLEAN.ets | 验证 typeof string/boolean 运行时值 | runtime |
| 0548 | 7.18 | runtime | EXP_07_18_032_RUNTIME_TYPEOF_NUMERIC.ets | 验证 typeof 各数值类型运行时值 | runtime |
| 0549 | 7.18 | runtime | EXP_07_18_034_RUNTIME_TYPEOF_NULL_UNDEFINED.ets | 验证 typeof null/undefined 运行时值 | runtime |
| 0550 | 7.18 | runtime | EXP_07_18_035_RUNTIME_TYPEOF_ENUM.ets | 验证 typeof enum 运行时值 | runtime |
| 0551 | 7.18 | runtime | EXP_07_18_036_RUNTIME_TYPEOF_OBJECT_RUNTIME.ets | 验证 typeof Object 变量运行时值 | runtime |
| 0552 | 7.18 | runtime | EXP_07_18_037_RUNTIME_TYPEOF_UNION.ets | 验证 typeof union 类型运行时值 | runtime |
| 0553 | 7.18 | runtime | EXP_07_18_038_RUNTIME_TYPEOF_TYPE_PARAM.ets | 验证 typeof 类型参数运行时值 | runtime |
| 0554 | 7.20 | compile-pass | EXP_07_20_001_PASS_BASIC_NULLISH.ets | 验证 undefined ?? "default" 基本空值合并语法编译通过。 * LHS 为 undefined，表达式取 RHS。 | compile-pass |
| 0555 | 7.20 | compile-pass | EXP_07_20_002_PASS_BASIC_NON_NULLISH.ets | 验证非 nullish 变量 ?? default 编译通过。 * LHS 非 nullish，表达式取 LHS。 | compile-pass |
| 0556 | 7.20 | compile-pass | EXP_07_20_003_PASS_NULL_LHS.ets | 验证 null ?? 42 编译通过。 * LHS 为 null（空值），表达式取 RHS。 | compile-pass |
| 0557 | 7.20 | compile-pass | EXP_07_20_004_PASS_NULLABLE_VARIABLE.ets | 验证 T \| undefined 和 T \| null 类型变量 ?? default 编译通过。 * 验证类型推导为 normalized union（非 nullish 变体 \| RHS 类型）。 | compile-pass |
| 0558 | 7.20 | compile-pass | EXP_07_20_005_PASS_CHAINED.ets | 验证多重链式 ?? 表达式 a ?? b ?? c 编译通过。 * 左结合：先计算 a ?? b，结果再 ?? c。 | compile-pass |
| 0559 | 7.20 | compile-pass | EXP_07_20_006_PASS_WITH_PARENS.ets | 验证 n ?? (a \|\| b) 带括号的 ?? 与 \|\| 混合编译通过。 * 括号隔离了 \|\| 操作，避免 ?? 与 \|\| 混用错误。 | compile-pass |
| 0560 | 7.20 | compile-pass | EXP_07_20_007_PASS_EMPTY_STRING_FALSE.ets | 验证空串变量 ?? "fall" 和 false 变量 ?? true 编译通过。 * 空串和 false 不是 nullish 值，不会触发取 RHS。 | compile-pass |
| 0561 | 7.20 | compile-pass | EXP_07_20_008_PASS_ZERO_EMPTY_OBJECT.ets | 验证 0 变量 ?? 1 和对象 ?? default 编译通过。 * 数值 0 和对象不是 nullish 值，不会触发取 RHS。 | compile-pass |
| 0562 | 7.20 | compile-fail | EXP_07_20_021_FAIL_MIXED_OR.ets | 验证 n ?? a \|\| b（?? 和 \|\| 无括号混用）报编译时错误。 * spec 规定 ?? 和 \|\| 不能无括号混用。 | compile-fail |
| 0563 | 7.20 | compile-fail | EXP_07_20_022_FAIL_MIXED_AND.ets | 验证 n ?? a && b（?? 和 && 无括号混用）报编译时错误。 * spec 规定 ?? 和 && 不能无括号混用。 | compile-fail |
| 0564 | 7.20 | compile-fail | EXP_07_20_023_FAIL_MIXED_COMPLEX.ets | 验证 n ?? a \|\| b && c（?? 与 \|\| 和 && 复杂混用无括号）报编译时错误。 * spec 规定 ?? 不能与 \|\| 或 && 无括号混用。 | compile-fail |
| 0565 | 7.20 | runtime | EXP_07_20_031_RUNTIME_NULLISH_UNDEFINED.ets | 验证 undefined ?? "default" 运行时结果为 "default"。 * LHS 为 undefined（nullish 值），取 RHS。 | runtime |
| 0566 | 7.20 | runtime | EXP_07_20_032_RUNTIME_NON_NULLISH_VALUE.ets | 验证非 nullish 变量 ?? default 运行时结果为 LHS 值。 * LHS 为非 nullish 值，取 LHS，RHS 不执行。 | runtime |
| 0567 | 7.20 | runtime | EXP_07_20_033_RUNTIME_NULL_LHS.ets | 验证 null ?? 42 运行时结果为 42。 * LHS 为 null（nullish 值），取 RHS。 | runtime |
| 0568 | 7.20 | runtime | EXP_07_20_034_RUNTIME_FALSE_IS_NOT_NULLISH.ets | 验证 false 变量 ?? true 运行时结果为 false。 * false 不是 nullish 值，不会触发取 RHS。 * 这是与 \|\| 的关键区别：\|\| 将 false 视为 falsy，?? 不将 false 视为 nullish。 | runtime |
| 0569 | 7.20 | runtime | EXP_07_20_035_RUNTIME_ZERO_IS_NOT_NULLISH.ets | 验证 0 变量 ?? 99 运行时结果为 0。 * 数值 0 不是 nullish 值，不会触发取 RHS。 * 这是与 \|\| 的关键区别：\|\| 将 0 视为 falsy，?? 不将 0 视为 nullish。 | runtime |
| 0570 | 7.20 | runtime | EXP_07_20_036_RUNTIME_EMPTY_STRING.ets | 验证空串变量 ?? "fallback" 运行时结果为 ""。 * 空串不是 nullish 值，不会触发取 RHS。 * 这是与 \|\| 的关键区别：\|\| 将 "" 视为 falsy，?? 不将 "" 视为 nullish。 | runtime |
| 0571 | 7.20 | runtime | EXP_07_20_037_RUNTIME_CHAINED.ets | 验证 undefined ?? null ?? "last" 链式 ?? 运行时结果为 "last"。 * 左结合：先 undefined ?? null → null，再 null ?? "last" → "last"。 | runtime |
| 0572 | 7.20 | runtime | EXP_07_20_038_RUNTIME_LAZY_EVALUATION.ets | 验证 ?? 的短路求值（lazy evaluation）。 * LHS 非 nullish 时 RHS 不被求值。 * 通过副作用计数器验证：当 LHS 为非 nullish 时，RHS 的函数调用不会发生。 | runtime |
| 0573 | 7.21.1 | compile-pass | EXP_07_21_01_001_PASS_INT.ets | 验证 int 类型后置递增编译通过。 * int 是数值类型，支持 ++ 操作符。 | compile-pass |
| 0574 | 7.21.1 | compile-pass | EXP_07_21_01_002_PASS_SHORT.ets | 验证 short 类型后置递增编译通过。 * short 是数值类型，支持 ++ 操作符，结果类型为 short。 | compile-pass |
| 0575 | 7.21.1 | compile-pass | EXP_07_21_01_003_PASS_LONG.ets | 验证 long 类型后置递增编译通过。 * long 是数值类型，支持 ++ 操作符。 | compile-pass |
| 0576 | 7.21.1 | compile-pass | EXP_07_21_01_004_PASS_BYTE.ets | 验证 byte 类型后置递增编译通过。 * byte 是数值类型，支持 ++ 操作符，结果类型为 byte（不提升为 int）。 | compile-pass |
| 0577 | 7.21.1 | compile-pass | EXP_07_21_01_005_PASS_FLOAT.ets | 验证 float 类型后置递增编译通过。 * float 是数值类型，支持 ++ 操作符。 | compile-pass |
| 0578 | 7.21.1 | compile-pass | EXP_07_21_01_006_PASS_DOUBLE.ets | 验证 double 类型后置递增编译通过。 * double 是数值类型，支持 ++ 操作符。 | compile-pass |
| 0579 | 7.21.1 | compile-pass | EXP_07_21_01_007_PASS_BIGINT.ets | 验证 bigint 类型后置递增编译通过。 * bigint 支持 ++ 操作符（与数值类型并列受支持）。 | compile-pass |
| 0580 | 7.21.1 | compile-fail | EXP_07_21_01_021_FAIL_STRING.ets | 验证 string 类型后置递增报编译时错误。 * string 不是数值类型或 bigint，不可 ++。 | compile-fail |
| 0581 | 7.21.1 | compile-fail | EXP_07_21_01_022_FAIL_BOOLEAN.ets | 验证 boolean 类型后置递增报编译时错误。 * boolean 不是数值类型或 bigint，不可 ++。 | compile-fail |
| 0582 | 7.21.1 | compile-fail | EXP_07_21_01_023_FAIL_ENUM.ets | 验证 enum 类型后置递增报编译时错误。 * enum 类型虽然底层可能为 int，但不是数值类型，不可 ++。 | compile-fail |
| 0583 | 7.21.1 | compile-fail | EXP_07_21_01_024_FAIL_LITERAL.ets | 验证字面量 5++ 报编译时错误。 * 字面量不是 LHS（left-hand-side expression），不可作为 ++ 的操作数。 | compile-fail |
| 0584 | 7.21.1 | compile-fail | EXP_07_21_01_025_FAIL_FUNC_CALL.ets | 验证函数调用结果 ++ 报编译时错误。 * 函数调用结果不是 LHS，不可作为 ++ 的操作数。 | compile-fail |
| 0585 | 7.21.1 | runtime | EXP_07_21_01_031_RUNTIME_INT_VALUE.ets | 验证 int 后置递增返回值语义和副作用。 * x++ 返回自增前的值（old value），x 变为 old + 1。 | runtime |
| 0586 | 7.21.1 | runtime | EXP_07_21_01_032_RUNTIME_SHORT_VALUE.ets | 验证 short 后置递增返回值语义和副作用。 * x++ 返回自增前的值（old value），x 变为 old + 1。 | runtime |
| 0587 | 7.21.1 | runtime | EXP_07_21_01_033_RUNTIME_LONG_VALUE.ets | 验证 long 后置递增返回值语义和副作用。 * x++ 返回自增前的值（old value），x 变为 old + 1。 | runtime |
| 0588 | 7.21.1 | runtime | EXP_07_21_01_034_RUNTIME_BYTE_VALUE.ets | 验证 byte 后置递增返回值语义和副作用。 * x++ 返回自增前的值（old value），x 变为 old + 1。 * byte 类型 ++ 结果仍为 byte（不提升为 int）。 | runtime |
| 0589 | 7.21.1 | runtime | EXP_07_21_01_035_RUNTIME_FLOAT_VALUE.ets | 验证 float 后置递增返回值语义和副作用。 * x++ 返回自增前的值（old value），x 变为 old + 1。 * float ++ 结果仍为 float。 | runtime |
| 0590 | 7.21.1 | runtime | EXP_07_21_01_036_RUNTIME_DOUBLE_VALUE.ets | 验证 double 后置递增返回值语义和副作用。 * x++ 返回自增前的值（old value），x 变为 old + 1。 * double ++ 结果仍为 double。 * 使用整数精度避免浮点 IEEE 754 表示误差。 | runtime |
| 0591 | 7.21.1 | runtime | EXP_07_21_01_037_RUNTIME_BIGINT_VALUE.ets | 验证 bigint 后置递增返回值语义和副作用。 * x++ 返回自增前的值（old value），x 变为 old + 1n。 | runtime |
| 0592 | 7.21.1 | runtime | EXP_07_21_01_038_RUNTIME_INT_OVERFLOW.ets | 验证 int 最大值后置递增的溢出行为。 * int.MAX_VALUE (2147483647) ++ 应回绕为 int.MIN_VALUE (-2147483648)。 * ？？ 返回值为溢出前的最大值，变量变为最小值。 | runtime |
| 0593 | 7.21.2 | compile-pass | EXP_07_21_02_001_PASS_INT.ets | 验证 int 类型后置递减编译通过。 | compile-pass |
| 0594 | 7.21.2 | compile-pass | EXP_07_21_02_002_PASS_SHORT.ets | 验证 short 类型后置递减编译通过。 * short 结果类型保持为 short。 | compile-pass |
| 0595 | 7.21.2 | compile-pass | EXP_07_21_02_003_PASS_LONG.ets | 验证 long 类型后置递减编译通过。 | compile-pass |
| 0596 | 7.21.2 | compile-pass | EXP_07_21_02_004_PASS_BYTE.ets | 验证 byte 类型后置递减编译通过。 * byte 结果类型保持为 byte（不提升为 int）。 | compile-pass |
| 0597 | 7.21.2 | compile-pass | EXP_07_21_02_005_PASS_FLOAT.ets | 验证 float 类型后置递减编译通过。 | compile-pass |
| 0598 | 7.21.2 | compile-pass | EXP_07_21_02_006_PASS_DOUBLE.ets | 验证 double 类型后置递减编译通过。 | compile-pass |
| 0599 | 7.21.2 | compile-pass | EXP_07_21_02_007_PASS_BIGINT.ets | 验证 bigint 类型后置递减编译通过。 | compile-pass |
| 0600 | 7.21.2 | compile-fail | EXP_07_21_02_021_FAIL_STRING.ets | 验证 string 类型后置递减报编译时错误。 | compile-fail |
| 0601 | 7.21.2 | compile-fail | EXP_07_21_02_022_FAIL_BOOLEAN.ets | 验证 boolean 类型后置递减报编译时错误。 | compile-fail |
| 0602 | 7.21.2 | compile-fail | EXP_07_21_02_023_FAIL_ENUM.ets | 验证 enum 类型后置递减报编译时错误。 * enum 不是数值类型，不可 --。 | compile-fail |
| 0603 | 7.21.2 | compile-fail | EXP_07_21_02_024_FAIL_LITERAL.ets | 验证字面量 5-- 报编译时错误。 * 字面量不是 LHS，不可作为 -- 的操作数。 | compile-fail |
| 0604 | 7.21.2 | compile-fail | EXP_07_21_02_025_FAIL_FUNC_CALL.ets | 验证函数调用结果 -- 报编译时错误。 * 函数调用结果不是 LHS，不可作为 -- 的操作数。 | compile-fail |
| 0605 | 7.21.2 | runtime | EXP_07_21_02_031_RUNTIME_INT_VALUE.ets | 验证 int 后置递减返回值语义和副作用。 * x-- 返回自减前的值（old value），x 变为 old - 1。 | runtime |
| 0606 | 7.21.2 | runtime | EXP_07_21_02_032_RUNTIME_SHORT_VALUE.ets | 验证 short 后置递减返回值语义和副作用。 * x-- 返回自减前的值（old value），x 变为 old - 1。 | runtime |
| 0607 | 7.21.2 | runtime | EXP_07_21_02_033_RUNTIME_LONG_VALUE.ets | 验证 long 后置递减返回值语义和副作用。 * x-- 返回自减前的值（old value），x 变为 old - 1。 | runtime |
| 0608 | 7.21.2 | runtime | EXP_07_21_02_034_RUNTIME_BYTE_VALUE.ets | 验证 byte 后置递减返回值语义和副作用。 * x-- 返回自减前的值（old value），x 变为 old - 1。 * byte 类型 -- 结果仍为 byte（不提升为 int）。 | runtime |
| 0609 | 7.21.2 | runtime | EXP_07_21_02_035_RUNTIME_FLOAT_VALUE.ets | 验证 float 后置递减返回值语义和副作用。 * x-- 返回自减前的值（old value），x 变为 old - 1。 | runtime |
| 0610 | 7.21.2 | runtime | EXP_07_21_02_036_RUNTIME_DOUBLE_VALUE.ets | 验证 double 后置递减返回值语义和副作用。 * x-- 返回自减前的值（old value），x 变为 old - 1。 * 使用整数精度避免浮点 IEEE 754 表示误差。 | runtime |
| 0611 | 7.21.2 | runtime | EXP_07_21_02_037_RUNTIME_BIGINT_VALUE.ets | 验证 bigint 后置递减返回值语义和副作用。 * x-- 返回自减前的值（old value），x 变为 old - 1n。 | runtime |
| 0612 | 7.21.2 | runtime | EXP_07_21_02_038_RUNTIME_INT_UNDERFLOW.ets | 验证 int 最小值后置递减的溢出行为。 * int.MIN_VALUE (-2147483648) -- 应回绕为 int.MAX_VALUE (2147483647)。 * 返回值为溢出前的最小值，变量变为最大值。 | runtime |
| 0613 | 7.21.3 | compile-pass | EXP_07_21_03_001_PASS_INT.ets | 验证 int 类型前置递增编译通过。 | compile-pass |
| 0614 | 7.21.3 | compile-pass | EXP_07_21_03_002_PASS_SHORT.ets | 验证 short 类型前置递增编译通过。结果类型保持为 short。 | compile-pass |
| 0615 | 7.21.3 | compile-pass | EXP_07_21_03_003_PASS_LONG.ets | 验证 long 类型前置递增编译通过。 | compile-pass |
| 0616 | 7.21.3 | compile-pass | EXP_07_21_03_004_PASS_BYTE.ets | 验证 byte 类型前置递增编译通过。结果类型保持为 byte（不提升 int）。 | compile-pass |
| 0617 | 7.21.3 | compile-pass | EXP_07_21_03_005_PASS_FLOAT.ets | 验证 float 类型前置递增编译通过。 | compile-pass |
| 0618 | 7.21.3 | compile-pass | EXP_07_21_03_006_PASS_DOUBLE.ets | 验证 double 类型前置递增编译通过。 | compile-pass |
| 0619 | 7.21.3 | compile-pass | EXP_07_21_03_007_PASS_BIGINT.ets | 验证 bigint 类型前置递增编译通过。 | compile-pass |
| 0620 | 7.21.3 | compile-fail | EXP_07_21_03_021_FAIL_STRING.ets | 验证 string 类型前置递增报编译时错误。 | compile-fail |
| 0621 | 7.21.3 | compile-fail | EXP_07_21_03_022_FAIL_BOOLEAN.ets | 验证 boolean 类型前置递增报编译时错误。 | compile-fail |
| 0622 | 7.21.3 | compile-fail | EXP_07_21_03_023_FAIL_ENUM.ets | 验证 enum 类型前置递增报编译时错误。 | compile-fail |
| 0623 | 7.21.3 | compile-fail | EXP_07_21_03_024_FAIL_LITERAL.ets | 验证 ++5 字面量前置递增报编译时错误。 * 字面量不是 LHS，不可作为 ++ 的操作数。 | compile-fail |
| 0624 | 7.21.3 | compile-fail | EXP_07_21_03_025_FAIL_FUNC_CALL.ets | 验证 ++func_call 前置递增报编译时错误。 * 函数调用结果不是 LHS，不可作为 ++ 的操作数。 | compile-fail |
| 0625 | 7.21.3 | runtime | EXP_07_21_03_031_RUNTIME_INT_VALUE.ets | 验证 int 前置递增返回值语义和副作用。 * ++x 返回自增后的新值，x 变为 old + 1。 * 与后置递增关键区别：返回新值（非旧值）。 | runtime |
| 0626 | 7.21.3 | runtime | EXP_07_21_03_032_RUNTIME_SHORT_VALUE.ets | 验证 short 前置递增返回值语义和副作用。 * ++x 返回自增后的新值，x 变为 old + 1。 | runtime |
| 0627 | 7.21.3 | runtime | EXP_07_21_03_033_RUNTIME_LONG_VALUE.ets | 验证 long 前置递增返回值语义和副作用。 * ++x 返回自增后的新值，x 变为 old + 1。 | runtime |
| 0628 | 7.21.3 | runtime | EXP_07_21_03_034_RUNTIME_BYTE_VALUE.ets | 验证 byte 前置递增返回值语义和副作用。 * ++x 返回自增后的新值，x 变为 old + 1。 * byte 类型 ++ 结果仍为 byte（不提升 int）。 | runtime |
| 0629 | 7.21.3 | runtime | EXP_07_21_03_035_RUNTIME_FLOAT_VALUE.ets | 验证 float 前置递增返回值语义和副作用。 * ++x 返回自增后的新值，x 变为 old + 1。 | runtime |
| 0630 | 7.21.3 | runtime | EXP_07_21_03_036_RUNTIME_DOUBLE_VALUE.ets | 验证 double 前置递增返回值语义和副作用。 * ++x 返回自增后的新值，x 变为 old + 1。 | runtime |
| 0631 | 7.21.3 | runtime | EXP_07_21_03_037_RUNTIME_BIGINT_VALUE.ets | 验证 bigint 前置递增返回值语义和副作用。 * ++x 返回自增后的新值，x 变为 old + 1n。 | runtime |
| 0632 | 7.21.3 | runtime | EXP_07_21_03_038_RUNTIME_INT_OVERFLOW.ets | 验证 int 最大值前置递增的溢出行为。 * ++int.MAX_VALUE (2147483647) 应回绕为 int.MIN_VALUE (-2147483648)。 * 与后置递增不同：前置返回新值（溢出后的值）。 | runtime |
| 0633 | 7.21.4 | compile-pass | EXP_07_21_04_001_PASS_INT.ets | 验证 int 类型前置递减编译通过。 | compile-pass |
| 0634 | 7.21.4 | compile-pass | EXP_07_21_04_002_PASS_SHORT.ets | 验证 short 类型前置递减编译通过。结果类型保持为 short。 | compile-pass |
| 0635 | 7.21.4 | compile-pass | EXP_07_21_04_003_PASS_LONG.ets | 验证 long 类型前置递减编译通过。 | compile-pass |
| 0636 | 7.21.4 | compile-pass | EXP_07_21_04_004_PASS_BYTE.ets | 验证 byte 类型前置递减编译通过。结果类型保持为 byte（不提升 int）。 | compile-pass |
| 0637 | 7.21.4 | compile-pass | EXP_07_21_04_005_PASS_FLOAT.ets | 验证 float 类型前置递减编译通过。 | compile-pass |
| 0638 | 7.21.4 | compile-pass | EXP_07_21_04_006_PASS_DOUBLE.ets | 验证 double 类型前置递减编译通过。 | compile-pass |
| 0639 | 7.21.4 | compile-pass | EXP_07_21_04_007_PASS_BIGINT.ets | 验证 bigint 类型前置递减编译通过。 | compile-pass |
| 0640 | 7.21.4 | compile-fail | EXP_07_21_04_021_FAIL_STRING.ets | 验证 string 类型前置递减报编译时错误。 | compile-fail |
| 0641 | 7.21.4 | compile-fail | EXP_07_21_04_022_FAIL_BOOLEAN.ets | 验证 boolean 类型前置递减报编译时错误。 | compile-fail |
| 0642 | 7.21.4 | compile-fail | EXP_07_21_04_023_FAIL_ENUM.ets | 验证 enum 类型前置递减报编译时错误。 | compile-fail |
| 0643 | 7.21.4 | compile-fail | EXP_07_21_04_024_FAIL_LITERAL.ets | 验证 --5 字面量前置递减报编译时错误。字面量不是 LHS。 | compile-fail |
| 0644 | 7.21.4 | compile-fail | EXP_07_21_04_025_FAIL_FUNC_CALL.ets | 验证 --func_call 前置递减报编译时错误。函数调用结果不是 LHS。 | compile-fail |
| 0645 | 7.21.4 | runtime | EXP_07_21_04_031_RUNTIME_INT_VALUE.ets | 验证 int 前置递减返回值语义和副作用。 * --x 返回自减后的新值，x 变为 old - 1。 * 与后置 x-- 关键区别：返回新值（非旧值）。 | runtime |
| 0646 | 7.21.4 | runtime | EXP_07_21_04_032_RUNTIME_SHORT_VALUE.ets | 验证 short 前置递减返回值语义和副作用。 * --x 返回自减后的新值，x 变为 old - 1。 | runtime |
| 0647 | 7.21.4 | runtime | EXP_07_21_04_033_RUNTIME_LONG_VALUE.ets | 验证 long 前置递减返回值语义和副作用。 * --x 返回自减后的新值，x 变为 old - 1。 | runtime |
| 0648 | 7.21.4 | runtime | EXP_07_21_04_034_RUNTIME_BYTE_VALUE.ets | 验证 byte 前置递减返回值语义和副作用。 * --x 返回自减后的新值，x 变为 old - 1。结果仍为 byte。 | runtime |
| 0649 | 7.21.4 | runtime | EXP_07_21_04_035_RUNTIME_FLOAT_VALUE.ets | 验证 float 前置递减返回值语义和副作用。 * --x 返回自减后的新值，x 变为 old - 1。 | runtime |
| 0650 | 7.21.4 | runtime | EXP_07_21_04_036_RUNTIME_DOUBLE_VALUE.ets | 验证 double 前置递减返回值语义和副作用。 * --x 返回自减后的新值，x 变为 old - 1。 | runtime |
| 0651 | 7.21.4 | runtime | EXP_07_21_04_037_RUNTIME_BIGINT_VALUE.ets | 验证 bigint 前置递减返回值语义和副作用。 * --x 返回自减后的新值，x 变为 old - 1n。 | runtime |
| 0652 | 7.21.4 | runtime | EXP_07_21_04_038_RUNTIME_INT_UNDERFLOW.ets | 验证 int 最小值前置递减的溢出行为。 * --int.MIN_VALUE (-2147483648) 应回绕为 int.MAX_VALUE (2147483647)。 * 前置返回新值（溢出后的值），与后置不同。 | runtime |
| 0653 | 7.21.5 | compile-pass | EXP_07_21_05_001_PASS_INT.ets | 验证 int 类型一元正号编译通过。int 结果仍为 int。 | compile-pass |
| 0654 | 7.21.5 | compile-pass | EXP_07_21_05_002_PASS_SHORT.ets | 验证 short 类型一元正号编译通过。 * short 结果拓宽为 int，可赋值给 int 变量。 | compile-pass |
| 0655 | 7.21.5 | compile-pass | EXP_07_21_05_003_PASS_LONG.ets | 验证 long 类型一元正号编译通过。long 结果保持为 long。 | compile-pass |
| 0656 | 7.21.5 | compile-pass | EXP_07_21_05_004_PASS_BYTE.ets | 验证 byte 类型一元正号编译通过。 * byte 结果拓宽为 int，可赋值给 int 变量。 | compile-pass |
| 0657 | 7.21.5 | compile-pass | EXP_07_21_05_005_PASS_FLOAT.ets | 验证 float 类型一元正号编译通过。float 结果保持为 float。 | compile-pass |
| 0658 | 7.21.5 | compile-pass | EXP_07_21_05_006_PASS_DOUBLE.ets | 验证 double 类型一元正号编译通过。double 结果保持为 double。 | compile-pass |
| 0659 | 7.21.5 | compile-pass | EXP_07_21_05_007_PASS_BIGINT.ets | 验证 bigint 类型一元正号编译通过。bigint 结果保持为 bigint。 | compile-pass |
| 0660 | 7.21.5 | compile-fail | EXP_07_21_05_021_FAIL_STRING.ets | 验证 string 类型一元正号报编译时错误。 * string 不可转换为数值类型。 | compile-fail |
| 0661 | 7.21.5 | compile-fail | EXP_07_21_05_022_FAIL_BOOLEAN.ets | 验证 boolean 类型一元正号报编译时错误。 * boolean 不可转换为数值类型。 | compile-fail |
| 0662 | 7.21.5 | compile-fail | EXP_07_21_05_023_FAIL_OBJECT.ets | 验证 Object 类型一元正号报编译时错误。 * Object 不可转换为数值类型。 | compile-fail |
| 0663 | 7.21.5 | compile-fail | EXP_07_21_05_024_FAIL_NULL.ets | 验证 null 一元正号报编译时错误。 * null 不是数值类型或 bigint。 | compile-fail |
| 0664 | 7.21.5 | runtime | EXP_07_21_05_031_RUNTIME_INT_VALUE.ets | 验证 +int 运行时返回正确的值。 * +5 → 5，+(-3) → -3。 | runtime |
| 0665 | 7.21.5 | runtime | EXP_07_21_05_032_RUNTIME_SHORT_WIDEN.ets | 验证 +short 运行时值正确，结果拓宽为 int。 * +short(1) → int(1)，+short(-1) → int(-1)。 | runtime |
| 0666 | 7.21.5 | runtime | EXP_07_21_05_033_RUNTIME_BYTE_WIDEN.ets | 验证 +byte 运行时值正确，结果拓宽为 int。 * +byte(10) → int(10)，+byte(-128) → int(-128)。 | runtime |
| 0667 | 7.21.5 | runtime | EXP_07_21_05_034_RUNTIME_LONG_VALUE.ets | 验证 +long 运行时返回正确的值。long 保持 long。 | runtime |
| 0668 | 7.21.5 | runtime | EXP_07_21_05_035_RUNTIME_FLOAT_DOUBLE.ets | 验证 +float 和 +double 运行时返回值正确。 * float 和 double 保持原类型。 | runtime |
| 0669 | 7.21.5 | runtime | EXP_07_21_05_036_RUNTIME_BIGINT_VALUE.ets | 验证 +bigint 运行时返回正确的值。bigint 保持 bigint。 | runtime |
| 0670 | 7.21.6 | compile-pass | EXP_07_21_06_001_PASS_INT.ets | 验证 int 类型一元负号编译通过。int 结果仍为 int。 | compile-pass |
| 0671 | 7.21.6 | compile-pass | EXP_07_21_06_002_PASS_SHORT.ets | 验证 short 类型一元负号编译通过。short 结果拓宽为 int。 | compile-pass |
| 0672 | 7.21.6 | compile-pass | EXP_07_21_06_003_PASS_LONG.ets | 验证 long 类型一元负号编译通过。long 结果保持为 long。 | compile-pass |
| 0673 | 7.21.6 | compile-pass | EXP_07_21_06_004_PASS_BYTE.ets | 验证 byte 类型一元负号编译通过。byte 结果拓宽为 int。 | compile-pass |
| 0674 | 7.21.6 | compile-pass | EXP_07_21_06_005_PASS_FLOAT.ets | 验证 float 类型一元负号编译通过。float 结果保持为 float。 | compile-pass |
| 0675 | 7.21.6 | compile-pass | EXP_07_21_06_006_PASS_DOUBLE.ets | 验证 double 类型一元负号编译通过。double 结果保持为 double。 | compile-pass |
| 0676 | 7.21.6 | compile-pass | EXP_07_21_06_007_PASS_BIGINT.ets | 验证 bigint 类型一元负号编译通过。bigint 结果保持为 bigint。 | compile-pass |
| 0677 | 7.21.6 | compile-pass | EXP_07_21_06_008_PASS_NEGATE_INT_MIN.ets | 验证 -int.MIN_VALUE 编译通过。 * spec 规定 int.MIN_VALUE 求反溢出但不报错（包装行为）。 | compile-pass |
| 0678 | 7.21.6 | compile-fail | EXP_07_21_06_021_FAIL_STRING.ets | 验证 string 类型一元负号报编译时错误。 | compile-fail |
| 0679 | 7.21.6 | compile-fail | EXP_07_21_06_022_FAIL_BOOLEAN.ets | 验证 boolean 类型一元负号报编译时错误。 | compile-fail |
| 0680 | 7.21.6 | compile-fail | EXP_07_21_06_023_FAIL_OBJECT.ets | 验证 Object 类型一元负号报编译时错误。 | compile-fail |
| 0681 | 7.21.6 | compile-fail | EXP_07_21_06_024_FAIL_NULL.ets | 验证 null 一元负号报编译时错误。 | compile-fail |
| 0682 | 7.21.6 | runtime | EXP_07_21_06_031_RUNTIME_INT_VALUE.ets | 验证 -int 运行时正确求反。 * -5=-5, -(-3)=3。 | runtime |
| 0683 | 7.21.6 | runtime | EXP_07_21_06_032_RUNTIME_INT_MIN_NEGATE.ets | 验证 -int.MIN_VALUE 溢出包装行为。 * spec: -int.MIN_VALUE = int.MIN_VALUE（求反溢出，不抛错）。 | runtime |
| 0684 | 7.21.6 | runtime | EXP_07_21_06_033_RUNTIME_SHORT_WIDEN.ets | 验证 -short 运行时值正确，结果拓宽为 int。 * -short(1)=-1(int), -short(-1)=1(int)。 | runtime |
| 0685 | 7.21.6 | runtime | EXP_07_21_06_034_RUNTIME_BYTE_WIDEN.ets | 验证 -byte 运行时值正确，结果拓宽为 int。 * -byte(10)=-10(int), -byte(-128)=128(int)。 | runtime |
| 0686 | 7.21.6 | runtime | EXP_07_21_06_035_RUNTIME_LONG_VALUE.ets | 验证 -long 运行时值正确。long 保持 long。 | runtime |
| 0687 | 7.21.6 | runtime | EXP_07_21_06_036_RUNTIME_FLOAT_DOUBLE.ets | 验证 -float/-double 运行时符号反转。 * spec: 求反仅反转符号位。 | runtime |
| 0688 | 7.21.6 | runtime | EXP_07_21_06_037_RUNTIME_BIGINT_VALUE.ets | 验证 -bigint 运行时值正确。 * spec: -bigint 等价于 0n - bigint。 | runtime |
| 0689 | 7.21.6 | runtime | EXP_07_21_06_038_RUNTIME_FLOAT_SPECIAL.ets | 验证浮点特殊值的求反行为。 * spec: -NaN=NaN, -infinity=-infinity, -0.0=+0.0。 | runtime |
| 0690 | 7.21.7 | compile-pass | EXP_07_21_07_001_PASS_INT.ets | 验证 ~int 编译通过，结果类型为 int | compile-pass |
| 0691 | 7.21.7 | compile-pass | EXP_07_21_07_002_PASS_SHORT.ets | 验证 ~short 拓宽为 int，结果类型为 int | compile-pass |
| 0692 | 7.21.7 | compile-pass | EXP_07_21_07_003_PASS_LONG.ets | 验证 ~long 保持 long 类型 | compile-pass |
| 0693 | 7.21.7 | compile-pass | EXP_07_21_07_004_PASS_BYTE.ets | 验证 ~byte 拓宽为 int，结果类型为 int | compile-pass |
| 0694 | 7.21.7 | compile-pass | EXP_07_21_07_005_PASS_FLOAT.ets | 验证 ~float 截断为 int，结果类型为 int | compile-pass |
| 0695 | 7.21.7 | compile-pass | EXP_07_21_07_006_PASS_DOUBLE.ets | 验证 ~double 截断为 long，结果类型为 long | compile-pass |
| 0696 | 7.21.7 | compile-pass | EXP_07_21_07_007_PASS_BIGINT.ets | 验证 ~bigint 保持 bigint 类型 | compile-pass |
| 0697 | 7.21.7 | compile-pass | EXP_07_21_07_008_PASS_IDENTITY.ets | 验证 ~x 与 (-x)-1 恒等式对所有数值类型成立（编译时合法） | compile-pass |
| 0698 | 7.21.7 | compile-fail | EXP_07_21_07_021_FAIL_STRING.ets | 验证 ~string 应报编译时错误 | compile-fail |
| 0699 | 7.21.7 | compile-fail | EXP_07_21_07_022_FAIL_BOOLEAN.ets | 验证 ~boolean 应报编译时错误 | compile-fail |
| 0700 | 7.21.7 | compile-fail | EXP_07_21_07_023_FAIL_OBJECT.ets | 验证 ~Object 应报编译时错误 | compile-fail |
| 0701 | 7.21.7 | compile-fail | EXP_07_21_07_024_FAIL_NULL.ets | 验证 ~null 应报编译时错误 | compile-fail |
| 0702 | 7.21.7 | compile-fail | EXP_07_21_07_025_FAIL_ENUM.ets | 验证 ~enum 应报编译时错误（enum 不是数值类型） | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0703 | 7.21.7 | runtime | EXP_07_21_07_031_RUNTIME_INT_VALUE.ets | 验证 ~int 运行时值正确：~2=-3, ~(-3)=2, ~0=-1 | runtime |
| 0704 | 7.21.7 | runtime | EXP_07_21_07_032_RUNTIME_SHORT_VALUE.ets | 验证 ~short 运行时值正确：~2=-3(int), ~(-1)=0(int) | runtime |
| 0705 | 7.21.7 | runtime | EXP_07_21_07_033_RUNTIME_LONG_VALUE.ets | 验证 ~long 运行时值正确：~2=-3(long), ~(-3)=2(long) | runtime |
| 0706 | 7.21.7 | runtime | EXP_07_21_07_034_RUNTIME_BYTE_VALUE.ets | 验证 ~byte 运行时值正确：~2=-3(int), ~(-1)=0(int) | runtime |
| 0707 | 7.21.7 | runtime | EXP_07_21_07_035_RUNTIME_FLOAT_VALUE.ets | 验证 ~float 运行时值：float 先截断为 int 再求反 | runtime |
| 0708 | 7.21.7 | runtime | EXP_07_21_07_036_RUNTIME_DOUBLE_VALUE.ets | 验证 ~double 运行时值：double 先截断为 long 再求反 | runtime |
| 0709 | 7.21.7 | runtime | EXP_07_21_07_037_RUNTIME_BIGINT_VALUE.ets | 验证 ~bigint 运行时值正确：~2n=-3n, ~(-3n)=2n | runtime |
| 0710 | 7.21.7 | runtime | EXP_07_21_07_038_RUNTIME_IDENTITY.ets | 验证 ~x = (-x)-1 恒等式对 int/long/bigint 成立 | runtime |
| 0711 | 7.21.8 | compile-pass | EXP_07_21_08_001_PASS_BASIC.ets | 验证 !true / !false 编译通过，结果类型 boolean | compile-pass |
| 0712 | 7.21.8 | compile-pass | EXP_07_21_08_002_PASS_VARIABLE.ets | 验证 !boolean 变量编译通过 | compile-pass |
| 0713 | 7.21.8 | compile-pass | EXP_07_21_08_003_PASS_DOUBLE_NEG.ets | 验证 !!expr 双重求反编译通过，结果 boolean | compile-pass |
| 0714 | 7.21.8 | compile-fail | EXP_07_21_08_021_FAIL_INT.ets | 验证 !int 应报编译时错误（int 不是 boolean/Extended Conditional 类型） | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0715 | 7.21.8 | compile-fail | EXP_07_21_08_022_FAIL_STRING.ets | 验证 !string 应报编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0716 | 7.21.8 | compile-fail | EXP_07_21_08_023_FAIL_OBJECT.ets | 验证 !Object 应报编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0717 | 7.21.8 | compile-fail | EXP_07_21_08_024_FAIL_NULL.ets | 验证 !null 应报编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0718 | 7.21.8 | compile-fail | EXP_07_21_08_025_FAIL_ENUM.ets | 验证 !enum 应报编译时错误（enum 不是 boolean） | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0719 | 7.21.8 | runtime | EXP_07_21_08_031_RUNTIME_BASIC.ets | 验证 !true=false, !false=true 运行时正确 | runtime |
| 0720 | 7.21.8 | runtime | EXP_07_21_08_032_RUNTIME_VARIABLE.ets | 验证 boolean 变量取反运行时正确 | runtime |
| 0721 | 7.21.8 | runtime | EXP_07_21_08_033_RUNTIME_DOUBLE_NEG.ets | 验证 !!x == x 双重取反恒等式 | runtime |
| 0722 | 7.21.8 | runtime | EXP_07_21_08_034_RUNTIME_COMPLEX.ets | 验证 ! 与 &&、\|\| 组合的布尔逻辑 | runtime |
| 0723 | 7.21.8 | runtime | EXP_07_21_08_035_RUNTIME_NONBOOL_INT.ets | 验证 !int 运行时 truthy/falsy 语义 | runtime |
| 0724 | 7.21.8 | runtime | EXP_07_21_08_036_RUNTIME_NONBOOL_STRING.ets | 验证 !string 运行时 truthy/falsy 语义 | runtime |
| 0725 | 7.21.8 | runtime | EXP_07_21_08_037_RUNTIME_NONBOOL_NULL_UNDEFINED.ets | 验证 !null / !undefined / !Object 运行时 truthy/falsy 语义 | runtime |
| 0726 | 7.21.8 | runtime | EXP_07_21_08_038_RUNTIME_NONBOOL_ALL_TYPES.ets | 验证多种非 boolean 类型的 truthy/falsy 综合对比 | runtime |
| 0727 | 7.22 | compile-pass | EXP_07_22_001_PASS_MULTIPLICATIVE_TYPE_COMBOS.ets | 验证乘法运算符 * / % 的类型组合表规则： * byte*byte→int, int*int→int, * long*int→long, float*int→float, * double*int→double | compile-pass |
| 0728 | 7.22 | compile-pass | EXP_07_22_002_PASS_BIGINT_MULTIPLICATIVE_EXPONENTIATION.ets | 验证 bigint 乘法 * / % 和幂 ** 的类型组合： * bigint*bigint→bigint, bigint/bigint→bigint, * bigint%bigint→bigint, bigint**bigint→bigint | compile-pass |
| 0729 | 7.22 | compile-pass | EXP_07_22_003_PASS_EXPONENTIATION_DOUBLE_RESULT.ets | 验证幂运算符 ** 对数值类型返回 double： * int**int→double, float**int→double, * long**int→double, double**int→double * bigint**bigint→bigint（已在 002 验证） | compile-pass |
| 0730 | 7.22 | compile-pass | EXP_07_22_004_PASS_STRING_CONCATENATION.ets | 验证字符串拼接 + 的类型组合： * string+string→string, string+int→string, * string+boolean→string, string+null/undefined→string | compile-pass |
| 0731 | 7.22 | compile-pass | EXP_07_22_005_PASS_ADDITIVE_TYPE_COMBOS.ets | 验证加法/减法 +/- 的类型组合表规则： * byte+byte→int, int+int→int, * int+long→long, long+float→float, * float+double→double | compile-pass |
| 0732 | 7.22 | compile-pass | EXP_07_22_006_PASS_BIGINT_ADDITIVE.ets | 验证 bigint 加法/减法 +/- 的类型组合： * bigint+bigint→bigint, bigint-bigint→bigint | compile-pass |
| 0733 | 7.22 | compile-pass | EXP_07_22_007_PASS_SHIFT_TYPE_BY_LHS.ets | 验证移位运算符 << / >> / >>> 类型组合规则： * int<<int→int（LHS int→int）， * long>>int→long（LHS long→long）， * float<<int→int, double>>int→long, * bigint<<bigint→bigint * Note 2：结果类型取决于 LHS 操作数 | compile-pass |
| 0734 | 7.22 | compile-pass | EXP_07_22_008_PASS_BIGINT_SHIFT.ets | 验证 bigint 移位运算符 << / >> 类型组合： * bigint<<bigint→bigint, bigint>>bigint→bigint | compile-pass |
| 0735 | 7.22 | compile-pass | EXP_07_22_009_PASS_RELATIONAL_TYPE_COMBOS.ets | 验证关系运算符 < / <= / > / >= 的类型组合： * int<int→boolean, short<=int→boolean, * string>string→boolean, boolean<=boolean→boolean | compile-pass |
| 0736 | 7.22 | compile-pass | EXP_07_22_010_PASS_ENUM_RELATIONAL.ets | 验证枚举关系运算符 < / <= / > / >=： * enum(numeric value) 之间可比较 * enum(string value) 之间可比较， * 结果类型为 boolean | compile-pass |
| 0737 | 7.22 | compile-pass | EXP_07_22_011_PASS_EQUALITY_TYPE_COMBOS.ets | 验证相等运算符 == / === / != / !== 的类型组合： * int==int→boolean, boolean!=boolean→boolean, * bigint===bigint→boolean, string!==string→boolean | compile-pass |
| 0738 | 7.22 | compile-pass | EXP_07_22_012_PASS_EQUALITY_SPECIAL_TYPES.ets | 验证相等运算符在特殊类型组合上返回 boolean： * enum==enum→boolean, null==null→boolean, * undefined==undefined→boolean | compile-pass |
| 0739 | 7.22 | compile-pass | EXP_07_22_013_PASS_BITWISE_AND_XOR_OR.ets | 验证位运算符 & / ^ / \| 的类型组合： * boolean&boolean→boolean, int\|int→int, * long^long→long, int&int→int, int^int→int | compile-pass |
| 0740 | 7.22 | compile-pass | EXP_07_22_014_PASS_BIGINT_BITWISE.ets | 验证 bigint 位运算符 & / ^ / \| 类型组合： * bigint&bigint→bigint, bigint\|bigint→bigint, * bigint^bigint→bigint | compile-pass |
| 0741 | 7.22 | compile-pass | EXP_07_22_015_PASS_LOGICAL_AND_OR.ets | 验证条件与 && / 条件或 \|\| 的类型组合： * boolean&&boolean→boolean, boolean\|\|boolean→boolean * Note 5：非 boolean 类型通过 Extended Conditional Expressions | compile-pass |
| 0742 | 7.22 | compile-fail | EXP_07_22_021_FAIL_STRING_MULTIPLICATIVE.ets | 验证字符串乘法 string * string 产生编译时错误。 * 类型组合表规定乘法仅接受数值类型和 bigint， * string 不在其中。 | compile-fail |
| 0743 | 7.22 | compile-fail | EXP_07_22_022_FAIL_BOOLEAN_MULTIPLICATIVE.ets | 验证布尔乘法 boolean * boolean 产生编译时错误。 * 类型组合表规定乘法仅接受数值类型和 bigint， * boolean 不在其中。 | compile-fail |
| 0744 | 7.22 | compile-fail | EXP_07_22_023_FAIL_BIGINT_MIXED_MULTIPLICATIVE.ets | 验证 bigint 与 int 混合乘法 bigint * int 产生编译时错误。 * 类型组合表规定 bigint 乘法仅支持 bigint*bigin。 * 此用例与 spec 中示例一致： * "let i = 1n * 2 // Compile-time error" | compile-fail |
| 0745 | 7.22 | compile-fail | EXP_07_22_024_FAIL_STRING_SHIFT.ets | 验证字符串左移 string << int 产生编译时错误。 * 类型组合表规定移位运算符仅支持数值类型和 bigint， * string 不在其中。 | compile-fail |
| 0746 | 7.22 | compile-fail | EXP_07_22_025_FAIL_BOOLEAN_SHIFT.ets | 验证布尔右移 boolean >> int 产生编译时错误。 * 类型组合表规定移位运算符仅支持数值类型和 bigint， * boolean 不在其中。 | compile-fail |
| 0747 | 7.22 | compile-fail | EXP_07_22_026_FAIL_STRING_BITWISE.ets | 验证字符串按位与 string & string 产生编译时错误。 * 类型组合表规定 & 仅支持 boolean 或数值类型， * string 不在其中。 | compile-fail |
| 0748 | 7.22 | compile-fail | EXP_07_22_027_FAIL_BOOLEAN_INT_BITWISE.ets | 验证布尔和整数混合按位与 boolean & int 产生编译时错误。 * 类型组合表规定 boolean 行（boolean ↔ boolean） * 和 int 行（byte/short/int/float ↔ byte/short/int/float）是分离的， * 混合 boolean 和 int 不在表中。 | compile-fail |
| 0749 | 7.22 | runtime | EXP_07_22_031_RUNTIME_OPERAND_ORDER_NOTE1.ets | 验证 Note 1：对于非移位运算符，操作数顺序不影响结果类型。 * 测试 * / + - % & ^ \| < > == 等。 | runtime |
| 0750 | 7.22 | runtime | EXP_07_22_032_RUNTIME_SHIFT_LHS_NOTE2.ets | 验证 Note 2：移位运算符结果类型由左操作数类型决定。 * int<<long→int（LHS int→int）， * long<<int→long（LHS long→long）， * byte<<int→int（byte 提升为 int）， * float<<int→int（float 转为 int 再移位） | runtime |
| 0751 | 7.22 | runtime | EXP_07_22_033_RUNTIME_SHORT_CIRCUIT_AND_OR.ets | 验证 && 和 \|\| 的短路行为（Note 5 关联）： * false && expr 不计算 expr， * true \|\| expr 不计算 expr | runtime |
| 0752 | 7.22 | runtime | EXP_07_22_034_RUNTIME_EXTENDED_CONDITIONAL_NOTE5.ets | 验证 Note 5：Extended Conditional Expressions——&&/\|\| 支持非 boolean 类型， * 使用 JS 风格 truthy/falsy 语义： * falsy: null, undefined, 0, "", false * truthy: 非零数值, 非空字符串, 对象 | runtime |
| 0753 | 7.22 | runtime | EXP_07_22_035_RUNTIME_EXPONENTIATION_DOUBLE.ets | 验证幂运算符 ** 在任何数值类型组合下返回 double， * 以及 bigint**bigint→bigint 的特殊规则。 | runtime |
| 0754 | 7.23.1 | compile-pass | EXP_07_23_01_001_PASS_BYTE_SHORT_PROMOTION.ets | 验证 byte*byte→int、short*short→int 隐式类型提升乘法。 * byte 和 short 在算术运算中自动提升到 int。 | compile-pass |
| 0755 | 7.23.1 | compile-pass | EXP_07_23_01_002_PASS_INT_LONG_TYPE_COMBOS.ets | 验证 int/int/long 乘法类型组合： * int*int→int，int*long→long，long*long→long | compile-pass |
| 0756 | 7.23.1 | compile-pass | EXP_07_23_01_003_PASS_FLOAT_TYPE_COMBOS.ets | 验证 float 乘法类型组合： * float*int→float，float*float→float | compile-pass |
| 0757 | 7.23.1 | compile-pass | EXP_07_23_01_004_PASS_DOUBLE_TYPE_COMBOS.ets | 验证 double 乘法类型组合： * double*int→number（typeof 为 number 而非 double）， * double*float→number，double*double→number | compile-pass |
| 0758 | 7.23.1 | compile-pass | EXP_07_23_01_005_PASS_BIGINT_MULTIPLICATION.ets | 验证 bigint 乘法 bigint*bigint→bigint。 * bigint 类型要求两个操作数都为 bigint。 | compile-pass |
| 0759 | 7.23.1 | compile-pass | EXP_07_23_01_006_PASS_MIXED_NUMERIC_PROMOTION.ets | 验证更多混合数值类型乘法提升规则： * byte→int→long→float→double 的完整提升链。 * 结果类型始终取最大操作数类型。 | compile-pass |
| 0760 | 7.23.1 | compile-pass | EXP_07_23_01_007_PASS_NEGATIVE_SIGNED_OPERANDS.ets | 验证负数操作数乘法编译通过：int * (-int)、 * (-float) * (-float)、double * (-int) 等有符号运算 | compile-pass |
| 0761 | 7.23.1 | compile-pass | EXP_07_23_01_008_PASS_COMMUTATIVE_ASSOCIATIVE_DECL.ets | 验证乘法结合律和交换律表达式编译通过。 * 乘法是可交换的（无副作用时）， * 整数乘法在同类型时满足结合律， * bigint 乘法满足结合律。 | compile-pass |
| 0762 | 7.23.1 | compile-fail | EXP_07_23_01_021_FAIL_STRING_MULTIPLICATION.ets | 验证字符串乘法 string * string 产生编译时错误。 * 乘法运算符仅接受数值类型和 bigint，string 不在其中。 | compile-fail |
| 0763 | 7.23.1 | compile-fail | EXP_07_23_01_022_FAIL_BOOLEAN_MULTIPLICATION.ets | 验证布尔乘法 boolean * boolean 产生编译时错误。 * 乘法运算符不接受 boolean 类型。 | compile-fail |
| 0764 | 7.23.1 | compile-fail | EXP_07_23_01_023_FAIL_STRING_INT_MULTIPLICATION.ets | 验证字符串与整数乘法 string * int 产生编译时错误。 * 乘法运算符不接受 string 类型操作数。 | compile-fail |
| 0765 | 7.23.1 | compile-fail | EXP_07_23_01_024_FAIL_BOOLEAN_INT_MULTIPLICATION.ets | 验证布尔与整数乘法 boolean * int 产生编译时错误。 * 乘法运算符不接受 boolean 类型操作数。 | compile-fail |
| 0766 | 7.23.1 | compile-fail | EXP_07_23_01_025_FAIL_BIGINT_MIXED_INT.ets | 验证 bigint * int 混合类型产生编译时错误。 * bigint 操作数要求两个操作数都是 bigint。 | compile-fail |
| 0767 | 7.23.1 | compile-fail | EXP_07_23_01_026_FAIL_BIGINT_MIXED_DOUBLE.ets | 验证 bigint * double 混合类型产生编译时错误。 * bigint 不能与任何数值类型混合运算。 | compile-fail |
| 0768 | 7.23.1 | runtime | EXP_07_23_01_031_RUNTIME_INTEGER_OVERFLOW.ets | 验证整数乘法溢出的低 32 位截断行为。 * spec：overflow 时结果为数学乘积的低位 two's-complement 表示， * 结果符号可能与数学乘积不同。 | runtime |
| 0769 | 7.23.1 | runtime | EXP_07_23_01_032_RUNTIME_FLOAT_NAN.ets | 验证 IEEE 754 NaN 乘法规则： * - NaN * 任何数 = NaN * - Infinity * 0 = NaN（因为无穷乘零是未定式） | runtime |
| 0770 | 7.23.1 | runtime | EXP_07_23_01_033_RUNTIME_FLOAT_INF_MULTIPLY.ets | 验证 IEEE 754 Infinity * 有限数 = 有符号 Infinity： * - (+Infinity) * 正数 = +Infinity * - (+Infinity) * 负数 = -Infinity * - (-Infinity) * 正数 = -Infinity * - (-Infinity) * 负数 = +Infinity | runtime |
| 0771 | 7.23.1 | runtime | EXP_07_23_01_034_RUNTIME_FLOAT_SIGN_RULES.ets | 验证 IEEE 754 乘法符号规则： * - 同号得正（正*正=正，负*负=正） * - 异号得负（正*负=负，负*正=负） * spec：Positive 当两个操作数同号，Negative 当异号 | runtime |
| 0772 | 7.23.1 | runtime | EXP_07_23_01_035_RUNTIME_FLOAT_OVERFLOW.ets | 验证浮点乘法溢出到 Infinity。 * 当乘积的模过大无法表示时，结果是有符号的 Infinity。 * spec：The result is an appropriately signed infinity. | runtime |
| 0773 | 7.23.1 | runtime | EXP_07_23_01_036_RUNTIME_BIGINT_ASSOCIATIVE.ets | 验证 bigint 乘法满足结合律 (a*b)*c == a*(b*c)。 * spec：Bigint multiplication is associative. | runtime |
| 0774 | 7.23.1 | runtime | EXP_07_23_01_037_RUNTIME_INT_ASSOCIATIVE.ets | 验证整数（同类型）乘法满足结合律。 * spec：Integer multiplication is associative when all * operands are of the same type. | runtime |
| 0775 | 7.23.1 | runtime | EXP_07_23_01_038_RUNTIME_FLOAT_NOT_ASSOCIATIVE.ets | 验证浮点乘法不满足结合律 (a*b)*c != a*(b*c)。 * spec：Floating-point multiplication is not associative. * 由于浮点精度有限，不同结合顺序得到不同结果。 | runtime |
| 0776 | 7.23.1 | runtime | EXP_07_23_01_039_RUNTIME_NEVER_THROWS.ets | 验证乘法运算从不抛异常。 * spec：The evaluation of a multiplication operator '*' * never throws an error despite possible overflow, * underflow, or loss of information. | runtime |
| 0777 | 7.23.2 | compile-pass | EXP_07_23_02_001_PASS_BYTE_SHORT_PROMOTION.ets | 验证 byte/byte→int、short/short→int 隐式类型提升除法。 * byte 和 short 在算术运算中自动提升到 int。 | compile-pass |
| 0778 | 7.23.2 | compile-pass | EXP_07_23_02_002_PASS_INT_LONG_TYPE_COMBOS.ets | 验证 int/int/long 除法类型组合： * int/int→int，int/long→long，long/long→long | compile-pass |
| 0779 | 7.23.2 | compile-pass | EXP_07_23_02_003_PASS_FLOAT_TYPE_COMBOS.ets | 验证 float 除法类型组合： * float/int→float，float/float→float | compile-pass |
| 0780 | 7.23.2 | compile-pass | EXP_07_23_02_004_PASS_DOUBLE_TYPE_COMBOS.ets | 验证 double 除法类型组合： * double/int→number，double/float→number，double/double→number * typeof(double) 返回 "number"（ECMAScript 兼容） | compile-pass |
| 0781 | 7.23.2 | compile-pass | EXP_07_23_02_005_PASS_BIGINT_DIVISION.ets | 验证 bigint/bigint→bigint 除法编译通过。 * bigint 除法要求两个操作数都是 bigint。 | compile-pass |
| 0782 | 7.23.2 | compile-pass | EXP_07_23_02_006_PASS_NEGATIVE_SIGNED_OPERANDS.ets | 验证负数/有符号操作数除法编译通过。 * 除法运算符支持所有数值类型和 bigint 的负数操作数。 | compile-pass |
| 0783 | 7.23.2 | compile-fail | EXP_07_23_02_021_FAIL_STRING_DIVISION.ets | 验证字符串除法 string / string 产生编译时错误。 * 除法运算符仅接受数值类型和 bigint，string 不在其中。 | compile-fail |
| 0784 | 7.23.2 | compile-fail | EXP_07_23_02_022_FAIL_BOOLEAN_DIVISION.ets | 验证布尔值除法 boolean / boolean 产生编译时错误。 * 除法运算符仅接受数值类型和 bigint，boolean 不在其中。 | compile-fail |
| 0785 | 7.23.2 | compile-fail | EXP_07_23_02_023_FAIL_STRING_INT_DIVISION.ets | 验证 string / int 混合类型除法产生编译时错误。 * 除法运算符要求数值类型与数值类型运算，或 bigint 与 bigint 运算。 | compile-fail |
| 0786 | 7.23.2 | compile-fail | EXP_07_23_02_024_FAIL_BOOLEAN_INT_DIVISION.ets | 验证 boolean / int 混合类型除法产生编译时错误。 * 除法运算符要求数值类型与数值类型运算，或 bigint 与 bigint 运算。 | compile-fail |
| 0787 | 7.23.2 | compile-fail | EXP_07_23_02_025_FAIL_BIGINT_MIXED_INT.ets | 验证 bigint / int 混合类型除法产生编译时错误。 * bigint 只能与 bigint 运算，不能与 int/float 等数值类型混合。 | compile-fail |
| 0788 | 7.23.2 | compile-fail | EXP_07_23_02_026_FAIL_BIGINT_MIXED_DOUBLE.ets | 验证 bigint / double 混合类型除法产生编译时错误。 * bigint 只能与 bigint 运算，不能与 double/float 等浮点类型混合。 | compile-fail |
| 0789 | 7.23.2 | compile-fail | EXP_07_23_02_027_FAIL_DIVISION_BY_ZERO_LITERAL.ets | 验证字面量整数除零产生编译时错误。 * spec：if the divisor value of integer division is detected to be 0 * during compilation, then a compile-time error occurs. | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0790 | 7.23.2 | compile-fail | EXP_07_23_02_028_FAIL_BIGINT_DIVISION_BY_ZERO_LITERAL.ets | 验证字面量 bigint 除零 0n 产生编译时错误。 * spec：If the divisor value of the bigint division operator is 0n, * then either a compile-time error occurs if detected at compile time. | compile-fail |
| 0791 | 7.23.2 | runtime | EXP_07_23_02_031_RUNTIME_INT_DIVISION_ROUND_TO_ZERO.ets | 验证整数除法向零取整行为及符号规则。 * spec：商 q 是满足 \|d·q\| ≤ \|n\| 的最大绝对值整数。 * q 的符号：同号为正，异号为负。 | runtime |
| 0792 | 7.23.2 | runtime | EXP_07_23_02_032_RUNTIME_INT_MIN_DIV_MINUS_ONE.ets | 验证 INT_MIN / -1 溢出特殊情况。 * spec：The result equals the dividend if the dividend is a negative * integer of the largest possible magnitude for its type, while the * divisor is -1. No error is thrown in this case despite the overflow. * int 最小值：-2147483648，(-2147483648)/(-1) = -2147483648 | runtime |
| 0793 | 7.23.2 | runtime | EXP_07_23_02_033_RUNTIME_INT_DIVISION_BY_ZERO.ets | 验证整数除零运行时抛 ArithmeticError。 * spec：if the divisor value of integer division is detected to be 0 * during compilation, then a compile-time error occurs. Otherwise, * an ArithmeticError is thrown during execution. | runtime |
| 0794 | 7.23.2 | runtime | EXP_07_23_02_034_RUNTIME_BIGINT_ROUND_TO_ZERO.ets | 验证 bigint 除法向零取整行为。 * spec：the quotient of bigint operands n and d is the bigint value q * with the largest possible magnitude that satisfies \|d·q\| ≤ \|n\|. * 不会截断为小数，而是向零取整。 | runtime |
| 0795 | 7.23.2 | runtime | EXP_07_23_02_035_RUNTIME_BIGINT_DIVISION_BY_ZERO.ets | 验证 bigint 除零运行时抛错误。 * spec：If the divisor value of the bigint division operator is 0n, * then either a compile-time error occurs if detected at compile * time, or a runtime error is thrown during execution. | runtime |
| 0796 | 7.23.2 | runtime | EXP_07_23_02_036_RUNTIME_FLOAT_NAN_DIVISION.ets | 验证 IEEE 754 浮点除法 NaN 规则： * - NaN / anything = NaN * - Infinity / Infinity = NaN * - 0 / 0 = NaN * NaN 不等于自身，因此用 x != x 检测。 | runtime |
| 0797 | 7.23.2 | runtime | EXP_07_23_02_037_RUNTIME_FLOAT_INF_DIVISION.ets | 验证 IEEE 754 浮点除法 Infinity 规则： * - Infinity / finite = signed Infinity * - nonzero finite / 0 = signed Infinity * - -Infinity / finite = signed -Infinity | runtime |
| 0798 | 7.23.2 | runtime | EXP_07_23_02_038_RUNTIME_FLOAT_SIGNED_ZERO.ets | 验证 IEEE 754 浮点除法有符号零规则： * - Finite / Infinity = signed 0 * - 0 / finite = signed 0 * 有符号零：+0 和 -0，1/(+0)=+Inf，1/(-0)=-Inf | runtime |
| 0799 | 7.23.2 | runtime | EXP_07_23_02_039_RUNTIME_FLOAT_SIGN_OVERFLOW.ets | 验证 IEEE 754 浮点除法符号规则 + 溢出到 Infinity： * - 同号相除结果为正 * - 异号相除结果为负 * - 浮点除法溢出到 Infinity | runtime |
| 0800 | 7.23.2 | runtime | EXP_07_23_02_040_RUNTIME_NEVER_THROWS.ets | 验证除法运算从不抛异常（除零和 bigint 除零除外）。 * spec：The evaluation of a floating-point division operator '/' * never throws an error despite possible overflow, underflow, * division by zero, or loss of information. * 整数除零已在专用用例中验证抛异常，此处验证其他极端情况不抛异常。 | runtime |
| 0801 | 7.23.3 | compile-pass | EXP_07_23_03_001_PASS_BYTE_SHORT_PROMOTION.ets | 验证 byte/byte→int、short/short→int 隐式类型提升取余。 * byte 和 short 在算术运算中自动提升到 int。 * spec：byte/short/int 操作数取余结果为 int 类型。 | compile-pass |
| 0802 | 7.23.3 | compile-pass | EXP_07_23_03_002_PASS_INT_LONG_TYPE_COMBOS.ets | 验证 int/int/long 取余类型组合： * int/int→int，int/long→long，long/long→long * spec：取余结果类型取最大操作数类型 | compile-pass |
| 0803 | 7.23.3 | compile-pass | EXP_07_23_03_003_PASS_FLOAT_TYPE_COMBOS.ets | 验证 float 取余类型组合： * float/int→float，float/float→float（最大类型规则） * spec：取余结果类型取最大操作数类型 | compile-pass |
| 0804 | 7.23.3 | compile-pass | EXP_07_23_03_004_PASS_DOUBLE_TYPE_COMBOS.ets | 验证 double 取余类型组合： * double/int→number，double/float→number，double/double→number * typeof(double) 返回 "number"（ECMAScript 兼容） | compile-pass |
| 0805 | 7.23.3 | compile-pass | EXP_07_23_03_005_PASS_BIGINT_REMAINDER.ets | 验证 bigint/bigint→bigint 取余编译通过。 * bigint 取余要求两个操作数都是 bigint。 * spec：(a/b)*b + (a%b) == a 恒等式对 bigint 成立。 | compile-pass |
| 0806 | 7.23.3 | compile-pass | EXP_07_23_03_006_PASS_NEGATIVE_SIGNED_OPERANDS.ets | 验证负数/有符号操作数取余编译通过。 * 取余运算符支持所有数值类型和 bigint 的负数操作数。 | compile-pass |
| 0807 | 7.23.3 | compile-fail | EXP_07_23_03_021_FAIL_STRING_REMAINDER.ets | 验证字符串取余 string % string 产生编译时错误。 * 取余运算符仅接受数值类型和 bigint，string 不在其中。 | compile-fail |
| 0808 | 7.23.3 | compile-fail | EXP_07_23_03_022_FAIL_BOOLEAN_REMAINDER.ets | 验证布尔值取余 boolean % boolean 产生编译时错误。 * 取余运算符仅接受数值类型和 bigint，boolean 不在其中。 | compile-fail |
| 0809 | 7.23.3 | compile-fail | EXP_07_23_03_023_FAIL_STRING_INT_REMAINDER.ets | 验证 string % int 混合类型取余产生编译时错误。 * 取余运算符要求数值类型与数值类型运算，或 bigint 与 bigint 运算。 | compile-fail |
| 0810 | 7.23.3 | compile-fail | EXP_07_23_03_024_FAIL_BOOLEAN_INT_REMAINDER.ets | 验证 boolean % int 混合类型取余产生编译时错误。 * 取余运算符要求数值类型与数值类型运算，或 bigint 与 bigint 运算。 | compile-fail |
| 0811 | 7.23.3 | compile-fail | EXP_07_23_03_025_FAIL_BIGINT_MIXED_INT.ets | 验证 bigint % int 混合类型取余产生编译时错误。 * bigint 只能与 bigint 运算，不能与 int/float 等数值类型混合。 * spec：No implicit conversion is applied to an operand. | compile-fail |
| 0812 | 7.23.3 | compile-fail | EXP_07_23_03_026_FAIL_BIGINT_MIXED_DOUBLE.ets | 验证 bigint % double 混合类型取余产生编译时错误。 * bigint 只能与 bigint 运算，不能与 double/float 等浮点类型混合。 | compile-fail |
| 0813 | 7.23.3 | compile-fail | EXP_07_23_03_027_FAIL_REMAINDER_BY_ZERO_LITERAL.ets | 验证字面量整数取余除零产生编译时错误。 * spec：if the divisor value of integer remainder operator is detected * to be 0 during compilation, then a compile-time error occurs. | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0814 | 7.23.3 | compile-fail | EXP_07_23_03_028_FAIL_BIGINT_REMAINDER_BY_ZERO_LITERAL.ets | 验证字面量 bigint 取余除零 0n 产生编译时错误。 * spec：If the divisor value of the bigint remainder operator is 0n, * then a runtime error is thrown during execution. * 如编译期可检测到 0n 则产生编译时错误。 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0815 | 7.23.3 | runtime | EXP_07_23_03_031_RUNTIME_INT_REMAINDER_SIGN_MAGNITUDE.ets | 验证整数取余符号和大小规则。 * spec：结果符号与被除数相同，结果绝对值小于除数绝对值。 * 恒等式：(a/b)*b + (a%b) == a | runtime |
| 0816 | 7.23.3 | runtime | EXP_07_23_03_032_RUNTIME_INT_MIN_REMAINDER_MINUS_ONE.ets | 验证 INT_MIN % -1 = 0 特殊情况。 * spec：INT_MIN / -1 溢出，但取余结果为 0。 * 恒等式 (INT_MIN/(-1))*(-1) + (INT_MIN%(-1)) = INT_MIN 成立。 | runtime |
| 0817 | 7.23.3 | runtime | EXP_07_23_03_033_RUNTIME_INT_REMAINDER_BY_ZERO.ets | 验证整数取余除零运行时抛 ArithmeticError。 * spec：if the divisor is 0 at runtime, ArithmeticError is thrown. | runtime |
| 0818 | 7.23.3 | runtime | EXP_07_23_03_034_RUNTIME_BIGINT_REMAINDER_IDENTITY.ets | 验证 bigint 取余恒等式 (a/b)*b + (a%b) == a 成立。 * 结果符号与被除数相同。 | runtime |
| 0819 | 7.23.3 | runtime | EXP_07_23_03_035_RUNTIME_BIGINT_REMAINDER_BY_ZERO.ets | 验证 bigint 取余除零 0n 时抛运行时错误。 * spec：If the divisor value of the bigint remainder operator is 0n, * then a runtime error is thrown during execution. | runtime |
| 0820 | 7.23.3 | runtime | EXP_07_23_03_036_RUNTIME_FLOAT_REMAINDER_NAN.ets | 验证浮点取余 NaN 规则。 * spec：结果为 NaN 的情况： * - 任一操作数为 NaN * - 被除数为 Infinity * - 除数为零 * NaN 检测方式：x != x | runtime |
| 0821 | 7.23.3 | runtime | EXP_07_23_03_037_RUNTIME_FLOAT_REMAINDER_SIGN.ets | 验证浮点取余符号规则：结果符号与被除数相同。 * 与 IEEE 754 remainder（Math.IEEEremainder）不同， * ArkTS % 运算符如同整数取余 / C fmod 行为。 | runtime |
| 0822 | 7.23.3 | runtime | EXP_07_23_03_038_RUNTIME_FLOAT_REMAINDER_SPECIAL.ets | 验证浮点取余特殊值规则。 * spec： * - 有限被除数 % Infinity = 被除数（结果等于被除数） * - 0 % 有限除数 = 0 * - r = n - (d * q)，q 是不超过 \|n/d\| 的最大整数 | runtime |
| 0823 | 7.23.3 | runtime | EXP_07_23_03_039_RUNTIME_FLOAT_REMAINDER_NEVER_THROWS.ets | 验证浮点取余除零不抛异常。 * spec：The evaluation of the floating-point remainder operator '%' * never throws an error, even if the right-hand operand is zero. * Overflow, underflow, or loss of precision cannot occur. * 与整数取余不同，浮点取余除零产生 NaN 而非异常。 | runtime |
| 0824 | 7.24 | compile-pass | EXP_07_24_001_PASS_BYTE_SHORT_PROMOTION.ets | 验证 byte/short 类型在幂运算中提升为 double（number 类型）：byte**byte→number, short**short→number, byte**short→number, short**byte→number | compile-pass |
| 0825 | 7.24 | compile-pass | EXP_07_24_002_PASS_INT_LONG_TYPE_COMBOS.ets | 验证 int/long 类型在幂运算中提升为 double（number 类型）：int**int→number, int**long→number, long**long→number | compile-pass |
| 0826 | 7.24 | compile-pass | EXP_07_24_003_PASS_FLOAT_DOUBLE_TYPE_COMBOS.ets | 验证 double 和 int 类型幂运算的类型组合：所有非 double 操作数提升为 double，结果为 double | compile-pass |
| 0827 | 7.24 | compile-pass | EXP_07_24_004_PASS_BIGINT_EXPONENTIATION.ets | 验证 bigint 类型幂运算：bigint**bigint 编译通过，指数必须为非负 | compile-pass |
| 0828 | 7.24 | compile-pass | EXP_07_24_005_PASS_BIGINT_ZERO_EXPONENT.ets | 验证 bigint 指数为 0n 时结果总是 1n：包括 0n**0n=1n, 任意正 bigint**0n=1n | compile-pass |
| 0829 | 7.24 | compile-pass | EXP_07_24_006_PASS_NEGATIVE_BASE.ets | 验证负数基底幂运算编译通过：包含 double 负数基和 bigint 负数基 | compile-pass |
| 0830 | 7.24 | compile-fail | EXP_07_24_021_FAIL_STRING_EXPONENTIATION.ets | 验证 string ** string 为非法类型组合，应报编译时错误 | compile-fail |
| 0831 | 7.24 | compile-fail | EXP_07_24_022_FAIL_BOOLEAN_EXPONENTIATION.ets | 验证 boolean ** boolean 为非法类型组合，应报编译时错误 | compile-fail |
| 0832 | 7.24 | compile-fail | EXP_07_24_023_FAIL_STRING_INT_EXPONENTIATION.ets | 验证 string ** int 为非法类型组合，应报编译时错误 | compile-fail |
| 0833 | 7.24 | compile-fail | EXP_07_24_024_FAIL_BOOLEAN_INT_EXPONENTIATION.ets | 验证 boolean ** int 为非法类型组合，应报编译时错误 | compile-fail |
| 0834 | 7.24 | compile-fail | EXP_07_24_025_FAIL_BIGINT_MIXED_INT.ets | 验证 bigint ** int 为非法类型组合（幂运算要求 bigint 两侧都必须为 bigint），应报编译时错误 | compile-fail |
| 0835 | 7.24 | compile-fail | EXP_07_24_026_FAIL_BIGINT_MIXED_DOUBLE.ets | 验证 bigint ** double 为非法类型组合（幂运算要求 bigint 两侧都必须为 bigint），应报编译时错误 | compile-fail |
| 0836 | 7.24 | compile-fail | EXP_07_24_027_FAIL_BIGINT_NEGATIVE_EXPONENT.ets | 验证 bigint 负指数编译时检测：spec 要求 "if the second operand of type bigint is negative, then either a compile-time error occurs if detected at compile time" | compile-fail |
| 0837 | 7.24 | runtime | EXP_07_24_031_RUNTIME_BIGINT_EXPONENTIATION.ets | 验证 bigint 指数运算的运行时正确性：2n**3n=8n, (-3n)**2n=9n, (-3n)**3n=-27n | runtime |
| 0838 | 7.24 | runtime | EXP_07_24_032_RUNTIME_BIGINT_NEGATIVE_EXPONENT_THROWS.ets | 验证 bigint 负指数运行时错误：当负指数未在编译时被检测到时，运行时应抛出错误 | runtime |
| 0839 | 7.24 | runtime | EXP_07_24_033_RUNTIME_POW_ZERO_EXPONENT.ets | 验证 x ** +/-0 = 1（即使 x 为 NaN）：spec "x ** +/-0 returns 1 even if x is NaN" | runtime（⚠️ SPEC不一致，见 issue_report） |
| 0840 | 7.24 | runtime | EXP_07_24_034_RUNTIME_ZERO_BASE_POSITIVE_EXPONENT.ets | 验证 +/-0 ** y 有符号零和 Infinity 规则：正奇整数→+0, 正偶整数→+0, 负奇整数→-Infinity, 负偶整数→+Infinity | runtime |
| 0841 | 7.24 | runtime | EXP_07_24_035_RUNTIME_ZERO_BASE_NEGATIVE_EXPONENT.ets | 验证 +/-0 ** y 负指数规则：+0**(-3)=+Infinity, +0**(-2)=+Infinity, (-0)**(-3)=-Infinity, (-0)**(-2)=+Infinity | runtime |
| 0842 | 7.24 | runtime | EXP_07_24_036_RUNTIME_ZERO_BASE_INFINITY_EXPONENT.ets | 验证 +/-0 ** +/-Infinity：0**(-Inf)=+Inf, 0**(+Inf)=+0, (-0)**(-Inf)=+Inf, (-0)**(+Inf)=+0 | runtime |
| 0843 | 7.24 | runtime | EXP_07_24_037_RUNTIME_ONE_ANY_EXPONENT.ets | 验证 +/-1 ** y 规则：+1**y=1（任意 y, 含 NaN）, (-1)**(±Infinity)=1 | runtime |
| 0844 | 7.24 | runtime | EXP_07_24_038_RUNTIME_NAN_INF_EXPONENTIATION.ets | 验证 NaN**y 规则（除 NaN**0=1 已在 033 覆盖）和 Inf**y 规则：NaN**any=NaN（除 0 指数）, Inf**y (y>0→Inf, y<0→+0) | runtime |
| 0845 | 7.24 | runtime | EXP_07_24_039_RUNTIME_NEG_INF_EXPONENTIATION.ets | 验证 -Infinity ** y 规则：有限负奇整数 y→-0, 有限正奇整数 y→-Infinity, 其他→+0/+Infinity | runtime |
| 0846 | 7.24 | runtime | EXP_07_24_040_RUNTIME_X_INFINITY_EXPONENT.ets | 验证 x ** +/-Infinity 基于范围规则：-1<x<1 ** +Inf→+0, x<-1或x>1 ** +Inf→+Inf; -1<x<1 ** -Inf→+Inf, x<-1或x>1 ** -Inf→+0 | runtime |
| 0847 | 7.24 | runtime | EXP_07_24_041_RUNTIME_NEGATIVE_BASE_NON_INTEGER_EXPONENT.ets | 验证有限负 x ** 有限非整数 y = NaN；注意：ArkTS 的 ** 对负数基底任何 double 指数（包括整数）都返回 NaN（与 IEEE 754 pow 行为不同） | runtime（⚠️ SPEC不一致，见 issue_report） |
| 0848 | 7.24 | runtime | EXP_07_24_042_RUNTIME_NEVER_THROWS_RIGHT_ASSOC.ets | 验证数值幂运算永远不会抛出异常（与 Math.pow() 等价），以及右结合性 2**3**2=2**9=512 | runtime |
| 0849 | 7.25.1 | compile-pass | EXP_07_25_01_001_PASS_STRING_STRING_BASIC.ets | 验证 string + string 基本拼接编译通过 | compile-pass |
| 0850 | 7.25.1 | compile-pass | EXP_07_25_01_002_PASS_STRING_INT.ets | 验证 string + int 字符串拼接（整数→十进制字符串转换）编译通过 | compile-pass |
| 0851 | 7.25.1 | compile-pass | EXP_07_25_01_003_PASS_STRING_FLOAT.ets | 验证 string + double/float 字符串拼接（浮点→十进制无精度丢失转换）编译通过 | compile-pass |
| 0852 | 7.25.1 | compile-pass | EXP_07_25_01_004_PASS_STRING_BOOLEAN.ets | 验证 string + boolean 字符串拼接（boolean→"true"/"false"转换）编译通过 | compile-pass |
| 0853 | 7.25.1 | compile-pass | EXP_07_25_01_005_PASS_STRING_BIGINT.ets | 验证 string + bigint 字符串拼接编译通过 | compile-pass |
| 0854 | 7.25.1 | compile-pass | EXP_07_25_01_006_PASS_STRING_NULLISH.ets | 验证 string + null/undefined 字符串拼接编译通过 | compile-pass |
| 0855 | 7.25.1 | compile-pass | EXP_07_25_01_007_PASS_INT_STRING_RHS.ets | 验证右操作数为 string 时 int + string 同样触发拼接编译通过 | compile-pass |
| 0856 | 7.25.1 | compile-pass | EXP_07_25_01_008_PASS_MULTI_CONCAT.ets | 验证多个字符串连续拼接编译通过 | compile-pass |
| 0857 | 7.25.1 | compile-pass | EXP_07_25_01_009_PASS_MIXED_TYPES_CHAIN.ets | 验证混合类型（int+int+string+boolean）连续拼接编译通过 | compile-pass |
| 0858 | 7.25.1 | compile-pass | EXP_07_25_01_010_PASS_STRING_REFERENCE_TYPE.ets | 验证 string + 引用类型（Object/Class 等通过 toString() 转换）编译通过 | compile-pass |
| 0859 | 7.25.1 | compile-fail | EXP_07_25_01_021_FAIL_VOID_EXPRESSION.ets | 验证 void 表达式作为字符串拼接操作数应报编译错误 | compile-fail |
| 0860 | 7.25.1 | compile-fail | EXP_07_25_01_022_FAIL_NON_STRING_BOTH.ets | 验证两个非 string 操作数且无数值转换规则的组合应报编译错误 | compile-fail |
| 0861 | 7.25.1 | runtime | EXP_07_25_01_031_RUNTIME_STRING_STRING.ets | 验证 string + string 运行时拼接结果正确 | runtime |
| 0862 | 7.25.1 | runtime | EXP_07_25_01_032_RUNTIME_STRING_NUMERIC.ets | 验证 string + int/double 运行时拼接结果正确 | runtime |
| 0863 | 7.25.1 | runtime | EXP_07_25_01_033_RUNTIME_STRING_BOOLEAN.ets | 验证 string + boolean 运行时拼接结果正确 | runtime |
| 0864 | 7.25.1 | runtime | EXP_07_25_01_034_RUNTIME_STRING_BIGINT.ets | 验证 string + bigint 运行时拼接结果正确 | runtime |
| 0865 | 7.25.1 | runtime | EXP_07_25_01_035_RUNTIME_STRING_NULLISH.ets | 验证 string + null/undefined 运行时拼接结果正确 | runtime |
| 0866 | 7.25.1 | runtime | EXP_07_25_01_036_RUNTIME_MIXED_ORDER.ets | 验证混合类型拼接的左结合性：1+2+"!" → 先数值加法再拼接 | runtime |
| 0867 | 7.25.1 | runtime | EXP_07_25_01_037_RUNTIME_MULTI_CONCAT.ets | 验证多字符串连续拼接结果正确且字符串按顺序拼接 | runtime |
| 0868 | 7.25.2 | compile-pass | EXP_07_25_02_001_PASS_INT_ADD_BASIC.ets | 验证 int+int→int 类型保持，int-int→int 基本加减法编译通过。 * spec：同类型整数加法结合律成立；结果类型是最大类型。 | compile-pass |
| 0869 | 7.25.2 | compile-pass | EXP_07_25_02_002_PASS_INT_LONG_PROMOTION.ets | 验证 int+long→long 类型提升，int-long→long。 * spec：结果类型是转换为后最大的类型。 | compile-pass |
| 0870 | 7.25.2 | compile-pass | EXP_07_25_02_003_PASS_INT_FLOAT_PROMOTION.ets | 验证 int+float→float 浮点提升，int-float→float。 * spec：如果提升类型是 float 或 double，则执行浮点算术。 | compile-pass |
| 0871 | 7.25.2 | compile-pass | EXP_07_25_02_004_PASS_INT_DOUBLE_PROMOTION.ets | 验证 int+double→double、long+double→double 提升到最大类型 double。 * spec：结果类型是转换为后最大的类型，double 是最大数值类型。 | compile-pass |
| 0872 | 7.25.2 | compile-pass | EXP_07_25_02_005_PASS_BYTE_SHORT_PROMOTION.ets | 验证 byte/short 在加减法中自动提升到 int。 * spec：如果操作数都不是 long 且存在非 int 类型，则提升到 int。 | compile-pass |
| 0873 | 7.25.2 | compile-pass | EXP_07_25_02_006_PASS_BIGINT_ADD_SUB.ets | 验证 bigint+bigint→bigint、bigint-bigint→bigint。 * spec：如果两个操作数都是 bigint，则不应用隐式转换，推断类型为 bigint。 | compile-pass |
| 0874 | 7.25.2 | compile-pass | EXP_07_25_02_007_PASS_CHAINED_ADDITIVE.ets | 验证链式加减法 a+b-c+d 编译通过，左结合性。 * spec：加法运算符从左到右分组。 | compile-pass |
| 0875 | 7.25.2 | compile-pass | EXP_07_25_02_008_PASS_FLOAT_DOUBLE_PROMOTION.ets | 验证 float+double→double 提升，float-double→double。 * spec：结果类型是转换为后最大的类型，double 是最大数值类型。 | compile-pass |
| 0876 | 7.25.2 | compile-fail | EXP_07_25_02_021_FAIL_BOOLEAN_INT_ADD.ets | 验证 boolean+int 产生编译错误。 * spec：boolean 不可转换为数值类型；操作数不是 string 也不是 bigint，且不可转换为数值类型 → 编译错误。 | compile-fail |
| 0877 | 7.25.2 | compile-fail | EXP_07_25_02_022_FAIL_BOOLEAN_INT_SUB.ets | 验证 boolean-int 产生编译错误。 * spec：- 要求操作数都是 bigint，或都可转换为数值类型；boolean 不可转换。 | compile-fail |
| 0878 | 7.25.2 | compile-fail | EXP_07_25_02_023_FAIL_STRING_SUB.ets | 验证 string - string 产生编译错误。 * spec：- 没有字符串拼接语义；string 不可转换为数值类型。 | compile-fail |
| 0879 | 7.25.2 | compile-fail | EXP_07_25_02_024_FAIL_STRING_INT_SUB.ets | 验证 string - int 产生编译错误。 * spec：- 要求操作数都是 bigint，或都可转换为数值类型；string 不可转换。 | compile-fail |
| 0880 | 7.25.2 | compile-fail | EXP_07_25_02_025_FAIL_BIGINT_INT_ADD.ets | 验证 bigint + int 产生编译错误。 * spec：+ 时两个操作数都是 bigint 的规则要求双方都是 bigint；混合 bigint/数值不可隐式转换。 | compile-fail |
| 0881 | 7.25.2 | compile-fail | EXP_07_25_02_026_FAIL_BIGINT_INT_SUB.ets | 验证 bigint - int 产生编译错误。 * spec：- 要求两个操作数都是 bigint，或都可转换为数值类型；bigint 和 int 混合不符合任一条件。 | compile-fail |
| 0882 | 7.25.2 | runtime | EXP_07_25_02_031_RUNTIME_INT_ADD_BASIC.ets | 验证 int+int 基本加法值正确，含负数、边界值。 * spec：二元运算符'+'执行加法并产生操作数的和。 | runtime |
| 0883 | 7.25.2 | runtime | EXP_07_25_02_032_RUNTIME_INT_OVERFLOW.ets | 验证 int 加法溢出行为：MAX_INT+1=MIN_INT（低位截断，符号相反）。 * spec：溢出时结果是数学和在足够大的二进制补码格式中的低位， * 结果符号与数学和相反。 | runtime |
| 0884 | 7.25.2 | runtime | EXP_07_25_02_033_RUNTIME_LONG_ADD_OVERFLOW.ets | 验证 long+long 加法值正确和 long 溢出行为。 * spec：溢出时结果是低 64 位二进制补码表示。 * 如果提升类型是 long，则执行整数算术。 | runtime |
| 0885 | 7.25.2 | runtime | EXP_07_25_02_034_RUNTIME_INT_SUB.ets | 验证 int-int 基本减法值正确。 * spec：二元运算符'-'执行减法，返回操作数的差（minuend - subtrahend）。 * 结果与 a+(-b) 相同。 | runtime |
| 0886 | 7.25.2 | runtime | EXP_07_25_02_035_RUNTIME_INT_ASSOCIATIVE.ets | 验证整数加法（同类型）满足结合律： (a+b)+c = a+(b+c)。 * spec：如果所有操作数类型相同，整数加法满足结合律。 * int 和 long 分别验证。 | runtime |
| 0887 | 7.25.2 | runtime | EXP_07_25_02_036_RUNTIME_FLOAT_NAN_INF.ets | 验证 IEEE 754 NaN 和 Infinity 加法规则： * - NaN + 任何数 = NaN * - (+∞) + (-∞) = NaN * - (+∞) + 有限数 = +∞ * - (-∞) + 有限数 = -∞ | runtime |
| 0888 | 7.25.2 | runtime | EXP_07_25_02_037_RUNTIME_FLOAT_ZERO.ets | 验证 IEEE 754 零加法规则： * - (+0.0) + (-0.0) = +0.0 * - (+0.0) + (+0.0) = +0.0 * - 0.0 + 有限数 = 该有限数 * - 两个同大小反号有限数之和 = +0.0 | runtime |
| 0889 | 7.25.2 | runtime | EXP_07_25_02_038_RUNTIME_FLOAT_NOT_ASSOCIATIVE.ets | 验证浮点加法不满足结合律： (a+b)+c ≠ a+(b+c)。 * spec：浮点加法不满足结合律。 * 例如大数加小数再加大数会产生不同的舍入结果。 | runtime |
| 0890 | 7.25.2 | runtime | EXP_07_25_02_039_RUNTIME_FLOAT_OVERFLOW.ets | 验证浮点加法溢出到有符号 Infinity。 * spec：如果和的大小太大无法表示，则操作溢出，结果是有适当符号的 Infinity。 * 永不抛异常。 | runtime |
| 0891 | 7.25.2 | runtime | EXP_07_25_02_040_RUNTIME_SUB_EQUALS_ADD_NEG.ets | 验证 a-b 等于 a+(-b) 对整数和浮点数都成立。 * spec：a-b 的结果始终与 a+(-b) 相同，无论是整数还是浮点数减法。 | runtime |
| 0892 | 7.25.2 | runtime | EXP_07_25_02_041_RUNTIME_SUB_FROM_ZERO.ets | 验证零减法的特殊规则： * - 整数：0-x = -x（与取反相同） * - 浮点：0.0 - (+0.0) = +0.0，但 -(+0.0) = -0.0（两者不同） * spec：整数从零减等于取反；浮点从零减与取反不同。 | runtime |
| 0893 | 7.25.2 | runtime | EXP_07_25_02_042_RUNTIME_NEVER_THROWS.ets | 验证数值加减法永不抛异常，即使溢出、下溢或精度损失。 * spec：数值加法运算符的求值永不抛异常，尽管可能溢出、下溢或信息丢失。 | runtime |
| 0894 | 7.26 | compile-pass | EXP_07_26_001_PASS_INT_SHIFT_BASIC.ets | int 类型三个移位运算符（<<, >>, >>>）的基本编译通过验证 | compile-pass |
| 0895 | 7.26 | compile-pass | EXP_07_26_002_PASS_LONG_SHIFT_BASIC.ets | long 类型三个移位运算符（<<, >>, >>>）的基本编译通过验证 | compile-pass |
| 0896 | 7.26 | compile-pass | EXP_07_26_003_PASS_BIGINT_SHIFT.ets | bigint 类型移位运算符（<<, >>）编译通过验证，bigint 不支持 >>> | compile-pass |
| 0897 | 7.26 | compile-pass | EXP_07_26_004_PASS_BYTE_SHORT_PROMOTION.ets | byte/short 左操作数在移位运算中自动提升为 int | compile-pass |
| 0898 | 7.26 | compile-pass | EXP_07_26_005_PASS_SHIFT_GROUPING.ets | 移位运算符左结合性验证：a << b >> c = (a << b) >> c | compile-pass |
| 0899 | 7.26 | compile-pass | EXP_07_26_006_PASS_FLOAT_DOUBLE_TRUNCATION.ets | double/float 操作数在移位运算中先截断为 long/int 后再移位 | compile-pass |
| 0900 | 7.26 | compile-pass | EXP_07_26_006_PASS_SHIFT_CHAINED.ets | 验证链式移位操作，多个移位运算符连续使用 | compile-pass |
| 0901 | 7.26 | compile-pass | EXP_07_26_014_PASS_NULLISH_SHIFT.ets | nullish 类型移位 — es2panda 未拒绝 | compile-pass |
| 0902 | 7.26 | compile-pass | EXP_07_7_26_0015_PASS_GEN_15.ets | 补充用例15 | compile-pass |
| 0903 | 7.26 | compile-pass | EXP_07_7_26_0016_PASS_GEN_16.ets | 补充用例16 | compile-pass |
| 0904 | 7.26 | compile-pass | EXP_07_7_26_0017_PASS_GEN_17.ets | 补充用例17 | compile-pass |
| 0905 | 7.26 | compile-fail | EXP_07_26_007_FAIL_BIGINT_UNSIGNED_RIGHT.ets | 验证bigint类型使用无符号右移(>>>)应产生编译时错误 | compile-fail |
| 0906 | 7.26 | compile-fail | EXP_07_26_008_FAIL_BIGINT_NUMERIC_MIXED.ets | 验证bigint与numeric类型混合作为移位操作数时产生编译时错误 | compile-fail |
| 0907 | 7.26 | compile-fail | EXP_07_26_009_FAIL_NON_NUMERIC_SHIFT.ets | 验证非数值类型（string）作为移位操作数时产生编译时错误 | compile-fail |
| 0908 | 7.26 | compile-fail | EXP_07_26_010_FAIL_DOUBLE_SHIFT.ets | float/double 作为移位操作数：spec §7.26 规定先截断为 int/long 后运算（应编译通过）；es2panda 当前报 ESE0318 拒绝编译 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 0909 | 7.26 | compile-fail | EXP_07_26_011_FAIL_SHIFT_WITH_OBJECT.ets | 验证Object类型作为移位操作数时产生编译时错误 | compile-fail |
| 0910 | 7.26 | compile-fail | EXP_07_26_012_FAIL_SHIFT_STRING_OPERAND.ets | 验证string类型作为移位操作数时产生编译时错误 | compile-fail |
| 0911 | 7.26 | compile-fail | EXP_07_26_013_FAIL_SHIFT_BOOLEAN.ets | 验证boolean类型作为移位操作数时产生编译时错误 | compile-fail |
| 0912 | 7.26 | compile-fail | EXP_07_26_021_FAIL_BIGINT_UNSIGNED_RIGHT.ets | bigint 类型不支持 >>>（无符号右移），应产生编译时错误 | compile-fail |
| 0913 | 7.26 | compile-fail | EXP_07_26_022_FAIL_BIGINT_NUMERIC_MIXED.ets | bigint 与数值类型混合用于移位运算应产生编译时错误 | compile-fail |
| 0914 | 7.26 | compile-fail | EXP_07_26_023_FAIL_SHIFT_STRING.ets | string 类型不能用于移位运算，应产生编译时错误 | compile-fail |
| 0915 | 7.26 | compile-fail | EXP_07_26_024_FAIL_SHIFT_BOOLEAN.ets | boolean 类型不能用于移位运算，应产生编译时错误 | compile-fail |
| 0916 | 7.26 | compile-fail | EXP_07_26_025_FAIL_SHIFT_OBJECT.ets | Object 类型不能用于移位运算，应产生编译时错误 | compile-fail |
| 0917 | 7.26 | compile-fail | EXP_07_26_026_FAIL_NON_NUMERIC_BOTH.ets | 双方都为非数值类型的移位运算应产生编译时错误 | compile-fail |
| 0918 | 7.26 | compile-fail | EXP_07_7_26_0014_FAIL_GEN_14.ets | 补充用例14 | compile-fail |
| 0919 | 7.26 | compile-fail | EXP_07_7_26_0015_FAIL_GEN_15.ets | 补充用例15 | compile-fail |
| 0920 | 7.26 | compile-fail | EXP_07_7_26_0016_FAIL_GEN_16.ets | 补充用例16 | compile-fail |
| 0921 | 7.26 | runtime | EXP_07_26_015_RUNTIME_INT_SIGNED_RIGHT_NEG.ets | 运行时验证负数int的有符号右移(>>)保持符号扩展：n >> s = floor(n / 2^s) | runtime |
| 0922 | 7.26 | runtime | EXP_07_26_016_RUNTIME_INT_UNSIGNED_RIGHT_NEG.ets | 运行时验证负数int的无符号右移(>>>)零扩展：高位补0而非补1 | runtime |
| 0923 | 7.26 | runtime | EXP_07_26_017_RUNTIME_LONG_SHIFT_DISTANCE_MASK.ets | 运行时验证long类型移位距离只使用低6位（掩码0x3f，范围0-63） | runtime |
| 0924 | 7.26 | runtime | EXP_07_26_018_RUNTIME_INT_SHIFT_DISTANCE_MASK.ets | 运行时验证int类型移位距离只使用低5位（掩码0x1f，范围0-31） | runtime |
| 0925 | 7.26 | runtime | EXP_07_26_019_RUNTIME_SHIFT_LEFT_OVERFLOW.ets | 运行时验证左移溢出回绕行为：n << s = n * 2^s，即使溢出也按此规则 | runtime |
| 0926 | 7.26 | runtime | EXP_07_26_020_RUNTIME_BIGINT_SHIFT_LARGE.ets | 运行时验证bigint大值移位：bigint无位移距离掩码限制，可以任意精度移位 | runtime |
| 0927 | 7.26 | runtime | EXP_07_26_031_RUNTIME_INT_SHIFT_LEFT.ets | int 类型左移 << 的运行时值验证 | runtime |
| 0928 | 7.26 | runtime | EXP_07_26_032_RUNTIME_INT_SIGNED_RIGHT.ets | int 类型带符号右移 >> 的运行时值验证 | runtime |
| 0929 | 7.26 | runtime | EXP_07_26_033_RUNTIME_INT_UNSIGNED_RIGHT.ets | int 类型无符号右移 >>> 的运行时值验证 | runtime |
| 0930 | 7.26 | runtime | EXP_07_26_034_RUNTIME_LONG_SHIFT.ets | long 类型三个移位运算符（<<, >>, >>>）的运行时值验证 | runtime |
| 0931 | 7.26 | runtime | EXP_07_26_035_RUNTIME_INT_SHIFT_DISTANCE_MASK.ets | int 类型移位距离掩码验证：只取右操作数低 5 位（0x1f） | runtime |
| 0932 | 7.26 | runtime | EXP_07_26_036_RUNTIME_LONG_SHIFT_DISTANCE_MASK.ets | long 类型移位距离掩码验证：只取右操作数低 6 位（0x3f） | runtime |
| 0933 | 7.26 | runtime | EXP_07_26_037_RUNTIME_INT_SHIFT_LEFT_OVERFLOW.ets | int 左移溢出行为验证：等价于乘以 2^s，即使溢出也按乘法等效 | runtime |
| 0934 | 7.26 | runtime | EXP_07_26_038_RUNTIME_BIGINT_SHIFT.ets | bigint 类型移位运算（<<, >>）的运行时值验证 | runtime |
| 0935 | 7.26 | runtime | EXP_07_26_039_RUNTIME_SHIFT_NEGATIVE_DISTANCE.ets | 负移位距离在掩码后变为正数距离的验证 | runtime |
| 0936 | 7.26 | runtime | EXP_07_26_040_RUNTIME_UNSIGNED_RIGHT_FORMULA.ets | 验证 >>> 的公式定义对负值成立：n >>> s = (n >> s) + (2 << ~s)（int） * 和 n >>> s = (n >> s) + ((2 as long) << ~s)（long） | runtime |
| 0937 | 7.26 | runtime | EXP_07_7_26_0021_RUNTIME_GEN_21.ets | 补充用例21 | runtime |
| 0938 | 7.26 | runtime | EXP_07_7_26_0022_RUNTIME_GEN_22.ets | 补充用例22 | runtime |
| 0939 | 7.26 | runtime | EXP_07_7_26_0023_RUNTIME_GEN_23.ets | 补充用例23 | runtime |
| 0940 | 7.26 | runtime | EXP_07_7_26_0024_RUNTIME_GEN_24.ets | 补充用例24 | runtime |
| 0941 | 7.27 | compile-pass | EXP_07_27_001_PASS_RELATIONAL_BASIC.ets | 基本关系运算 int 类型（< > <= >=） | compile-pass |
| 0942 | 7.27 | compile-pass | EXP_07_27_002_PASS_RELATIONAL_NESTED.ets | 嵌套关系表达式（左结合分组） | compile-pass |
| 0943 | 7.27 | compile-pass | EXP_07_27_10_PASS_INT_LARGE_CMP.ets | 大 int 值比较 | compile-pass |
| 0944 | 7.27 | compile-pass | EXP_07_27_3_PASS_INT_FLOAT_CMP.ets | int 与 float 关系比较 | compile-pass |
| 0945 | 7.27 | compile-pass | EXP_07_27_4_PASS_BYTE_LONG_CMP.ets | byte 与 long 关系比较 | compile-pass |
| 0946 | 7.27 | compile-pass | EXP_07_27_5_PASS_SHORT_INT_PROMO.ets | short 提升为 int 比较 | compile-pass |
| 0947 | 7.27 | compile-pass | EXP_07_27_6_PASS_NEG_NUM_CMP.ets | 负数关系比较 | compile-pass |
| 0948 | 7.27 | compile-pass | EXP_07_27_7_PASS_MULTI_OP_CMP.ets | 多运算符组合比较 | compile-pass |
| 0949 | 7.27 | compile-pass | EXP_07_27_8_PASS_DOUBLE_FLOAT_CMP.ets | double 与 float 比较 | compile-pass |
| 0950 | 7.27 | compile-pass | EXP_07_27_9_PASS_LONG_NEG_CMP.ets | long 负数比较 | compile-pass |
| 0951 | 7.27 | compile-fail | EXP_07_27_003_FAIL_RELATIONAL_INCOMPATIBLE.ets | 不兼容类型关系运算应产生编译错误 | compile-fail |
| 0952 | 7.27 | compile-fail | EXP_07_27_004_FAIL_RELATIONAL_OBJECT.ets | Object 类型关系运算应产生编译错误 | compile-fail |
| 0953 | 7.27 | compile-fail | EXP_07_27_10_FAIL_FUNC_CMP.ets | 函数与函数比较应报错 | compile-fail |
| 0954 | 7.27 | compile-fail | EXP_07_27_3_FAIL_INT_FUNC_CMP.ets | int 与函数结果比较应报错 | compile-fail |
| 0955 | 7.27 | compile-fail | EXP_07_27_4_FAIL_STRING_NULL_CMP.ets | string 与 null 比较应报错 | compile-fail |
| 0956 | 7.27 | compile-fail | EXP_07_27_5_FAIL_BOOL_NULL_CMP.ets | boolean 与 null 比较应报错 | compile-fail |
| 0957 | 7.27 | compile-fail | EXP_07_27_6_FAIL_INT_UNDEFINED_CMP.ets | int 与 undefined 比较应报错 | compile-fail |
| 0958 | 7.27 | compile-fail | EXP_07_27_7_FAIL_STRING_NUM_CMP.ets | string 与 number 比较应报错 | compile-fail |
| 0959 | 7.27 | compile-fail | EXP_07_27_8_FAIL_ARRAY_INT_CMP.ets | array 与 int 比较应报错 | compile-fail |
| 0960 | 7.27 | compile-fail | EXP_07_27_9_FAIL_RECORD_INT_CMP.ets | record 与 int 比较应报错 | compile-fail |
| 0961 | 7.27 | runtime | EXP_07_27_005_RUNTIME_RELATIONAL_NAN.ets | NaN 关系比较永远返回 false | runtime |
| 0962 | 7.27 | runtime | EXP_07_27_006_RUNTIME_RELATIONAL_CHAINING.ets | 关系运算链式比较 | runtime |
| 0963 | 7.27 | runtime | EXP_07_27_10_RUNTIME_CHAIN_CMP_RESULT.ets | 链式比较结果验证 | runtime |
| 0964 | 7.27 | runtime | EXP_07_27_3_RUNTIME_INT_BOUNDARY_CMP.ets | int 边界值运行时比较 | runtime |
| 0965 | 7.27 | runtime | EXP_07_27_4_RUNTIME_LONG_BOUNDARY_CMP.ets | long 边界值运行时比较 | runtime |
| 0966 | 7.27 | runtime | EXP_07_27_5_RUNTIME_POSITIVE_ZERO_CMP.ets | 正零与负零比较 | runtime |
| 0967 | 7.27 | runtime | EXP_07_27_6_RUNTIME_NAN_LT.ets | NaN 始终不小于任何值 | runtime |
| 0968 | 7.27 | runtime | EXP_07_27_7_RUNTIME_INFINITY_CMP.ets | 无穷大比较行为 | runtime |
| 0969 | 7.27 | runtime | EXP_07_27_8_RUNTIME_INT_FLOAT_PROMOTE.ets | int 与 float 提升比较 | runtime |
| 0970 | 7.27 | runtime | EXP_07_27_9_RUNTIME_BYTE_INT_PROMOTE.ets | byte 提升到 int 比较 | runtime |
| 0971 | 7.27.1 | compile-pass | EXP_07_27_01_001_PASS_INT_RELATIONAL.ets | 验证 int 类型的 <, <=, >, >= 四个数值关系运算符的编译通过 | compile-pass |
| 0972 | 7.27.1 | compile-pass | EXP_07_27_01_001_PASS_NUMERIC_INT_CMP.ets | 验证int类型操作数之间的所有四种关系运算符(<, >, <=, >=)编译通过，执行有符号整数比较 | compile-pass |
| 0973 | 7.27.1 | compile-pass | EXP_07_27_01_002_PASS_LONG_RELATIONAL.ets | 验证 long 类型的 <, <=, >, >= 四个数值关系运算符的编译通过 | compile-pass |
| 0974 | 7.27.1 | compile-pass | EXP_07_27_01_002_PASS_NUMERIC_FLOAT_CMP.ets | float/double 类型 IEEE 754 关系比较 | compile-pass |
| 0975 | 7.27.1 | compile-pass | EXP_07_27_01_003_PASS_FLOAT_RELATIONAL.ets | 验证 float 类型的 <, <=, >, >= 四个数值关系运算符的编译通过 | compile-pass |
| 0976 | 7.27.1 | compile-pass | EXP_07_27_01_003_PASS_NUMERIC_MIXED_INT_LONG.ets | 验证int与long混合类型关系运算编译通过，转换为long后进行有符号整数比较 | compile-pass |
| 0977 | 7.27.1 | compile-pass | EXP_07_27_01_004_PASS_DOUBLE_RELATIONAL.ets | 验证 double 类型的 <, <=, >, >= 四个数值关系运算符的编译通过 | compile-pass |
| 0978 | 7.27.1 | compile-pass | EXP_07_27_01_005_PASS_BYTE_SHORT_PROMOTION.ets | 验证 byte/short 类型在数值关系比较中自动提升为 int 后编译通过 | compile-pass |
| 0979 | 7.27.1 | compile-pass | EXP_07_27_01_006_PASS_MIXED_NUMERIC.ets | 验证混合数值类型在关系比较中的编译通过（int+long、int+float、int+double、long+float、long+double、float+double） | compile-pass |
| 0980 | 7.27.1 | compile-pass | EXP_07_7_27_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 0981 | 7.27.1 | compile-pass | EXP_07_7_27_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 0982 | 7.27.1 | compile-pass | EXP_07_7_27_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 0983 | 7.27.1 | compile-pass | EXP_07_7_27_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 0984 | 7.27.1 | compile-pass | EXP_07_7_27_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 0985 | 7.27.1 | compile-pass | EXP_07_7_27_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 0986 | 7.27.1 | compile-pass | EXP_07_7_27_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 0987 | 7.27.1 | compile-fail | EXP_07_27_01_004_FAIL_NUMERIC_STRING.ets | 验证数值类型与字符串类型操作数不能用于关系运算符，应产生编译时错误 | compile-fail |
| 0988 | 7.27.1 | compile-fail | EXP_07_27_01_005_FAIL_NUMERIC_BOOLEAN.ets | 验证数值类型与boolean类型操作数不能用于关系运算符，应产生编译时错误 | compile-fail |
| 0989 | 7.27.1 | compile-fail | EXP_07_27_01_006_FAIL_NUMERIC_OBJECT.ets | 验证数值类型与Object类型操作数不能用于关系运算符，应产生编译时错误 | compile-fail |
| 0990 | 7.27.1 | compile-fail | EXP_07_27_01_021_FAIL_STRING_OPERAND.ets | 验证 string 类型操作数与 int 进行 < 比较时产生编译时错误 | compile-fail |
| 0991 | 7.27.1 | compile-fail | EXP_07_27_01_022_FAIL_BOOLEAN_OPERAND.ets | 验证 boolean 类型操作数与 int 进行 <= 比较时产生编译时错误 | compile-fail |
| 0992 | 7.27.1 | compile-fail | EXP_07_27_01_023_FAIL_OBJECT_OPERAND.ets | 验证 Object 类型操作数与 int 进行 > 比较时产生编译时错误 | compile-fail |
| 0993 | 7.27.1 | compile-fail | EXP_07_27_01_024_FAIL_NULLISH_OPERAND.ets | 验证 null 和 undefined 类型操作数与 int 进行 >= 比较时产生编译时错误 | compile-fail |
| 0994 | 7.27.1 | compile-fail | EXP_07_27_01_025_FAIL_NON_NUMERIC_BOTH.ets | 验证双方均为非数值类型（string/boolean）进行关系比较时产生编译时错误 | compile-fail |
| 0995 | 7.27.1 | compile-fail | EXP_07_7_27_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 0996 | 7.27.1 | compile-fail | EXP_07_7_27_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 0997 | 7.27.1 | compile-fail | EXP_07_7_27_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 0998 | 7.27.1 | compile-fail | EXP_07_7_27_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 0999 | 7.27.1 | compile-fail | EXP_07_7_27_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1000 | 7.27.1 | compile-fail | EXP_07_7_27_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1001 | 7.27.1 | compile-fail | EXP_07_7_27_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1002 | 7.27.1 | runtime | EXP_07_27_01_007_RUNTIME_NUMERIC_INFINITY.ets | 验证IEEE 754浮点无穷大的关系比较运行时行为：负无穷 < 所有有限值 < 正无穷 | runtime |
| 1003 | 7.27.1 | runtime | EXP_07_27_01_008_RUNTIME_NUMERIC_ZERO.ets | 验证IEEE 754规范中+0与-0的关系比较运行时行为：+0 == -0，因此<=和>=均返回true，<和>均返回false | runtime |
| 1004 | 7.27.1 | runtime | EXP_07_27_01_031_RUNTIME_INT_COMPARISON.ets | 验证 int 类型 <, <=, >, >= 四个关系运算符的基本值正确性 | runtime |
| 1005 | 7.27.1 | runtime | EXP_07_27_01_032_RUNTIME_INT_EDGE.ets | 验证 int 类型边界值（MAX_VALUE、MIN_VALUE、负数边界）的关系比较 | runtime |
| 1006 | 7.27.1 | runtime | EXP_07_27_01_033_RUNTIME_LONG_COMPARISON.ets | 验证 long 类型 <, <=, >, >= 四个关系运算符的基本值正确性 | runtime |
| 1007 | 7.27.1 | runtime | EXP_07_27_01_034_RUNTIME_FLOAT_COMPARISON.ets | 验证 float 类型 <, <=, >, >= 四个关系运算符的基本值正确性 | runtime |
| 1008 | 7.27.1 | runtime | EXP_07_27_01_035_RUNTIME_DOUBLE_COMPARISON.ets | 验证 double 类型 <, <=, >, >= 四个关系运算符的基本值正确性 | runtime |
| 1009 | 7.27.1 | runtime | EXP_07_27_01_036_RUNTIME_IEEE754_SPECIAL.ets | 验证 IEEE 754 浮点特殊值在关系比较中的行为：NaN 恒为 false、负无穷 < 有限值、正无穷 > 有限值、正零等于负零 | runtime |
| 1010 | 7.27.1 | runtime | EXP_07_27_01_037_RUNTIME_MIXED_TYPES.ets | 验证混合数值类型在关系比较中的值正确性（int+long、int+float、int+double、long+float、long+double、float+double） | runtime |
| 1011 | 7.27.1 | runtime | EXP_07_27_01_038_RUNTIME_BYTE_SHORT.ets | 验证 byte/short 类型在关系比较中提升为 int 后的值正确性 | runtime |
| 1012 | 7.27.1 | runtime | EXP_07_7_27_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1013 | 7.27.1 | runtime | EXP_07_7_27_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1014 | 7.27.1 | runtime | EXP_07_7_27_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1015 | 7.27.1 | runtime | EXP_07_7_27_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1016 | 7.27.1 | runtime | EXP_07_7_27_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1017 | 7.27.1 | runtime | EXP_07_7_27_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1018 | 7.27.1 | runtime | EXP_07_7_27_0015_RUNTIME_GEN_15.ets | 补充用例15 | runtime |
| 1019 | 7.27.1 | runtime | EXP_07_7_27_0016_RUNTIME_GEN_16.ets | 补充用例16 | runtime |
| 1020 | 7.27.2 | compile-pass | EXP_07_27_02_001_PASS_BIGINT_BIGINT.ets | bigint vs bigint 全部四个关系运算符编译通过 | compile-pass |
| 1021 | 7.27.2 | compile-pass | EXP_07_27_02_001_PASS_BIGINT_BIGINT_CMP.ets | 验证两个bigint类型操作数之间的关系运算符编译通过，执行bigint有符号比较 | compile-pass |
| 1022 | 7.27.2 | compile-pass | EXP_07_27_02_002_PASS_BIGINT_INT.ets | bigint 与 int 类型关系运算编译通过，int 隐式转换为 bigint | compile-pass |
| 1023 | 7.27.2 | compile-pass | EXP_07_27_02_002_PASS_BIGINT_INT_CMP.ets | 验证bigint与int混合类型关系运算编译通过：int转换为bigint，然后执行bigint比较 | compile-pass |
| 1024 | 7.27.2 | compile-pass | EXP_07_27_02_003_PASS_BIGINT_DOUBLE_CMP.ets | 验证bigint与double混合类型关系运算编译通过：bigint转换为double，然后执行浮点比较 | compile-pass |
| 1025 | 7.27.2 | compile-pass | EXP_07_27_02_003_PASS_BIGINT_LONG.ets | bigint 与 long 类型关系运算编译通过，long 隐式转换为 bigint | compile-pass |
| 1026 | 7.27.2 | compile-pass | EXP_07_27_02_004_PASS_BIGINT_BYTE_SHORT.ets | bigint 与 byte/short 类型关系运算编译通过，byte/short 隐式转换为 bigint | compile-pass |
| 1027 | 7.27.2 | compile-pass | EXP_07_27_02_005_PASS_BIGINT_DOUBLE.ets | bigint 与 double 类型关系运算编译通过，bigint 隐式转换为 double 后比较 | compile-pass |
| 1028 | 7.27.2 | compile-pass | EXP_07_27_02_006_PASS_BIGINT_FLOAT.ets | bigint 与 float 类型关系运算编译通过，两者都转换为 double 后比较 | compile-pass |
| 1029 | 7.27.2 | compile-pass | EXP_07_7_27_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1030 | 7.27.2 | compile-pass | EXP_07_7_27_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1031 | 7.27.2 | compile-pass | EXP_07_7_27_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1032 | 7.27.2 | compile-pass | EXP_07_7_27_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1033 | 7.27.2 | compile-pass | EXP_07_7_27_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1034 | 7.27.2 | compile-pass | EXP_07_7_27_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1035 | 7.27.2 | compile-pass | EXP_07_7_27_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1036 | 7.27.2 | compile-fail | EXP_07_27_02_004_FAIL_BIGINT_STRING.ets | 验证bigint类型与string类型操作数不能用于关系运算符，应产生编译时错误 | compile-fail |
| 1037 | 7.27.2 | compile-fail | EXP_07_27_02_005_FAIL_BIGINT_BOOLEAN.ets | 验证bigint类型与boolean类型操作数不能用于关系运算符，应产生编译时错误 | compile-fail |
| 1038 | 7.27.2 | compile-fail | EXP_07_27_02_006_FAIL_BIGINT_OBJECT.ets | 验证bigint类型与Object类型操作数不能用于关系运算符，应产生编译时错误（bigint无法转换为Object进行关系比较） | compile-fail |
| 1039 | 7.27.2 | compile-fail | EXP_07_27_02_011_FAIL_BIGINT_STRING.ets | bigint 与 string 类型关系运算产生编译时错误 | compile-fail |
| 1040 | 7.27.2 | compile-fail | EXP_07_27_02_012_FAIL_BIGINT_BOOLEAN.ets | bigint 与 boolean 类型关系运算产生编译时错误 | compile-fail |
| 1041 | 7.27.2 | compile-fail | EXP_07_27_02_013_FAIL_BIGINT_OBJECT.ets | bigint 与 Object 类型关系运算产生编译时错误 | compile-fail |
| 1042 | 7.27.2 | compile-fail | EXP_07_27_02_014_FAIL_BIGINT_NULL.ets | bigint 与 null 类型关系运算产生编译时错误 | compile-fail |
| 1043 | 7.27.2 | compile-fail | EXP_07_27_02_015_FAIL_BIGINT_UNDEFINED.ets | bigint 与 undefined 类型关系运算产生编译时错误 | compile-fail |
| 1044 | 7.27.2 | compile-fail | EXP_07_7_27_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1045 | 7.27.2 | compile-fail | EXP_07_7_27_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1046 | 7.27.2 | compile-fail | EXP_07_7_27_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1047 | 7.27.2 | compile-fail | EXP_07_7_27_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1048 | 7.27.2 | compile-fail | EXP_07_7_27_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1049 | 7.27.2 | compile-fail | EXP_07_7_27_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1050 | 7.27.2 | compile-fail | EXP_07_7_27_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1051 | 7.27.2 | runtime | EXP_07_27_02_007_RUNTIME_BIGINT_LARGE.ets | 验证大整数bigint之间的关系比较运行时行为（超出int/long范围的bigint值） | runtime |
| 1052 | 7.27.2 | runtime | EXP_07_27_02_008_RUNTIME_BIGINT_VS_FLOAT.ets | bigint vs float 关系比较（都转 double） | runtime |
| 1053 | 7.27.2 | runtime | EXP_07_27_02_021_RUNTIME_BIGINT_BIGINT.ets | bigint vs bigint 四种关系运算符运行时行为验证 | runtime |
| 1054 | 7.27.2 | runtime | EXP_07_27_02_022_RUNTIME_BIGINT_EDGE.ets | bigint 边界值比较运行时验证（大正数、大负数、零） | runtime |
| 1055 | 7.27.2 | runtime | EXP_07_27_02_023_RUNTIME_BIGINT_INT.ets | bigint 与 int 类型关系运算运行时验证，int 隐式转换为 bigint 后比较 | runtime |
| 1056 | 7.27.2 | runtime | EXP_07_27_02_024_RUNTIME_BIGINT_LONG.ets | bigint 与 long 类型关系运算运行时验证，long 隐式转换为 bigint 后比较 | runtime |
| 1057 | 7.27.2 | runtime | EXP_07_27_02_025_RUNTIME_BIGINT_DOUBLE.ets | bigint 与 double 类型关系运算运行时验证，bigint 隐式转换为 double 后比较 | runtime |
| 1058 | 7.27.2 | runtime | EXP_07_27_02_026_RUNTIME_BIGINT_FLOAT.ets | bigint 与 float 类型关系运算运行时验证，两者都转换为 double 后比较 | runtime |
| 1059 | 7.27.2 | runtime | EXP_07_27_02_027_RUNTIME_BIGINT_MIXED_ALL.ets | bigint 与全部数值类型混合的比较运行时验证 | runtime |
| 1060 | 7.27.2 | runtime | EXP_07_27_02_028_RUNTIME_SPEC_EXAMPLES.ets | Spec 文档中的全部 bigint 关系运算符示例的运行时验证 | runtime |
| 1061 | 7.27.2 | runtime | EXP_07_7_27_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1062 | 7.27.2 | runtime | EXP_07_7_27_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1063 | 7.27.2 | runtime | EXP_07_7_27_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1064 | 7.27.2 | runtime | EXP_07_7_27_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1065 | 7.27.2 | runtime | EXP_07_7_27_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1066 | 7.27.2 | runtime | EXP_07_7_27_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1067 | 7.27.2 | runtime | EXP_07_7_27_0015_RUNTIME_GEN_15.ets | 补充用例15 | runtime |
| 1068 | 7.27.2 | runtime | EXP_07_7_27_0016_RUNTIME_GEN_16.ets | 补充用例16 | runtime |
| 1069 | 7.27.3 | compile-pass | EXP_07_27_03_001_PASS_STRING_BASIC.ets | 验证字符串四个关系运算符在基本字符串上编译通过 | compile-pass |
| 1070 | 7.27.3 | compile-pass | EXP_07_27_03_001_PASS_STRING_BASIC_CMP.ets | 验证两个string类型操作数之间的所有四种关系运算符编译通过，执行字典序比较 | compile-pass |
| 1071 | 7.27.3 | compile-pass | EXP_07_27_03_002_PASS_STRING_EMPTY.ets | 验证空字符串与普通字符串的四个关系运算符编译通过 | compile-pass |
| 1072 | 7.27.3 | compile-pass | EXP_07_27_03_002_PASS_STRING_LEXICOGRAPHIC.ets | 验证字符串字典序比较的正确行为：逐字符比较Unicode码点，短字符串是长字符串前缀时短字符串较小 | compile-pass |
| 1073 | 7.27.3 | compile-pass | EXP_07_27_03_003_PASS_STRING_CASE.ets | 验证字符串大小写比较的四个关系运算符编译通过 | compile-pass |
| 1074 | 7.27.3 | compile-pass | EXP_07_27_03_004_PASS_STRING_ASCII_ORDER.ets | 验证ASCII字符顺序（数字<大写字母<小写字母）的四个关系运算符编译通过 | compile-pass |
| 1075 | 7.27.3 | compile-pass | EXP_07_27_03_005_PASS_STRING_EQUAL.ets | 验证相同字符串比较编译通过 | compile-pass |
| 1076 | 7.27.3 | compile-pass | EXP_07_27_03_006_PASS_STRING_VARIABLES.ets | 验证字符串变量比较的所有关系运算符编译通过 | compile-pass |
| 1077 | 7.27.3 | compile-pass | EXP_07_7_27_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 1078 | 7.27.3 | compile-pass | EXP_07_7_27_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1079 | 7.27.3 | compile-pass | EXP_07_7_27_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1080 | 7.27.3 | compile-pass | EXP_07_7_27_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1081 | 7.27.3 | compile-pass | EXP_07_7_27_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1082 | 7.27.3 | compile-pass | EXP_07_7_27_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1083 | 7.27.3 | compile-pass | EXP_07_7_27_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1084 | 7.27.3 | compile-pass | EXP_07_7_27_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1085 | 7.27.3 | compile-fail | EXP_07_27_03_003_FAIL_STRING_NUMBER.ets | 验证string类型与number类型操作数不能直接用于关系运算符，应产生编译时错误 | compile-fail |
| 1086 | 7.27.3 | compile-fail | EXP_07_27_03_004_FAIL_STRING_BOOLEAN.ets | 验证string类型与boolean类型操作数不能用于关系运算符，应产生编译时错误 | compile-fail |
| 1087 | 7.27.3 | compile-fail | EXP_07_27_03_011_FAIL_STRING_INT.ets | 验证string与int的关系运算产生编译时错误 | compile-fail |
| 1088 | 7.27.3 | compile-fail | EXP_07_27_03_012_FAIL_STRING_BOOLEAN.ets | 验证string与boolean的关系运算产生编译时错误 | compile-fail |
| 1089 | 7.27.3 | compile-fail | EXP_07_27_03_013_FAIL_STRING_BIGINT.ets | 验证string与bigint的关系运算产生编译时错误 | compile-fail |
| 1090 | 7.27.3 | compile-fail | EXP_07_27_03_014_FAIL_STRING_DOUBLE.ets | 验证string与double的关系运算产生编译时错误 | compile-fail |
| 1091 | 7.27.3 | compile-fail | EXP_07_27_03_015_FAIL_STRING_OBJECT.ets | 验证string与Object的关系运算产生编译时错误 | compile-fail |
| 1092 | 7.27.3 | compile-fail | EXP_07_27_03_016_FAIL_STRING_FLOAT.ets | 验证string与float的关系运算产生编译时错误 | compile-fail |
| 1093 | 7.27.3 | compile-fail | EXP_07_7_27_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1094 | 7.27.3 | compile-fail | EXP_07_7_27_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1095 | 7.27.3 | compile-fail | EXP_07_7_27_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1096 | 7.27.3 | compile-fail | EXP_07_7_27_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1097 | 7.27.3 | compile-fail | EXP_07_7_27_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1098 | 7.27.3 | compile-fail | EXP_07_7_27_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1099 | 7.27.3 | compile-fail | EXP_07_7_27_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1100 | 7.27.3 | compile-fail | EXP_07_7_27_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1101 | 7.27.3 | runtime | EXP_07_27_03_005_RUNTIME_STRING_EMPTY.ets | 验证空字符串参与字典序关系比较的运行时行为：空字符串小于任何非空字符串 | runtime |
| 1102 | 7.27.3 | runtime | EXP_07_27_03_006_RUNTIME_STRING_UNICODE.ets | Unicode 字符串字典序比较 | runtime |
| 1103 | 7.27.3 | runtime | EXP_07_27_03_021_RUNTIME_BASIC.ets | 验证字符串四个关系运算符的基本运行时行为 | runtime |
| 1104 | 7.27.3 | runtime | EXP_07_27_03_022_RUNTIME_EMPTY_PREFIX.ets | 验证空字符串和前缀规则的词典序运行时行为 | runtime |
| 1105 | 7.27.3 | runtime | EXP_07_27_03_023_RUNTIME_CASE_SENSITIVITY.ets | 验证字符串大小写敏感的词典序运行时行为 | runtime |
| 1106 | 7.27.3 | runtime | EXP_07_27_03_024_RUNTIME_ASCII_ORDER.ets | 验证ASCII字符顺序的词典序运行时行为 | runtime |
| 1107 | 7.27.3 | runtime | EXP_07_27_03_025_RUNTIME_EQUAL_STRINGS.ets | 验证相同字符串的关系运算符运行时行为 | runtime |
| 1108 | 7.27.3 | runtime | EXP_07_27_03_026_RUNTIME_LEXICOGRAPHIC.ets | 验证词典序详细比较规则 | runtime |
| 1109 | 7.27.3 | runtime | EXP_07_27_03_027_RUNTIME_LONG_STRINGS.ets | 验证长字符串的词典序运行时行为 | runtime |
| 1110 | 7.27.3 | runtime | EXP_07_27_03_028_RUNTIME_STRING_VARIABLES.ets | 验证字符串变量和常量比较的运行时行为 | runtime |
| 1111 | 7.27.3 | runtime | EXP_07_7_27_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1112 | 7.27.3 | runtime | EXP_07_7_27_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1113 | 7.27.3 | runtime | EXP_07_7_27_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1114 | 7.27.3 | runtime | EXP_07_7_27_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1115 | 7.27.3 | runtime | EXP_07_7_27_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1116 | 7.27.3 | runtime | EXP_07_7_27_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1117 | 7.27.3 | runtime | EXP_07_7_27_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1118 | 7.27.3 | runtime | EXP_07_7_27_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1119 | 7.27.4 | compile-pass | EXP_07_27_04_001_PASS_BOOLEAN_RELATIONAL.ets | 布尔关系比较（false < true） | compile-pass |
| 1120 | 7.27.4 | compile-pass | EXP_07_27_04_001_PASS_BOOL_BASIC.ets | 验证 boolean 四个关系运算符在 true/false 文字量上编译通过 | compile-pass |
| 1121 | 7.27.4 | compile-pass | EXP_07_27_04_002_PASS_BOOLEAN_NEGATION.ets | 布尔关系与逻辑非组合 | compile-pass |
| 1122 | 7.27.4 | compile-pass | EXP_07_27_04_002_PASS_BOOL_VARIABLES.ets | 验证 let 声明的 boolean 变量之间关系运算编译通过 | compile-pass |
| 1123 | 7.27.4 | compile-pass | EXP_07_27_04_003_PASS_BOOL_CONST.ets | 验证 const 声明的 boolean 常量之间关系运算编译通过 | compile-pass |
| 1124 | 7.27.4 | compile-pass | EXP_07_27_04_004_PASS_BOOL_EXPRESSION.ets | 验证 boolean 逻辑表达式作为操作数编译通过 | compile-pass |
| 1125 | 7.27.4 | compile-pass | EXP_07_27_04_005_PASS_BOOL_RETURN.ets | 验证函数返回 boolean 值作为关系操作数编译通过 | compile-pass |
| 1126 | 7.27.4 | compile-pass | EXP_07_7_27_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 1127 | 7.27.4 | compile-pass | EXP_07_7_27_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1128 | 7.27.4 | compile-pass | EXP_07_7_27_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1129 | 7.27.4 | compile-pass | EXP_07_7_27_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1130 | 7.27.4 | compile-pass | EXP_07_7_27_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1131 | 7.27.4 | compile-pass | EXP_07_7_27_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1132 | 7.27.4 | compile-pass | EXP_07_7_27_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1133 | 7.27.4 | compile-pass | EXP_07_7_27_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1134 | 7.27.4 | compile-fail | EXP_07_27_04_003_FAIL_BOOLEAN_VS_INT.ets | boolean 与 int 关系比较应产生编译错误 | compile-fail |
| 1135 | 7.27.4 | compile-fail | EXP_07_27_04_004_FAIL_BOOLEAN_VS_STRING.ets | boolean 与 string 关系比较应产生编译错误 | compile-fail |
| 1136 | 7.27.4 | compile-fail | EXP_07_27_04_011_FAIL_BOOL_INT.ets | 验证 boolean 与 int 混合比较产生编译时错误 | compile-fail |
| 1137 | 7.27.4 | compile-fail | EXP_07_27_04_012_FAIL_BOOL_STRING.ets | 验证 boolean 与 string 混合比较产生编译时错误 | compile-fail |
| 1138 | 7.27.4 | compile-fail | EXP_07_27_04_013_FAIL_BOOL_BIGINT.ets | 验证 boolean 与 bigint 混合比较产生编译时错误 | compile-fail |
| 1139 | 7.27.4 | compile-fail | EXP_07_27_04_014_FAIL_BOOL_DOUBLE.ets | 验证 boolean 与 double 混合比较产生编译时错误 | compile-fail |
| 1140 | 7.27.4 | compile-fail | EXP_07_27_04_015_FAIL_BOOL_OBJECT.ets | 验证 boolean 与 Object 混合比较产生编译时错误 | compile-fail |
| 1141 | 7.27.4 | compile-fail | EXP_07_27_04_016_FAIL_BOOL_FLOAT.ets | 验证 boolean 与 float 混合比较产生编译时错误 | compile-fail |
| 1142 | 7.27.4 | compile-fail | EXP_07_7_27_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1143 | 7.27.4 | compile-fail | EXP_07_7_27_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1144 | 7.27.4 | compile-fail | EXP_07_7_27_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1145 | 7.27.4 | compile-fail | EXP_07_7_27_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1146 | 7.27.4 | compile-fail | EXP_07_7_27_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1147 | 7.27.4 | compile-fail | EXP_07_7_27_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1148 | 7.27.4 | compile-fail | EXP_07_7_27_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1149 | 7.27.4 | compile-fail | EXP_07_7_27_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1150 | 7.27.4 | runtime | EXP_07_27_04_005_RUNTIME_BOOLEAN_TRUTH_TABLE.ets | 布尔关系真值表验证 | runtime |
| 1151 | 7.27.4 | runtime | EXP_07_27_04_006_RUNTIME_BOOLEAN_IF.ets | 布尔关系在控制流中使用 | runtime |
| 1152 | 7.27.4 | runtime | EXP_07_27_04_021_RUNTIME_BASIC.ets | 验证 boolean 关系运算符完整真值表：4 运算符 × 4 组合 = 16 个结果 | runtime |
| 1153 | 7.27.4 | runtime | EXP_07_27_04_022_RUNTIME_VARIABLES.ets | 验证 let/const boolean 变量关系运算运行时行为 | runtime |
| 1154 | 7.27.4 | runtime | EXP_07_27_04_023_RUNTIME_EXPRESSIONS.ets | 验证 boolean 表达式（逻辑运算结果）作为关系操作数运行时行为 | runtime |
| 1155 | 7.27.4 | runtime | EXP_07_27_04_024_RUNTIME_EDGE.ets | 验证函数返回值、条件表达式结果作为 boolean 关系操作数运行时行为 | runtime |
| 1156 | 7.27.4 | runtime | EXP_07_7_27_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1157 | 7.27.4 | runtime | EXP_07_7_27_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1158 | 7.27.4 | runtime | EXP_07_7_27_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1159 | 7.27.4 | runtime | EXP_07_7_27_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1160 | 7.27.4 | runtime | EXP_07_7_27_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1161 | 7.27.4 | runtime | EXP_07_7_27_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1162 | 7.27.4 | runtime | EXP_07_7_27_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1163 | 7.27.4 | runtime | EXP_07_7_27_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1164 | 7.27.5 | compile-pass | EXP_07_27_05_001_PASS_CHAR_BASIC.ets | 验证 char 四个关系运算符在文字量上编译通过 | compile-pass |
| 1165 | 7.27.5 | compile-pass | EXP_07_27_05_001_PASS_CHAR_CMP_BASIC.ets | char 类型基本关系比较（码元比较） | compile-pass |
| 1166 | 7.27.5 | compile-pass | EXP_07_27_05_002_PASS_CHAR_CMP_VAR.ets | char 变量关系比较 | compile-pass |
| 1167 | 7.27.5 | compile-pass | EXP_07_27_05_002_PASS_CHAR_VARIABLES.ets | 验证 let char 变量之间关系运算编译通过 | compile-pass |
| 1168 | 7.27.5 | compile-pass | EXP_07_27_05_003_PASS_CHAR_CONST.ets | 验证 const char 常量之间关系运算编译通过 | compile-pass |
| 1169 | 7.27.5 | compile-pass | EXP_07_27_05_004_PASS_CHAR_NUMERIC.ets | 验证 char 与数值类型 byte/int/long/double 关系运算编译通过 | compile-pass |
| 1170 | 7.27.5 | compile-pass | EXP_07_27_05_005_PASS_CHAR_EXPRESSION.ets | 验证表达式/函数返回值作为 char 关系运算的操作数编译通过 | compile-pass |
| 1171 | 7.27.5 | compile-pass | EXP_07_7_27_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 1172 | 7.27.5 | compile-pass | EXP_07_7_27_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1173 | 7.27.5 | compile-pass | EXP_07_7_27_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1174 | 7.27.5 | compile-pass | EXP_07_7_27_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1175 | 7.27.5 | compile-pass | EXP_07_7_27_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1176 | 7.27.5 | compile-pass | EXP_07_7_27_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1177 | 7.27.5 | compile-pass | EXP_07_7_27_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1178 | 7.27.5 | compile-pass | EXP_07_7_27_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1179 | 7.27.5 | compile-fail | EXP_07_27_05_003_FAIL_CHAR_VS_INT.ets | char 与 int 关系比较应产生编译错误 | compile-fail |
| 1180 | 7.27.5 | compile-fail | EXP_07_27_05_011_FAIL_CHAR_STRING.ets | 验证 char 与 string 关系运算产生编译时错误 | compile-fail |
| 1181 | 7.27.5 | compile-fail | EXP_07_27_05_012_FAIL_CHAR_BOOLEAN.ets | 验证 char 与 boolean 关系运算产生编译时错误 | compile-fail |
| 1182 | 7.27.5 | compile-fail | EXP_07_27_05_013_FAIL_CHAR_BIGINT.ets | 验证 char 与 bigint 关系运算产生编译时错误 | compile-fail |
| 1183 | 7.27.5 | compile-fail | EXP_07_7_27_0004_FAIL_GEN_4.ets | 补充用例4 | compile-fail |
| 1184 | 7.27.5 | compile-fail | EXP_07_7_27_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1185 | 7.27.5 | compile-fail | EXP_07_7_27_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1186 | 7.27.5 | compile-fail | EXP_07_7_27_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1187 | 7.27.5 | compile-fail | EXP_07_7_27_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1188 | 7.27.5 | compile-fail | EXP_07_7_27_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1189 | 7.27.5 | compile-fail | EXP_07_7_27_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1190 | 7.27.5 | compile-fail | EXP_07_7_27_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1191 | 7.27.5 | compile-fail | EXP_07_7_27_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1192 | 7.27.5 | runtime | EXP_07_27_05_004_RUNTIME_CHAR_ORDERING.ets | char 码元排序验证 | runtime |
| 1193 | 7.27.5 | runtime | EXP_07_27_05_021_RUNTIME_ORDERING.ets | 验证 char 字符序：ASCII 字母/数字的大小关系，4 运算符 × 4 组合（16 断言） | runtime |
| 1194 | 7.27.5 | runtime | EXP_07_27_05_022_RUNTIME_BOUNDARY.ets | 验证 char 边界值比较：最小值 NUL、最大值 ￿ | runtime |
| 1195 | 7.27.5 | runtime | EXP_07_27_05_023_RUNTIME_NUMERIC.ets | 验证 char 与数值类型的隐式转换比较（char + int/long/double） | runtime |
| 1196 | 7.27.5 | runtime | EXP_07_27_05_024_RUNTIME_EDGE.ets | 验证 char 在变量、函数返回值、三元表达式等场景中的关系运算 | runtime |
| 1197 | 7.27.5 | runtime | EXP_07_7_27_0005_RUNTIME_GEN_5.ets | 补充用例5 | runtime |
| 1198 | 7.27.5 | runtime | EXP_07_7_27_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 1199 | 7.27.5 | runtime | EXP_07_7_27_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1200 | 7.27.5 | runtime | EXP_07_7_27_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1201 | 7.27.5 | runtime | EXP_07_7_27_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1202 | 7.27.5 | runtime | EXP_07_7_27_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1203 | 7.27.5 | runtime | EXP_07_7_27_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1204 | 7.27.5 | runtime | EXP_07_7_27_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1205 | 7.27.5 | runtime | EXP_07_7_27_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1206 | 7.27.6 | compile-pass | EXP_07_27_06_001_PASS_ENUM_INT_BASIC.ets | 验证 int 基类型枚举四个关系运算符编译通过 | compile-pass |
| 1207 | 7.27.6 | compile-pass | EXP_07_27_06_001_PASS_ENUM_INT_CMP.ets | 同枚举类型（int 基类型）关系比较 | compile-pass |
| 1208 | 7.27.6 | compile-pass | EXP_07_27_06_002_PASS_ENUM_LONG_BASIC.ets | 验证 long 基类型枚举四个关系运算符编译通过 | compile-pass |
| 1209 | 7.27.6 | compile-pass | EXP_07_27_06_002_PASS_ENUM_STRING_CMP.ets | 同枚举类型（string 基类型）关系比较 | compile-pass |
| 1210 | 7.27.6 | compile-pass | EXP_07_27_06_003_PASS_ENUM_BYTE_BASIC.ets | 验证 byte 基类型枚举四个关系运算符编译通过 | compile-pass |
| 1211 | 7.27.6 | compile-pass | EXP_07_27_06_004_PASS_ENUM_STRING_BASIC.ets | 验证 string 基类型枚举四个关系运算符编译通过 | compile-pass |
| 1212 | 7.27.6 | compile-pass | EXP_07_27_06_004_PASS_ENUM_VS_INT.ets | 枚举类型与 int 关系比较 — es2panda 接受 | compile-pass |
| 1213 | 7.27.6 | compile-pass | EXP_07_27_06_005_PASS_ENUM_INT_MIXED.ets | 验证混合初始化的 int 基类型枚举关系运算符编译通过 | compile-pass |
| 1214 | 7.27.6 | compile-pass | EXP_07_7_27_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1215 | 7.27.6 | compile-pass | EXP_07_7_27_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1216 | 7.27.6 | compile-pass | EXP_07_7_27_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1217 | 7.27.6 | compile-pass | EXP_07_7_27_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1218 | 7.27.6 | compile-pass | EXP_07_7_27_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1219 | 7.27.6 | compile-pass | EXP_07_7_27_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1220 | 7.27.6 | compile-pass | EXP_07_7_27_0011_PASS_GEN_11.ets | 补充用例11 | compile-pass |
| 1221 | 7.27.6 | compile-fail | EXP_07_27_06_003_FAIL_ENUM_DIFF_TYPE.ets | 不同枚举类型关系比较应产生编译错误 | compile-fail |
| 1222 | 7.27.6 | compile-fail | EXP_07_27_06_011_FAIL_DIFFERENT_ENUM.ets | 验证不同类型枚举的成员关系运算产生编译时错误 | compile-fail |
| 1223 | 7.27.6 | compile-fail | EXP_07_27_06_012_FAIL_ENUM_VS_NUMERIC.ets | 验证枚举与数值类型的关系运算产生编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1224 | 7.27.6 | compile-fail | EXP_07_27_06_013_FAIL_ENUM_VS_STRING.ets | 验证枚举与字符串类型的关系运算产生编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1225 | 7.27.6 | compile-fail | EXP_07_27_06_014_FAIL_DIFFERENT_ENUM_SAME_BASE.ets | 验证不同枚举类型（相同基类型）的关系运算产生编译时错误 | compile-fail |
| 1226 | 7.27.6 | compile-fail | EXP_07_7_27_0004_FAIL_GEN_4.ets | 补充用例4 | compile-fail |
| 1227 | 7.27.6 | compile-fail | EXP_07_7_27_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1228 | 7.27.6 | compile-fail | EXP_07_7_27_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1229 | 7.27.6 | compile-fail | EXP_07_7_27_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1230 | 7.27.6 | compile-fail | EXP_07_7_27_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1231 | 7.27.6 | compile-fail | EXP_07_7_27_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1232 | 7.27.6 | compile-fail | EXP_07_7_27_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1233 | 7.27.6 | compile-fail | EXP_07_7_27_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1234 | 7.27.6 | compile-fail | EXP_07_7_27_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1235 | 7.27.6 | runtime | EXP_07_27_06_005_RUNTIME_ENUM_ORDERING.ets | 枚举值排序验证 | runtime |
| 1236 | 7.27.6 | runtime | EXP_07_27_06_006_RUNTIME_ENUM_SAME_VALUE.ets | 同值枚举关系比较 | runtime |
| 1237 | 7.27.6 | runtime | EXP_07_27_06_021_RUNTIME_INT_ORDER.ets | 验证 int 基类型枚举成员的关系运算符运行时行为，4 运算符 × 多组合（12 断言） | runtime |
| 1238 | 7.27.6 | runtime | EXP_07_27_06_022_RUNTIME_LONG_ORDER.ets | 验证 long 基类型枚举成员的关系运算符运行时行为（12 断言） | runtime |
| 1239 | 7.27.6 | runtime | EXP_07_27_06_023_RUNTIME_STRING_ORDER.ets | 验证 string 基类型枚举成员的关系运算符运行时行为（12 断言） | runtime |
| 1240 | 7.27.6 | runtime | EXP_07_27_06_024_RUNTIME_BYTE_ORDER.ets | 验证 byte 基类型枚举成员的关系运算符运行时行为（12 断言） | runtime |
| 1241 | 7.27.6 | runtime | EXP_07_7_27_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1242 | 7.27.6 | runtime | EXP_07_7_27_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1243 | 7.27.6 | runtime | EXP_07_7_27_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1244 | 7.27.6 | runtime | EXP_07_7_27_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1245 | 7.27.6 | runtime | EXP_07_7_27_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1246 | 7.27.6 | runtime | EXP_07_7_27_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1247 | 7.27.6 | runtime | EXP_07_7_27_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1248 | 7.27.6 | runtime | EXP_07_7_27_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1249 | 7.28 | compile-pass | EXP_07_28_001_PASS_EQUALITY_BASIC.ets | 基本相等运算（== === != !==） | compile-pass |
| 1250 | 7.28 | compile-pass | EXP_07_28_002_PASS_EQUALITY_COMMUTATIVE.ets | 相等运算交换律验证 | compile-pass |
| 1251 | 7.28 | compile-pass | EXP_07_28_003_PASS_EQUALITY_PRECEDENCE.ets | 相等运算符优先级（低于关系运算符） | compile-pass |
| 1252 | 7.28 | compile-pass | EXP_07_28_10_PASS_NEG_INT_EQ.ets | 负整数相等 | compile-pass |
| 1253 | 7.28 | compile-pass | EXP_07_28_4_PASS_LONG_EQ.ets | long类型相等比较 | compile-pass |
| 1254 | 7.28 | compile-pass | EXP_07_28_5_PASS_STRING_SAME_CONTENT.ets | 字符串内容相同相等 | compile-pass |
| 1255 | 7.28 | compile-pass | EXP_07_28_6_PASS_CHAR_EQ.ets | char类型相等比较 | compile-pass |
| 1256 | 7.28 | compile-pass | EXP_07_28_7_PASS_BOOL_EQ_LITERAL.ets | 布尔字面量相等 | compile-pass |
| 1257 | 7.28 | compile-pass | EXP_07_28_8_PASS_FLOAT_EQ_PRECISE.ets | 浮点精确相等 | compile-pass |
| 1258 | 7.28 | compile-pass | EXP_07_28_9_PASS_SELF_EQ.ets | 值与自身相等 | compile-pass |
| 1259 | 7.28 | compile-fail | EXP_07_28_004_FAIL_EQUALITY_INCOMPATIBLE.ets | 不兼容类型相等比较应产生编译错误 | compile-fail |
| 1260 | 7.28 | compile-fail | EXP_07_28_10_FAIL_FUNC_INT_EQ.ets | 函数与int相等应报错 | compile-fail |
| 1261 | 7.28 | compile-fail | EXP_07_28_2_FAIL_INT_STRING_MIX.ets | int与string相等应报错 | compile-fail |
| 1262 | 7.28 | compile-fail | EXP_07_28_3_FAIL_INT_BIGINT_MIX.ets | int与bigint相等应报错 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1263 | 7.28 | compile-fail | EXP_07_28_4_FAIL_BOOL_STRING_MIX.ets | boolean与string相等应报错 | compile-fail |
| 1264 | 7.28 | compile-fail | EXP_07_28_5_FAIL_OBJECT_INT_EQ.ets | Object与int相等应报错 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1265 | 7.28 | compile-fail | EXP_07_28_6_FAIL_NULL_STRING_EQ.ets | null与string相等应报错 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1266 | 7.28 | compile-fail | EXP_07_28_7_FAIL_UNDEFINED_INT_EQ.ets | undefined与int相等应报错 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1267 | 7.28 | compile-fail | EXP_07_28_8_FAIL_ARRAY_STRING_EQ.ets | 数组与字符串相等应报错 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1268 | 7.28 | compile-fail | EXP_07_28_9_FAIL_ENUM_STRING_EQ.ets | 枚举与字符串相等应报错 | compile-fail |
| 1269 | 7.28 | runtime | EXP_07_28_005_RUNTIME_OBJECT_EQUALITY.ets | 对象引用相等运行时验证 | runtime |
| 1270 | 7.28 | runtime | EXP_07_28_006_RUNTIME_UNION_EQUALITY.ets | 联合类型相等运行时验证 | runtime |
| 1271 | 7.28 | runtime | EXP_07_28_10_RUNTIME_INFINITY_EQ.ets | 无穷大相等运行时 | runtime |
| 1272 | 7.28 | runtime | EXP_07_28_3_RUNTIME_STRING_CONTENT.ets | 字符串内容相等运行时 | runtime |
| 1273 | 7.28 | runtime | EXP_07_28_4_RUNTIME_SELF_REF_EQ.ets | 自身引用相等 | runtime |
| 1274 | 7.28 | runtime | EXP_07_28_5_RUNTIME_FLOAT_PRECISE_EQ.ets | 浮点数精确相等运行时 | runtime |
| 1275 | 7.28 | runtime | EXP_07_28_6_RUNTIME_NEG_ZERO_EQ.ets | 正负零相等运行时 | runtime |
| 1276 | 7.28 | runtime | EXP_07_28_7_RUNTIME_NAN_SELF_NEQ.ets | NaN 不等于自身 | runtime |
| 1277 | 7.28 | runtime | EXP_07_28_8_RUNTIME_INT_LONG_PROMOTE.ets | int与long提升相等 | runtime |
| 1278 | 7.28 | runtime | EXP_07_28_9_RUNTIME_CHAR_INT_PROMOTE.ets | char与int提升相等 | runtime |
| 1279 | 7.28.1 | compile-pass | EXP_07_28_01_001_PASS_INT_EQ.ets | int 类型相等比较 | compile-pass |
| 1280 | 7.28.1 | compile-pass | EXP_07_28_01_001_PASS_INT_EQUALITY.ets | 验证 int 类型的 ==, !=, ===, !== 四个等值运算符编译通过 | compile-pass |
| 1281 | 7.28.1 | compile-pass | EXP_07_28_01_002_PASS_FLOAT_EQ.ets | float/double IEEE 754 相等比较 | compile-pass |
| 1282 | 7.28.1 | compile-pass | EXP_07_28_01_002_PASS_LONG_EQUALITY.ets | 验证 long 类型的 ==, !=, ===, !== 四个等值运算符编译通过 | compile-pass |
| 1283 | 7.28.1 | compile-pass | EXP_07_28_01_003_PASS_BYTE_SHORT_PROMOTION.ets | 验证 byte/short 类型通过加宽转换为 int 后等值比较编译通过 | compile-pass |
| 1284 | 7.28.1 | compile-pass | EXP_07_28_01_003_PASS_WIDENING_EQ.ets | widening 转换相等（int vs long, int vs double） | compile-pass |
| 1285 | 7.28.1 | compile-pass | EXP_07_28_01_004_PASS_FLOAT_EQUALITY.ets | 验证 float 类型的 ==, != 等值运算符编译通过 | compile-pass |
| 1286 | 7.28.1 | compile-pass | EXP_07_28_01_005_PASS_DOUBLE_EQUALITY.ets | 验证 double 类型的 ==, != 等值运算符编译通过 | compile-pass |
| 1287 | 7.28.1 | compile-pass | EXP_07_28_01_006_PASS_CHAR_VS_NUMERIC.ets | 验证 char 类型与数值类型等值比较编译通过 | compile-pass |
| 1288 | 7.28.1 | compile-pass | EXP_07_28_01_007_PASS_MIXED_NUMERIC.ets | 验证混合数值类型（int+long, int+float, int+double 等）等值比较编译通过 | compile-pass |
| 1289 | 7.28.1 | compile-pass | EXP_07_28_01_008_PASS_BIGINT_EQUALITY.ets | 验证 bigint 类型的 ==, !=, ===, !== 等值比较编译通过 | compile-pass |
| 1290 | 7.28.1 | compile-pass | EXP_07_28_01_009_PASS_BIGINT_VS_NUMERIC.ets | 验证 bigint 与数值类型等值比较（spec 要求结果 false，但不为编译时错误） | compile-pass |
| 1291 | 7.28.1 | compile-pass | EXP_07_28_01_010_PASS_OBJECT_WRAPPER.ets | 验证数值与 Number 包装对象等值比较（spec 示例：5 == new Number(5)） | compile-pass |
| 1292 | 7.28.1 | compile-pass | EXP_07_28_01_011_PASS_SPEC_EXAMPLES.ets | 验证 spec 代码示例中的等值比较编译通过 | compile-pass |
| 1293 | 7.28.1 | compile-pass | EXP_07_28_01_012_PASS_NAN_INF_ZERO.ets | 验证浮点特殊值（NaN、Infinity、-0.0）在等值比较中编译通过 | compile-pass |
| 1294 | 7.28.1 | compile-pass | EXP_07_7_28_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1295 | 7.28.1 | compile-pass | EXP_07_7_28_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1296 | 7.28.1 | compile-pass | EXP_07_7_28_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1297 | 7.28.1 | compile-pass | EXP_07_7_28_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1298 | 7.28.1 | compile-pass | EXP_07_7_28_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1299 | 7.28.1 | compile-pass | EXP_07_7_28_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1300 | 7.28.1 | compile-pass | EXP_07_7_28_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1301 | 7.28.1 | compile-fail | EXP_07_28_01_004_FAIL_NUMERIC_VS_STRING.ets | numeric 与 string 相等比较应产生编译错误 | compile-fail |
| 1302 | 7.28.1 | compile-fail | EXP_07_28_01_005_FAIL_NUMERIC_VS_BOOLEAN.ets | numeric 与 boolean 相等比较应产生编译错误 | compile-fail |
| 1303 | 7.28.1 | compile-fail | EXP_07_28_01_013_FAIL_BOOLEAN_VS_NUMERIC.ets | 验证 boolean 与数值类型等值比较时产生编译时错误 | compile-fail |
| 1304 | 7.28.1 | compile-fail | EXP_07_28_01_014_FAIL_STRING_VS_NUMERIC.ets | 验证 string 与数值类型等值比较时产生编译时错误 | compile-fail |
| 1305 | 7.28.1 | compile-fail | EXP_07_28_01_015_FAIL_OBJECT_VS_NUMERIC.ets | 验证 Object 类型与数值类型等值比较时产生编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1306 | 7.28.1 | compile-fail | EXP_07_28_01_016_FAIL_ENUM_VS_NUMERIC.ets | 验证枚举类型与数值类型等值比较时产生编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1307 | 7.28.1 | compile-fail | EXP_07_28_01_017_FAIL_NULLISH_WITH_NUMERIC.ets | 验证 null/undefined 与数值类型等值比较时产生编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1308 | 7.28.1 | compile-fail | EXP_07_7_28_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1309 | 7.28.1 | compile-fail | EXP_07_7_28_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1310 | 7.28.1 | compile-fail | EXP_07_7_28_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1311 | 7.28.1 | compile-fail | EXP_07_7_28_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1312 | 7.28.1 | compile-fail | EXP_07_7_28_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1313 | 7.28.1 | compile-fail | EXP_07_7_28_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1314 | 7.28.1 | compile-fail | EXP_07_7_28_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1315 | 7.28.1 | compile-fail | EXP_07_7_28_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1316 | 7.28.1 | runtime | EXP_07_28_01_006_RUNTIME_NAN_EQ.ets | NaN 相等比较（NaN != NaN） | runtime |
| 1317 | 7.28.1 | runtime | EXP_07_28_01_007_RUNTIME_BIGINT_VS_NUMERIC.ets | bigint == numeric 返回 false（非编译错误） | runtime |
| 1318 | 7.28.1 | runtime | EXP_07_28_01_008_RUNTIME_INFINITY_EQ.ets | Infinity 相等行为 | runtime |
| 1319 | 7.28.1 | runtime | EXP_07_28_01_018_RUNTIME_INT_EQUALITY.ets | 验证 int 类型 ==, !=, ===, !== 等值运算符的运行时正确性 | runtime |
| 1320 | 7.28.1 | runtime | EXP_07_28_01_019_RUNTIME_FLOAT_IEEE754.ets | 验证浮点 IEEE 754 等值比较规则：NaN 比较、+0/-0 相等、Infinity 比较 | runtime |
| 1321 | 7.28.1 | runtime | EXP_07_28_01_020_RUNTIME_MIXED_TYPES.ets | 验证混合数值类型等值比较运行时正确性：int+long、int+float、int+double、char 等 | runtime |
| 1322 | 7.28.1 | runtime | EXP_07_28_01_021_RUNTIME_BIGINT.ets | 验证 bigint 等值比较运行时正确性，以及 bigint 与数值类型比较（结果为 false） | runtime |
| 1323 | 7.28.1 | runtime | EXP_07_7_28_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1324 | 7.28.1 | runtime | EXP_07_7_28_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1325 | 7.28.1 | runtime | EXP_07_7_28_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1326 | 7.28.1 | runtime | EXP_07_7_28_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1327 | 7.28.1 | runtime | EXP_07_7_28_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1328 | 7.28.1 | runtime | EXP_07_7_28_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1329 | 7.28.1 | runtime | EXP_07_7_28_0015_RUNTIME_GEN_15.ets | 补充用例15 | runtime |
| 1330 | 7.28.2 | compile-pass | EXP_07_28_02_001_PASS_FUNC_REF_EQ.ets | 同一函数引用相等 | compile-pass |
| 1331 | 7.28.2 | compile-pass | EXP_07_28_02_001_PASS_SAME_FUNCTION.ets | 验证同一个函数对象的 == 比较编译通过 | compile-pass |
| 1332 | 7.28.2 | compile-pass | EXP_07_28_02_002_PASS_DIFF_FUNCTION.ets | 验证不同函数对象的 == 比较编译通过 | compile-pass |
| 1333 | 7.28.2 | compile-pass | EXP_07_28_02_002_PASS_DIFF_FUNC_NEQ.ets | 不同函数引用不相等 | compile-pass |
| 1334 | 7.28.2 | compile-pass | EXP_07_28_02_003_PASS_DIFF_SIGNATURE.ets | 验证不同参数签名的函数对象 == 比较编译通过 | compile-pass |
| 1335 | 7.28.2 | compile-pass | EXP_07_28_02_003_PASS_METHOD_REF_EQ.ets | 方法引用相等（含绑定实例） | compile-pass |
| 1336 | 7.28.2 | compile-pass | EXP_07_28_02_004_PASS_SAME_INSTANCE_METHOD.ets | 验证同一实例上同一方法的两次引用比较编译通过 | compile-pass |
| 1337 | 7.28.2 | compile-pass | EXP_07_28_02_005_PASS_STATIC_METHOD.ets | 验证静态方法引用的两次比较编译通过 | compile-pass |
| 1338 | 7.28.2 | compile-pass | EXP_07_28_02_006_PASS_DIFF_INSTANCE_METHOD.ets | 验证不同实例上的同名方法引用比较编译通过（即使运行时为 false） | compile-pass |
| 1339 | 7.28.2 | compile-pass | EXP_07_28_02_007_PASS_DIFF_METHOD_NAME.ets | 验证同一实例上不同方法的引用比较编译通过（即使运行时为 false） | compile-pass |
| 1340 | 7.28.2 | compile-pass | EXP_07_28_02_008_PASS_STRICT_EQUALITY_FUNCTION.ets | 验证 === 和 !== 作用于函数类型编译通过 | compile-pass |
| 1341 | 7.28.2 | compile-pass | EXP_07_28_02_009_PASS_SPEC_EXAMPLES.ets | 验证所有 spec 示例代码编译通过 | compile-pass |
| 1342 | 7.28.2 | compile-pass | EXP_07_7_28_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1343 | 7.28.2 | compile-pass | EXP_07_7_28_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1344 | 7.28.2 | compile-pass | EXP_07_7_28_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1345 | 7.28.2 | compile-pass | EXP_07_7_28_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1346 | 7.28.2 | compile-pass | EXP_07_7_28_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1347 | 7.28.2 | compile-pass | EXP_07_7_28_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1348 | 7.28.2 | compile-pass | EXP_07_7_28_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1349 | 7.28.2 | compile-fail | EXP_07_28_02_004_FAIL_FUNC_NON_FUNC_EQ.ets | 函数类型与非函数类型相等比较应产生编译错误 | compile-fail |
| 1350 | 7.28.2 | compile-fail | EXP_07_28_02_010_FAIL_FUNCTION_VS_NUMERIC.ets | 验证函数类型与数值类型等值比较产生编译时错误 | compile-fail |
| 1351 | 7.28.2 | compile-fail | EXP_07_28_02_011_FAIL_FUNCTION_VS_STRING.ets | 验证函数类型与字符串类型等值比较产生编译时错误 | compile-fail |
| 1352 | 7.28.2 | compile-fail | EXP_07_28_02_012_FAIL_FUNCTION_VS_BOOLEAN.ets | 验证函数类型与布尔类型等值比较产生编译时错误 | compile-fail |
| 1353 | 7.28.2 | compile-fail | EXP_07_7_28_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1354 | 7.28.2 | compile-fail | EXP_07_7_28_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1355 | 7.28.2 | compile-fail | EXP_07_7_28_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1356 | 7.28.2 | compile-fail | EXP_07_7_28_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1357 | 7.28.2 | compile-fail | EXP_07_7_28_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1358 | 7.28.2 | compile-fail | EXP_07_7_28_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1359 | 7.28.2 | compile-fail | EXP_07_7_28_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1360 | 7.28.2 | compile-fail | EXP_07_7_28_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1361 | 7.28.2 | compile-fail | EXP_07_7_28_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1362 | 7.28.2 | runtime | EXP_07_28_02_005_RUNTIME_METHOD_BOUND_EQ.ets | 不同绑定实例方法引用不等 | runtime |
| 1363 | 7.28.2 | runtime | EXP_07_28_02_013_RUNTIME_SAME_FUNCTION.ets | 验证相同函数对象 == 比较运行时返回 true | runtime |
| 1364 | 7.28.2 | runtime | EXP_07_28_02_014_RUNTIME_METHOD_REFERENCE.ets | 验证实例和静态方法引用等值比较的运行时正确性 | runtime |
| 1365 | 7.28.2 | runtime | EXP_07_28_02_015_RUNTIME_STRICT_EQUALITY_FUNCTION.ets | 验证 === 和 !== 在函数类型上的运行时行为 | runtime |
| 1366 | 7.28.2 | runtime | EXP_07_28_02_016_RUNTIME_ALL_SPEC_EXAMPLES.ets | 验证 spec 中所有 Function Type Equality Operators 示例的运行时行为 | runtime |
| 1367 | 7.28.2 | runtime | EXP_07_7_28_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 1368 | 7.28.2 | runtime | EXP_07_7_28_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1369 | 7.28.2 | runtime | EXP_07_7_28_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1370 | 7.28.2 | runtime | EXP_07_7_28_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1371 | 7.28.2 | runtime | EXP_07_7_28_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1372 | 7.28.2 | runtime | EXP_07_7_28_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1373 | 7.28.2 | runtime | EXP_07_7_28_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1374 | 7.28.2 | runtime | EXP_07_7_28_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1375 | 7.28.2 | runtime | EXP_07_7_28_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1376 | 7.28.3 | compile-pass | EXP_07_28_03_001_PASS_NULL_EQ_UNDEFINED.ets | 验证 null == undefined 扩展等值编译通过（null 和 undefined 字面量直接比较） | compile-pass |
| 1377 | 7.28.3 | compile-pass | EXP_07_28_03_001_PASS_NULL_UNDEFINED_EQ.ets | null == undefined 为 true | compile-pass |
| 1378 | 7.28.3 | compile-pass | EXP_07_28_03_002_PASS_NULL_NULL_COMPARISON.ets | 验证 null == null 和 null === null 编译通过 | compile-pass |
| 1379 | 7.28.3 | compile-pass | EXP_07_28_03_002_PASS_NULL_UNDEFINED_NEQ.ets | null !== undefined 为 true（严格不等） | compile-pass |
| 1380 | 7.28.3 | compile-pass | EXP_07_28_03_003_PASS_NULL_SELF_EQ.ets | null == null 和 undefined == undefined | compile-pass |
| 1381 | 7.28.3 | compile-pass | EXP_07_28_03_003_PASS_UNDEFINED_UNDEFINED_COMPARISON.ets | 验证 undefined == undefined 和 undefined === undefined 编译通过 | compile-pass |
| 1382 | 7.28.3 | compile-pass | EXP_07_28_03_004_PASS_NULL_NE_UNDEFINED.ets | 验证 null != undefined 和 null !== undefined 编译通过 | compile-pass |
| 1383 | 7.28.3 | compile-pass | EXP_07_28_03_005_PASS_NULLABLE_TYPE_PARAM.ets | 验证可空类型参数的 null/undefined 等值比较编译通过（spec 示例代码） | compile-pass |
| 1384 | 7.28.3 | compile-pass | EXP_07_28_03_006_PASS_NULL_VARIABLE.ets | 验证将 null 赋值给可空变量后进行比较编译通过 | compile-pass |
| 1385 | 7.28.3 | compile-pass | EXP_07_28_03_007_PASS_UNDEFINED_VARIABLE.ets | 验证将 undefined 赋值给可空变量后进行比较编译通过 | compile-pass |
| 1386 | 7.28.3 | compile-pass | EXP_07_28_03_008_PASS_SPEC_EXAMPLES.ets | 验证规范中所有 spec 示例代码编译通过 | compile-pass |
| 1387 | 7.28.3 | compile-pass | EXP_07_7_28_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1388 | 7.28.3 | compile-pass | EXP_07_7_28_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1389 | 7.28.3 | compile-pass | EXP_07_7_28_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1390 | 7.28.3 | compile-pass | EXP_07_7_28_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1391 | 7.28.3 | compile-pass | EXP_07_7_28_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1392 | 7.28.3 | compile-pass | EXP_07_7_28_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1393 | 7.28.3 | compile-pass | EXP_07_7_28_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1394 | 7.28.3 | compile-fail | EXP_07_7_28_0001_FAIL_GEN_1.ets | 补充用例1 | compile-fail |
| 1395 | 7.28.3 | compile-fail | EXP_07_7_28_0002_FAIL_GEN_2.ets | 补充用例2 | compile-fail |
| 1396 | 7.28.3 | compile-fail | EXP_07_7_28_0003_FAIL_GEN_3.ets | 补充用例3 | compile-fail |
| 1397 | 7.28.3 | compile-fail | EXP_07_7_28_0004_FAIL_GEN_4.ets | 补充用例4 | compile-fail |
| 1398 | 7.28.3 | compile-fail | EXP_07_7_28_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1399 | 7.28.3 | compile-fail | EXP_07_7_28_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1400 | 7.28.3 | compile-fail | EXP_07_7_28_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1401 | 7.28.3 | compile-fail | EXP_07_7_28_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1402 | 7.28.3 | compile-fail | EXP_07_7_28_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1403 | 7.28.3 | compile-fail | EXP_07_7_28_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1404 | 7.28.3 | runtime | EXP_07_28_03_004_RUNTIME_NULL_UNDEFINED_EXTENDED.ets | 扩展 null/undefined 相等运行时验证 | runtime |
| 1405 | 7.28.3 | runtime | EXP_07_28_03_012_RUNTIME_NULL_UNDEFINED_LITERALS.ets | 验证 null/undefined 字面量等值比较的运行时行为 | runtime |
| 1406 | 7.28.3 | runtime | EXP_07_28_03_013_RUNTIME_NULLABLE_PARAM.ets | 验证可空类型参数传递 null/undefined 时等值比较的运行时行为（spec 示例） | runtime |
| 1407 | 7.28.3 | runtime | EXP_07_28_03_014_RUNTIME_NULLABLE_VARIABLES.ets | 验证可空类型变量赋值 null/undefined 后的等值比较运行时行为 | runtime |
| 1408 | 7.28.3 | runtime | EXP_07_28_03_015_RUNTIME_SPEC_EXAMPLES.ets | 验证 spec 中所有 Extended Equality with null or undefined 示例的运行时行为 | runtime |
| 1409 | 7.28.3 | runtime | EXP_07_7_28_0005_RUNTIME_GEN_5.ets | 补充用例5 | runtime |
| 1410 | 7.28.3 | runtime | EXP_07_7_28_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 1411 | 7.28.3 | runtime | EXP_07_7_28_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1412 | 7.28.3 | runtime | EXP_07_7_28_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1413 | 7.28.3 | runtime | EXP_07_7_28_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1414 | 7.28.3 | runtime | EXP_07_7_28_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1415 | 7.28.3 | runtime | EXP_07_7_28_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1416 | 7.28.3 | runtime | EXP_07_7_28_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1417 | 7.28.3 | runtime | EXP_07_7_28_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1418 | 7.29 | compile-pass | EXP_07_29_001_PASS_BITWISE_BASIC.ets | 基本位运算（& \| ^）int 类型 | compile-pass |
| 1419 | 7.29 | compile-pass | EXP_07_29_002_PASS_BITWISE_PRECEDENCE.ets | 位运算符优先级（& > ^ > \|） | compile-pass |
| 1420 | 7.29 | compile-pass | EXP_07_7_29_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 1421 | 7.29 | compile-pass | EXP_07_7_29_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1422 | 7.29 | compile-pass | EXP_07_7_29_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1423 | 7.29 | compile-pass | EXP_07_7_29_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1424 | 7.29 | compile-pass | EXP_07_7_29_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1425 | 7.29 | compile-pass | EXP_07_7_29_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1426 | 7.29 | compile-pass | EXP_07_7_29_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1427 | 7.29 | compile-pass | EXP_07_7_29_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1428 | 7.29 | compile-fail | EXP_07_29_003_FAIL_BITWISE_STRING.ets | string 类型位运算应产生编译错误 | compile-fail |
| 1429 | 7.29 | compile-fail | EXP_07_29_004_FAIL_BITWISE_OBJECT.ets | Object 类型位运算应产生编译错误 | compile-fail |
| 1430 | 7.29 | compile-fail | EXP_07_7_29_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1431 | 7.29 | compile-fail | EXP_07_7_29_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1432 | 7.29 | compile-fail | EXP_07_7_29_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1433 | 7.29 | compile-fail | EXP_07_7_29_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1434 | 7.29 | compile-fail | EXP_07_7_29_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1435 | 7.29 | compile-fail | EXP_07_7_29_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1436 | 7.29 | compile-fail | EXP_07_7_29_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1437 | 7.29 | compile-fail | EXP_07_7_29_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1438 | 7.29 | runtime | EXP_07_7_29_0001_RUNTIME_GEN_1.ets | 补充用例1 | runtime |
| 1439 | 7.29 | runtime | EXP_07_7_29_0002_RUNTIME_GEN_2.ets | 补充用例2 | runtime |
| 1440 | 7.29 | runtime | EXP_07_7_29_0003_RUNTIME_GEN_3.ets | 补充用例3 | runtime |
| 1441 | 7.29 | runtime | EXP_07_7_29_0004_RUNTIME_GEN_4.ets | 补充用例4 | runtime |
| 1442 | 7.29 | runtime | EXP_07_7_29_0005_RUNTIME_GEN_5.ets | 补充用例5 | runtime |
| 1443 | 7.29 | runtime | EXP_07_7_29_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 1444 | 7.29 | runtime | EXP_07_7_29_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1445 | 7.29 | runtime | EXP_07_7_29_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1446 | 7.29 | runtime | EXP_07_7_29_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1447 | 7.29 | runtime | EXP_07_7_29_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1448 | 7.29.1 | compile-pass | EXP_07_29_01_001_PASS_INT_BITWISE.ets | int 位运算完整覆盖（& \| ^） | compile-pass |
| 1449 | 7.29.1 | compile-pass | EXP_07_29_01_001_PASS_INT_BITWISE_BASIC.ets | int 类型三个位运算符（&, ^, \|）的基本编译通过验证 | compile-pass |
| 1450 | 7.29.1 | compile-pass | EXP_07_29_01_002_PASS_LONG_BITWISE.ets | long 类型位运算 | compile-pass |
| 1451 | 7.29.1 | compile-pass | EXP_07_29_01_002_PASS_LONG_BITWISE_BASIC.ets | long 类型三个位运算符（&, ^, \|）的基本编译通过验证 | compile-pass |
| 1452 | 7.29.1 | compile-pass | EXP_07_29_01_003_PASS_BIGINT_BITWISE.ets | bigint 类型位运算 | compile-pass |
| 1453 | 7.29.1 | compile-pass | EXP_07_29_01_003_PASS_BYTE_SHORT_PROMOTION.ets | byte 和 short 类型在位运算中自动提升为 int 的编译通过验证 | compile-pass |
| 1454 | 7.29.1 | compile-pass | EXP_07_29_01_004_PASS_BYTE_SHORT_WIDENING.ets | byte/short 位运算时 widening 转换 | compile-pass |
| 1455 | 7.29.1 | compile-pass | EXP_07_29_01_004_PASS_MIXED_INT_TYPES.ets | 不同整数类型混合位运算（小类型加宽为大类型）的编译通过验证 | compile-pass |
| 1456 | 7.29.1 | compile-pass | EXP_07_29_01_005_PASS_FLOAT_DOUBLE_TRUNCATION.ets | float/double 类型在位运算中先截断为适当整数类型的编译通过验证 | compile-pass |
| 1457 | 7.29.1 | compile-pass | EXP_07_29_01_006_PASS_BIGINT_BITWISE.ets | bigint 类型三个位运算符（&, ^, \|）的编译通过验证 | compile-pass |
| 1458 | 7.29.1 | compile-pass | EXP_07_29_01_007_PASS_BITWISE_CHAINED_PRECEDENCE.ets | 链式位运算及优先级（& > ^ > \|）的编译通过验证 | compile-pass |
| 1459 | 7.29.1 | compile-pass | EXP_07_7_29_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1460 | 7.29.1 | compile-pass | EXP_07_7_29_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1461 | 7.29.1 | compile-pass | EXP_07_7_29_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1462 | 7.29.1 | compile-pass | EXP_07_7_29_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1463 | 7.29.1 | compile-pass | EXP_07_7_29_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1464 | 7.29.1 | compile-pass | EXP_07_7_29_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1465 | 7.29.1 | compile-fail | EXP_07_29_01_005_FAIL_BIGINT_NUMERIC_MIXED.ets | bigint 与 numeric 混合位运算应产生编译错误 | compile-fail |
| 1466 | 7.29.1 | compile-fail | EXP_07_29_01_006_FAIL_FLOAT_BITWISE.ets | float 类型位运算应产生编译错误 | compile-fail |
| 1467 | 7.29.1 | compile-fail | EXP_07_29_01_007_FAIL_BOOLEAN_BITWISE.ets | 整数位运算不允许 boolean 操作数 | compile-fail |
| 1468 | 7.29.1 | compile-fail | EXP_07_29_01_008_FAIL_BIGINT_NUMERIC_MIXED.ets | bigint 与 int 混合位运算应产生编译时错误 | compile-fail |
| 1469 | 7.29.1 | compile-fail | EXP_07_29_01_009_FAIL_BIGINT_FLOAT_MIXED.ets | bigint 与 float 混合位运算应产生编译时错误 | compile-fail |
| 1470 | 7.29.1 | compile-fail | EXP_07_7_29_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1471 | 7.29.1 | compile-fail | EXP_07_7_29_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1472 | 7.29.1 | compile-fail | EXP_07_7_29_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1473 | 7.29.1 | compile-fail | EXP_07_7_29_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1474 | 7.29.1 | compile-fail | EXP_07_7_29_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1475 | 7.29.1 | compile-fail | EXP_07_7_29_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1476 | 7.29.1 | compile-fail | EXP_07_7_29_0014_FAIL_GEN_14.ets | 补充用例14 | compile-fail |
| 1477 | 7.29.1 | runtime | EXP_07_29_01_008_RUNTIME_BITWISE_TRUTH_TABLE.ets | 位运算真值表验证 | runtime |
| 1478 | 7.29.1 | runtime | EXP_07_29_01_009_RUNTIME_BIGINT_BITWISE_LARGE.ets | bigint 大值位运算 | runtime |
| 1479 | 7.29.1 | runtime | EXP_07_29_01_010_RUNTIME_INT_BITWISE.ets | int 类型位运算符（&, ^, \|）运行时正确性验证：用已知二进制值的位运算结果验证 | runtime |
| 1480 | 7.29.1 | runtime | EXP_07_29_01_011_RUNTIME_LONG_BITWISE.ets | long 类型位运算符（&, ^, \|）运行时正确性验证 | runtime |
| 1481 | 7.29.1 | runtime | EXP_07_29_01_012_RUNTIME_BIGINT_BITWISE.ets | bigint 类型位运算符（&, ^, \|）运行时正确性验证 | runtime |
| 1482 | 7.29.1 | runtime | EXP_07_29_01_013_RUNTIME_FLOAT_DOUBLE_TRUNCATION.ets | float/double 类型位运算时截断为整数后的运行时正确性验证 | runtime |
| 1483 | 7.29.1 | runtime | EXP_07_7_29_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1484 | 7.29.1 | runtime | EXP_07_7_29_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1485 | 7.29.1 | runtime | EXP_07_7_29_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1486 | 7.29.1 | runtime | EXP_07_7_29_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1487 | 7.29.1 | runtime | EXP_07_7_29_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1488 | 7.29.1 | runtime | EXP_07_7_29_0015_RUNTIME_GEN_15.ets | 补充用例15 | runtime |
| 1489 | 7.29.1 | runtime | EXP_07_7_29_0016_RUNTIME_GEN_16.ets | 补充用例16 | runtime |
| 1490 | 7.29.1 | runtime | EXP_07_7_29_0017_RUNTIME_GEN_17.ets | 补充用例17 | runtime |
| 1491 | 7.29.2 | compile-pass | EXP_07_29_02_001_PASS_BOOLEAN_AND.ets | 验证 boolean 类型 &（AND）运算符的编译通过：true & true、true & false、false & true、false & false 四种组合 | compile-pass |
| 1492 | 7.29.2 | compile-pass | EXP_07_29_02_001_PASS_BOOL_AND.ets | 布尔逻辑 AND（&）运算 | compile-pass |
| 1493 | 7.29.2 | compile-pass | EXP_07_29_02_002_PASS_BOOLEAN_XOR_OR.ets | 验证 boolean 类型 ^（XOR）和 \|（OR）运算符的编译通过，各覆盖四种真值表组合 | compile-pass |
| 1494 | 7.29.2 | compile-pass | EXP_07_29_02_002_PASS_BOOL_OR_XOR.ets | 布尔逻辑 OR（\|）和 XOR（^）运算 | compile-pass |
| 1495 | 7.29.2 | compile-pass | EXP_07_29_02_003_PASS_BOOLEAN_CHAINED.ets | 验证 boolean 逻辑运算符的链式运算、括号分组及结果类型为 boolean | compile-pass |
| 1496 | 7.29.2 | compile-pass | EXP_07_7_29_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 1497 | 7.29.2 | compile-pass | EXP_07_7_29_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1498 | 7.29.2 | compile-pass | EXP_07_7_29_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1499 | 7.29.2 | compile-pass | EXP_07_7_29_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1500 | 7.29.2 | compile-pass | EXP_07_7_29_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1501 | 7.29.2 | compile-pass | EXP_07_7_29_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1502 | 7.29.2 | compile-pass | EXP_07_7_29_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1503 | 7.29.2 | compile-pass | EXP_07_7_29_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1504 | 7.29.2 | compile-fail | EXP_07_29_02_003_FAIL_BOOL_INT_MIXED.ets | boolean 与 int 逻辑运算应产生编译错误 | compile-fail |
| 1505 | 7.29.2 | compile-fail | EXP_07_29_02_004_FAIL_BOOLEAN_NUMERIC_MIXED.ets | 验证 boolean 与 int/float/long 等数值类型混合使用 &、^、\| 运算符时产生编译时错误 | compile-fail |
| 1506 | 7.29.2 | compile-fail | EXP_07_29_02_004_FAIL_BOOL_STRING_MIXED.ets | boolean 与 string 逻辑运算应产生编译错误 | compile-fail |
| 1507 | 7.29.2 | compile-fail | EXP_07_29_02_005_FAIL_BOOLEAN_STRING_BIGINT_MIXED.ets | 验证 boolean 与 string/bigint 等非 boolean 类型混合使用 &、^、\| 运算符时产生编译时错误 | compile-fail |
| 1508 | 7.29.2 | compile-fail | EXP_07_7_29_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1509 | 7.29.2 | compile-fail | EXP_07_7_29_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1510 | 7.29.2 | compile-fail | EXP_07_7_29_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1511 | 7.29.2 | compile-fail | EXP_07_7_29_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1512 | 7.29.2 | compile-fail | EXP_07_7_29_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1513 | 7.29.2 | compile-fail | EXP_07_7_29_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1514 | 7.29.2 | compile-fail | EXP_07_7_29_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1515 | 7.29.2 | compile-fail | EXP_07_7_29_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1516 | 7.29.2 | runtime | EXP_07_29_02_005_RUNTIME_BOOL_TRUTH_TABLE.ets | 布尔逻辑真值表完整验证 | runtime |
| 1517 | 7.29.2 | runtime | EXP_07_29_02_006_RUNTIME_BOOLEAN_LOGICAL.ets | 验证 boolean 类型 &、^、\| 运算符的运行时真值表正确性，覆盖全部 12 种真值表组合 + 变量运算 + 自身运算 | runtime |
| 1518 | 7.29.2 | runtime | EXP_07_7_29_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 1519 | 7.29.2 | runtime | EXP_07_7_29_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1520 | 7.29.2 | runtime | EXP_07_7_29_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1521 | 7.29.2 | runtime | EXP_07_7_29_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1522 | 7.29.2 | runtime | EXP_07_7_29_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1523 | 7.29.2 | runtime | EXP_07_7_29_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1524 | 7.29.2 | runtime | EXP_07_7_29_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1525 | 7.29.2 | runtime | EXP_07_7_29_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1526 | 7.29.2 | runtime | EXP_07_7_29_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1527 | 7.30 | compile-pass | EXP_07_30_001_PASS_COND_AND_BASIC.ets | && 基本短路求值 | compile-pass |
| 1528 | 7.30 | compile-pass | EXP_07_30_001_PASS_COND_AND_TRUTH_TABLE.ets | 验证 boolean && 运算符的完整真值表，覆盖所有 4 种组合 | compile-pass |
| 1529 | 7.30 | compile-pass | EXP_07_30_002_PASS_COND_AND_CHAIN.ets | && 链式调用（左结合） | compile-pass |
| 1530 | 7.30 | compile-pass | EXP_07_30_002_PASS_COND_AND_SHORT_CIRCUIT.ets | 验证 && 的短路行为：LHS 为 false 时 RHS 不执行（函数调用作为操作数验证副作用） | compile-pass |
| 1531 | 7.30 | compile-pass | EXP_07_30_003_PASS_COND_AND_CHAINED.ets | 验证 && 的链式运算、左结合性和完全结合律：((a) && (b)) && (c) 与 (a) && ((b) && (c)) 结果相同 | compile-pass |
| 1532 | 7.30 | compile-pass | EXP_07_7_30_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 1533 | 7.30 | compile-pass | EXP_07_7_30_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1534 | 7.30 | compile-pass | EXP_07_7_30_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1535 | 7.30 | compile-pass | EXP_07_7_30_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1536 | 7.30 | compile-pass | EXP_07_7_30_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1537 | 7.30 | compile-pass | EXP_07_7_30_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1538 | 7.30 | compile-pass | EXP_07_7_30_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1539 | 7.30 | compile-pass | EXP_07_7_30_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1540 | 7.30 | compile-fail | EXP_07_30_003_FAIL_COND_AND_NON_BOOL.ets | 非 boolean 操作数 && 应产生编译错误 | compile-fail |
| 1541 | 7.30 | compile-fail | EXP_07_30_004_FAIL_COND_AND_NUMERIC_MIXED.ets | 验证 && 操作数与 int/float/long 等数值类型混合时应产生编译时错误，覆盖 3 种混合场景：boolean && numeric、numeric && boolean、numeric && numeric | compile-fail |
| 1542 | 7.30 | compile-fail | EXP_07_30_004_FAIL_COND_AND_STRING.ets | string 类型 && 应产生编译错误 | compile-fail |
| 1543 | 7.30 | compile-fail | EXP_07_30_005_FAIL_COND_AND_STRING_BIGINT_MIXED.ets | 验证 && 操作数与 string/bigint 混合时应产生编译时错误，覆盖 boolean && string、string && boolean、string && string、bigint 混合 | compile-fail |
| 1544 | 7.30 | compile-fail | EXP_07_7_30_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1545 | 7.30 | compile-fail | EXP_07_7_30_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1546 | 7.30 | compile-fail | EXP_07_7_30_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1547 | 7.30 | compile-fail | EXP_07_7_30_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1548 | 7.30 | compile-fail | EXP_07_7_30_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1549 | 7.30 | compile-fail | EXP_07_7_30_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1550 | 7.30 | compile-fail | EXP_07_7_30_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1551 | 7.30 | compile-fail | EXP_07_7_30_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1552 | 7.30 | runtime | EXP_07_30_005_RUNTIME_COND_AND_SHORTCIRCUIT.ets | && 短路：左侧 false 不执行右侧 | runtime |
| 1553 | 7.30 | runtime | EXP_07_30_006_RUNTIME_COND_AND_ASSOC.ets | && 结合律运行时验证 | runtime |
| 1554 | 7.30 | runtime | EXP_07_30_006_RUNTIME_COND_AND_SEMANTICS.ets | 验证 boolean && 运算符的运行时语义：真值表正确性、短路行为（LHS 为 false 时 RHS 不执行）、链式运算、结合律、变量运算、与 & 一致性 | runtime |
| 1555 | 7.30 | runtime | EXP_07_7_30_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1556 | 7.30 | runtime | EXP_07_7_30_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1557 | 7.30 | runtime | EXP_07_7_30_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1558 | 7.30 | runtime | EXP_07_7_30_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1559 | 7.30 | runtime | EXP_07_7_30_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1560 | 7.30 | runtime | EXP_07_7_30_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1561 | 7.30 | runtime | EXP_07_7_30_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1562 | 7.30 | runtime | EXP_07_7_30_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1563 | 7.31 | compile-pass | EXP_07_31_001_PASS_COND_OR_BASIC.ets | \|\| 基本短路求值 | compile-pass |
| 1564 | 7.31 | compile-pass | EXP_07_31_001_PASS_COND_OR_TRUTH_TABLE.ets | 验证 boolean \|\| 运算符的完整真值表，覆盖所有 4 种组合 | compile-pass |
| 1565 | 7.31 | compile-pass | EXP_07_31_002_PASS_COND_OR_CHAIN.ets | \|\| 链式调用（左结合） | compile-pass |
| 1566 | 7.31 | compile-pass | EXP_07_31_002_PASS_COND_OR_SHORT_CIRCUIT.ets | 验证 \|\| 的短路行为：LHS 为 true 时 RHS 不执行（函数调用作为操作数验证副作用） | compile-pass |
| 1567 | 7.31 | compile-pass | EXP_07_31_003_PASS_COND_OR_CHAINED.ets | 验证 \|\| 的链式运算、左结合性和完全结合律：((a) \|\| (b)) \|\| (c) 与 (a) \|\| ((b) \|\| (c)) 结果相同 | compile-pass |
| 1568 | 7.31 | compile-pass | EXP_07_7_31_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 1569 | 7.31 | compile-pass | EXP_07_7_31_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1570 | 7.31 | compile-pass | EXP_07_7_31_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1571 | 7.31 | compile-pass | EXP_07_7_31_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1572 | 7.31 | compile-pass | EXP_07_7_31_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1573 | 7.31 | compile-pass | EXP_07_7_31_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1574 | 7.31 | compile-pass | EXP_07_7_31_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1575 | 7.31 | compile-pass | EXP_07_7_31_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1576 | 7.31 | compile-fail | EXP_07_31_003_FAIL_COND_OR_NON_BOOL.ets | 非 boolean 操作数 \|\| 应产生编译错误 | compile-fail |
| 1577 | 7.31 | compile-fail | EXP_07_31_004_FAIL_COND_OR_NUMERIC_MIXED.ets | 验证 \|\| 操作数与 int/float/long 等数值类型混合时应产生编译时错误，覆盖 3 种混合场景：boolean \|\| numeric、numeric \|\| boolean、numeric \|\| numeric | compile-fail |
| 1578 | 7.31 | compile-fail | EXP_07_31_004_FAIL_COND_OR_STRING.ets | string 类型 \|\| 应产生编译错误 | compile-fail |
| 1579 | 7.31 | compile-fail | EXP_07_31_005_FAIL_COND_OR_STRING_BIGINT_MIXED.ets | 验证 \|\| 操作数与 string/bigint 混合时应产生编译时错误，覆盖 boolean \|\| string、string \|\| boolean、string \|\| string、bigint 混合 | compile-fail |
| 1580 | 7.31 | compile-fail | EXP_07_7_31_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1581 | 7.31 | compile-fail | EXP_07_7_31_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1582 | 7.31 | compile-fail | EXP_07_7_31_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1583 | 7.31 | compile-fail | EXP_07_7_31_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1584 | 7.31 | compile-fail | EXP_07_7_31_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1585 | 7.31 | compile-fail | EXP_07_7_31_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1586 | 7.31 | compile-fail | EXP_07_7_31_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1587 | 7.31 | compile-fail | EXP_07_7_31_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1588 | 7.31 | runtime | EXP_07_31_005_RUNTIME_COND_OR_SHORTCIRCUIT.ets | \|\| 短路：左侧 true 不执行右侧 | runtime |
| 1589 | 7.31 | runtime | EXP_07_31_006_RUNTIME_COND_OR_SEMANTICS.ets | 验证 boolean \|\| 运算符的运行时语义：真值表正确性、短路行为（LHS 为 true 时 RHS 不执行）、链式运算、结合律、变量运算、与 \| 一致性 | runtime |
| 1590 | 7.31 | runtime | EXP_07_31_006_RUNTIME_COND_OR_VS_BITWISE.ets | \|\| 与 \| 在 boolean 上结果相同但求值方式不同 | runtime |
| 1591 | 7.31 | runtime | EXP_07_7_31_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1592 | 7.31 | runtime | EXP_07_7_31_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1593 | 7.31 | runtime | EXP_07_7_31_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1594 | 7.31 | runtime | EXP_07_7_31_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1595 | 7.31 | runtime | EXP_07_7_31_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1596 | 7.31 | runtime | EXP_07_7_31_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1597 | 7.31 | runtime | EXP_07_7_31_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1598 | 7.31 | runtime | EXP_07_7_31_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1599 | 7.32 | compile-pass | EXP_07_32_001_PASS_ASSIGN_BASIC.ets | 基本赋值右结合（a = b = c） | compile-pass |
| 1600 | 7.32 | compile-pass | EXP_07_32_002_PASS_ASSIGN_FIELD.ets | 字段赋值 | compile-pass |
| 1601 | 7.32 | compile-pass | EXP_07_7_32_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 1602 | 7.32 | compile-pass | EXP_07_7_32_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1603 | 7.32 | compile-pass | EXP_07_7_32_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1604 | 7.32 | compile-pass | EXP_07_7_32_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1605 | 7.32 | compile-pass | EXP_07_7_32_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1606 | 7.32 | compile-pass | EXP_07_7_32_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1607 | 7.32 | compile-pass | EXP_07_7_32_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1608 | 7.32 | compile-pass | EXP_07_7_32_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1609 | 7.32 | compile-fail | EXP_07_32_003_FAIL_ASSIGN_TYPE_MISMATCH.ets | 类型不兼容赋值应产生编译错误 | compile-fail |
| 1610 | 7.32 | compile-fail | EXP_07_7_32_0004_FAIL_GEN_4.ets | 补充用例4 | compile-fail |
| 1611 | 7.32 | compile-fail | EXP_07_7_32_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1612 | 7.32 | compile-fail | EXP_07_7_32_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1613 | 7.32 | compile-fail | EXP_07_7_32_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1614 | 7.32 | compile-fail | EXP_07_7_32_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1615 | 7.32 | compile-fail | EXP_07_7_32_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1616 | 7.32 | compile-fail | EXP_07_7_32_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1617 | 7.32 | compile-fail | EXP_07_7_32_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1618 | 7.32 | compile-fail | EXP_07_7_32_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1619 | 7.32 | runtime | EXP_07_32_004_RUNTIME_ASSIGN_RESULT_VALUE.ets | 赋值表达式返回赋值后的值 | runtime |
| 1620 | 7.32 | runtime | EXP_07_7_32_0005_RUNTIME_GEN_5.ets | 补充用例5 | runtime |
| 1621 | 7.32 | runtime | EXP_07_7_32_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 1622 | 7.32 | runtime | EXP_07_7_32_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1623 | 7.32 | runtime | EXP_07_7_32_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1624 | 7.32 | runtime | EXP_07_7_32_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1625 | 7.32 | runtime | EXP_07_7_32_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1626 | 7.32 | runtime | EXP_07_7_32_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1627 | 7.32 | runtime | EXP_07_7_32_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1628 | 7.32 | runtime | EXP_07_7_32_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1629 | 7.32.1 | compile-pass | EXP_07_32_01_001_PASS_SIMPLE_VAR.ets | 简单赋值变量 | compile-pass |
| 1630 | 7.32.1 | compile-pass | EXP_07_32_01_001_PASS_SIMPLE_VARIABLE_ASSIGN.ets | 验证简单变量赋值的编译通过：int、long、float、double、string、boolean 六种基本类型的赋值表达式 | compile-pass |
| 1631 | 7.32.1 | compile-pass | EXP_07_32_01_002_PASS_FIELD_ACCESS_ASSIGN.ets | 验证字段访问表达式作为左值 e.f = value 的编译通过：int、string、boolean 三种字段类型的赋值 | compile-pass |
| 1632 | 7.32.1 | compile-pass | EXP_07_32_01_002_PASS_SIMPLE_ARRAY.ets | 数组元素赋值 | compile-pass |
| 1633 | 7.32.1 | compile-pass | EXP_07_32_01_003_PASS_ARRAY_INDEX_ASSIGN.ets | 验证数组索引表达式作为左值 arr[idx] = value 的编译通过：字面量索引和变量索引两种形式 | compile-pass |
| 1634 | 7.32.1 | compile-pass | EXP_07_32_01_004_PASS_RECORD_INDEX_ASSIGN.ets | 验证记录索引表达式作为左值 rec[key] = value 的编译通过：string literal 作为 key | compile-pass |
| 1635 | 7.32.1 | compile-pass | EXP_07_32_01_005_PASS_WIDENING_ASSIGN.ets | 验证隐式扩宽赋值的编译通过：byte→int→long→float→double 的扩宽链 | compile-pass |
| 1636 | 7.32.1 | compile-pass | EXP_07_32_01_006_PASS_SPEC_EXAMPLES.ets | 验证规范中 4 个示例全部编译通过（字段访问、数组索引、记录索引、简单赋值） | compile-pass |
| 1637 | 7.32.1 | compile-pass | EXP_07_7_32_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 1638 | 7.32.1 | compile-pass | EXP_07_7_32_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1639 | 7.32.1 | compile-pass | EXP_07_7_32_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1640 | 7.32.1 | compile-pass | EXP_07_7_32_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1641 | 7.32.1 | compile-pass | EXP_07_7_32_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1642 | 7.32.1 | compile-pass | EXP_07_7_32_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1643 | 7.32.1 | compile-pass | EXP_07_7_32_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1644 | 7.32.1 | compile-pass | EXP_07_7_32_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1645 | 7.32.1 | compile-fail | EXP_07_32_01_003_FAIL_ASSIGN_TO_READONLY.ets | readonly 变量赋值应产生编译错误 | compile-fail |
| 1646 | 7.32.1 | compile-fail | EXP_07_32_01_004_FAIL_ASSIGN_TO_CONST.ets | const 变量赋值应产生编译错误 | compile-fail |
| 1647 | 7.32.1 | compile-fail | EXP_07_32_01_005_FAIL_ASSIGN_TO_LITERAL.ets | 字面量赋值应产生编译错误 | compile-fail |
| 1648 | 7.32.1 | compile-fail | EXP_07_32_01_007_FAIL_TYPE_MISMATCH.ets | 验证类型不兼容赋值产生编译时错误：跨类型赋值（string=int, boolean=int 等）和窄化赋值（long=int, double=float 等） | compile-fail |
| 1649 | 7.32.1 | compile-fail | EXP_07_32_01_008_FAIL_READONLY_ARRAY.ets | 验证只读数组变量不能赋值为非只读数组的编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1650 | 7.32.1 | compile-fail | EXP_07_32_01_009_FAIL_READONLY_TUPLE.ets | 验证只读元组变量不能赋值为非只读元组的编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1651 | 7.32.1 | compile-fail | EXP_07_7_32_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1652 | 7.32.1 | compile-fail | EXP_07_7_32_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1653 | 7.32.1 | compile-fail | EXP_07_7_32_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1654 | 7.32.1 | compile-fail | EXP_07_7_32_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1655 | 7.32.1 | compile-fail | EXP_07_7_32_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1656 | 7.32.1 | compile-fail | EXP_07_7_32_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1657 | 7.32.1 | compile-fail | EXP_07_7_32_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1658 | 7.32.1 | runtime | EXP_07_32_01_006_RUNTIME_ARRAY_OOB.ets | 数组越界赋值运行时行为 | runtime |
| 1659 | 7.32.1 | runtime | EXP_07_32_01_007_RUNTIME_FIELD_ASSIGN.ets | 字段赋值运行时验证 | runtime |
| 1660 | 7.32.1 | runtime | EXP_07_32_01_010_RUNTIME_SEMANTICS.ets | 验证简单赋值运算符的运行时语义：基本类型赋值值正确、字段访问赋值值正确、数组索引赋值值正确、记录索引赋值值正确、链式赋值右结合性 | runtime |
| 1661 | 7.32.1 | runtime | EXP_07_32_01_011_RUNTIME_RANGEERROR_NEGATIVE.ets | 验证数组索引为负值时抛出 RangeError：使用函数返回负值作索引，arr[negOne()] = value 应抛 RangeError | runtime |
| 1662 | 7.32.1 | runtime | EXP_07_32_01_012_RUNTIME_RANGEERROR_TOO_LARGE.ets | 验证数组索引大于等于数组长度时抛出 RangeError：arr[5] = value（len=3）应抛 RangeError，不执行赋值 | runtime |
| 1663 | 7.32.1 | runtime | EXP_07_7_32_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1664 | 7.32.1 | runtime | EXP_07_7_32_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1665 | 7.32.1 | runtime | EXP_07_7_32_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1666 | 7.32.1 | runtime | EXP_07_7_32_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1667 | 7.32.1 | runtime | EXP_07_7_32_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1668 | 7.32.1 | runtime | EXP_07_7_32_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1669 | 7.32.1 | runtime | EXP_07_7_32_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1670 | 7.32.1 | runtime | EXP_07_7_32_0015_RUNTIME_GEN_15.ets | 补充用例15 | runtime |
| 1671 | 7.32.2 | compile-pass | EXP_07_32_02_001_PASS_ARITHMETIC_COMPOUND.ets | 验证算术复合赋值运算符的编译通过：+=、-=、*=、/=、%= 在 int/long/float/double 四种数值类型上的使用 | compile-pass |
| 1672 | 7.32.2 | compile-pass | EXP_07_32_02_001_PASS_COMPOUND_ARITH.ets | 复合赋值算术运算（+= -= *= /= %=） | compile-pass |
| 1673 | 7.32.2 | compile-pass | EXP_07_32_02_002_PASS_COMPOUND_SHIFT.ets | 复合赋值移位运算（<<= >>= >>>=） | compile-pass |
| 1674 | 7.32.2 | compile-pass | EXP_07_32_02_002_PASS_SHIFT_BITWISE_COMPOUND.ets | 验证移位和位运算复合赋值运算符的编译通过：<<=、>>=、>>>=、&=、\|=、^= 在 int/long 类型上的使用，以及 boolean 位运算 | compile-pass |
| 1675 | 7.32.2 | compile-pass | EXP_07_32_02_003_PASS_COMPOUND_BITWISE.ets | 复合赋值位运算（&= \|= ^=） | compile-pass |
| 1676 | 7.32.2 | compile-pass | EXP_07_32_02_003_PASS_STRING_CONCAT_COMPOUND.ets | 验证字符串拼接复合赋值 += 的编译通过：string += string、string += int、string += 其他类型 | compile-pass |
| 1677 | 7.32.2 | compile-pass | EXP_07_32_02_004_PASS_COMPOUND_LOGIC.ets | 复合赋值逻辑运算（&= \|= ^= 用于 boolean） | compile-pass |
| 1678 | 7.32.2 | compile-pass | EXP_07_32_02_004_PASS_FIELD_ARRAY_RECORD_COMPOUND.ets | 验证三种 lhsExpression 形式的复合赋值编译通过：字段访问 (obj.field +=)、数组索引 (arr[idx] +=)、记录索引 (rec[key] +=) | compile-pass |
| 1679 | 7.32.2 | compile-pass | EXP_07_32_02_005_PASS_COMPOUND_LHS_ONCE.ets | 复合赋值左侧仅求值一次 | compile-pass |
| 1680 | 7.32.2 | compile-pass | EXP_07_32_02_006_PASS_SPEC_EXAMPLES.ets | 验证规范中各复合赋值运算符使用示例的编译通过：所有 op= 在正确类型上的使用（不含 ??=，当前编译器不支持） | compile-pass |
| 1681 | 7.32.2 | compile-pass | EXP_07_7_32_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1682 | 7.32.2 | compile-pass | EXP_07_7_32_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1683 | 7.32.2 | compile-pass | EXP_07_7_32_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1684 | 7.32.2 | compile-pass | EXP_07_7_32_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1685 | 7.32.2 | compile-pass | EXP_07_7_32_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1686 | 7.32.2 | compile-fail | EXP_07_32_02_005_FAIL_NULLISH_COALESCING_UNSUPPORTED.ets | 验证 ??= (Nullish Coalescing Assignment) 的编译行为。Spec 定义 ??= 运算符语义，但编译器不支持（Syntax error ESY0227） | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1687 | 7.32.2 | compile-fail | EXP_07_32_02_006_FAIL_COMPOUND_MISMATCH.ets | 复合赋值类型不兼容应产生编译错误 | compile-fail |
| 1688 | 7.32.2 | compile-fail | EXP_07_32_02_007_FAIL_COMPOUND_NON_LVALUE.ets | 复合赋值非左值应产生编译错误 | compile-fail |
| 1689 | 7.32.2 | compile-fail | EXP_07_32_02_007_FAIL_TYPE_MISMATCH_COMPOUND.ets | 验证复合赋值运算符在类型不匹配时的编译错误：string 不支持 -= *= /= %= 等非拼接运算符；boolean 不支持算术复合；不同类别类型间的复合 | compile-fail |
| 1690 | 7.32.2 | compile-fail | EXP_07_32_02_008_FAIL_NULLISH_NONNULLABLE.ets | 验证 ??= 的编译错误。Spec 定义 ??= 运算符语义，但当前编译器不支持 ??= 语法（ESY0227 Unexpected token '??='）。 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1691 | 7.32.2 | compile-fail | EXP_07_32_02_011_FAIL_NULLISH_BEHAVIOR_UNSUPPORTED.ets | 验证 ??= 的运行时行为。原设计为 runtime 用例测试 ??= 语义（null 时赋值/非 null 时跳过），但编译器不支持 ??= 语法 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1692 | 7.32.2 | compile-fail | EXP_07_7_32_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1693 | 7.32.2 | compile-fail | EXP_07_7_32_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1694 | 7.32.2 | compile-fail | EXP_07_7_32_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1695 | 7.32.2 | compile-fail | EXP_07_7_32_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1696 | 7.32.2 | compile-fail | EXP_07_7_32_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1697 | 7.32.2 | compile-fail | EXP_07_7_32_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1698 | 7.32.2 | compile-fail | EXP_07_7_32_0014_FAIL_GEN_14.ets | 补充用例14 | compile-fail |
| 1699 | 7.32.2 | compile-fail | EXP_07_7_32_0015_FAIL_GEN_15.ets | 补充用例15 | compile-fail |
| 1700 | 7.32.2 | runtime | EXP_07_32_02_008_RUNTIME_COMPOUND_ARRAY.ets | 数组元素复合赋值 | runtime |
| 1701 | 7.32.2 | runtime | EXP_07_32_02_009_RUNTIME_COMPOUND_NULLISH.ets | ??= 空值合并赋值（左侧 null/undefined 时赋值） | runtime |
| 1702 | 7.32.2 | runtime | EXP_07_32_02_009_RUNTIME_SEMANTICS.ets | 验证复合赋值运算符的运行时语义：算术复合（+=-=*=/=%=）值正确、移位复合值正确、位运算复合值正确、字符串拼接正确、字段/数组/记录复合值正确 | runtime |
| 1703 | 7.32.2 | runtime | EXP_07_32_02_010_RUNTIME_RANGEERROR_COMPOUND_A.ets | 验证数组复合赋值在越界时的 RangeError：负索引（通过函数返回 -1）和索引 >= length 时应抛出 RangeError | runtime |
| 1704 | 7.32.2 | runtime | EXP_07_32_02_010_RUNTIME_RANGEERROR_COMPOUND_B.ets | 验证数组复合赋值索引 >= length 时的 RangeError | runtime |
| 1705 | 7.32.2 | runtime | EXP_07_7_32_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1706 | 7.32.2 | runtime | EXP_07_7_32_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1707 | 7.32.2 | runtime | EXP_07_7_32_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1708 | 7.32.2 | runtime | EXP_07_7_32_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1709 | 7.32.2 | runtime | EXP_07_7_32_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1710 | 7.32.2 | runtime | EXP_07_7_32_0015_RUNTIME_GEN_15.ets | 补充用例15 | runtime |
| 1711 | 7.32.2 | runtime | EXP_07_7_32_0016_RUNTIME_GEN_16.ets | 补充用例16 | runtime |
| 1712 | 7.32.2 | runtime | EXP_07_7_32_0017_RUNTIME_GEN_17.ets | 补充用例17 | runtime |
| 1713 | 7.32.3 | compile-pass | EXP_07_32_03_001_PASS_LHS_VARIABLE.ets | 左值：变量 | compile-pass |
| 1714 | 7.32.3 | compile-pass | EXP_07_32_03_001_PASS_VARIABLE_LHS.ets | 验证变量（Variable）作为左值表达式的编译通过：int、long、float、double、string、boolean 六种基本类型变量作为赋值目标 | compile-pass |
| 1715 | 7.32.3 | compile-pass | EXP_07_32_03_002_PASS_LHS_FIELD.ets | 左值：字段访问 | compile-pass |
| 1716 | 7.32.3 | compile-pass | EXP_07_32_03_002_PASS_PARAMETER_LHS.ets | 验证参数（Parameter，除 this 外）作为左值表达式的编译通过：函数参数、方法参数均可作为赋值目标 | compile-pass |
| 1717 | 7.32.3 | compile-pass | EXP_07_32_03_003_PASS_FIELD_ACCESS_LHS.ets | 验证字段访问（Field Access）作为左值表达式的编译通过：公有字段、嵌套字段、静态字段均可作为赋值目标 | compile-pass |
| 1718 | 7.32.3 | compile-pass | EXP_07_32_03_003_PASS_LHS_ARRAY.ets | 左值：数组元素 | compile-pass |
| 1719 | 7.32.3 | compile-pass | EXP_07_32_03_004_PASS_ARRAY_INDEX_LHS.ets | 验证数组索引访问（Array Indexing）作为左值表达式的编译通过：常量索引、变量索引均可作为赋值目标 | compile-pass |
| 1720 | 7.32.3 | compile-pass | EXP_07_32_03_005_PASS_RECORD_INDEX_LHS.ets | 验证记录索引访问（Record Indexing）作为左值表达式的编译通过：字符串字面量 key、变量 key 均可作为赋值目标 | compile-pass |
| 1721 | 7.32.3 | compile-pass | EXP_07_32_03_006_PASS_COMPOUND_INCREMENT_LHS.ets | 验证复合赋值（+=/-=/*=等）和自增自减（++/--）在有效左值上的编译通过：变量、字段、数组索引均可作为复合赋值/自增自减的目标 | compile-pass |
| 1722 | 7.32.3 | compile-pass | EXP_07_32_03_007_PASS_NESTED_LHS.ets | 验证嵌套左值表达式的编译通过：嵌套字段访问、字段中的数组索引、数组中的字段访问等组合形式 | compile-pass |
| 1723 | 7.32.3 | compile-pass | EXP_07_7_32_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1724 | 7.32.3 | compile-pass | EXP_07_7_32_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1725 | 7.32.3 | compile-pass | EXP_07_7_32_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1726 | 7.32.3 | compile-pass | EXP_07_7_32_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1727 | 7.32.3 | compile-pass | EXP_07_7_32_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1728 | 7.32.3 | compile-pass | EXP_07_7_32_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1729 | 7.32.3 | compile-pass | EXP_07_7_32_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1730 | 7.32.3 | compile-fail | EXP_07_32_03_004_FAIL_LHS_CHAINING.ets | chaining operator ?. 在左值中应产生编译错误 | compile-fail |
| 1731 | 7.32.3 | compile-fail | EXP_07_32_03_005_FAIL_LHS_LITERAL.ets | 字面量作为左值应产生编译错误 | compile-fail |
| 1732 | 7.32.3 | compile-fail | EXP_07_32_03_006_FAIL_LHS_CALL_RESULT.ets | 调用结果作为左值应产生编译错误 | compile-fail |
| 1733 | 7.32.3 | compile-fail | EXP_07_32_03_008_FAIL_LITERAL_LHS.ets | 验证数值/字符串/布尔字面量不能作为左值表达式：int 字面量 5、string 字面量 "hello"、boolean 字面量 true 等均不可出现在赋值左侧 | compile-fail |
| 1734 | 7.32.3 | compile-fail | EXP_07_32_03_009_FAIL_METHOD_CALL_LHS.ets | 验证方法/函数调用（Method/Function Call）不能作为左值表达式：函数调用 foo()、方法调用 obj.method() 均不可出现在赋值左侧 | compile-fail |
| 1735 | 7.32.3 | compile-fail | EXP_07_32_03_010_FAIL_ARITHMETIC_LHS.ets | 验证算术表达式（Arithmetic Expression）不能作为左值表达式：加法、减法、乘法等二元运算符表达式不可出现在赋值左侧 | compile-fail |
| 1736 | 7.32.3 | compile-fail | EXP_07_32_03_011_FAIL_CHAINING_OP_LHS.ets | 验证包含可选链运算符 ?. 的表达式不能作为左值：obj?.field、obj?.method() 等包含 ?. 的表达式不可出现在赋值左侧 | compile-fail |
| 1737 | 7.32.3 | compile-fail | EXP_07_32_03_012_FAIL_READONLY_LHS.ets | 验证只读实体（readonly）不能作为左值：const 常量、readonly 字段不可出现在赋值左侧 | compile-fail |
| 1738 | 7.32.3 | compile-fail | EXP_07_32_03_013_FAIL_LAMBDA_LHS.ets | 验证 Lambda 表达式不能作为左值表达式：Lambda（箭头函数）不可出现在赋值左侧 | compile-fail |
| 1739 | 7.32.3 | compile-fail | EXP_07_32_03_014_FAIL_ARRAY_LITERAL_LHS.ets | 验证数组字面量（Array Literal）不能作为左值表达式：[1, 2, 3] 不可出现在赋值左侧 | compile-fail |
| 1740 | 7.32.3 | compile-fail | EXP_07_32_03_015_FAIL_OBJECT_LITERAL_LHS.ets | 验证对象字面量（Object Literal）不能作为左值表达式：{a: 1, b: 2} 不可出现在赋值左侧 | compile-fail |
| 1741 | 7.32.3 | compile-fail | EXP_07_32_03_016_FAIL_TERNARY_LHS.ets | 验证三元条件表达式（Ternary Conditional）不能作为左值表达式：(cond ? a : b) 不可出现在赋值左侧 | compile-fail |
| 1742 | 7.32.3 | compile-fail | EXP_07_32_03_017_FAIL_NULLISH_COALESCING_LHS.ets | 验证 Nullish Coalescing 表达式（??）不能作为左值表达式：(a ?? b) 不可出现在赋值左侧 | compile-fail |
| 1743 | 7.32.3 | compile-fail | EXP_07_32_03_018_FAIL_INSTANCEOF_LHS.ets | 验证 instanceof 表达式不能作为左值表达式：(x instanceof T) 不可出现在赋值左侧 | compile-fail |
| 1744 | 7.32.3 | compile-fail | EXP_07_32_03_019_FAIL_TYPEOF_LHS.ets | 验证 typeof 表达式不能作为左值表达式：typeof x 不可出现在赋值左侧 | compile-fail |
| 1745 | 7.32.3 | compile-fail | EXP_07_32_03_020_FAIL_NEW_EXPRESSION_LHS.ets | 验证 new 表达式不能作为左值：new Foo() 不可出现在赋值左侧 | compile-fail |
| 1746 | 7.32.3 | compile-fail | EXP_07_32_03_021_FAIL_READONLY_FIELD_LHS.ets | 验证 readonly 字段/数组元素不能作为左值：readonly 字段的访问表达式不可出现在赋值左侧，readonly 数组元素也不可赋值 | compile-fail |
| 1747 | 7.32.3 | compile-fail | EXP_07_7_32_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1748 | 7.32.3 | compile-fail | EXP_07_7_32_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1749 | 7.32.3 | compile-fail | EXP_07_7_32_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1750 | 7.32.3 | compile-fail | EXP_07_7_32_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1751 | 7.32.3 | compile-fail | EXP_07_7_32_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1752 | 7.32.3 | compile-fail | EXP_07_7_32_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1753 | 7.32.3 | compile-fail | EXP_07_7_32_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1754 | 7.32.3 | runtime | EXP_07_32_03_007_RUNTIME_LHS_SETTER.ets | 左值：setter 访问器 | runtime |
| 1755 | 7.32.3 | runtime | EXP_07_32_03_022_RUNTIME_SEMANTICS.ets | 验证所有五种有效左值表达式的运行时赋值正确性：变量赋值、参数赋值、字段访问赋值、数组索引赋值、记录索引赋值，共 17 个断言 | runtime |
| 1756 | 7.32.3 | runtime | EXP_07_7_32_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1757 | 7.32.3 | runtime | EXP_07_7_32_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1758 | 7.32.3 | runtime | EXP_07_7_32_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1759 | 7.32.3 | runtime | EXP_07_7_32_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1760 | 7.32.3 | runtime | EXP_07_7_32_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1761 | 7.32.3 | runtime | EXP_07_7_32_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1762 | 7.32.3 | runtime | EXP_07_7_32_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1763 | 7.32.3 | runtime | EXP_07_7_32_0015_RUNTIME_GEN_15.ets | 补充用例15 | runtime |
| 1764 | 7.32.3 | runtime | EXP_07_7_32_0016_RUNTIME_GEN_16.ets | 补充用例16 | runtime |
| 1765 | 7.33 | compile-pass | EXP_07_33_001_PASS_TERNARY_BASIC.ets | 基本三元条件表达式 | compile-pass |
| 1766 | 7.33 | compile-pass | EXP_07_33_001_PASS_TRUE_COMPILE_TIME_TYPE.ets | 验证编译时条件为 true 时，三元表达式类型为 whenTrue 分支的类型：true ? "5" : 6 → string 类型 | compile-pass |
| 1767 | 7.33 | compile-pass | EXP_07_33_002_PASS_FALSE_COMPILE_TIME_TYPE.ets | 验证编译时条件为 false 时，三元表达式类型为 whenFalse 分支的类型：false ? "5" : 6 → int 类型 | compile-pass |
| 1768 | 7.33 | compile-pass | EXP_07_33_002_PASS_TERNARY_NESTED.ets | 嵌套三元条件（右结合） | compile-pass |
| 1769 | 7.33 | compile-pass | EXP_07_33_003_PASS_CONDITION_UNKNOWN_TYPE.ets | 验证编译时条件值未知时的类型推断：condition ? 5 : 6 → int（字面量 5\|6 归一化为 int）；condition ? new A() : new B() → A（B extends A 归一化）；condition ? "5" : 6 → string\|int | compile-pass |
| 1770 | 7.33 | compile-pass | EXP_07_33_003_PASS_TERNARY_COMPILE_KNOWN.ets | 编译期已知条件 → 类型收窄 | compile-pass |
| 1771 | 7.33 | compile-pass | EXP_07_33_004_PASS_MIXED_TYPES.ets | 验证三元条件表达式在不同类型组合时的编译通过：string\|int、float\|int、boolean 等混合类型 | compile-pass |
| 1772 | 7.33 | compile-pass | EXP_07_33_004_PASS_TERNARY_INT_CONDITION.ets | int 类型作为三元条件（es2panda 接受非 boolean 条件） | compile-pass |
| 1773 | 7.33 | compile-pass | EXP_07_33_005_PASS_NESTED_TERNARY.ets | 验证三元条件表达式的右结合性：a?b:c?d:e 等价于 a?b:(c?d:e)，嵌套多层三元表达式编译通过 | compile-pass |
| 1774 | 7.33 | compile-pass | EXP_07_33_006_PASS_SPEC_EXAMPLES.ets | 验证规范原文中的所有示例：condition?5:6→int、condition?"5":6→string\|int、true?"5":6→string、false?"5":6→int、condition?new A():new B()→A | compile-pass |
| 1775 | 7.33 | compile-pass | EXP_07_33_010_PASS_CONDITION_INT_TYPE.ets | 验证三元条件表达式允许 int 类型作为条件（ArkTS 扩展行为，与 JS 兼容） | compile-pass |
| 1776 | 7.33 | compile-pass | EXP_07_33_011_PASS_CONDITION_DOUBLE_TYPE.ets | 验证三元条件表达式允许 double 类型作为条件（ArkTS 扩展行为，与 JS 兼容） | compile-pass |
| 1777 | 7.33 | compile-pass | EXP_07_33_012_PASS_CONDITION_STRING_TYPE.ets | 验证三元条件表达式允许 string 类型作为条件（ArkTS 扩展行为，与 JS 兼容） | compile-pass |
| 1778 | 7.33 | compile-pass | EXP_07_33_013_PASS_CONDITION_OBJECT_TYPE.ets | 验证三元条件表达式允许对象类型作为条件（ArkTS 扩展行为，与 JS 兼容） | compile-pass |
| 1779 | 7.33 | compile-pass | EXP_07_7_33_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1780 | 7.33 | compile-pass | EXP_07_7_33_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1781 | 7.33 | compile-pass | EXP_07_7_33_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1782 | 7.33 | compile-pass | EXP_07_7_33_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1783 | 7.33 | compile-pass | EXP_07_7_33_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1784 | 7.33 | compile-pass | EXP_07_7_33_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1785 | 7.33 | compile-fail | EXP_07_33_014_FAIL_TYPE_MISMATCH_ASSIGNMENT.ets | 验证三元表达式结果类型为联合类型时，赋值给不兼容的单一类型应产生编译时错误：condition?"hello":42 → string\|int 不可赋值给 int | compile-fail |
| 1786 | 7.33 | compile-fail | EXP_07_7_33_0001_FAIL_GEN_1.ets | 补充用例1 | compile-fail |
| 1787 | 7.33 | compile-fail | EXP_07_7_33_0002_FAIL_GEN_2.ets | 补充用例2 | compile-fail |
| 1788 | 7.33 | compile-fail | EXP_07_7_33_0003_FAIL_GEN_3.ets | 补充用例3 | compile-fail |
| 1789 | 7.33 | compile-fail | EXP_07_7_33_0004_FAIL_GEN_4.ets | 补充用例4 | compile-fail |
| 1790 | 7.33 | compile-fail | EXP_07_7_33_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1791 | 7.33 | compile-fail | EXP_07_7_33_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1792 | 7.33 | compile-fail | EXP_07_7_33_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1793 | 7.33 | compile-fail | EXP_07_7_33_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1794 | 7.33 | compile-fail | EXP_07_7_33_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1795 | 7.33 | compile-fail | EXP_07_7_33_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1796 | 7.33 | runtime | EXP_07_33_005_RUNTIME_TERNARY_SHORTCIRCUIT.ets | 三元条件仅评估一个分支（短路） | runtime |
| 1797 | 7.33 | runtime | EXP_07_33_006_RUNTIME_TERNARY_UNION_TYPE.ets | 三元联合类型（未知条件） | runtime |
| 1798 | 7.33 | runtime | EXP_07_33_015_RUNTIME_TRUE_CONDITION_VALUE.ets | 验证三元条件表达式当 condition=true 时：选择 whenTrue 分支求值，返回 whenTrue 的值，whenFalse 不执行 | runtime |
| 1799 | 7.33 | runtime | EXP_07_33_016_RUNTIME_FALSE_CONDITION_VALUE.ets | 验证三元条件表达式当 condition=false 时：选择 whenFalse 分支求值，返回 whenFalse 的值，whenTrue 不执行 | runtime |
| 1800 | 7.33 | runtime | EXP_07_33_017_RUNTIME_SHORT_CIRCUIT_SIDE_EFFECT.ets | 验证三元条件表达式的短路求值：condition=true 时 whenFalse 不执行（无副作用）；condition=false 时 whenTrue 不执行（无副作用） | runtime |
| 1801 | 7.33 | runtime | EXP_07_33_018_RUNTIME_NESTED_TERNARY.ets | 验证三元条件表达式的右结合性运行时行为：a?b:c?d:e 等价于 a?b:(c?d:e)；多层嵌套的正确求值 | runtime |
| 1802 | 7.33 | runtime | EXP_07_33_019_RUNTIME_SPEC_EXAMPLES.ets | 验证规范 7.33 中示例表达式的运行时值：true?"5":6→"5"、false?"5":6→6、condition?5:6→5或6、condition?"5":6→"5"或6 | runtime |
| 1803 | 7.33 | runtime | EXP_07_7_33_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1804 | 7.33 | runtime | EXP_07_7_33_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1805 | 7.33 | runtime | EXP_07_7_33_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1806 | 7.33 | runtime | EXP_07_7_33_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1807 | 7.33 | runtime | EXP_07_7_33_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1808 | 7.33 | runtime | EXP_07_7_33_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1809 | 7.33 | runtime | EXP_07_7_33_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1810 | 7.33 | runtime | EXP_07_7_33_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1811 | 7.34 | compile-pass | EXP_07_34_001_PASS_BASIC_INTERPOLATION.ets | 验证基本类型变量在字符串插值中的编译通过：string、int、long、float、double、boolean 六种基本类型均可作为嵌入表达式 | compile-pass |
| 1812 | 7.34 | compile-pass | EXP_07_34_001_PASS_INTERPOLATION_BASIC.ets | 基本字符串插值 \ | compile-pass |
| 1813 | 7.34 | compile-pass | EXP_07_34_002_PASS_ARITHMETIC_INTERPOLATION.ets | 验证算术表达式在字符串插值中的编译通过：嵌入加法、乘法、除法、减法等算术表达式，结果自动转换为字符串 | compile-pass |
| 1814 | 7.34 | compile-pass | EXP_07_34_002_PASS_INTERPOLATION_EXPR.ets | 嵌入表达式求值 | compile-pass |
| 1815 | 7.34 | compile-pass | EXP_07_34_003_PASS_INTERPOLATION_NESTED.ets | 嵌套多行字符串插值 | compile-pass |
| 1816 | 7.34 | compile-pass | EXP_07_34_003_PASS_MULTIPLE_EXPRESSIONS.ets | 验证多个嵌入表达式在同一字符串中的编译通过：三个及以上的 ${} 嵌入表达式，连续无分隔符的嵌入 | compile-pass |
| 1817 | 7.34 | compile-pass | EXP_07_34_004_PASS_METHOD_CALL_INTERPOLATION.ets | 验证方法/函数调用作为嵌入表达式的编译通过：函数返回值、方法返回值自动转换为字符串 | compile-pass |
| 1818 | 7.34 | compile-pass | EXP_07_34_005_PASS_BOOLEAN_NULL_INTERPOLATION.ets | 验证布尔值、null、undefined 在字符串插值中的编译通过：boolean 转为 "true"/"false"，nullish 值转为对应字面量 | compile-pass |
| 1819 | 7.34 | compile-pass | EXP_07_34_006_PASS_FIELD_ARRAY_INTERPOLATION.ets | 验证对象字段访问和数组元素访问在字符串插值中的编译通过：obj.field、arr[idx] 均可作为嵌入表达式 | compile-pass |
| 1820 | 7.34 | compile-pass | EXP_07_34_007_PASS_NESTED_BACKTICK.ets | 验证嵌套反引号字符串在字符串插值中的编译通过：嵌入表达式可以是反引号多行字符串，也可包含嵌套的插值 | compile-pass |
| 1821 | 7.34 | compile-pass | EXP_07_34_008_PASS_PLAIN_BACKTICK.ets | 验证纯多行反引号字符串（不含嵌入表达式）的编译通过：反引号可作为普通多行字符串字面量使用 | compile-pass |
| 1822 | 7.34 | compile-pass | EXP_07_34_009_PASS_CONCAT_EQUIVALENT.ets | 验证字符串插值与字符串拼接运算符的等价性：插值表达式可以用 + 运算符重写，结果类型均为 string | compile-pass |
| 1823 | 7.34 | compile-pass | EXP_07_34_010_PASS_COMPLEX_EXPRESSIONS.ets | 验证复杂表达式在字符串插值中的编译通过：三元条件、逻辑运算、类型转换等复杂表达式嵌入 | compile-pass |
| 1824 | 7.34 | compile-pass | EXP_07_7_34_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1825 | 7.34 | compile-pass | EXP_07_7_34_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1826 | 7.34 | compile-pass | EXP_07_7_34_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1827 | 7.34 | compile-pass | EXP_07_7_34_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1828 | 7.34 | compile-pass | EXP_07_7_34_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1829 | 7.34 | compile-pass | EXP_07_7_34_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1830 | 7.34 | compile-pass | EXP_07_7_34_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1831 | 7.34 | compile-fail | EXP_07_34_004_FAIL_INTERPOLATION_UNTERMINATED.ets | 未闭合的字符串插值应产生编译错误 | compile-fail |
| 1832 | 7.34 | compile-fail | EXP_07_34_011_FAIL_TYPE_ERROR_IN_EXPRESSION.ets | 验证嵌入表达式中的类型错误应产生编译时错误：在 int 类型上调用 string 类型的方法（如 substring）应报错 | compile-fail |
| 1833 | 7.34 | compile-fail | EXP_07_34_012_FAIL_ASSIGN_TO_NON_STRING.ets | 验证字符串插值结果（类型为 string）不能赋值给非 string 类型的变量，如 int | compile-fail |
| 1834 | 7.34 | compile-fail | EXP_07_7_34_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1835 | 7.34 | compile-fail | EXP_07_7_34_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1836 | 7.34 | compile-fail | EXP_07_7_34_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1837 | 7.34 | compile-fail | EXP_07_7_34_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1838 | 7.34 | compile-fail | EXP_07_7_34_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1839 | 7.34 | compile-fail | EXP_07_7_34_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1840 | 7.34 | compile-fail | EXP_07_7_34_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1841 | 7.34 | compile-fail | EXP_07_7_34_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1842 | 7.34 | compile-fail | EXP_07_7_34_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1843 | 7.34 | runtime | EXP_07_34_005_RUNTIME_INTERPOLATION_IMPLICIT.ets | 隐式转 string 的嵌入表达式 | runtime |
| 1844 | 7.34 | runtime | EXP_07_34_013_RUNTIME_SEMANTICS.ets | 验证字符串插值表达式在运行时的求值正确性：12 个断言覆盖变量插值、算术表达式、多表达式、布尔值、方法返回值、字段访问、数组索引、拼接等价 | runtime |
| 1845 | 7.34 | runtime | EXP_07_7_34_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 1846 | 7.34 | runtime | EXP_07_7_34_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1847 | 7.34 | runtime | EXP_07_7_34_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1848 | 7.34 | runtime | EXP_07_7_34_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1849 | 7.34 | runtime | EXP_07_7_34_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1850 | 7.34 | runtime | EXP_07_7_34_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1851 | 7.34 | runtime | EXP_07_7_34_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1852 | 7.34 | runtime | EXP_07_7_34_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1853 | 7.34 | runtime | EXP_07_7_34_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1854 | 7.35 | compile-pass | EXP_07_35_001_PASS_LAMBDA_BLOCK_BODY.ets | Lambda 表达式块体 | compile-pass |
| 1855 | 7.35 | compile-pass | EXP_07_35_002_PASS_LAMBDA_EXPR_BODY.ets | Lambda 表达式表达式体（隐式 return） | compile-pass |
| 1856 | 7.35 | compile-pass | EXP_07_35_003_PASS_LAMBDA_SHORTEST.ets | Lambda 最短形式（e => e） | compile-pass |
| 1857 | 7.35 | compile-pass | EXP_07_35_004_PASS_LAMBDA_ANNOTATION.ets | Lambda 参数类型标注 | compile-pass |
| 1858 | 7.35 | compile-pass | EXP_07_7_35_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1859 | 7.35 | compile-pass | EXP_07_7_35_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1860 | 7.35 | compile-pass | EXP_07_7_35_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1861 | 7.35 | compile-pass | EXP_07_7_35_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1862 | 7.35 | compile-pass | EXP_07_7_35_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1863 | 7.35 | compile-pass | EXP_07_7_35_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1864 | 7.35 | compile-fail | EXP_07_35_005_FAIL_LAMBDA_DUPLICATE_PARAM.ets | Lambda 参数重名应产生编译错误 | compile-fail |
| 1865 | 7.35 | compile-fail | EXP_07_7_35_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1866 | 7.35 | compile-fail | EXP_07_7_35_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1867 | 7.35 | compile-fail | EXP_07_7_35_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1868 | 7.35 | compile-fail | EXP_07_7_35_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1869 | 7.35 | compile-fail | EXP_07_7_35_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1870 | 7.35 | compile-fail | EXP_07_7_35_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1871 | 7.35 | compile-fail | EXP_07_7_35_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1872 | 7.35 | compile-fail | EXP_07_7_35_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1873 | 7.35 | compile-fail | EXP_07_7_35_0014_FAIL_GEN_14.ets | 补充用例14 | compile-fail |
| 1874 | 7.35 | runtime | EXP_07_7_35_0001_RUNTIME_GEN_1.ets | 补充用例1 | runtime |
| 1875 | 7.35 | runtime | EXP_07_7_35_0002_RUNTIME_GEN_2.ets | 补充用例2 | runtime |
| 1876 | 7.35 | runtime | EXP_07_7_35_0003_RUNTIME_GEN_3.ets | 补充用例3 | runtime |
| 1877 | 7.35 | runtime | EXP_07_7_35_0004_RUNTIME_GEN_4.ets | 补充用例4 | runtime |
| 1878 | 7.35 | runtime | EXP_07_7_35_0005_RUNTIME_GEN_5.ets | 补充用例5 | runtime |
| 1879 | 7.35 | runtime | EXP_07_7_35_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 1880 | 7.35 | runtime | EXP_07_7_35_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1881 | 7.35 | runtime | EXP_07_7_35_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1882 | 7.35 | runtime | EXP_07_7_35_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1883 | 7.35 | runtime | EXP_07_7_35_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1884 | 7.35.1 | compile-pass | EXP_07_35_01_001_PASS_LAMBDA_TYPED_PARAMS.ets | Lambda 签名含完整类型标注 | compile-pass |
| 1885 | 7.35.1 | compile-pass | EXP_07_35_01_001_PASS_SINGLE_PARAM_INFERRED.ets | 验证单参数 Lambda 的类型从目标类型上下文推断：参数无显式类型注解，由赋值目标类型提供上下文推断 | compile-pass |
| 1886 | 7.35.1 | compile-pass | EXP_07_35_01_002_PASS_LAMBDA_INFERRED.ets | Lambda 签名类型推断（省略类型） | compile-pass |
| 1887 | 7.35.1 | compile-pass | EXP_07_35_01_002_PASS_TYPED_PARAMETERS.ets | 验证 Lambda 参数带有显式类型注解的多种类型：int/string/boolean/long/double 均可作为参数类型 | compile-pass |
| 1888 | 7.35.1 | compile-pass | EXP_07_35_01_003_PASS_LAMBDA_REST_PARAM.ets | Lambda 剩余参数 | compile-pass |
| 1889 | 7.35.1 | compile-pass | EXP_07_35_01_003_PASS_MULTI_PARAM_WITH_TYPES.ets | 验证多参数 Lambda 带显式类型注解：同类型和混合类型的多参数签名 | compile-pass |
| 1890 | 7.35.1 | compile-pass | EXP_07_35_01_004_PASS_NO_PARAMS.ets | 验证空参数列表 Lambda () => expr 的正确性，包括不同返回类型的无参 Lambda | compile-pass |
| 1891 | 7.35.1 | compile-pass | EXP_07_35_01_005_PASS_RETURN_TYPE_ANNOTATION.ets | 验证 Lambda 表达式带显式返回类型注解 (params): ReturnType => body 的多种场景 | compile-pass |
| 1892 | 7.35.1 | compile-pass | EXP_07_35_01_006_PASS_GENERIC_LAMBDA_INFERENCE.ets | 验证泛型函数上下文中 Lambda 参数类型的推断：泛型类型参数 T 为 Lambda 提供参数类型上下文 | compile-pass |
| 1893 | 7.35.1 | compile-pass | EXP_07_35_01_007_PASS_MULTI_PARAM_INFERRED.ets | 验证多参数 Lambda 的类型从目标类型上下文推断，参数名与目标类型参数名可以不同 | compile-pass |
| 1894 | 7.35.1 | compile-pass | EXP_07_7_35_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1895 | 7.35.1 | compile-pass | EXP_07_7_35_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1896 | 7.35.1 | compile-pass | EXP_07_7_35_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1897 | 7.35.1 | compile-pass | EXP_07_7_35_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1898 | 7.35.1 | compile-pass | EXP_07_7_35_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1899 | 7.35.1 | compile-pass | EXP_07_7_35_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1900 | 7.35.1 | compile-pass | EXP_07_7_35_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1901 | 7.35.1 | compile-fail | EXP_07_35_01_004_FAIL_LAMBDA_NO_TYPE.ets | Lambda 无类型且无法推断应产生编译错误 | compile-fail |
| 1902 | 7.35.1 | compile-fail | EXP_07_35_01_008_FAIL_DUPLICATE_PARAM_NAME.ets | 验证 Lambda 表达式声明两个同名的形式参数时产生编译时错误 | compile-fail |
| 1903 | 7.35.1 | compile-fail | EXP_07_35_01_009_FAIL_TRIPLE_DUPLICATE_PARAM_NAME.ets | 验证 Lambda 表达式多个形式参数中存在同名参数（三个参数中两个同名）时产生编译时错误 | compile-fail |
| 1904 | 7.35.1 | compile-fail | EXP_07_35_01_010_FAIL_NO_TYPE_NO_INFERENCE.ets | 验证形式参数未提供类型且无法通过类型推断推导时产生编译时错误：独立 Lambda 无目标类型上下文 | compile-fail |
| 1905 | 7.35.1 | compile-fail | EXP_07_35_01_011_FAIL_MULTI_PARAM_NO_INFERENCE.ets | 验证多参数 Lambda 未提供参数类型且无法通过类型推断推导时产生编译时错误 | compile-fail |
| 1906 | 7.35.1 | compile-fail | EXP_07_7_35_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1907 | 7.35.1 | compile-fail | EXP_07_7_35_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1908 | 7.35.1 | compile-fail | EXP_07_7_35_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1909 | 7.35.1 | compile-fail | EXP_07_7_35_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1910 | 7.35.1 | compile-fail | EXP_07_7_35_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1911 | 7.35.1 | compile-fail | EXP_07_7_35_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1912 | 7.35.1 | compile-fail | EXP_07_7_35_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1913 | 7.35.1 | compile-fail | EXP_07_7_35_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1914 | 7.35.1 | compile-fail | EXP_07_7_35_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1915 | 7.35.1 | runtime | EXP_07_35_01_005_RUNTIME_LAMBDA_GENERIC.ets | Lambda 泛型类型推断 | runtime |
| 1916 | 7.35.1 | runtime | EXP_07_35_01_012_RUNTIME_SEMANTICS.ets | 运行时验证各种 Lambda 签名形式的创建和调用语义正确性：类型推断参数/显式类型参数/多参数/无参/返回类型注解 | runtime |
| 1917 | 7.35.1 | runtime | EXP_07_7_35_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 1918 | 7.35.1 | runtime | EXP_07_7_35_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1919 | 7.35.1 | runtime | EXP_07_7_35_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1920 | 7.35.1 | runtime | EXP_07_7_35_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1921 | 7.35.1 | runtime | EXP_07_7_35_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1922 | 7.35.1 | runtime | EXP_07_7_35_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1923 | 7.35.1 | runtime | EXP_07_7_35_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1924 | 7.35.1 | runtime | EXP_07_7_35_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1925 | 7.35.1 | runtime | EXP_07_7_35_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1926 | 7.35.2 | compile-pass | EXP_07_35_02_001_PASS_EXPRESSION_BODY.ets | 验证 Lambda 单表达式体（single-expression body）的多种类型：int/string/boolean/double 均可作为单表达式体 | compile-pass |
| 1927 | 7.35.2 | compile-pass | EXP_07_35_02_001_PASS_LAMBDA_EXPR_VOID_CALL.ets | Lambda 体为 void 调用表达式 | compile-pass |
| 1928 | 7.35.2 | compile-pass | EXP_07_35_02_002_PASS_BLOCK_BODY_RETURN.ets | 验证 Lambda 块体（block body）带显式 return 语句的正确用法 | compile-pass |
| 1929 | 7.35.2 | compile-pass | EXP_07_35_02_002_PASS_LAMBDA_CAPTURE_LOCAL.ets | Lambda 捕获外部局部变量 | compile-pass |
| 1930 | 7.35.2 | compile-pass | EXP_07_35_02_003_PASS_BLOCK_BODY_MULTI_STMT.ets | 验证 Lambda 块体包含多条语句（局部变量声明 + 计算 + return）的正确用法 | compile-pass |
| 1931 | 7.35.2 | compile-pass | EXP_07_35_02_003_PASS_LAMBDA_CAPTURE_THIS.ets | Lambda 捕获 this | compile-pass |
| 1932 | 7.35.2 | compile-pass | EXP_07_35_02_004_PASS_CAPTURE_LOCAL_VAR.ets | 验证 Lambda 体捕获外围方法中的局部变量。外围局部变量在 lambda 体中使用但不声明，应被捕获 | compile-pass |
| 1933 | 7.35.2 | compile-pass | EXP_07_35_02_005_PASS_CAPTURE_INSTANCE_FIELD.ets | 验证 Lambda 体捕获外围类型的实例成员（即隐式捕获 this）。实例字段在 lambda 体中使用时 this 被捕获 | compile-pass |
| 1934 | 7.35.2 | compile-pass | EXP_07_35_02_006_PASS_VOID_CALL_EXPR_BODY.ets | 验证 Lambda 体为 void 调用表达式时的处理规则。若表达式是返回类型为 void 的调用表达式，体等价于 { expression; } | compile-pass |
| 1935 | 7.35.2 | compile-pass | EXP_07_35_02_007_PASS_VOID_EMPTY_BLOCK.ets | 验证 void 返回类型的 Lambda 可以使用空块体 `(): void => {}`。Spec 规定只有非 void/non-never 返回类型才要求 return 或单表达式体 | compile-pass |
| 1936 | 7.35.2 | compile-pass | EXP_07_35_02_008_PASS_NO_PARAMS_BLOCK_BODY.ets | 验证无参数 Lambda 使用块体的正确用法 | compile-pass |
| 1937 | 7.35.2 | compile-pass | EXP_07_7_35_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1938 | 7.35.2 | compile-pass | EXP_07_7_35_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1939 | 7.35.2 | compile-pass | EXP_07_7_35_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1940 | 7.35.2 | compile-pass | EXP_07_7_35_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1941 | 7.35.2 | compile-pass | EXP_07_7_35_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1942 | 7.35.2 | compile-pass | EXP_07_7_35_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1943 | 7.35.2 | compile-pass | EXP_07_7_35_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1944 | 7.35.2 | compile-fail | EXP_07_35_02_004_FAIL_LAMBDA_NO_RETURN.ets | 非 void Lambda 无 return 应产生编译错误 | compile-fail |
| 1945 | 7.35.2 | compile-fail | EXP_07_35_02_009_FAIL_UNINIT_LOCAL_CAPTURE.ets | 验证局部变量未在 lambda 中声明且未在之前赋值时，在 lambda 体中使用产生编译时错误 | compile-fail（⚠️ SPEC不一致，见 issue_report） |
| 1946 | 7.35.2 | compile-fail | EXP_07_35_02_010_FAIL_MISSING_RETURN_BLOCK.ets | 验证 Lambda 返回类型既不是 void 也不是 never 时，若块体没有 return 语句且不是单表达式体则产生编译时错误 | compile-fail |
| 1947 | 7.35.2 | compile-fail | EXP_07_35_02_011_FAIL_VOID_STMT_NO_RETURN.ets | 验证 Lambda 返回类型非 void/non-never 时，块体仅有 void 语句没有 return 则产生编译时错误 | compile-fail |
| 1948 | 7.35.2 | compile-fail | EXP_07_7_35_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1949 | 7.35.2 | compile-fail | EXP_07_7_35_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1950 | 7.35.2 | compile-fail | EXP_07_7_35_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1951 | 7.35.2 | compile-fail | EXP_07_7_35_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1952 | 7.35.2 | compile-fail | EXP_07_7_35_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1953 | 7.35.2 | compile-fail | EXP_07_7_35_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1954 | 7.35.2 | compile-fail | EXP_07_7_35_0011_FAIL_GEN_11.ets | 补充用例11 | compile-fail |
| 1955 | 7.35.2 | compile-fail | EXP_07_7_35_0012_FAIL_GEN_12.ets | 补充用例12 | compile-fail |
| 1956 | 7.35.2 | compile-fail | EXP_07_7_35_0013_FAIL_GEN_13.ets | 补充用例13 | compile-fail |
| 1957 | 7.35.2 | runtime | EXP_07_35_02_005_RUNTIME_LAMBDA_CAPTURE.ets | Lambda 捕获变量为引用非拷贝 | runtime |
| 1958 | 7.35.2 | runtime | EXP_07_35_02_012_RUNTIME_SEMANTICS.ets | 运行时验证各种 Lambda 体形式的执行语义：单表达式体、块体 + return、块体多语句、捕获局部变量、捕获实例字段、无参块体 | runtime |
| 1959 | 7.35.2 | runtime | EXP_07_7_35_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 1960 | 7.35.2 | runtime | EXP_07_7_35_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 1961 | 7.35.2 | runtime | EXP_07_7_35_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 1962 | 7.35.2 | runtime | EXP_07_7_35_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 1963 | 7.35.2 | runtime | EXP_07_7_35_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 1964 | 7.35.2 | runtime | EXP_07_7_35_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 1965 | 7.35.2 | runtime | EXP_07_7_35_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 1966 | 7.35.2 | runtime | EXP_07_7_35_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 1967 | 7.35.2 | runtime | EXP_07_7_35_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 1968 | 7.35.3 | compile-pass | EXP_07_35_03_001_PASS_EXPLICIT_RETURN_TYPE.ets | 验证 Lambda 表达式显式返回类型标注与函数类型变量匹配的各种情况 | compile-pass |
| 1969 | 7.35.3 | compile-pass | EXP_07_35_03_001_PASS_LAMBDA_TYPE_FUNC.ets | Lambda 类型为函数类型 | compile-pass |
| 1970 | 7.35.3 | compile-pass | EXP_07_35_03_002_PASS_INFERRED_RETURN_EXPR.ets | 验证 Lambda 表达式体可推断返回类型 — 省略返回类型标注，由表达式体类型推断 | compile-pass |
| 1971 | 7.35.3 | compile-pass | EXP_07_35_03_002_PASS_LAMBDA_RETURN_INFERRED.ets | Lambda 返回类型从体推断 | compile-pass |
| 1972 | 7.35.3 | compile-pass | EXP_07_35_03_003_PASS_INFERRED_RETURN_BLOCK.ets | 验证 Lambda 块体带 return 时可推断返回类型 — 省略返回类型标注 | compile-pass |
| 1973 | 7.35.3 | compile-pass | EXP_07_35_03_004_PASS_CONTEXT_INFERRED_PARAM.ets | 验证 Lambda 参数类型可以从上下文（函数类型变量声明）推断，无需显式标注 | compile-pass |
| 1974 | 7.35.3 | compile-pass | EXP_07_35_03_005_PASS_NO_PARAM_LAMBDA.ets | 验证无参 Lambda 表达式的类型（多种返回类型） | compile-pass |
| 1975 | 7.35.3 | compile-pass | EXP_07_35_03_006_PASS_VOID_RETURN_TYPE.ets | 验证 void 返回类型 Lambda 表达式的类型 — void 是有效函数类型返回类型 | compile-pass |
| 1976 | 7.35.3 | compile-pass | EXP_07_35_03_007_PASS_LAMBDA_AS_PARAM_RETURN.ets | 验证 Lambda 表达式作为函数参数和返回类型（高阶函数）的类型正确性 | compile-pass |
| 1977 | 7.35.3 | compile-pass | EXP_07_7_35_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 1978 | 7.35.3 | compile-pass | EXP_07_7_35_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 1979 | 7.35.3 | compile-pass | EXP_07_7_35_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 1980 | 7.35.3 | compile-pass | EXP_07_7_35_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 1981 | 7.35.3 | compile-pass | EXP_07_7_35_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 1982 | 7.35.3 | compile-pass | EXP_07_7_35_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 1983 | 7.35.3 | compile-pass | EXP_07_7_35_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 1984 | 7.35.3 | compile-pass | EXP_07_7_35_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 1985 | 7.35.3 | compile-fail | EXP_07_35_03_008_FAIL_PARAM_TYPE_MISMATCH.ets | 验证 Lambda 表达式参数类型与目标函数类型不匹配时产生编译时错误 | compile-fail |
| 1986 | 7.35.3 | compile-fail | EXP_07_35_03_009_FAIL_RETURN_TYPE_MISMATCH.ets | 验证 Lambda 表达式返回类型与目标函数类型不匹配时产生编译时错误 | compile-fail |
| 1987 | 7.35.3 | compile-fail | EXP_07_35_03_010_FAIL_PARAM_COUNT_MISMATCH.ets | 验证 Lambda 表达式参数数量与目标函数类型不匹配时产生编译时错误 | compile-fail |
| 1988 | 7.35.3 | compile-fail | EXP_07_7_35_0001_FAIL_GEN_1.ets | 补充用例1 | compile-fail |
| 1989 | 7.35.3 | compile-fail | EXP_07_7_35_0002_FAIL_GEN_2.ets | 补充用例2 | compile-fail |
| 1990 | 7.35.3 | compile-fail | EXP_07_7_35_0003_FAIL_GEN_3.ets | 补充用例3 | compile-fail |
| 1991 | 7.35.3 | compile-fail | EXP_07_7_35_0004_FAIL_GEN_4.ets | 补充用例4 | compile-fail |
| 1992 | 7.35.3 | compile-fail | EXP_07_7_35_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 1993 | 7.35.3 | compile-fail | EXP_07_7_35_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 1994 | 7.35.3 | compile-fail | EXP_07_7_35_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 1995 | 7.35.3 | compile-fail | EXP_07_7_35_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 1996 | 7.35.3 | compile-fail | EXP_07_7_35_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 1997 | 7.35.3 | compile-fail | EXP_07_7_35_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 1998 | 7.35.3 | runtime | EXP_07_35_03_003_RUNTIME_LAMBDA_TYPE_CHECK.ets | Lambda 类型为函数类型运行时验证 | runtime |
| 1999 | 7.35.3 | runtime | EXP_07_35_03_011_RUNTIME_SEMANTICS.ets | 验证 Lambda 表达式类型在运行时语义的正确性：显式类型、推断类型、参数传递等 | runtime |
| 2000 | 7.35.3 | runtime | EXP_07_7_35_0004_RUNTIME_GEN_4.ets | 补充用例4 | runtime |
| 2001 | 7.35.3 | runtime | EXP_07_7_35_0005_RUNTIME_GEN_5.ets | 补充用例5 | runtime |
| 2002 | 7.35.3 | runtime | EXP_07_7_35_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 2003 | 7.35.3 | runtime | EXP_07_7_35_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 2004 | 7.35.3 | runtime | EXP_07_7_35_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 2005 | 7.35.3 | runtime | EXP_07_7_35_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 2006 | 7.35.3 | runtime | EXP_07_7_35_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 2007 | 7.35.3 | runtime | EXP_07_7_35_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 2008 | 7.35.3 | runtime | EXP_07_7_35_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 2009 | 7.35.4 | compile-pass | EXP_07_35_04_001_PASS_LAMBDA_EVAL_NO_BODY.ets | 验证 lambda 表达式求值本身不会执行 lambda 体：定义 lambda 并赋值给变量编译通过 | compile-pass |
| 2010 | 7.35.4 | compile-pass | EXP_07_35_04_001_PASS_LAMBDA_NEW_INSTANCE.ets | 每次 Lambda 求值创建新实例 | compile-pass |
| 2011 | 7.35.4 | compile-pass | EXP_07_35_04_002_PASS_LAMBDA_UNINITIALIZED_CAPTURE.ets | Lambda 捕获未初始化变量 — es2panda 编译通过 | compile-pass |
| 2012 | 7.35.4 | compile-pass | EXP_07_35_04_002_PASS_VARIABLE_CAPTURE_DECL.ets | 验证变量捕获声明编译通过：lambda 捕获外部 let 变量 | compile-pass |
| 2013 | 7.35.4 | compile-pass | EXP_07_7_35_0003_PASS_GEN_3.ets | 补充用例3 | compile-pass |
| 2014 | 7.35.4 | compile-pass | EXP_07_7_35_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 2015 | 7.35.4 | compile-pass | EXP_07_7_35_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 2016 | 7.35.4 | compile-pass | EXP_07_7_35_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 2017 | 7.35.4 | compile-pass | EXP_07_7_35_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 2018 | 7.35.4 | compile-pass | EXP_07_7_35_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 2019 | 7.35.4 | compile-pass | EXP_07_7_35_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 2020 | 7.35.4 | compile-pass | EXP_07_7_35_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 2021 | 7.35.4 | compile-fail | EXP_07_7_35_0001_FAIL_GEN_1.ets | 补充用例1 | compile-fail |
| 2022 | 7.35.4 | compile-fail | EXP_07_7_35_0002_FAIL_GEN_2.ets | 补充用例2 | compile-fail |
| 2023 | 7.35.4 | compile-fail | EXP_07_7_35_0003_FAIL_GEN_3.ets | 补充用例3 | compile-fail |
| 2024 | 7.35.4 | compile-fail | EXP_07_7_35_0004_FAIL_GEN_4.ets | 补充用例4 | compile-fail |
| 2025 | 7.35.4 | compile-fail | EXP_07_7_35_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 2026 | 7.35.4 | compile-fail | EXP_07_7_35_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 2027 | 7.35.4 | compile-fail | EXP_07_7_35_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 2028 | 7.35.4 | compile-fail | EXP_07_7_35_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 2029 | 7.35.4 | compile-fail | EXP_07_7_35_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 2030 | 7.35.4 | compile-fail | EXP_07_7_35_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 2031 | 7.35.4 | runtime | EXP_07_35_04_003_RUNTIME_LAMBDA_EVAL_INSTANCE.ets | 验证 lambda 表达式求值产生函数类型实例且不执行体，调用时体才执行 | runtime |
| 2032 | 7.35.4 | runtime | EXP_07_35_04_003_RUNTIME_LAMBDA_FACTORY.ets | Lambda 工厂每次创建独立作用域 | runtime |
| 2033 | 7.35.4 | runtime | EXP_07_35_04_004_RUNTIME_CAPTURE_SEMANTICS.ets | 验证捕获变量不是拷贝：修改捕获变量反映到原始变量（对应 spec 示例 1-2） | runtime |
| 2034 | 7.35.4 | runtime | EXP_07_35_04_004_RUNTIME_LAMBDA_LOOP_CAPTURE.ets | Lambda 捕获变量为引用（非拷贝）——修改外部变量影响 Lambda 内部值 | runtime |
| 2035 | 7.35.4 | runtime | EXP_07_35_04_005_RUNTIME_FUNCTION_SCOPE_CAPTURE.ets | 验证函数作用域捕获：每次调用 capturingFunction 产生独立捕获变量（对应 spec 示例 3） | runtime |
| 2036 | 7.35.4 | runtime | EXP_07_35_04_006_RUNTIME_LOOP_SCOPE_CAPTURE.ets | 验证循环作用域捕获：每次循环迭代捕获不同的 index 值（对应 spec 示例 4） | runtime |
| 2037 | 7.35.4 | runtime | EXP_07_7_35_0005_RUNTIME_GEN_5.ets | 补充用例5 | runtime |
| 2038 | 7.35.4 | runtime | EXP_07_7_35_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 2039 | 7.35.4 | runtime | EXP_07_7_35_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 2040 | 7.35.4 | runtime | EXP_07_7_35_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 2041 | 7.35.4 | runtime | EXP_07_7_35_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 2042 | 7.35.4 | runtime | EXP_07_7_35_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 2043 | 7.35.4 | runtime | EXP_07_7_35_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 2044 | 7.35.4 | runtime | EXP_07_7_35_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 2045 | 7.36 | compile-pass | EXP_07_36_001_PASS_CONST_LITERAL.ets | 常量表达式：字面量 | compile-pass |
| 2046 | 7.36 | compile-pass | EXP_07_36_002_PASS_CONST_REF.ets | 常量表达式：引用其他常量 | compile-pass |
| 2047 | 7.36 | compile-pass | EXP_07_36_003_PASS_CONST_COMPLEX.ets | 常量表达式：复杂运算组合 | compile-pass |
| 2048 | 7.36 | compile-pass | EXP_07_36_004_PASS_CONST_PAREN.ets | 常量表达式：括号表达式 | compile-pass |
| 2049 | 7.36 | compile-pass | EXP_07_36_005_PASS_CONST_INCREMENT.ets | 常量表达式使用 ++ — es2panda 未禁止 | compile-pass |
| 2050 | 7.36 | compile-pass | EXP_07_36_006_PASS_CONST_DECREMENT.ets | 常量表达式使用 -- — es2panda 未禁止 | compile-pass |
| 2051 | 7.36 | compile-pass | EXP_07_36_007_PASS_CONST_FROM_LET.ets | 常量表达式引用 let 变量 — es2panda 不禁止 | compile-pass |
| 2052 | 7.36 | compile-pass | EXP_07_7_36_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 2053 | 7.36 | compile-pass | EXP_07_7_36_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 2054 | 7.36 | compile-pass | EXP_07_7_36_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 2055 | 7.36 | compile-fail | EXP_07_7_36_0001_FAIL_GEN_1.ets | 补充用例1 | compile-fail |
| 2056 | 7.36 | compile-fail | EXP_07_7_36_0002_FAIL_GEN_2.ets | 补充用例2 | compile-fail |
| 2057 | 7.36 | compile-fail | EXP_07_7_36_0003_FAIL_GEN_3.ets | 补充用例3 | compile-fail |
| 2058 | 7.36 | compile-fail | EXP_07_7_36_0004_FAIL_GEN_4.ets | 补充用例4 | compile-fail |
| 2059 | 7.36 | compile-fail | EXP_07_7_36_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 2060 | 7.36 | compile-fail | EXP_07_7_36_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 2061 | 7.36 | compile-fail | EXP_07_7_36_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 2062 | 7.36 | compile-fail | EXP_07_7_36_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 2063 | 7.36 | compile-fail | EXP_07_7_36_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 2064 | 7.36 | compile-fail | EXP_07_7_36_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 2065 | 7.36 | runtime | EXP_07_36_008_RUNTIME_CONST_EVAL.ets | 编译期常量求值正确性验证 | runtime |
| 2066 | 7.36 | runtime | EXP_07_7_36_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 2067 | 7.36 | runtime | EXP_07_7_36_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 2068 | 7.36 | runtime | EXP_07_7_36_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 2069 | 7.36 | runtime | EXP_07_7_36_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 2070 | 7.36 | runtime | EXP_07_7_36_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 2071 | 7.36 | runtime | EXP_07_7_36_0014_RUNTIME_GEN_14.ets | 补充用例14 | runtime |
| 2072 | 7.36 | runtime | EXP_07_7_36_0015_RUNTIME_GEN_15.ets | 补充用例15 | runtime |
| 2073 | 7.36 | runtime | EXP_07_7_36_0016_RUNTIME_GEN_16.ets | 补充用例16 | runtime |
| 2074 | 7.36 | runtime | EXP_07_7_36_0017_RUNTIME_GEN_17.ets | 补充用例17 | runtime |
| 2075 | 7.36.1 | compile-pass | EXP_07_36_01_001_PASS_CONST_DOUBLE_PROMOTION.ets | 常量表达式 double 提升（操作数为 double 时其他转 double） | compile-pass |
| 2076 | 7.36.1 | compile-pass | EXP_07_36_01_001_PASS_INT_CONST_FOLDING.ets | 验证整型常量表达式在编译时用 bigint 内部类型进行常量折叠 | compile-pass |
| 2077 | 7.36.1 | compile-pass | EXP_07_36_01_002_PASS_CONST_FLOAT_PROMOTION.ets | 常量表达式 float 提升 | compile-pass |
| 2078 | 7.36.1 | compile-pass | EXP_07_36_01_002_PASS_DOUBLE_FLOAT_PROMOTION.ets | 验证 double/float 类型提升及幂运算在常量表达式中的行为 | compile-pass |
| 2079 | 7.36.1 | compile-pass | EXP_07_36_01_003_PASS_CONST_BIGINT_INTERNAL.ets | 常量表达式大整数内部类型（任意精度） | compile-pass |
| 2080 | 7.36.1 | compile-pass | EXP_07_36_01_003_PASS_MIXED_CONST_EXPR.ets | 验证混合常量表达式：各数值子表达式独立求值（对应 spec 示例） | compile-pass |
| 2081 | 7.36.1 | compile-pass | EXP_07_7_36_0004_PASS_GEN_4.ets | 补充用例4 | compile-pass |
| 2082 | 7.36.1 | compile-pass | EXP_07_7_36_0005_PASS_GEN_5.ets | 补充用例5 | compile-pass |
| 2083 | 7.36.1 | compile-pass | EXP_07_7_36_0006_PASS_GEN_6.ets | 补充用例6 | compile-pass |
| 2084 | 7.36.1 | compile-pass | EXP_07_7_36_0007_PASS_GEN_7.ets | 补充用例7 | compile-pass |
| 2085 | 7.36.1 | compile-pass | EXP_07_7_36_0008_PASS_GEN_8.ets | 补充用例8 | compile-pass |
| 2086 | 7.36.1 | compile-pass | EXP_07_7_36_0009_PASS_GEN_9.ets | 补充用例9 | compile-pass |
| 2087 | 7.36.1 | compile-pass | EXP_07_7_36_0010_PASS_GEN_10.ets | 补充用例10 | compile-pass |
| 2088 | 7.36.1 | compile-fail | EXP_07_7_36_0001_FAIL_GEN_1.ets | 补充用例1 | compile-fail |
| 2089 | 7.36.1 | compile-fail | EXP_07_7_36_0002_FAIL_GEN_2.ets | 补充用例2 | compile-fail |
| 2090 | 7.36.1 | compile-fail | EXP_07_7_36_0003_FAIL_GEN_3.ets | 补充用例3 | compile-fail |
| 2091 | 7.36.1 | compile-fail | EXP_07_7_36_0004_FAIL_GEN_4.ets | 补充用例4 | compile-fail |
| 2092 | 7.36.1 | compile-fail | EXP_07_7_36_0005_FAIL_GEN_5.ets | 补充用例5 | compile-fail |
| 2093 | 7.36.1 | compile-fail | EXP_07_7_36_0006_FAIL_GEN_6.ets | 补充用例6 | compile-fail |
| 2094 | 7.36.1 | compile-fail | EXP_07_7_36_0007_FAIL_GEN_7.ets | 补充用例7 | compile-fail |
| 2095 | 7.36.1 | compile-fail | EXP_07_7_36_0008_FAIL_GEN_8.ets | 补充用例8 | compile-fail |
| 2096 | 7.36.1 | compile-fail | EXP_07_7_36_0009_FAIL_GEN_9.ets | 补充用例9 | compile-fail |
| 2097 | 7.36.1 | compile-fail | EXP_07_7_36_0010_FAIL_GEN_10.ets | 补充用例10 | compile-fail |
| 2098 | 7.36.1 | runtime | EXP_07_36_01_004_RUNTIME_CONST_ARITHMETIC.ets | 验证编译时整型常量表达式求值结果在运行时正确 | runtime |
| 2099 | 7.36.1 | runtime | EXP_07_36_01_004_RUNTIME_CONST_MIXED.ets | 混合常量表达式各子表达式独立求值 | runtime |
| 2100 | 7.36.1 | runtime | EXP_07_36_01_005_RUNTIME_TYPE_PROMOTION.ets | 验证 double/float 类型提升及幂运算在常量表达式中的运行时结果 | runtime |
| 2101 | 7.36.1 | runtime | EXP_07_36_01_006_RUNTIME_MIXED_CONST_EXPR.ets | 验证混合常量表达式运行时行为：各数值子表达式独立求值（对应 spec 示例） | runtime |
| 2102 | 7.36.1 | runtime | EXP_07_7_36_0005_RUNTIME_GEN_5.ets | 补充用例5 | runtime |
| 2103 | 7.36.1 | runtime | EXP_07_7_36_0006_RUNTIME_GEN_6.ets | 补充用例6 | runtime |
| 2104 | 7.36.1 | runtime | EXP_07_7_36_0007_RUNTIME_GEN_7.ets | 补充用例7 | runtime |
| 2105 | 7.36.1 | runtime | EXP_07_7_36_0008_RUNTIME_GEN_8.ets | 补充用例8 | runtime |
| 2106 | 7.36.1 | runtime | EXP_07_7_36_0009_RUNTIME_GEN_9.ets | 补充用例9 | runtime |
| 2107 | 7.36.1 | runtime | EXP_07_7_36_0010_RUNTIME_GEN_10.ets | 补充用例10 | runtime |
| 2108 | 7.36.1 | runtime | EXP_07_7_36_0011_RUNTIME_GEN_11.ets | 补充用例11 | runtime |
| 2109 | 7.36.1 | runtime | EXP_07_7_36_0012_RUNTIME_GEN_12.ets | 补充用例12 | runtime |
| 2110 | 7.36.1 | runtime | EXP_07_7_36_0013_RUNTIME_GEN_13.ets | 补充用例13 | runtime |
| 2111 | 7.19 | compile-pass | EXP_07_19_001_PASS_BASIC_NON_NULLISH.ets | 非空值基本用法 int/string/Object 应用 ! 编译通过 | compile-pass |
| 2112 | 7.19 | compile-pass | EXP_07_19_002_PASS_NULLISH_VAR_NON_NULL_VALUE.ets | 空值类型变量持有非空值时 ! 类型窄化编译通过 | compile-pass |
| 2113 | 7.19 | compile-pass | EXP_07_19_003_PASS_FIELD_ACCESS.ets | obj!.field 字段访问编译通过 | compile-pass |
| 2114 | 7.19 | compile-pass | EXP_07_19_004_PASS_METHOD_CALL.ets | obj!.method() 方法调用编译通过 | compile-pass |
| 2115 | 7.19 | compile-pass | EXP_07_19_005_PASS_CHAINED_DOUBLE_BANG.ets | 链式 !! / !!! 编译通过 | compile-pass |
| 2116 | 7.19 | compile-pass | EXP_07_19_006_PASS_TYPE_NARROWING.ets | ! 将 T\|undefined 窄化为 T 编译通过 | compile-pass |
| 2117 | 7.19 | compile-pass | EXP_07_19_007_PASS_IN_EXPRESSION.ets | ! 在复合表达式（赋值/算术/条件/三元中）编译通过 | compile-pass |
| 2118 | 7.19 | compile-pass | EXP_07_19_008_PASS_FUNCTION_ARG.ets | ! 表达式作为函数参数编译通过 | compile-pass |
| 2119 | 7.19 | compile-fail | EXP_07_19_021_FAIL_VOID_EXPRESSION.ets | void 表达式应用 ! 预期编译时错误 ⚠️ | compile-fail |
| 2120 | 7.19 | compile-fail | EXP_07_19_022_FAIL_ALWAYS_NULLISH_ASSIGN.ets | undefined! 赋值给非空类型预期编译时错误 ⚠️ | compile-fail |
| 2121 | 7.19 | runtime | EXP_07_19_031_RUNTIME_NON_NULL_VALUE.ets | 运行时非空值返回原值（int=42, string=hello） | runtime |
| 2122 | 7.19 | runtime | EXP_07_19_032_RUNTIME_UNDEFINED_THROWS.ets | undefined! 运行时抛出 NullPointerError | runtime |
| 2123 | 7.19 | runtime | EXP_07_19_033_RUNTIME_NULL_THROWS.ets | null! 运行时抛出 NullPointerError | runtime |
| 2124 | 7.19 | runtime | EXP_07_19_034_RUNTIME_FIELD_ACCESS.ets | obj!.field 运行时返回字段值 99 | runtime |
| 2125 | 7.19 | runtime | EXP_07_19_035_RUNTIME_METHOD_CALL.ets | obj!.method() 运行时返回值 30 | runtime |
| 2126 | 7.19 | runtime | EXP_07_19_036_RUNTIME_CHAINED_ASSERT.ets | ! 在算术表达式中运行时正确计算 sum=10, y=11 | runtime |
