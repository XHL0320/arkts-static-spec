# 02 Lexical Elements Test Case Catalog

| ID | SubTopic | Type | Case File | Purpose | Expected |
|---|---|---|---|---|---|
| LEX_02_01_012_FAIL_LONE_HIGH_SURROGATE | 2.1 | compile-fail | LEX_02_01_012_FAIL_LONE_HIGH_SURROGATE.ets | 反向用例：spec要求字符串中不允许孤立高代理(U+D800)，但编译器实际允许 | compile-fail |
| LEX_02_01_013_FAIL_LONE_LOW_SURROGATE | 2.1 | compile-fail | LEX_02_01_013_FAIL_LONE_LOW_SURROGATE.ets | 反向用例：spec要求字符串中不允许孤立低代理(U+DC00)，但编译器实际允许 | compile-fail |
| LEX_02_01_014_FAIL_HIGH_SURROGATE_NO_LOW | 2.1 | compile-fail | LEX_02_01_014_FAIL_HIGH_SURROGATE_NO_LOW.ets | 反向用例：spec要求高代理后必须跟低代理，但编译器实际允许高代理后跟BMP字符 | compile-fail |
| LEX_02_01_015_FAIL_INVALID_UNICODE_ESCAPE | 2.1 | compile-fail | LEX_02_01_015_FAIL_INVALID_UNICODE_ESCAPE.ets | \u后跟非十六进制字符或位数不足，应编译失败 | compile-fail |
| LEX_02_01_016_FAIL_INVALID_EXTENDED_ESCAPE | 2.1 | compile-fail | LEX_02_01_016_FAIL_INVALID_EXTENDED_ESCAPE.ets | \u{}中包含无效十六进制、空内容、或超出U+10FFFF范围，应编译失败 | compile-fail |
| LEX_02_01_017_FAIL_CHAR_REGULAR_STRING | 2.1 | compile-fail | LEX_02_01_017_FAIL_CHAR_REGULAR_STRING.ets | char类型使用普通字符串字面量'A'而非c'A'，应编译失败 | compile-fail |
| LEX_02_01_018_PASS_CHAR_RELATIONAL_OP | 2.1 | compile-pass | LEX_02_01_018_FAIL_CHAR_RELATIONAL_OP.ets | char 关系运算符符合 spec/experimental.md 规定，编译器支持 | compile-pass |
| LEX_02_01_019_PASS_CHAR_COMPARE_NUMBER | 2.1 | compile-pass | LEX_02_01_019_FAIL_CHAR_COMPARE_NUMBER.ets | char 与 number 比较符合 spec/experimental.md 规定，编译器支持 | compile-pass |
| LEX_02_01_020_FAIL_DIGIT_START_IDENTIFIER | 2.1 | compile-fail | LEX_02_01_020_FAIL_DIGIT_START_IDENTIFIER.ets | 标识符不能以数字开头，应编译失败 | compile-fail |
| LEX_02_01_021_FAIL_KEYWORD_AS_IDENTIFIER | 2.1 | compile-fail | LEX_02_01_021_FAIL_KEYWORD_AS_IDENTIFIER.ets | ArkTS硬关键字不能作为标识符，应编译失败 | compile-fail |
| LEX_02_01_022_FAIL_SURROGATE_IN_IDENTIFIER | 2.1 | compile-fail | LEX_02_01_022_FAIL_SURROGATE_IN_IDENTIFIER.ets | 标识符Unicode转义为孤立代理，应编译失败 | compile-fail |
| LEX_02_01_038_FAIL_UNICODE_STATIC_OVERRIDE | 2.1 | compile-fail | LEX_02_01_038_FAIL_UNICODE_STATIC_OVERRIDE.ets | 测试因子checklist: static成员继承边界 - 同一文件内重复类声明（合并声明）应编译失败 | compile-fail |
| LEX_02_01_039_FAIL_CHAR_STRING_MISMATCH | 2.1 | compile-fail | LEX_02_01_039_FAIL_CHAR_STRING_MISMATCH.ets | 测试因子checklist: 基础类型与转换 - char与string类型混用应编译失败 | compile-fail |
| LEX_02_01_040_FAIL_UNICODE_INTERFACE_UNEXPORTED_TYPE | 2.1 | compile-fail | LEX_02_01_040_FAIL_UNICODE_INTERFACE_UNEXPORTED_TYPE.ets | 测试因子checklist: namespace/module/export可见性 - exported方法使用unexported类型应编译失败 | compile-fail |
| LEX_02_01_001_PASS_UNICODE_IDENTIFIER_BMP | 2.1 | compile-pass | LEX_02_01_001_PASS_UNICODE_IDENTIFIER_BMP.ets | BMP范围的Unicode字母作为标识符: \u0041转义、中文、日文、韩文、希腊、西里尔 | compile-pass |
| LEX_02_01_002_PASS_UNICODE_IDENTIFIER_SPECIAL | 2.1 | compile-pass | LEX_02_01_002_PASS_UNICODE_IDENTIFIER_SPECIAL.ets | 特殊Unicode字符作为标识符开头: $开头、_开头、ZWJ(U+200D)、ZWNJ(U+200C) | compile-pass |
| LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER | 2.1 | compile-pass | LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER.ets | Unicode转义序列定义标识符: \uHHHH、\u{}转义等价性 | compile-pass |
| LEX_02_01_004_PASS_UTF16_BMP_STRING | 2.1 | compile-pass | LEX_02_01_004_PASS_UTF16_BMP_STRING.ets | BMP字符在字符串中: 直接字符、\uHHHH转义、混合直接字符与转义 | compile-pass |
| LEX_02_01_005_PASS_UTF16_SUPPLEMENTARY_STRING | 2.1 | compile-pass | LEX_02_01_005_PASS_UTF16_SUPPLEMENTARY_STRING.ets | 补充平面字符字符串: \u{1F600}扩展转义、emoji、混合BMP与补充平面 | compile-pass |
| LEX_02_01_006_PASS_UTF16_SURROGATE_PAIR | 2.1 | compile-pass | LEX_02_01_006_PASS_UTF16_SURROGATE_PAIR.ets | 有效代理对: 高代理+低代理组成有效代理对，与\u{}转义等价 | compile-pass |
| LEX_02_01_007_PASS_CHAR_BMP | 2.1 | compile-pass | LEX_02_01_007_PASS_CHAR_BMP.ets | BMP char字面量: c'...'语法、\uHHHH转义、\xHH转义、特殊转义序列(\n \t \r) | compile-pass |
| LEX_02_01_008_PASS_CHAR_SUPPLEMENTARY | 2.1 | compile-pass | LEX_02_01_008_PASS_CHAR_SUPPLEMENTARY.ets | char支持\uHHHH转义的BMP范围值，char为32位类型 | compile-pass |
| LEX_02_01_009_PASS_CHAR_EQUALITY | 2.1 | compile-pass | LEX_02_01_009_PASS_CHAR_EQUALITY.ets | char等值比较: ==, ===, !=, !== | compile-pass |
| LEX_02_01_010_PASS_UNICODE_CLASS_INTERFACE | 2.1 | compile-pass | LEX_02_01_010_PASS_UNICODE_CLASS_INTERFACE.ets | Unicode类名、接口名、方法名、字段名 | compile-pass |
| LEX_02_01_011_PASS_UNICODE_ENUM_FUNC | 2.1 | compile-pass | LEX_02_01_011_PASS_UNICODE_ENUM_FUNC.ets | Unicode枚举成员名、函数名、参数名 | compile-pass |
| LEX_02_01_032_PASS_UNICODE_SCOPE_LOCAL_GLOBAL | 2.1 | compile-pass | LEX_02_01_032_PASS_UNICODE_SCOPE_LOCAL_GLOBAL.ets | 测试因子checklist: 局部/全局书写 - Unicode标识符在顶层变量、函数体内局部变量、class method内局部变量的作用域组合 | compile-pass |
| LEX_02_01_033_PASS_UNICODE_PARAM_RETURN | 2.1 | compile-pass | LEX_02_01_033_PASS_UNICODE_PARAM_RETURN.ets | 测试因子checklist: 作为参数传入、作为返回值返回 - Unicode字符串作为函数参数和返回值 | compile-pass |
| LEX_02_01_034_PASS_UNICODE_FIELD_ACCESS | 2.1 | compile-pass | LEX_02_01_034_PASS_UNICODE_FIELD_ACCESS.ets | 测试因子checklist: 作为字段读取后再使用 - Unicode字段声明、访问、继承 | compile-pass |
| LEX_02_01_035_PASS_UNICODE_STATIC_MEMBER | 2.1 | compile-pass | LEX_02_01_035_PASS_UNICODE_STATIC_MEMBER.ets | 测试因子checklist: static成员继承边界 - Unicode static字段访问（ArkTS要求通过类名限定） | compile-pass |
| LEX_02_01_036_PASS_CHAR_TYPE_CONTEXTS | 2.1 | compile-pass | LEX_02_01_036_PASS_CHAR_TYPE_CONTEXTS.ets | 测试因子checklist: 基础类型与转换 - char类型在不同上下文中的使用（赋值、参数、返回值、数组元素） | compile-pass |
| LEX_02_01_037_PASS_UNICODE_ARRAY_GENERIC | 2.1 | compile-pass | LEX_02_01_037_PASS_UNICODE_ARRAY_GENERIC.ets | 测试因子checklist: 数组/tuple元素 - Unicode字符串在数组中的存取 | compile-pass |
| LEX_02_01_038_PASS_UNICODE_METHOD_OVERRIDE | 2.1 | compile-pass | LEX_02_01_038_PASS_UNICODE_METHOD_OVERRIDE.ets | 测试因子checklist: overload/override - Unicode方法在继承中的override | compile-pass |
| LEX_02_01_023_RUNTIME_UNICODE_IDENTIFIER_VALUE | 2.1 | runtime | LEX_02_01_023_RUNTIME_UNICODE_IDENTIFIER_VALUE.ets | Unicode标识符运行时值操作与正确性验证 | runtime |
| LEX_02_01_024_RUNTIME_BMP_STRING_OPS | 2.1 | runtime | LEX_02_01_024_RUNTIME_BMP_STRING_OPS.ets | BMP Unicode字符串运行时操作: length、indexOf、substring、拼接 | runtime |
| LEX_02_01_025_RUNTIME_SUPPLEMENTARY_STRING_LENGTH | 2.1 | runtime | LEX_02_01_025_RUNTIME_SUPPLEMENTARY_STRING_LENGTH.ets | 补充平面字符string.length返回2(UTF-16代码单元数)、混合字符length计算 | runtime |
| LEX_02_01_026_RUNTIME_SURROGATE_PAIR_EQUIVALENCE | 2.1 | runtime | LEX_02_01_026_RUNTIME_SURROGATE_PAIR_EQUIVALENCE.ets | 代理对表示与\u{}转义等价性验证 | runtime |
| LEX_02_01_027_RUNTIME_FOR_OF_CODE_POINT | 2.1 | runtime | LEX_02_01_027_RUNTIME_FOR_OF_CODE_POINT.ets | for-of按Unicode code point迭代: emoji按code point计数而非代码单元 | runtime |
| LEX_02_01_028_RUNTIME_CHAR_COMPARISON | 2.1 | runtime | LEX_02_01_028_RUNTIME_CHAR_COMPARISON.ets | char运行时等值比较: ==, ===, !=, !== | runtime |
| LEX_02_01_029_RUNTIME_UNICODE_CLASS_OPS | 2.1 | runtime | LEX_02_01_029_RUNTIME_UNICODE_CLASS_OPS.ets | Unicode类成员运行时调用、Unicode枚举值运行时访问、Unicode函数调用 | runtime |
| LEX_02_01_030_RUNTIME_UNICODE_COLLECTION_OPS | 2.1 | runtime | LEX_02_01_030_RUNTIME_UNICODE_COLLECTION_OPS.ets | Unicode字符串在Array和Map中的运行时操作 | runtime |
| LEX_02_01_031_RUNTIME_UNICODE_SCOPE_FACTOR | 2.1 | runtime | LEX_02_01_031_RUNTIME_UNICODE_SCOPE_FACTOR.ets | 补充测试因子：Unicode 字符在局部变量、参数、返回值、字段、方法、namespace 中组合使用 | runtime |
| LEX_02_01_032_RUNTIME_UNICODE_SCOPE_FACTOR | 2.1 | runtime | LEX_02_01_032_RUNTIME_UNICODE_SCOPE_FACTOR.ets | 测试因子checklist: 局部/全局书写 - 验证Unicode标识符在顶层、函数局部、类方法局部、参数传递、返回值中的作用域一致性 | runtime |
| LEX_02_01_033_RUNTIME_CHAR_TYPE_CONVERSION | 2.1 | runtime | LEX_02_01_033_RUNTIME_CHAR_TYPE_CONVERSION.ets | 测试因子checklist: 基础类型与转换 - char类型在不同上下文（赋值、参数、返回值、数组元素）中的行为验证 | runtime |
| LEX_02_01_034_RUNTIME_UNICODE_INHERITANCE_POLYMORPHISM | 2.1 | runtime | LEX_02_01_034_RUNTIME_UNICODE_INHERITANCE_POLYMORPHISM.ets | 测试因子checklist: overload/override/dynamic dispatch - Unicode方法在继承和多态中的运行时行为验证 | runtime |
| LEX_02_01_035_RUNTIME_UNICODE_COLLECTION_CONTEXTS | 2.1 | runtime | LEX_02_01_035_RUNTIME_UNICODE_COLLECTION_CONTEXTS.ets | 测试因子checklist: 数组元素上下文 - Unicode在数组中的存取和遍历验证 | runtime |
| LEX_02_01_036_RUNTIME_UNICODE_STATIC_MEMBER_ACCESS | 2.1 | runtime | LEX_02_01_036_RUNTIME_UNICODE_STATIC_MEMBER_ACCESS.ets | 测试因子checklist: static成员继承边界 - Unicode static字段通过类名访问的运行时行为 | runtime |
| LEX_02_10_010_FAIL_NESTED_COMMENT | 2.10 | compile-fail | LEX_02_10_010_FAIL_NESTED_COMMENT.ets | 注释不能嵌套 | compile-fail |
| LEX_02_10_001_PASS_LINE_COMMENT_BASIC | 2.10 | compile-pass | LEX_02_10_001_PASS_LINE_COMMENT_BASIC.ets | 基本单行注释 | compile-pass |
| LEX_02_10_002_PASS_EMPTY_LINE_COMMENT | 2.10 | compile-pass | LEX_02_10_002_PASS_EMPTY_LINE_COMMENT.ets | 空单行注释 | compile-pass |
| LEX_02_10_003_PASS_LINE_COMMENT_AFTER_CODE | 2.10 | compile-pass | LEX_02_10_003_PASS_LINE_COMMENT_AFTER_CODE.ets | 单行注释在代码后 | compile-pass |
| LEX_02_10_004_PASS_MULTILINE_COMMENT_BASIC | 2.10 | compile-pass | LEX_02_10_004_PASS_MULTILINE_COMMENT_BASIC.ets | 基本多行注释 | compile-pass |
| LEX_02_10_005_PASS_EMPTY_MULTILINE_COMMENT | 2.10 | compile-pass | LEX_02_10_005_PASS_EMPTY_MULTILINE_COMMENT.ets | 空多行注释 | compile-pass |
| LEX_02_10_006_PASS_MULTILINE_COMMENT_SPAN | 2.10 | compile-pass | LEX_02_10_006_PASS_MULTILINE_COMMENT_SPAN.ets | 多行注释跨多行 | compile-pass |
| LEX_02_10_007_PASS_COMMENT_SPECIAL_CHARS | 2.10 | compile-pass | LEX_02_10_007_PASS_COMMENT_SPECIAL_CHARS.ets | 注释中包含特殊字符 | compile-pass |
| LEX_02_10_008_PASS_COMMENT_CODE_SNIPPET | 2.10 | compile-pass | LEX_02_10_008_PASS_COMMENT_CODE_SNIPPET.ets | 注释中包含代码片段 | compile-pass |
| LEX_02_10_009_PASS_COMMENT_UNICODE | 2.10 | compile-pass | LEX_02_10_009_PASS_COMMENT_UNICODE.ets | 注释中包含 Unicode | compile-pass |
| LEX_02_10_013_PASS_LINE_COMMENT_EOF | 2.10 | compile-pass | LEX_02_10_013_PASS_LINE_COMMENT_EOF.ets | 单行注释在文件末尾 | compile-pass |
| LEX_02_10_014_PASS_MULTILINE_COMMENT_EOF | 2.10 | compile-pass | LEX_02_10_014_PASS_MULTILINE_COMMENT_EOF.ets | 多行注释在文件末尾 | compile-pass |
| LEX_02_10_015_PASS_MULTIPLE_LINE_COMMENTS | 2.10 | compile-pass | LEX_02_10_015_PASS_MULTIPLE_LINE_COMMENTS.ets | 多个连续单行注释 | compile-pass |
| LEX_02_10_016_PASS_MULTIPLE_MULTILINE_COMMENTS | 2.10 | compile-pass | LEX_02_10_016_PASS_MULTIPLE_MULTILINE_COMMENTS.ets | 多个连续多行注释 | compile-pass |
| LEX_02_10_017_PASS_LINE_COMMENT_IN_MULTILINE | 2.10 | compile-pass | LEX_02_10_017_PASS_LINE_COMMENT_IN_MULTILINE.ets | 单行注释在多行注释内 | compile-pass |
| LEX_02_10_018_PASS_MULTILINE_COMMENT_IN_LINE | 2.10 | compile-pass | LEX_02_10_018_PASS_MULTILINE_COMMENT_IN_LINE.ets | 多行注释在单行注释内 | compile-pass |
| LEX_02_10_019_PASS_COMMENT_BETWEEN_EXPR | 2.10 | compile-pass | LEX_02_10_019_PASS_COMMENT_BETWEEN_EXPR.ets | 注释在表达式之间 | compile-pass |
| LEX_02_10_011_RT_LINE_COMMENT | 2.10 | runtime | LEX_02_10_011_RT_LINE_COMMENT.ets | 单行注释不影响代码执行 | runtime |
| LEX_02_10_012_RT_MULTILINE_COMMENT | 2.10 | runtime | LEX_02_10_012_RT_MULTILINE_COMMENT.ets | 多行注释不影响代码执行 | runtime |
| LEX_02_11_009_FAIL_MISSING_SEMICOLON | 2.11 | compile-fail | LEX_02_11_009_FAIL_MISSING_SEMICOLON.ets | 缺少分号导致编译失败 | compile-fail |
| LEX_02_11_001_PASS_LINE_TERMINATOR_VAR | 2.11 | compile-pass | LEX_02_11_001_PASS_LINE_TERMINATOR_VAR.ets | 变量声明由行分隔符终止 | compile-pass |
| LEX_02_11_002_PASS_LINE_TERMINATOR_EXPR | 2.11 | compile-pass | LEX_02_11_002_PASS_LINE_TERMINATOR_EXPR.ets | 表达式语句由行分隔符终止 | compile-pass |
| LEX_02_11_003_PASS_LINE_TERMINATOR_FUNC | 2.11 | compile-pass | LEX_02_11_003_PASS_LINE_TERMINATOR_FUNC.ets | 函数声明由行分隔符终止 | compile-pass |
| LEX_02_11_004_PASS_SEMICOLON_MULTI_VAR | 2.11 | compile-pass | LEX_02_11_004_PASS_SEMICOLON_MULTI_VAR.ets | 单行多个变量声明 | compile-pass |
| LEX_02_11_005_PASS_SEMICOLON_MULTI_EXPR | 2.11 | compile-pass | LEX_02_11_005_PASS_SEMICOLON_MULTI_EXPR.ets | 单行多个表达式 | compile-pass |
| LEX_02_11_006_PASS_SEMICOLON_MULTI_ASSIGN | 2.11 | compile-pass | LEX_02_11_006_PASS_SEMICOLON_MULTI_ASSIGN.ets | 单行多个赋值 | compile-pass |
| LEX_02_11_007_PASS_SEMICOLON_AMBIGUITY_EXPR | 2.11 | compile-pass | LEX_02_11_007_PASS_SEMICOLON_AMBIGUITY_EXPR.ets | 分号避免表达式歧义 | compile-pass |
| LEX_02_11_008_PASS_SEMICOLON_AMBIGUITY_STMT | 2.11 | compile-pass | LEX_02_11_008_PASS_SEMICOLON_AMBIGUITY_STMT.ets | 分号避免语句歧义 | compile-pass |
| LEX_02_11_010_RT_LINE_TERMINATOR | 2.11 | runtime | LEX_02_11_010_RT_LINE_TERMINATOR.ets | 行分隔符终止运行时行为 | runtime |
| LEX_02_11_011_RT_SEMICOLON | 2.11 | runtime | LEX_02_11_011_RT_SEMICOLON.ets | 分号分隔运行时行为 | runtime |
| LEX_02_02_013_FAIL_NO_WHITESPACE_LETX | 2.2 | compile-fail | LEX_02_02_013_FAIL_NO_WHITESPACE_LETX.ets | 无空白符导致let和x合并为一个标识符letx，应编译失败 | compile-fail |
| LEX_02_02_014_FAIL_NO_WHITESPACE_NUMID | 2.2 | compile-fail | LEX_02_02_014_FAIL_NO_WHITESPACE_NUMID.ets | 数字与标识符无空白导致合并为非法Token，应编译失败 | compile-fail |
| LEX_02_02_015_FAIL_STRING_UNESCAPED_NEWLINE | 2.2 | compile-fail | LEX_02_02_015_FAIL_STRING_UNESCAPED_NEWLINE.ets | 字符串字面量内包含未转义换行符，应编译失败 | compile-fail |
| LEX_02_02_016_FAIL_UNTERMINATED_COMMENT | 2.2 | compile-fail | LEX_02_02_016_FAIL_UNTERMINATED_COMMENT.ets | 未闭合的多行注释应编译失败 | compile-fail |
| LEX_02_02_017_FAIL_NESTED_COMMENT | 2.2 | compile-fail | LEX_02_02_017_FAIL_NESTED_COMMENT.ets | 嵌套多行注释（ArkTS应不支持），外层 | compile-fail |
| LEX_02_02_018_FAIL_INLINE_NEWLINE_IN_STRING | 2.2 | compile-fail | LEX_02_02_018_FAIL_INLINE_NEWLINE_IN_STRING.ets | 单引号字符串内包含未转义换行，应编译失败 | compile-fail |
| LEX_02_02_001_PASS_FOUR_ELEMENT_TYPES | 2.2 | compile-pass | LEX_02_02_001_PASS_FOUR_ELEMENT_TYPES.ets | 一行代码中同时存在White Spaces、Tokens、Line Separators(隐含)、Comments四种词法输入元素 | compile-pass |
| LEX_02_02_002_PASS_WHITESPACE_SEPARATOR | 2.2 | compile-pass | LEX_02_02_002_PASS_WHITESPACE_SEPARATOR.ets | 空白符(空格、Tab、多空白)分隔Token: let x: number = 1 | compile-pass |
| LEX_02_02_003_PASS_OPERATOR_WHITESPACE | 2.2 | compile-pass | LEX_02_02_003_PASS_OPERATOR_WHITESPACE.ets | 运算符周围的空白风格不影响解析: a+b, a + b, a + b | compile-pass |
| LEX_02_02_004_PASS_LINE_SEPARATOR_STATEMENTS | 2.2 | compile-pass | LEX_02_02_004_PASS_LINE_SEPARATOR_STATEMENTS.ets | 换行分隔多条语句，行尾可选分号 | compile-pass |
| LEX_02_02_005_PASS_NEWLINE_IN_BRACKETS | 2.2 | compile-pass | LEX_02_02_005_PASS_NEWLINE_IN_BRACKETS.ets | 括号内、函数调用参数间允许换行 | compile-pass |
| LEX_02_02_006_PASS_SINGLE_LINE_COMMENT | 2.2 | compile-pass | LEX_02_02_006_PASS_SINGLE_LINE_COMMENT.ets | 单行注释: 整行注释、行末注释、连续多行单行注释 | compile-pass |
| LEX_02_02_007_PASS_MULTI_LINE_COMMENT | 2.2 | compile-pass | LEX_02_02_007_PASS_MULTI_LINE_COMMENT.ets | 多行注释: 单行内的多行注释、跨行多行注释、注释内含换行 | compile-pass |
| LEX_02_02_008_PASS_COMMENT_AS_SEPARATOR | 2.2 | compile-pass | LEX_02_02_008_PASS_COMMENT_AS_SEPARATOR.ets | 注释可替代空白符分隔Token | compile-pass |
| LEX_02_02_009_PASS_CONSECUTIVE_TOKENS_NO_SPACE | 2.2 | compile-pass | LEX_02_02_009_PASS_CONSECUTIVE_TOKENS_NO_SPACE.ets | 连续Token(运算符、括号)无需空白分隔: a+b, foo(), arr[0] | compile-pass |
| LEX_02_02_010_PASS_EMPTY_FILE_WITH_COMMENTS | 2.2 | compile-pass | LEX_02_02_010_PASS_EMPTY_FILE_WITH_COMMENTS.ets | 仅含注释和空白的文件可以编译通过 | compile-pass |
| LEX_02_02_011_PASS_MULTIPLE_BLANK_LINES | 2.2 | compile-pass | LEX_02_02_011_PASS_MULTIPLE_BLANK_LINES.ets | 连续多个空行不影响编译 | compile-pass |
| LEX_02_02_012_PASS_TEMPLATE_STRING_NEWLINE | 2.2 | compile-pass | LEX_02_02_012_PASS_TEMPLATE_STRING_NEWLINE.ets | 模板字符串内允许换行作为内容 | compile-pass |
| LEX_02_02_026_PASS_SCOPE_VARIATIONS | 2.2 | compile-pass | LEX_02_02_026_PASS_SCOPE_VARIATIONS.ets | 测试因子checklist: 局部/全局书写 - 词法输入元素（空白、注释）在顶层、函数体内、class method内的作用域组合 | compile-pass |
| LEX_02_02_027_PASS_PARAM_CONTEXT | 2.2 | compile-pass | LEX_02_02_027_PASS_PARAM_CONTEXT.ets | 测试因子checklist: 参数/返回值上下文 - 词法输入元素在参数传递和返回值中的使用 | compile-pass |
| LEX_02_02_028_PASS_UNICODE_IN_COMMENTS | 2.2 | compile-pass | LEX_02_02_028_PASS_UNICODE_IN_COMMENTS.ets | 测试因子checklist: Unicode相关 - Unicode在注释和字符串中的词法处理 | compile-pass |
| LEX_02_02_029_PASS_TEMPLATE_LITERAL_LINE_SEP | 2.2 | compile-pass | LEX_02_02_029_PASS_TEMPLATE_LITERAL_LINE_SEP.ets | 测试因子checklist: 控制流与smart cast - 模板字符串中的行终止符处理 | compile-pass |
| LEX_02_02_030_PASS_CONTROL_FLOW_WHITESPACE | 2.2 | compile-pass | LEX_02_02_030_PASS_CONTROL_FLOW_WHITESPACE.ets | 测试因子checklist: 控制流 - 词法输入元素在if/for/while/switch中的空白和注释组合 | compile-pass |
| LEX_02_02_019_RT_WHITESPACE_ARITH_RESULT | 2.2 | runtime | LEX_02_02_019_RT_WHITESPACE_ARITH_RESULT.ets | 不同空白风格(无空白/单空白/多空白)的算术表达式结果一致 | runtime |
| LEX_02_02_020_RT_COMMENT_NO_EFFECT | 2.2 | runtime | LEX_02_02_020_RT_COMMENT_NO_EFFECT.ets | 单行注释和多行注释不影响变量值 | runtime |
| LEX_02_02_021_RT_MULTI_LINE_EXPR_RESULT | 2.2 | runtime | LEX_02_02_021_RT_MULTI_LINE_EXPR_RESULT.ets | 括号内换行的多行表达式计算结果正确 | runtime |
| LEX_02_02_022_RT_CONSECUTIVE_EMPTY_LINES | 2.2 | runtime | LEX_02_02_022_RT_CONSECUTIVE_EMPTY_LINES.ets | 连续空行不影响后续语句执行 | runtime |
| LEX_02_02_023_RT_COMMENT_INSIDE_EXPR | 2.2 | runtime | LEX_02_02_023_RT_COMMENT_INSIDE_EXPR.ets | 表达式内的注释不影响计算结果 | runtime |
| LEX_02_02_024_RT_LINE_SEP_MULTI_STMT | 2.2 | runtime | LEX_02_02_024_RT_LINE_SEP_MULTI_STMT.ets | 换行分隔的多语句按顺序执行 | runtime |
| LEX_02_02_025_RT_TOKEN_BOUNDARY | 2.2 | runtime | LEX_02_02_025_RT_TOKEN_BOUNDARY.ets | Token边界识别正确: foo()bar 不可调用但 a+b a-b 各为独立表达式 | runtime |
| LEX_02_02_026_RT_SCOPE_VARIATIONS | 2.2 | runtime | LEX_02_02_026_RT_SCOPE_VARIATIONS.ets | 测试因子checklist: 局部/全局书写 - 验证词法输入元素在不同作用域中不影响运行时语义 | runtime |
| LEX_02_02_027_RT_PARAM_CONTEXT | 2.2 | runtime | LEX_02_02_027_RT_PARAM_CONTEXT.ets | 测试因子checklist: 参数/返回值上下文 - 验证注释在参数传递中不影响运行时结果 | runtime |
| LEX_02_02_028_RT_UNICODE_IN_COMMENTS | 2.2 | runtime | LEX_02_02_028_RT_UNICODE_IN_COMMENTS.ets | 测试因子checklist: Unicode相关 - 验证Unicode注释不影响运行时语义 | runtime |
| LEX_02_02_029_RT_CONTROL_FLOW_WHITESPACE | 2.2 | runtime | LEX_02_02_029_RT_CONTROL_FLOW_WHITESPACE.ets | 测试因子checklist: 控制流 - 验证if/for/while中空白和注释不影响运行时结果 | runtime |
| LEX_02_03_022_FAIL_SPACE_IN_IDENTIFIER | 2.3 | compile-fail | LEX_02_03_022_FAIL_SPACE_IN_IDENTIFIER.ets | 标识符中含 Space 应编译失败（空白不能出现在Token内部） | compile-fail |
| LEX_02_03_023_FAIL_TAB_IN_IDENTIFIER | 2.3 | compile-fail | LEX_02_03_023_FAIL_TAB_IN_IDENTIFIER.ets | 标识符中含 Tab 应编译失败 | compile-fail |
| LEX_02_03_024_FAIL_SPACE_IN_NUMBER | 2.3 | compile-fail | LEX_02_03_024_FAIL_SPACE_IN_NUMBER.ets | 数字字面量内含 Space 应编译失败 | compile-fail |
| LEX_02_03_025_FAIL_NBSP_IN_NUMBER | 2.3 | compile-fail | LEX_02_03_025_FAIL_NBSP_IN_NUMBER.ets | 数字字面量内含 NBSP 应编译失败 | compile-fail |
| LEX_02_03_026_FAIL_SPACE_IN_KEYWORD | 2.3 | compile-fail | LEX_02_03_026_FAIL_SPACE_IN_KEYWORD.ets | 关键字内含 Space 应编译失败 (cl ass) | compile-fail |
| LEX_02_03_027_FAIL_EQEQ_SPLIT | 2.3 | compile-fail | LEX_02_03_027_FAIL_EQEQ_SPLIT.ets | 双等号 == 中间含 Space 拆为 = = 应编译失败 | compile-fail |
| LEX_02_03_028_FAIL_LOGICAL_AND_SPLIT | 2.3 | compile-fail | LEX_02_03_028_FAIL_LOGICAL_AND_SPLIT.ets | 逻辑与 && 中间含 Space 拆为 & & 改变运算符语义，导致语法/语义错误 | compile-fail |
| LEX_02_03_029_FAIL_ARROW_SPLIT | 2.3 | compile-fail | LEX_02_03_029_FAIL_ARROW_SPLIT.ets | 箭头 => 中间含 Space 拆为 = > 应编译失败 | compile-fail |
| LEX_02_03_030_FAIL_CHAR_PREFIX_SPACE | 2.3 | compile-fail | LEX_02_03_030_FAIL_CHAR_PREFIX_SPACE.ets | char字面量 c'A' 中 c 与 ' 之间含 Space 应编译失败 | compile-fail |
| LEX_02_03_031_FAIL_FLOAT_SPACE | 2.3 | compile-fail | LEX_02_03_031_FAIL_FLOAT_SPACE.ets | 浮点字面量内含 Space (3 .14) 应编译失败 | compile-fail |
| LEX_02_03_046_FAIL_DECORATOR_SPACE | 2.3 | compile-fail | LEX_02_03_046_FAIL_DECORATOR_SPACE.ets | 装饰器中空格 | compile-fail |
| LEX_02_03_001_PASS_SPACE_SEPARATOR | 2.3 | compile-pass | LEX_02_03_001_PASS_SPACE_SEPARATOR.ets | Space (U+0020) 作为词法分隔符: let x : number = 1 | compile-pass |
| LEX_02_03_002_PASS_TAB_SEPARATOR | 2.3 | compile-pass | LEX_02_03_002_PASS_TAB_SEPARATOR.ets | Horizontal tabulation (U+0009) 作为词法分隔符 | compile-pass |
| LEX_02_03_003_PASS_VTAB_SEPARATOR | 2.3 | compile-pass | LEX_02_03_003_PASS_VTAB_SEPARATOR.ets | Vertical tabulation (U+000B) 作为词法分隔符 | compile-pass |
| LEX_02_03_004_PASS_FORMFEED_SEPARATOR | 2.3 | compile-pass | LEX_02_03_004_PASS_FORMFEED_SEPARATOR.ets | Form feed (U+000C) 作为词法分隔符 | compile-pass |
| LEX_02_03_005_PASS_NBSP_SEPARATOR | 2.3 | compile-pass | LEX_02_03_005_PASS_NBSP_SEPARATOR.ets | No-break space (U+00A0) 作为词法分隔符 | compile-pass |
| LEX_02_03_006_PASS_ZWNBSP_SEPARATOR | 2.3 | compile-pass | LEX_02_03_006_PASS_ZWNBSP_SEPARATOR.ets | Zero-width no-break space (U+FEFF) 作为词法分隔符(BOM) | compile-pass |
| LEX_02_03_007_PASS_SPACE_TAB_MIX | 2.3 | compile-pass | LEX_02_03_007_PASS_SPACE_TAB_MIX.ets | Space + Tab 混合分隔Token | compile-pass |
| LEX_02_03_008_PASS_ALL_WHITESPACE_MIX | 2.3 | compile-pass | LEX_02_03_008_PASS_ALL_WHITESPACE_MIX.ets | 全部6种空白符混合分隔Token: Space + Tab + VT + FF + NBSP + ZWNBSP | compile-pass |
| LEX_02_03_009_PASS_REPEATED_WHITESPACE | 2.3 | compile-pass | LEX_02_03_009_PASS_REPEATED_WHITESPACE.ets | 重复多个相同空白符等价于单个分隔 | compile-pass |
| LEX_02_03_010_PASS_WS_BEFORE_KEYWORD | 2.3 | compile-pass | LEX_02_03_010_PASS_WS_BEFORE_KEYWORD.ets | 关键字前的空白(行首缩进) | compile-pass |
| LEX_02_03_011_PASS_WS_BETWEEN_IDENTIFIERS | 2.3 | compile-pass | LEX_02_03_011_PASS_WS_BETWEEN_IDENTIFIERS.ets | 空白在标识符与类型注解、变量名之间 | compile-pass |
| LEX_02_03_012_PASS_WS_AROUND_OPERATORS | 2.3 | compile-pass | LEX_02_03_012_PASS_WS_AROUND_OPERATORS.ets | 空白在运算符两侧的灵活性 | compile-pass |
| LEX_02_03_013_PASS_WS_BEFORE_SEMICOLON | 2.3 | compile-pass | LEX_02_03_013_PASS_WS_BEFORE_SEMICOLON.ets | 分号前可有空白 | compile-pass |
| LEX_02_03_014_PASS_WS_AROUND_BRACES | 2.3 | compile-pass | LEX_02_03_014_PASS_WS_AROUND_BRACES.ets | 大括号周围的空白 | compile-pass |
| LEX_02_03_015_PASS_WS_IN_ARRAY_LITERAL | 2.3 | compile-pass | LEX_02_03_015_PASS_WS_IN_ARRAY_LITERAL.ets | 数组字面量元素间空白 | compile-pass |
| LEX_02_03_016_PASS_WS_IN_FUNC_PARAMS | 2.3 | compile-pass | LEX_02_03_016_PASS_WS_IN_FUNC_PARAMS.ets | 函数参数间空白 | compile-pass |
| LEX_02_03_017_PASS_WS_IN_SINGLE_COMMENT | 2.3 | compile-pass | LEX_02_03_017_PASS_WS_IN_SINGLE_COMMENT.ets | 单行注释内含各种空白符（spec显式允许） | compile-pass |
| LEX_02_03_018_PASS_WS_IN_MULTI_COMMENT | 2.3 | compile-pass | LEX_02_03_018_PASS_WS_IN_MULTI_COMMENT.ets | 多行注释内含各种空白符（含VT FF NBSP ZWNBSP） | compile-pass |
| LEX_02_03_019_PASS_WS_IN_STRING_CONTENT | 2.3 | compile-pass | LEX_02_03_019_PASS_WS_IN_STRING_CONTENT.ets | 字符串字面量内的空白属于字符串内容，不是分隔符 | compile-pass |
| LEX_02_03_020_PASS_MIXED_INDENTATION | 2.3 | compile-pass | LEX_02_03_020_PASS_MIXED_INDENTATION.ets | 行首缩进可混合 Space 和 Tab | compile-pass |
| LEX_02_03_021_PASS_ZWNBSP_VARIOUS_POSITIONS | 2.3 | compile-pass | LEX_02_03_021_PASS_ZWNBSP_VARIOUS_POSITIONS.ets | ZWNBSP (U+FEFF) 在各种位置作为分隔符 | compile-pass |
| LEX_02_03_039_PASS_UNICODE_WHITESPACE | 2.3 | compile-pass | LEX_02_03_039_PASS_UNICODE_WHITESPACE.ets | 其他 Unicode 空白字符 | compile-pass |
| LEX_02_03_040_PASS_TYPE_ANNOTATION_WS | 2.3 | compile-pass | LEX_02_03_040_PASS_TYPE_ANNOTATION_WS.ets | 类型注解周围空白 | compile-pass |
| LEX_02_03_041_PASS_GENERIC_WS | 2.3 | compile-pass | LEX_02_03_041_PASS_GENERIC_WS.ets | 泛型中空白 | compile-pass |
| LEX_02_03_032_RT_SPACE_ONLY_ARITH | 2.3 | runtime | LEX_02_03_032_RT_SPACE_ONLY_ARITH.ets | 仅使用 Space 的运算结果正确 | runtime |
| LEX_02_03_033_RT_TAB_INDENTED_ARITH | 2.3 | runtime | LEX_02_03_033_RT_TAB_INDENTED_ARITH.ets | Tab 缩进风格的运算结果正确 | runtime |
| LEX_02_03_034_RT_ALL_WHITESPACE_MIX | 2.3 | runtime | LEX_02_03_034_RT_ALL_WHITESPACE_MIX.ets | 6种空白符混合不影响运行结果 | runtime |
| LEX_02_03_035_RT_NBSP_SEPARATED | 2.3 | runtime | LEX_02_03_035_RT_NBSP_SEPARATED.ets | 仅 NBSP 分隔的代码运算结果正确 | runtime |
| LEX_02_03_036_RT_INDENTATION_STYLE | 2.3 | runtime | LEX_02_03_036_RT_INDENTATION_STYLE.ets | 不同的行首缩进风格不影响语义 | runtime |
| LEX_02_03_037_RT_MULTI_WS_IN_EXPR | 2.3 | runtime | LEX_02_03_037_RT_MULTI_WS_IN_EXPR.ets | 表达式内多个空白不影响计算结果 | runtime |
| LEX_02_03_038_RT_ZWNBSP_STRING_CONTENT | 2.3 | runtime | LEX_02_03_038_RT_ZWNBSP_STRING_CONTENT.ets | 字符串字面量内的 ZWNBSP 是字符串内容的一部分（不是分隔符） | runtime |
| LEX_02_03_043_RT_UNICODE_WHITESPACE | 2.3 | runtime | LEX_02_03_043_RT_UNICODE_WHITESPACE.ets | Unicode 空白字符运行时验证 | runtime |
| LEX_02_03_044_RT_TYPE_ANNOTATION_WS | 2.3 | runtime | LEX_02_03_044_RT_TYPE_ANNOTATION_WS.ets | 类型注解周围空白运行时验证 | runtime |
| LEX_02_03_045_RT_GENERIC_WS | 2.3 | runtime | LEX_02_03_045_RT_GENERIC_WS.ets | 泛型中空白运行时验证 | runtime |
| LEX_02_04_020_FAIL_LF_IN_SINGLE_STRING | 2.4 | compile-fail | LEX_02_04_020_FAIL_LF_IN_SINGLE_STRING.ets | 单引号字符串内含未转义 LF 应编译失败 | compile-fail |
| LEX_02_04_021_FAIL_LF_IN_DOUBLE_STRING | 2.4 | compile-fail | LEX_02_04_021_FAIL_LF_IN_DOUBLE_STRING.ets | 双引号字符串内含未转义 LF 应编译失败 | compile-fail |
| LEX_02_04_023_FAIL_COMMENT_LINE_CONTINUATION | 2.4 | compile-fail | LEX_02_04_023_FAIL_COMMENT_LINE_CONTINUATION.ets | 单行注释 // 应在行终止符处结束，后续若试图反斜杠续行也无效（会引入错误的 Token） | compile-fail |
| LEX_02_04_001_PASS_LF_SEPARATOR | 2.4 | compile-pass | LEX_02_04_001_PASS_LF_SEPARATOR.ets | Newline character (U+000A, LF) 作为行分隔符 | compile-pass |
| LEX_02_04_002_PASS_CR_SEPARATOR | 2.4 | compile-pass | LEX_02_04_002_PASS_CR_SEPARATOR.ets | Carriage return character (U+000D, CR) 作为行分隔符 | compile-pass |
| LEX_02_04_003_PASS_LS_SEPARATOR | 2.4 | compile-pass | LEX_02_04_003_PASS_LS_SEPARATOR.ets | Line separator character (U+2028, LS) 作为行分隔符 | compile-pass |
| LEX_02_04_004_PASS_PS_SEPARATOR | 2.4 | compile-pass | LEX_02_04_004_PASS_PS_SEPARATOR.ets | Paragraph separator character (U+2029, PS) 作为行分隔符 | compile-pass |
| LEX_02_04_005_PASS_CRLF_SEPARATOR | 2.4 | compile-pass | LEX_02_04_005_PASS_CRLF_SEPARATOR.ets | CRLF (Windows 风格) 作为行分隔符序列 | compile-pass |
| LEX_02_04_006_PASS_LF_CRLF_MIX | 2.4 | compile-pass | LEX_02_04_006_PASS_LF_CRLF_MIX.ets | 单文件内混合使用 LF 和 CRLF | compile-pass |
| LEX_02_04_007_PASS_CONSECUTIVE_LF | 2.4 | compile-pass | LEX_02_04_007_PASS_CONSECUTIVE_LF.ets | 多个连续 LF 视为单一分隔符 | compile-pass |
| LEX_02_04_008_PASS_CONSECUTIVE_CR | 2.4 | compile-pass | LEX_02_04_008_PASS_CONSECUTIVE_CR.ets | 多个连续 CR 视为单一分隔符 | compile-pass |
| LEX_02_04_009_PASS_LF_CR_CONSECUTIVE | 2.4 | compile-pass | LEX_02_04_009_PASS_LF_CR_CONSECUTIVE.ets | LF 与 CR 混合连续视为单一分隔符 | compile-pass |
| LEX_02_04_010_PASS_LS_PS_CONSECUTIVE | 2.4 | compile-pass | LEX_02_04_010_PASS_LS_PS_CONSECUTIVE.ets | LS (U+2028) 与 PS (U+2029) 混合连续视为单一分隔符 | compile-pass |
| LEX_02_04_011_PASS_ALL_LINE_SEP_MIX | 2.4 | compile-pass | LEX_02_04_011_PASS_ALL_LINE_SEP_MIX.ets | 同一文件混用 4 种行终止符 LF/CR/LS/PS | compile-pass |
| LEX_02_04_012_PASS_LINE_SEP_WITH_SPACE | 2.4 | compile-pass | LEX_02_04_012_PASS_LINE_SEP_WITH_SPACE.ets | 行终止符前后包含 Space | compile-pass |
| LEX_02_04_013_PASS_LINE_SEP_WITH_TAB | 2.4 | compile-pass | LEX_02_04_013_PASS_LINE_SEP_WITH_TAB.ets | 行终止符前后包含 Tab | compile-pass |
| LEX_02_04_014_PASS_LINE_SEP_AFTER_COMMENT | 2.4 | compile-pass | LEX_02_04_014_PASS_LINE_SEP_AFTER_COMMENT.ets | 行终止符位于行末单行注释后 | compile-pass |
| LEX_02_04_015_PASS_LINE_SEP_IN_PARENS | 2.4 | compile-pass | LEX_02_04_015_PASS_LINE_SEP_IN_PARENS.ets | 括号 () 内允许换行 | compile-pass |
| LEX_02_04_016_PASS_LINE_SEP_IN_ARRAY | 2.4 | compile-pass | LEX_02_04_016_PASS_LINE_SEP_IN_ARRAY.ets | 数组字面量 [] 内允许换行 | compile-pass |
| LEX_02_04_017_PASS_LINE_SEP_IN_FUNC_PARAMS | 2.4 | compile-pass | LEX_02_04_017_PASS_LINE_SEP_IN_FUNC_PARAMS.ets | 函数声明和调用的参数列表内允许换行 | compile-pass |
| LEX_02_04_018_PASS_LINE_SEP_IN_TEMPLATE_STRING | 2.4 | compile-pass | LEX_02_04_018_PASS_LINE_SEP_IN_TEMPLATE_STRING.ets | 模板字符串 ` ` 内允许换行作为内容 | compile-pass |
| LEX_02_04_019_PASS_NEWLINE_ESCAPE_IN_STRING | 2.4 | compile-pass | LEX_02_04_019_PASS_NEWLINE_ESCAPE_IN_STRING.ets | 普通字符串内允许 \n 转义序列（不是真实换行） | compile-pass |
| LEX_02_04_022_PASS_LF_IN_CHAR_LITERAL | 2.4 | compile-pass | LEX_02_04_022_PASS_LF_IN_CHAR_LITERAL.ets | 编译器实测：char 字面量 c'...' 内含真实 LF 字符编译通过（与 spec 严格性预期不一致） | compile-pass |
| LEX_02_04_030_PASS_OBJ_LITERAL_LINE_SEP | 2.4 | compile-pass | LEX_02_04_030_PASS_OBJ_LITERAL_LINE_SEP.ets | 对象字面量内换行 | compile-pass |
| LEX_02_04_031_PASS_CONDITIONAL_LINE_SEP | 2.4 | compile-pass | LEX_02_04_031_PASS_CONDITIONAL_LINE_SEP.ets | 条件表达式内换行 | compile-pass |
| LEX_02_04_032_PASS_LOOP_LINE_SEP | 2.4 | compile-pass | LEX_02_04_032_PASS_LOOP_LINE_SEP.ets | 循环语句内换行 | compile-pass |
| LEX_02_04_033_PASS_SWITCH_LINE_SEP | 2.4 | compile-pass | LEX_02_04_033_PASS_SWITCH_LINE_SEP.ets | switch 语句内换行 | compile-pass |
| LEX_02_04_034_PASS_TRY_CATCH_LINE_SEP | 2.4 | compile-pass | LEX_02_04_034_PASS_TRY_CATCH_LINE_SEP.ets | try-catch 内换行 | compile-pass |
| LEX_02_04_035_PASS_TYPE_ANNOTATION_LINE_SEP | 2.4 | compile-pass | LEX_02_04_035_PASS_TYPE_ANNOTATION_LINE_SEP.ets | 类型注解内换行 | compile-pass |
| LEX_02_04_036_PASS_GENERIC_LINE_SEP | 2.4 | compile-pass | LEX_02_04_036_PASS_GENERIC_LINE_SEP.ets | 泛型内换行 | compile-pass |
| LEX_02_04_024_RT_LF_ONLY_ARITH | 2.4 | runtime | LEX_02_04_024_RT_LF_ONLY_ARITH.ets | 仅使用 LF 风格代码的算术运行结果 | runtime |
| LEX_02_04_025_RT_CRLF_ARITH | 2.4 | runtime | LEX_02_04_025_RT_CRLF_ARITH.ets | CRLF (Windows) 风格代码的算术运行结果 | runtime |
| LEX_02_04_026_RT_MULTILINE_COMMENT_NO_EFFECT | 2.4 | runtime | LEX_02_04_026_RT_MULTILINE_COMMENT_NO_EFFECT.ets | 多行注释跨行不影响后续语句执行 | runtime |
| LEX_02_04_027_RT_TEMPLATE_STRING_NEWLINE_CONTENT | 2.4 | runtime | LEX_02_04_027_RT_TEMPLATE_STRING_NEWLINE_CONTENT.ets | 模板字符串内的实际 LF 字符成为字符串内容 | runtime |
| LEX_02_04_028_RT_CONSECUTIVE_EMPTY_LINES | 2.4 | runtime | LEX_02_04_028_RT_CONSECUTIVE_EMPTY_LINES.ets | 多个连续 LF 视为单一分隔符，不影响语句执行顺序 | runtime |
| LEX_02_04_029_RT_LINE_SEP_SEQUENCE_EQUIVALENCE | 2.4 | runtime | LEX_02_04_029_RT_LINE_SEP_SEQUENCE_EQUIVALENCE.ets | 任意行终止符序列等价于单一分隔（LF/CR/LS/PS 混合） | runtime |
| LEX_02_04_037_RT_OBJ_LITERAL_LINE_SEP | 2.4 | runtime | LEX_02_04_037_RT_OBJ_LITERAL_LINE_SEP.ets | 对象字面量内换行运行时验证 | runtime |
| LEX_02_04_038_RT_CONDITIONAL_LINE_SEP | 2.4 | runtime | LEX_02_04_038_RT_CONDITIONAL_LINE_SEP.ets | 条件表达式内换行运行时验证 | runtime |
| LEX_02_04_039_RT_LOOP_LINE_SEP | 2.4 | runtime | LEX_02_04_039_RT_LOOP_LINE_SEP.ets | 循环语句内换行运行时验证 | runtime |
| LEX_02_04_040_RT_SWITCH_LINE_SEP | 2.4 | runtime | LEX_02_04_040_RT_SWITCH_LINE_SEP.ets | switch 语句内换行运行时验证 | runtime |
| LEX_02_04_041_RT_TRY_CATCH_LINE_SEP | 2.4 | runtime | LEX_02_04_041_RT_TRY_CATCH_LINE_SEP.ets | try-catch 内换行运行时验证 | runtime |
| LEX_02_05_027_FAIL_NUMBER_THEN_LETTERS | 2.5 | compile-fail | LEX_02_05_027_FAIL_NUMBER_THEN_LETTERS.ets | 数字字面量后直接接字母，最长匹配应失败 | compile-fail |
| LEX_02_05_028_FAIL_INVALID_AT_CHAR | 2.5 | compile-fail | LEX_02_05_028_FAIL_INVALID_AT_CHAR.ets | LEX 02 05 028 FAIL INVALID AT CHAR | compile-fail |
| LEX_02_05_029_FAIL_UNTERMINATED_STRING | 2.5 | compile-fail | LEX_02_05_029_FAIL_UNTERMINATED_STRING.ets | 未闭合的字符串字面量应编译失败 | compile-fail |
| LEX_02_05_030_FAIL_INVALID_ESCAPE | 2.5 | compile-fail | LEX_02_05_030_FAIL_INVALID_ESCAPE.ets | 字符串字面量含非法 Unicode 转义 \u 应编译失败 | compile-fail |
| LEX_02_05_001_PASS_IDENTIFIER_SIMPLE | 2.5 | compile-pass | LEX_02_05_001_PASS_IDENTIFIER_SIMPLE.ets | Identifiers Token: 简单字母标识符 | compile-pass |
| LEX_02_05_002_PASS_IDENTIFIER_WITH_DIGITS | 2.5 | compile-pass | LEX_02_05_002_PASS_IDENTIFIER_WITH_DIGITS.ets | Identifiers Token: 含数字的标识符（数字不可在首位） | compile-pass |
| LEX_02_05_003_PASS_IDENTIFIER_DOLLAR | 2.5 | compile-pass | LEX_02_05_003_PASS_IDENTIFIER_DOLLAR.ets | Identifiers Token: 含 $ 的标识符 | compile-pass |
| LEX_02_05_004_PASS_IDENTIFIER_UNDERSCORE | 2.5 | compile-pass | LEX_02_05_004_PASS_IDENTIFIER_UNDERSCORE.ets | Identifiers Token: 含 _ 的标识符 | compile-pass |
| LEX_02_05_005_PASS_KEYWORD_DECLARATION | 2.5 | compile-pass | LEX_02_05_005_PASS_KEYWORD_DECLARATION.ets | Keywords Token: let / const 声明关键字 | compile-pass |
| LEX_02_05_006_PASS_KEYWORD_CONTROL_FLOW | 2.5 | compile-pass | LEX_02_05_006_PASS_KEYWORD_CONTROL_FLOW.ets | Keywords Token: if/else/while/for 流程控制关键字 | compile-pass |
| LEX_02_05_007_PASS_KEYWORD_TYPE_DECL | 2.5 | compile-pass | LEX_02_05_007_PASS_KEYWORD_TYPE_DECL.ets | Keywords Token: class/interface/enum 类型声明关键字 | compile-pass |
| LEX_02_05_008_PASS_KEYWORD_RETURN_BREAK | 2.5 | compile-pass | LEX_02_05_008_PASS_KEYWORD_RETURN_BREAK.ets | Keywords Token: return/break/continue 关键字 | compile-pass |
| LEX_02_05_009_PASS_OP_ARITHMETIC | 2.5 | compile-pass | LEX_02_05_009_PASS_OP_ARITHMETIC.ets | Operators Token: 算术运算符 + - * / % | compile-pass |
| LEX_02_05_010_PASS_OP_COMPARISON | 2.5 | compile-pass | LEX_02_05_010_PASS_OP_COMPARISON.ets | Operators Token: 比较运算符 == != < > <= >= | compile-pass |
| LEX_02_05_011_PASS_OP_LOGICAL | 2.5 | compile-pass | LEX_02_05_011_PASS_OP_LOGICAL.ets | Operators Token: 逻辑运算符 && // ! | compile-pass |
| LEX_02_05_012_PASS_OP_ASSIGNMENT | 2.5 | compile-pass | LEX_02_05_012_PASS_OP_ASSIGNMENT.ets | Operators Token: 赋值运算符 = += -= *= /= %= | compile-pass |
| LEX_02_05_013_PASS_OP_BITWISE | 2.5 | compile-pass | LEX_02_05_013_PASS_OP_BITWISE.ets | Operators Token: 位运算符 & / ^ ~ << >> >>> | compile-pass |
| LEX_02_05_014_PASS_PUNCTUATORS | 2.5 | compile-pass | LEX_02_05_014_PASS_PUNCTUATORS.ets | Punctuators Token: ( ) [ ] { } , ; : . | compile-pass |
| LEX_02_05_015_PASS_LITERAL_INTEGER | 2.5 | compile-pass | LEX_02_05_015_PASS_LITERAL_INTEGER.ets | Literals Token: 整数字面量（十进制、十六进制、八进制、二进制） | compile-pass |
| LEX_02_05_016_PASS_LITERAL_FLOAT | 2.5 | compile-pass | LEX_02_05_016_PASS_LITERAL_FLOAT.ets | Literals Token: 浮点字面量 | compile-pass |
| LEX_02_05_017_PASS_LITERAL_STRING | 2.5 | compile-pass | LEX_02_05_017_PASS_LITERAL_STRING.ets | Literals Token: 字符串字面量（单引号/双引号/模板） | compile-pass |
| LEX_02_05_018_PASS_LITERAL_BOOLEAN | 2.5 | compile-pass | LEX_02_05_018_PASS_LITERAL_BOOLEAN.ets | Literals Token: 布尔字面量 true / false | compile-pass |
| LEX_02_05_019_PASS_LITERAL_NULL_UNDEFINED | 2.5 | compile-pass | LEX_02_05_019_PASS_LITERAL_NULL_UNDEFINED.ets | Literals Token: null / undefined 字面量 | compile-pass |
| LEX_02_05_020_PASS_LONGEST_MATCH_TRIPLE_EQ | 2.5 | compile-pass | LEX_02_05_020_PASS_LONGEST_MATCH_TRIPLE_EQ.ets | 最长匹配: === 识别为单一 Token，不是 == + = | compile-pass |
| LEX_02_05_021_PASS_LONGEST_MATCH_SHIFT | 2.5 | compile-pass | LEX_02_05_021_PASS_LONGEST_MATCH_SHIFT.ets | 最长匹配: >>> 识别为单一 Token，不是 >> + > | compile-pass |
| LEX_02_05_022_PASS_LONGEST_MATCH_NULLISH | 2.5 | compile-pass | LEX_02_05_022_PASS_LONGEST_MATCH_NULLISH.ets | 最长匹配: ?? / ?. 识别为单一 Token | compile-pass |
| LEX_02_05_023_PASS_LONGEST_MATCH_ARROW | 2.5 | compile-pass | LEX_02_05_023_PASS_LONGEST_MATCH_ARROW.ets | 最长匹配: => 识别为单一 Token (箭头函数) | compile-pass |
| LEX_02_05_024_PASS_LONGEST_MATCH_INC_DEC | 2.5 | compile-pass | LEX_02_05_024_PASS_LONGEST_MATCH_INC_DEC.ets | 最长匹配: ++ / -- 识别为单一 Token | compile-pass |
| LEX_02_05_025_PASS_TOKENS_DIRECT_CONNECT | 2.5 | compile-pass | LEX_02_05_025_PASS_TOKENS_DIRECT_CONNECT.ets | 多个 Token 之间无需空白即可分隔（运算符/标点是天然分隔） | compile-pass |
| LEX_02_05_026_PASS_TOKEN_STREAM_MIXED | 2.5 | compile-pass | LEX_02_05_026_PASS_TOKEN_STREAM_MIXED.ets | 4 类 Token 在同一表达式中混合使用 | compile-pass |
| LEX_02_05_037_PASS_ASYNC_AWAIT | 2.5 | compile-pass | LEX_02_05_037_PASS_ASYNC_AWAIT.ets | async/await 关键字 | compile-pass |
| LEX_02_05_038_PASS_OPTIONAL_CHAINING | 2.5 | compile-pass | LEX_02_05_038_PASS_OPTIONAL_CHAINING.ets | 可选链运算符 ?. | compile-pass |
| LEX_02_05_039_PASS_NULLISH_COALESCING | 2.5 | compile-pass | LEX_02_05_039_PASS_NULLISH_COALESCING.ets | 空值合并运算符 ?? | compile-pass |
| LEX_02_05_040_PASS_UNICODE_IDENTIFIERS | 2.5 | compile-pass | LEX_02_05_040_PASS_UNICODE_IDENTIFIERS.ets | Unicode 标识符 | compile-pass |
| LEX_02_05_041_PASS_TEMPLATE_LITERALS | 2.5 | compile-pass | LEX_02_05_041_PASS_TEMPLATE_LITERALS.ets | 模板字面量 | compile-pass |
| LEX_02_05_042_PASS_BIGINT_LITERALS | 2.5 | compile-pass | LEX_02_05_042_PASS_BIGINT_LITERALS.ets | BigInt 字面量 | compile-pass |
| LEX_02_05_043_PASS_MORE_KEYWORDS | 2.5 | compile-pass | LEX_02_05_043_PASS_MORE_KEYWORDS.ets | 更多关键字 | compile-pass |
| LEX_02_05_031_RT_LONGEST_MATCH_EQUALITY | 2.5 | runtime | LEX_02_05_031_RT_LONGEST_MATCH_EQUALITY.ets | 最长匹配: === 与 == 的运行时语义差异 | runtime |
| LEX_02_05_032_RT_BITWISE_OPS | 2.5 | runtime | LEX_02_05_032_RT_BITWISE_OPS.ets | 位运算符 Token 的运行结果 | runtime |
| LEX_02_05_033_RT_LITERAL_VALUES | 2.5 | runtime | LEX_02_05_033_RT_LITERAL_VALUES.ets | 字面量 Token 的运行时值 | runtime |
| LEX_02_05_034_RT_COMPOUND_ASSIGNMENT | 2.5 | runtime | LEX_02_05_034_RT_COMPOUND_ASSIGNMENT.ets | 复合赋值 Token 的运行结果 | runtime |
| LEX_02_05_035_RT_KEYWORD_CONTROL | 2.5 | runtime | LEX_02_05_035_RT_KEYWORD_CONTROL.ets | 关键字 Token 控制流 | runtime |
| LEX_02_05_036_RT_INSTANCEOF_STATIC_DYNAMIC_FACTOR | 2.5 | runtime | LEX_02_05_036_RT_INSTANCEOF_STATIC_DYNAMIC_FACTOR.ets | 补充测试因子：instanceof Token 在“静态声明类型为父类、运行时实际类型为子类”场景下正确 | runtime |
| LEX_02_05_044_RT_OPTIONAL_CHAINING | 2.5 | runtime | LEX_02_05_044_RT_OPTIONAL_CHAINING.ets | 可选链运算符运行时验证 | runtime |
| LEX_02_05_045_RT_NULLISH_COALESCING | 2.5 | runtime | LEX_02_05_045_RT_NULLISH_COALESCING.ets | 空值合并运算符运行时验证 | runtime |
| LEX_02_05_046_RT_UNICODE_IDENTIFIERS | 2.5 | runtime | LEX_02_05_046_RT_UNICODE_IDENTIFIERS.ets | Unicode 标识符运行时验证 | runtime |
| LEX_02_05_047_RT_TEMPLATE_LITERALS | 2.5 | runtime | LEX_02_05_047_RT_TEMPLATE_LITERALS.ets | 模板字面量运行时验证 | runtime |
| LEX_02_05_048_RT_BIGINT_LITERALS | 2.5 | runtime | LEX_02_05_048_RT_BIGINT_LITERALS.ets | BigInt 字面量运行时验证 | runtime |
| LEX_02_06_024_FAIL_DIGIT_START | 2.6 | compile-fail | LEX_02_06_024_FAIL_DIGIT_START.ets | 标识符不能以 ASCII 数字 0-9 开头 | compile-fail |
| LEX_02_06_025_FAIL_OPERATOR_START | 2.6 | compile-fail | LEX_02_06_025_FAIL_OPERATOR_START.ets | 标识符不能以运算符字符开头 | compile-fail |
| LEX_02_06_026_FAIL_UNICODE_DIGIT_START | 2.6 | compile-fail | LEX_02_06_026_FAIL_UNICODE_DIGIT_START.ets | Unicode Nd 类（如阿拉伯-印度数字 ٠ = ٠）不能作为标识符起始 | compile-fail |
| LEX_02_06_027_FAIL_SPACE_IN_IDENTIFIER | 2.6 | compile-fail | LEX_02_06_027_FAIL_SPACE_IN_IDENTIFIER.ets | 标识符内含空格不合法 | compile-fail |
| LEX_02_06_028_FAIL_HYPHEN_IN_IDENTIFIER | 2.6 | compile-fail | LEX_02_06_028_FAIL_HYPHEN_IN_IDENTIFIER.ets | 标识符内含连字符 - 不合法（被解析为减法运算） | compile-fail |
| LEX_02_06_029_FAIL_DOT_IN_IDENTIFIER | 2.6 | compile-fail | LEX_02_06_029_FAIL_DOT_IN_IDENTIFIER.ets | 标识符内含点 . 不合法（被解析为成员访问） | compile-fail |
| LEX_02_06_030_FAIL_HARD_KEYWORD | 2.6 | compile-fail | LEX_02_06_030_FAIL_HARD_KEYWORD.ets | 硬关键字 class 不能作为标识符 | compile-fail |
| LEX_02_06_031_FAIL_TYPE_KEYWORD | 2.6 | compile-fail | LEX_02_06_031_FAIL_TYPE_KEYWORD.ets | 类型关键字 int 不能作为标识符 | compile-fail |
| LEX_02_06_032_FAIL_UESCAPE_DIGIT_START | 2.6 | compile-fail | LEX_02_06_032_FAIL_UESCAPE_DIGIT_START.ets | \u 转义解码为数字字符（如 \u0030 = '0'）作为起始应失败 | compile-fail |
| LEX_02_06_033_FAIL_UESCAPE_LONE_SURROGATE | 2.6 | compile-fail | LEX_02_06_033_FAIL_UESCAPE_LONE_SURROGATE.ets | 标识符 \u 转义为孤立代理（U+D800）应失败 | compile-fail |
| LEX_02_06_034_FAIL_EMPTY_BRACE_ESCAPE | 2.6 | compile-fail | LEX_02_06_034_FAIL_EMPTY_BRACE_ESCAPE.ets | 标识符空 \u{} 转义应失败 | compile-fail |
| LEX_02_06_042_FAIL_EMOJI_IDENTIFIER_START | 2.6 | compile-fail | LEX_02_06_042_FAIL_EMOJI_IDENTIFIER_START.ets | 补充测试因子：合法 Unicode 码点但非 ID_Start 的 emoji 不能作为标识符起始 | compile-fail |
| LEX_02_06_001_PASS_LU_LETTER_START | 2.6 | compile-pass | LEX_02_06_001_PASS_LU_LETTER_START.ets | IdentifierStart: Lu (Uppercase Letter) - A, B, Z 等大写英文字母 | compile-pass |
| LEX_02_06_002_PASS_LL_LETTER_START | 2.6 | compile-pass | LEX_02_06_002_PASS_LL_LETTER_START.ets | IdentifierStart: Ll (Lowercase Letter) - a, b, z 等小写英文字母 | compile-pass |
| LEX_02_06_003_PASS_LT_LETTER_START | 2.6 | compile-pass | LEX_02_06_003_PASS_LT_LETTER_START.ets | IdentifierStart: Lt (Titlecase Letter) - 如 ǅ (ǅ) | compile-pass |
| LEX_02_06_004_PASS_LM_LETTER_START | 2.6 | compile-pass | LEX_02_06_004_PASS_LM_LETTER_START.ets | IdentifierStart: Lm (Modifier Letter) - 如 ʰ (modifier letter small h) | compile-pass |
| LEX_02_06_005_PASS_LO_LETTER_START | 2.6 | compile-pass | LEX_02_06_005_PASS_LO_LETTER_START.ets | IdentifierStart: Lo (Other Letter) - 中/日/韩/阿/希字符 | compile-pass |
| LEX_02_06_006_PASS_DOLLAR_START | 2.6 | compile-pass | LEX_02_06_006_PASS_DOLLAR_START.ets | IdentifierStart: $ 字符 | compile-pass |
| LEX_02_06_007_PASS_UNDERSCORE_START | 2.6 | compile-pass | LEX_02_06_007_PASS_UNDERSCORE_START.ets | IdentifierStart: _ 字符 | compile-pass |
| LEX_02_06_008_PASS_UESCAPE_4HEX_START | 2.6 | compile-pass | LEX_02_06_008_PASS_UESCAPE_4HEX_START.ets | IdentifierStart: \uHHHH 转义序列起始 | compile-pass |
| LEX_02_06_009_PASS_UESCAPE_BRACE_START | 2.6 | compile-pass | LEX_02_06_009_PASS_UESCAPE_BRACE_START.ets | IdentifierStart: \u{HHHH...} 扩展转义起始 | compile-pass |
| LEX_02_06_010_PASS_DIGIT_IN_PART | 2.6 | compile-pass | LEX_02_06_010_PASS_DIGIT_IN_PART.ets | IdentifierPart: Nd (Decimal Digit) 字符 | compile-pass |
| LEX_02_06_011_PASS_ZWJ_IN_PART | 2.6 | compile-pass | LEX_02_06_011_PASS_ZWJ_IN_PART.ets | IdentifierPart: ZWJ (U+200D) 零宽连接符 | compile-pass |
| LEX_02_06_012_PASS_ZWNJ_IN_PART | 2.6 | compile-pass | LEX_02_06_012_PASS_ZWNJ_IN_PART.ets | IdentifierPart: ZWNJ (U+200C) 零宽非连接符 | compile-pass |
| LEX_02_06_013_PASS_UESCAPE_IN_PART | 2.6 | compile-pass | LEX_02_06_013_PASS_UESCAPE_IN_PART.ets | IdentifierPart: \uHHHH 转义在标识符中部 | compile-pass |
| LEX_02_06_014_PASS_UESCAPE_BRACE_IN_PART | 2.6 | compile-pass | LEX_02_06_014_PASS_UESCAPE_BRACE_IN_PART.ets | IdentifierPart: \u{HHHH...} 扩展转义在标识符中部 | compile-pass |
| LEX_02_06_015_PASS_LETTER_DIGIT_MIX | 2.6 | compile-pass | LEX_02_06_015_PASS_LETTER_DIGIT_MIX.ets | IdentifierPart: Letter + Digit + Letter 任意组合 | compile-pass |
| LEX_02_06_016_PASS_LETTER_ZWJ_LETTER | 2.6 | compile-pass | LEX_02_06_016_PASS_LETTER_ZWJ_LETTER.ets | IdentifierPart: Letter + ZWJ + Letter 组合 | compile-pass |
| LEX_02_06_017_PASS_MIXED_UNICODE_CATS | 2.6 | compile-pass | LEX_02_06_017_PASS_MIXED_UNICODE_CATS.ets | IdentifierPart: 混合 Unicode 类别（Lu + Ll + Lo + Nd） | compile-pass |
| LEX_02_06_018_PASS_CLASS_NAME | 2.6 | compile-pass | LEX_02_06_018_PASS_CLASS_NAME.ets | 标识符作为类名 | compile-pass |
| LEX_02_06_019_PASS_INTERFACE_NAME | 2.6 | compile-pass | LEX_02_06_019_PASS_INTERFACE_NAME.ets | 标识符作为接口名 | compile-pass |
| LEX_02_06_020_PASS_FUNC_PARAM_NAME | 2.6 | compile-pass | LEX_02_06_020_PASS_FUNC_PARAM_NAME.ets | 标识符作为函数名 + 参数名 | compile-pass |
| LEX_02_06_021_PASS_FIELD_METHOD_NAME | 2.6 | compile-pass | LEX_02_06_021_PASS_FIELD_METHOD_NAME.ets | 标识符作为字段名 + 方法名 | compile-pass |
| LEX_02_06_022_PASS_ENUM_NAME_MEMBERS | 2.6 | compile-pass | LEX_02_06_022_PASS_ENUM_NAME_MEMBERS.ets | 标识符作为枚举名和枚举成员名 | compile-pass |
| LEX_02_06_023_PASS_NAMESPACE_NAME | 2.6 | compile-pass | LEX_02_06_023_PASS_NAMESPACE_NAME.ets | 标识符作为命名空间名 | compile-pass |
| LEX_02_06_040_PASS_NL_LETTER_NUMBER_START | 2.6 | compile-pass | LEX_02_06_040_PASS_NL_LETTER_NUMBER_START.ets | 补充测试因子：Unicode Nl(Letter Number) 如罗马数字 U+2160 可作为 IdentifierStart（实现实测支持） | compile-pass |
| LEX_02_06_041_PASS_COMBINING_MARK_PART | 2.6 | compile-pass | LEX_02_06_041_PASS_COMBINING_MARK_PART.ets | 补充测试因子：IdentifierPart 中包含 Mn/Mc/Pc 类 Unicode 字符 | compile-pass |
| LEX_02_06_043_PASS_LONG_IDENTIFIER | 2.6 | compile-pass | LEX_02_06_043_PASS_LONG_IDENTIFIER.ets | 标识符长度 | compile-pass |
| LEX_02_06_044_PASS_CASE_SENSITIVITY | 2.6 | compile-pass | LEX_02_06_044_PASS_CASE_SENSITIVITY.ets | 标识符大小写敏感 | compile-pass |
| LEX_02_06_045_PASS_SCOPING | 2.6 | compile-pass | LEX_02_06_045_PASS_SCOPING.ets | 标识符作用域 | compile-pass |
| LEX_02_06_046_PASS_DESTRUCTURING | 2.6 | compile-pass | LEX_02_06_046_PASS_DESTRUCTURING.ets | 解构中的标识符 | compile-pass |
| LEX_02_06_035_RT_UESCAPE_EQUIVALENCE | 2.6 | runtime | LEX_02_06_035_RT_UESCAPE_EQUIVALENCE.ets | 运行时验证 \u0041 等价于 A（同一变量） | runtime |
| LEX_02_06_036_RT_UNICODE_VALUE | 2.6 | runtime | LEX_02_06_036_RT_UNICODE_VALUE.ets | 运行时验证 Unicode 标识符值访问正确 | runtime |
| LEX_02_06_037_RT_ZWJ_IDENTIFIER | 2.6 | runtime | LEX_02_06_037_RT_ZWJ_IDENTIFIER.ets | 运行时验证 ZWJ/ZWNJ 标识符正确性 | runtime |
| LEX_02_06_038_RT_MULTILANG_IDENT | 2.6 | runtime | LEX_02_06_038_RT_MULTILANG_IDENT.ets | 运行时验证多语言标识符共存 | runtime |
| LEX_02_06_039_RT_DIGIT_IDENTIFIER | 2.6 | runtime | LEX_02_06_039_RT_DIGIT_IDENTIFIER.ets | 运行时验证含数字标识符的运算 | runtime |
| LEX_02_06_048_RT_LONG_IDENTIFIER | 2.6 | runtime | LEX_02_06_048_RT_LONG_IDENTIFIER.ets | 长标识符运行时验证 | runtime |
| LEX_02_06_049_RT_CASE_SENSITIVITY | 2.6 | runtime | LEX_02_06_049_RT_CASE_SENSITIVITY.ets | 标识符大小写敏感运行时验证 | runtime |
| LEX_02_06_050_RT_SCOPING | 2.6 | runtime | LEX_02_06_050_RT_SCOPING.ets | 标识符作用域运行时验证 | runtime |
| LEX_02_07_001_FAIL_HARD_KW_CLASS | 2.7 | compile-fail | LEX_02_07_001_FAIL_HARD_KW_CLASS.ets | 硬关键字 class 不能作为标识符 | compile-fail |
| LEX_02_07_002_FAIL_HARD_KW_LET | 2.7 | compile-fail | LEX_02_07_002_FAIL_HARD_KW_LET.ets | 硬关键字 let 不能作为标识符 | compile-fail |
| LEX_02_07_003_FAIL_HARD_KW_CONST | 2.7 | compile-fail | LEX_02_07_003_FAIL_HARD_KW_CONST.ets | 硬关键字 const 不能作为标识符 | compile-fail |
| LEX_02_07_004_FAIL_HARD_KW_FUNCTION | 2.7 | compile-fail | LEX_02_07_004_FAIL_HARD_KW_FUNCTION.ets | 硬关键字 function 不能作为标识符 | compile-fail |
| LEX_02_07_005_FAIL_HARD_KW_IF | 2.7 | compile-fail | LEX_02_07_005_FAIL_HARD_KW_IF.ets | 硬关键字 if 不能作为标识符 | compile-fail |
| LEX_02_07_006_FAIL_HARD_KW_RETURN | 2.7 | compile-fail | LEX_02_07_006_FAIL_HARD_KW_RETURN.ets | 硬关键字 return 不能作为标识符 | compile-fail |
| LEX_02_07_007_FAIL_HARD_KW_NEW | 2.7 | compile-fail | LEX_02_07_007_FAIL_HARD_KW_NEW.ets | 硬关键字 new 不能作为标识符 | compile-fail |
| LEX_02_07_008_FAIL_HARD_KW_NULL | 2.7 | compile-fail | LEX_02_07_008_FAIL_HARD_KW_NULL.ets | 硬关键字 null 不能作为标识符 | compile-fail |
| LEX_02_07_009_FAIL_HARD_KW_TRUE | 2.7 | compile-fail | LEX_02_07_009_FAIL_HARD_KW_TRUE.ets | 硬关键字 true 不能作为标识符 | compile-fail |
| LEX_02_07_010_FAIL_HARD_KW_INSTANCEOF | 2.7 | compile-fail | LEX_02_07_010_FAIL_HARD_KW_INSTANCEOF.ets | 硬关键字 instanceof 不能作为标识符 | compile-fail |
| LEX_02_07_023_FAIL_TYPE_KW_INT | 2.7 | compile-fail | LEX_02_07_023_FAIL_TYPE_KW_INT.ets | 类型关键字 int 不能作为标识符 | compile-fail |
| LEX_02_07_024_FAIL_TYPE_KW_STRING | 2.7 | compile-fail | LEX_02_07_024_FAIL_TYPE_KW_STRING.ets | 类型关键字 string 不能作为标识符 | compile-fail |
| LEX_02_07_025_FAIL_TYPE_KW_BOOLEAN | 2.7 | compile-fail | LEX_02_07_025_FAIL_TYPE_KW_BOOLEAN.ets | 类型关键字 boolean 不能作为标识符 | compile-fail |
| LEX_02_07_026_FAIL_TYPE_KW_OBJECT | 2.7 | compile-fail | LEX_02_07_026_FAIL_TYPE_KW_OBJECT.ets | 类型关键字 Object 不能作为标识符 | compile-fail |
| LEX_02_07_027_FAIL_TYPE_KW_VOID | 2.7 | compile-fail | LEX_02_07_027_FAIL_TYPE_KW_VOID.ets | 类型关键字 void 不能作为标识符 | compile-fail |
| LEX_02_07_048_FAIL_VAR_DECLARATION | 2.7 | compile-fail | LEX_02_07_048_FAIL_VAR_DECLARATION.ets | var 在 ArkTS 中作变量声明关键字不可用（必须用 let 或 const） | compile-fail |
| LEX_02_07_058_FAIL_TYPE_KW_BYTE | 2.7 | compile-fail | LEX_02_07_058_FAIL_TYPE_KW_BYTE.ets | 补充测试因子：类型关键字 byte 不能作为标识符 | compile-fail |
| LEX_02_07_059_FAIL_TYPE_KW_BYTE | 2.7 | compile-fail | LEX_02_07_059_FAIL_TYPE_KW_BYTE.ets | 补充测试因子：类型关键字 Byte 不能作为标识符 | compile-fail |
| LEX_02_07_060_FAIL_TYPE_KW_SHORT | 2.7 | compile-fail | LEX_02_07_060_FAIL_TYPE_KW_SHORT.ets | 补充测试因子：类型关键字 short 不能作为标识符 | compile-fail |
| LEX_02_07_061_FAIL_TYPE_KW_SHORT | 2.7 | compile-fail | LEX_02_07_061_FAIL_TYPE_KW_SHORT.ets | 补充测试因子：类型关键字 Short 不能作为标识符 | compile-fail |
| LEX_02_07_062_FAIL_TYPE_KW_LONG | 2.7 | compile-fail | LEX_02_07_062_FAIL_TYPE_KW_LONG.ets | 补充测试因子：类型关键字 long 不能作为标识符 | compile-fail |
| LEX_02_07_063_FAIL_TYPE_KW_LONG | 2.7 | compile-fail | LEX_02_07_063_FAIL_TYPE_KW_LONG.ets | 补充测试因子：类型关键字 Long 不能作为标识符 | compile-fail |
| LEX_02_07_064_FAIL_TYPE_KW_FLOAT | 2.7 | compile-fail | LEX_02_07_064_FAIL_TYPE_KW_FLOAT.ets | 补充测试因子：类型关键字 float 不能作为标识符 | compile-fail |
| LEX_02_07_065_FAIL_TYPE_KW_FLOAT | 2.7 | compile-fail | LEX_02_07_065_FAIL_TYPE_KW_FLOAT.ets | 补充测试因子：类型关键字 Float 不能作为标识符 | compile-fail |
| LEX_02_07_066_FAIL_TYPE_KW_DOUBLE | 2.7 | compile-fail | LEX_02_07_066_FAIL_TYPE_KW_DOUBLE.ets | 补充测试因子：类型关键字 double 不能作为标识符 | compile-fail |
| LEX_02_07_067_FAIL_TYPE_KW_DOUBLE | 2.7 | compile-fail | LEX_02_07_067_FAIL_TYPE_KW_DOUBLE.ets | 补充测试因子：类型关键字 Double 不能作为标识符 | compile-fail |
| LEX_02_07_068_FAIL_TYPE_KW_CHAR | 2.7 | compile-fail | LEX_02_07_068_FAIL_TYPE_KW_CHAR.ets | 补充测试因子：类型关键字 char 不能作为标识符 | compile-fail |
| LEX_02_07_069_FAIL_TYPE_KW_CHAR | 2.7 | compile-fail | LEX_02_07_069_FAIL_TYPE_KW_CHAR.ets | 补充测试因子：类型关键字 Char 不能作为标识符 | compile-fail |
| LEX_02_07_070_FAIL_TYPE_KW_NUMBER | 2.7 | compile-fail | LEX_02_07_070_FAIL_TYPE_KW_NUMBER.ets | 补充测试因子：类型关键字 number 不能作为标识符 | compile-fail |
| LEX_02_07_071_FAIL_TYPE_KW_NUMBER | 2.7 | compile-fail | LEX_02_07_071_FAIL_TYPE_KW_NUMBER.ets | 补充测试因子：类型关键字 Number 不能作为标识符 | compile-fail |
| LEX_02_07_072_FAIL_TYPE_KW_ANY | 2.7 | compile-fail | LEX_02_07_072_FAIL_TYPE_KW_ANY.ets | 补充测试因子：类型关键字 Any 不能作为标识符 | compile-fail |
| LEX_02_07_073_FAIL_TYPE_KW_BIGINT | 2.7 | compile-fail | LEX_02_07_073_FAIL_TYPE_KW_BIGINT.ets | 补充测试因子：类型关键字 bigint 不能作为标识符 | compile-fail |
| LEX_02_07_074_FAIL_TYPE_KW_BIGINT | 2.7 | compile-fail | LEX_02_07_074_FAIL_TYPE_KW_BIGINT.ets | 补充测试因子：类型关键字 BigInt 不能作为标识符 | compile-fail |
| LEX_02_07_075_FAIL_TYPE_KW_BOOLEAN | 2.7 | compile-fail | LEX_02_07_075_FAIL_TYPE_KW_BOOLEAN.ets | 补充测试因子：类型关键字 Boolean 不能作为标识符 | compile-fail |
| LEX_02_07_076_FAIL_TYPE_KW_STRING | 2.7 | compile-fail | LEX_02_07_076_FAIL_TYPE_KW_STRING.ets | 补充测试因子：类型关键字 String 不能作为标识符 | compile-fail |
| LEX_02_07_077_FAIL_TYPE_KW_OBJECT | 2.7 | compile-fail | LEX_02_07_077_FAIL_TYPE_KW_OBJECT.ets | 补充测试因子：类型关键字 object 不能作为标识符 | compile-fail |
| LEX_02_07_011_PASS_HARD_KW_CLASS_DECL | 2.7 | compile-pass | LEX_02_07_011_PASS_HARD_KW_CLASS_DECL.ets | 硬关键字: class 用于类声明 | compile-pass |
| LEX_02_07_012_PASS_HARD_KW_INTERFACE | 2.7 | compile-pass | LEX_02_07_012_PASS_HARD_KW_INTERFACE.ets | 硬关键字: interface, extends, implements | compile-pass |
| LEX_02_07_013_PASS_HARD_KW_ENUM | 2.7 | compile-pass | LEX_02_07_013_PASS_HARD_KW_ENUM.ets | 硬关键字: enum 用于枚举声明 | compile-pass |
| LEX_02_07_014_PASS_HARD_KW_CONTROL_FLOW | 2.7 | compile-pass | LEX_02_07_014_PASS_HARD_KW_CONTROL_FLOW.ets | 硬关键字: if/else/do/while/for/switch/case/default/break/continue | compile-pass |
| LEX_02_07_015_PASS_HARD_KW_TRY_CATCH | 2.7 | compile-pass | LEX_02_07_015_PASS_HARD_KW_TRY_CATCH.ets | 硬关键字: try/catch/throw (注：catch 在 spec 中也列为软关键字) | compile-pass |
| LEX_02_07_016_PASS_HARD_KW_TYPEOF_INSTANCEOF | 2.7 | compile-pass | LEX_02_07_016_PASS_HARD_KW_TYPEOF_INSTANCEOF.ets | 硬关键字: typeof, instanceof, as | compile-pass |
| LEX_02_07_017_PASS_HARD_KW_ACCESS_MOD | 2.7 | compile-pass | LEX_02_07_017_PASS_HARD_KW_ACCESS_MOD.ets | 硬关键字: public, private, protected | compile-pass |
| LEX_02_07_018_PASS_HARD_KW_MODIFIERS | 2.7 | compile-pass | LEX_02_07_018_PASS_HARD_KW_MODIFIERS.ets | 硬关键字: static, abstract, override (final 待 ArkTS 实现) | compile-pass |
| LEX_02_07_019_PASS_HARD_KW_ASYNC_AWAIT | 2.7 | compile-pass | LEX_02_07_019_PASS_HARD_KW_ASYNC_AWAIT.ets | 硬关键字: async, await | compile-pass |
| LEX_02_07_020_PASS_HARD_KW_IMPORT_EXPORT | 2.7 | compile-pass | LEX_02_07_020_PASS_HARD_KW_IMPORT_EXPORT.ets | 硬关键字: export (import 需多文件，此处仅 export) | compile-pass |
| LEX_02_07_021_PASS_HARD_KW_LITERALS | 2.7 | compile-pass | LEX_02_07_021_PASS_HARD_KW_LITERALS.ets | 硬关键字: true, false, null, undefined | compile-pass |
| LEX_02_07_022_PASS_HARD_KW_THIS_SUPER_NEW | 2.7 | compile-pass | LEX_02_07_022_PASS_HARD_KW_THIS_SUPER_NEW.ets | 硬关键字: this, super, new, constructor | compile-pass |
| LEX_02_07_028_PASS_TYPE_INT_ALIAS | 2.7 | compile-pass | LEX_02_07_028_PASS_TYPE_INT_ALIAS.ets | 类型关键字别名: int 与 Int 同义 | compile-pass |
| LEX_02_07_029_PASS_TYPE_STRING_ALIAS | 2.7 | compile-pass | LEX_02_07_029_PASS_TYPE_STRING_ALIAS.ets | 类型关键字别名: string 与 String 同义 | compile-pass |
| LEX_02_07_030_PASS_TYPE_BOOLEAN_ALIAS | 2.7 | compile-pass | LEX_02_07_030_PASS_TYPE_BOOLEAN_ALIAS.ets | 类型关键字别名: boolean 与 Boolean 同义 | compile-pass |
| LEX_02_07_031_PASS_TYPE_BIGINT_ALIAS | 2.7 | compile-pass | LEX_02_07_031_PASS_TYPE_BIGINT_ALIAS.ets | 类型关键字别名: bigint 与 BigInt 同义 | compile-pass |
| LEX_02_07_032_PASS_TYPE_OBJECT_ALIAS | 2.7 | compile-pass | LEX_02_07_032_PASS_TYPE_OBJECT_ALIAS.ets | 类型关键字别名: Object 与 object 同义 | compile-pass |
| LEX_02_07_033_PASS_SOFT_KW_TYPE_ALIAS | 2.7 | compile-pass | LEX_02_07_033_PASS_SOFT_KW_TYPE_ALIAS.ets | 软关键字: type 用于类型别名声明 | compile-pass |
| LEX_02_07_034_PASS_SOFT_KW_NAMESPACE | 2.7 | compile-pass | LEX_02_07_034_PASS_SOFT_KW_NAMESPACE.ets | 软关键字: namespace 用于命名空间声明 | compile-pass |
| LEX_02_07_035_PASS_SOFT_KW_READONLY | 2.7 | compile-pass | LEX_02_07_035_PASS_SOFT_KW_READONLY.ets | 软关键字: readonly 修饰字段 | compile-pass |
| LEX_02_07_036_PASS_SOFT_KW_GET_SET | 2.7 | compile-pass | LEX_02_07_036_PASS_SOFT_KW_GET_SET.ets | 软关键字: get/set 作访问器 | compile-pass |
| LEX_02_07_037_PASS_SOFT_KW_FROM_KEYOF | 2.7 | compile-pass | LEX_02_07_037_PASS_SOFT_KW_FROM_KEYOF.ets | 软关键字: keyof 在类型上下文中 | compile-pass |
| LEX_02_07_038_PASS_SOFT_KW_OF | 2.7 | compile-pass | LEX_02_07_038_PASS_SOFT_KW_OF.ets | 软关键字: of 在 for-of 语句中 | compile-pass |
| LEX_02_07_040_PASS_SOFT_KW_FINALLY | 2.7 | compile-pass | LEX_02_07_040_PASS_SOFT_KW_FINALLY.ets | 软关键字: finally 在 try-catch-finally 中 | compile-pass |
| LEX_02_07_041_PASS_SOFT_KW_TYPE_IDENT | 2.7 | compile-pass | LEX_02_07_041_PASS_SOFT_KW_TYPE_IDENT.ets | 软关键字 type 在非 type-alias 上下文可作标识符 | compile-pass |
| LEX_02_07_042_PASS_SOFT_KW_FROM_IDENT | 2.7 | compile-pass | LEX_02_07_042_PASS_SOFT_KW_FROM_IDENT.ets | 软关键字 from 在非 import 上下文可作标识符 | compile-pass |
| LEX_02_07_043_PASS_SOFT_KW_OF_IDENT | 2.7 | compile-pass | LEX_02_07_043_PASS_SOFT_KW_OF_IDENT.ets | 软关键字 of 在非 for-of 上下文可作标识符 | compile-pass |
| LEX_02_07_044_PASS_SOFT_KW_GET_IDENT | 2.7 | compile-pass | LEX_02_07_044_PASS_SOFT_KW_GET_IDENT.ets | 软关键字 get 在非访问器上下文可作标识符 | compile-pass |
| LEX_02_07_045_PASS_FUTURE_KW_IS | 2.7 | compile-pass | LEX_02_07_045_PASS_FUTURE_KW_IS.ets | 未来保留软关键字: is 当前可作普通标识符 | compile-pass |
| LEX_02_07_046_PASS_FUTURE_KW_MEMO | 2.7 | compile-pass | LEX_02_07_046_PASS_FUTURE_KW_MEMO.ets | 未来保留软关键字: memo 当前可作普通标识符 | compile-pass |
| LEX_02_07_047_PASS_FUTURE_KW_STRUCT | 2.7 | compile-pass | LEX_02_07_047_PASS_FUTURE_KW_STRUCT.ets | 未来保留软关键字: struct 当前可作普通标识符（ArkUI 上下文外） | compile-pass |
| LEX_02_07_049_PASS_FUTURE_KW_YIELD | 2.7 | compile-pass | LEX_02_07_049_PASS_FUTURE_KW_YIELD.ets | 未来保留软关键字: yield 当前可作普通标识符（ArkTS 不支持 generator） | compile-pass |
| LEX_02_07_050_PASS_CASE_CLASS | 2.7 | compile-pass | LEX_02_07_050_PASS_CASE_CLASS.ets | 大小写敏感: Class（首字母大写）不是关键字 class，可作标识符 | compile-pass |
| LEX_02_07_051_PASS_CASE_LET | 2.7 | compile-pass | LEX_02_07_051_PASS_CASE_LET.ets | 大小写敏感: LET 不是关键字 let | compile-pass |
| LEX_02_07_052_PASS_CASE_MIXED | 2.7 | compile-pass | LEX_02_07_052_PASS_CASE_MIXED.ets | 大小写敏感: 混合大小写不是关键字 | compile-pass |
| LEX_02_07_078_PASS_SOFT_KW_CATCH_IDENT | 2.7 | compile-pass | LEX_02_07_078_PASS_SOFT_KW_CATCH_IDENT.ets | 补充测试因子：软关键字 catch 在普通上下文可作为标识符 | compile-pass |
| LEX_02_07_079_PASS_SOFT_KW_FINALLY_IDENT | 2.7 | compile-pass | LEX_02_07_079_PASS_SOFT_KW_FINALLY_IDENT.ets | 补充测试因子：软关键字 finally 在普通上下文可作为标识符 | compile-pass |
| LEX_02_07_080_PASS_SOFT_KW_NAMESPACE_IDENT | 2.7 | compile-pass | LEX_02_07_080_PASS_SOFT_KW_NAMESPACE_IDENT.ets | 补充测试因子：软关键字 namespace 在普通上下文可作为标识符 | compile-pass |
| LEX_02_07_081_PASS_SOFT_KW_READONLY_IDENT | 2.7 | compile-pass | LEX_02_07_081_PASS_SOFT_KW_READONLY_IDENT.ets | 补充测试因子：软关键字 readonly 在普通上下文可作为标识符 | compile-pass |
| LEX_02_07_082_PASS_SOFT_KW_SET_IDENT | 2.7 | compile-pass | LEX_02_07_082_PASS_SOFT_KW_SET_IDENT.ets | 补充测试因子：软关键字 set 在普通上下文可作为标识符 | compile-pass |
| LEX_02_07_083_PASS_SOFT_KW_DECLARE_IDENT | 2.7 | compile-pass | LEX_02_07_083_PASS_SOFT_KW_DECLARE_IDENT.ets | 补充测试因子：软关键字 declare 在普通上下文可作为标识符 | compile-pass |
| LEX_02_07_084_PASS_SOFT_KW_MODULE_IDENT | 2.7 | compile-pass | LEX_02_07_084_PASS_SOFT_KW_MODULE_IDENT.ets | 补充测试因子：软关键字 module 在普通上下文可作为标识符 | compile-pass |
| LEX_02_07_085_PASS_SOFT_KW_OUT_IDENT | 2.7 | compile-pass | LEX_02_07_085_PASS_SOFT_KW_OUT_IDENT.ets | 补充测试因子：软关键字 out 在普通上下文可作为标识符 | compile-pass |
| LEX_02_07_086_PASS_SOFT_KW_KEYOF_IDENT | 2.7 | compile-pass | LEX_02_07_086_PASS_SOFT_KW_KEYOF_IDENT.ets | 补充测试因子：软关键字 keyof 在普通上下文可作为标识符 | compile-pass |
| LEX_02_07_089_PASS_OF_KEYWORD | 2.7 | compile-pass | LEX_02_07_089_PASS_OF_KEYWORD.ets | of 关键字 | compile-pass |
| LEX_02_07_091_PASS_DO_WHILE_KEYWORD | 2.7 | compile-pass | LEX_02_07_091_PASS_DO_WHILE_KEYWORD.ets | do-while 关键字 | compile-pass |
| LEX_02_07_092_PASS_SWITCH_CASE_KEYWORD | 2.7 | compile-pass | LEX_02_07_092_PASS_SWITCH_CASE_KEYWORD.ets | switch-case 关键字 | compile-pass |
| LEX_02_07_093_PASS_THROW_KEYWORD | 2.7 | compile-pass | LEX_02_07_093_PASS_THROW_KEYWORD.ets | throw 关键字 | compile-pass |
| LEX_02_07_094_PASS_MORE_SOFT_KEYWORDS | 2.7 | compile-pass | LEX_02_07_094_PASS_MORE_SOFT_KEYWORDS.ets | 更多软关键字 | compile-pass |
| LEX_02_07_053_RT_TYPEOF | 2.7 | runtime | LEX_02_07_053_RT_TYPEOF.ets | 关键字 typeof 运行时返回字符串 | runtime |
| LEX_02_07_054_RT_INSTANCEOF | 2.7 | runtime | LEX_02_07_054_RT_INSTANCEOF.ets | 关键字 instanceof 运行时类型检查 | runtime |
| LEX_02_07_055_RT_SUPER_THIS | 2.7 | runtime | LEX_02_07_055_RT_SUPER_THIS.ets | 关键字 super/this 运行时绑定 | runtime |
| LEX_02_07_056_RT_TYPE_ALIAS | 2.7 | runtime | LEX_02_07_056_RT_TYPE_ALIAS.ets | 类型关键字主名/别名运行时同义 | runtime |
| LEX_02_07_057_RT_SOFT_KW_AS_IDENT | 2.7 | runtime | LEX_02_07_057_RT_SOFT_KW_AS_IDENT.ets | 软关键字作普通标识符运行时正常 | runtime |
| LEX_02_07_097_RT_OF_KEYWORD | 2.7 | runtime | LEX_02_07_097_RT_OF_KEYWORD.ets | of 关键字运行时验证 | runtime |
| LEX_02_07_099_RT_DO_WHILE_KEYWORD | 2.7 | runtime | LEX_02_07_099_RT_DO_WHILE_KEYWORD.ets | do-while 关键字运行时验证 | runtime |
| LEX_02_07_100_RT_SWITCH_CASE_KEYWORD | 2.7 | runtime | LEX_02_07_100_RT_SWITCH_CASE_KEYWORD.ets | switch-case 关键字运行时验证 | runtime |
| LEX_02_07_101_RT_THROW_KEYWORD | 2.7 | runtime | LEX_02_07_101_RT_THROW_KEYWORD.ets | throw 关键字运行时验证 | runtime |
| LEX_02_08_009_FAIL_LOGICAL_ASSIGNMENT_OPS | 2.8 | compile-fail | LEX_02_08_009_FAIL_LOGICAL_ASSIGNMENT_OPS.ets | &&= 和 //= 当前编译器不支持（spec 列出但实现缺失） | compile-fail |
| LEX_02_08_016_FAIL_MISSING_OPERAND | 2.8 | compile-fail | LEX_02_08_016_FAIL_MISSING_OPERAND.ets | 二元运算符缺少右操作数应产生语法错误 | compile-fail |
| LEX_02_08_017_FAIL_CONST_REASSIGN | 2.8 | compile-fail | LEX_02_08_017_FAIL_CONST_REASSIGN.ets | 对 const 变量使用赋值运算符 = 应编译失败 | compile-fail |
| LEX_02_08_018_FAIL_LITERAL_INCREMENT | 2.8 | compile-fail | LEX_02_08_018_FAIL_LITERAL_INCREMENT.ets | 自增运算符 ++ 应用于字面量（非左值）应编译失败 | compile-fail |
| LEX_02_08_019_FAIL_TERNARY_MISSING_COLON | 2.8 | compile-fail | LEX_02_08_019_FAIL_TERNARY_MISSING_COLON.ets | 三元运算符缺少冒号 : 应产生语法错误 | compile-fail |
| LEX_02_08_020_FAIL_UNBALANCED_PUNCTUATOR | 2.8 | compile-fail | LEX_02_08_020_FAIL_UNBALANCED_PUNCTUATOR.ets | 标点符号 ( ) 不配对应产生语法错误 | compile-fail |
| LEX_02_08_001_PASS_ARITHMETIC_OPS | 2.8 | compile-pass | LEX_02_08_001_PASS_ARITHMETIC_OPS.ets | 算术运算符 + - * / % ** 在数值类型上的基本组合 | compile-pass |
| LEX_02_08_002_PASS_RELATIONAL_OPS | 2.8 | compile-pass | LEX_02_08_002_PASS_RELATIONAL_OPS.ets | 关系运算符 < > <= >= 应用于数值类型 | compile-pass |
| LEX_02_08_003_PASS_EQUALITY_OPS | 2.8 | compile-pass | LEX_02_08_003_PASS_EQUALITY_OPS.ets | 相等性运算符 == != === !== 在同类型操作数上的使用 | compile-pass |
| LEX_02_08_004_PASS_LOGICAL_OPS | 2.8 | compile-pass | LEX_02_08_004_PASS_LOGICAL_OPS.ets | 逻辑运算符 && // ! 在布尔类型上的使用 | compile-pass |
| LEX_02_08_005_PASS_BITWISE_OPS | 2.8 | compile-pass | LEX_02_08_005_PASS_BITWISE_OPS.ets | 位运算符 & / ^ ~ 在整数上的使用 | compile-pass |
| LEX_02_08_006_PASS_SHIFT_OPS | 2.8 | compile-pass | LEX_02_08_006_PASS_SHIFT_OPS.ets | 移位运算符 << >> >>> 在整数上的使用 | compile-pass |
| LEX_02_08_007_PASS_ASSIGNMENT_OPS | 2.8 | compile-pass | LEX_02_08_007_PASS_ASSIGNMENT_OPS.ets | 简单赋值与算术复合赋值 = += -= *= /= %= **= | compile-pass |
| LEX_02_08_008_PASS_BITWISE_ASSIGNMENT_OPS | 2.8 | compile-pass | LEX_02_08_008_PASS_BITWISE_ASSIGNMENT_OPS.ets | 位运算复合赋值 &= /= ^= <<= >>= >>>= | compile-pass |
| LEX_02_08_010_PASS_INC_DEC_OPS | 2.8 | compile-pass | LEX_02_08_010_PASS_INC_DEC_OPS.ets | 自增自减运算符 ++ -- 的前置与后置形式 | compile-pass |
| LEX_02_08_011_PASS_TERNARY_OP | 2.8 | compile-pass | LEX_02_08_011_PASS_TERNARY_OP.ets | 三元条件运算符 ? : | compile-pass |
| LEX_02_08_012_PASS_OPTIONAL_CHAIN_NULLISH | 2.8 | compile-pass | LEX_02_08_012_PASS_OPTIONAL_CHAIN_NULLISH.ets | 可选链 ?. 与空值合并 ?? | compile-pass |
| LEX_02_08_013_PASS_SPREAD_OP | 2.8 | compile-pass | LEX_02_08_013_PASS_SPREAD_OP.ets | 展开运算符 ... 在数组与可变参数中的使用 | compile-pass |
| LEX_02_08_014_PASS_INSTANCEOF_TYPEOF | 2.8 | compile-pass | LEX_02_08_014_PASS_INSTANCEOF_TYPEOF.ets | instanceof 与 typeof 作为运算符的词法识别 | compile-pass |
| LEX_02_08_015_PASS_PUNCTUATORS | 2.8 | compile-pass | LEX_02_08_015_PASS_PUNCTUATORS.ets | 标点符号 ( ) [ ] { } , ; . : 在表达式与语句中的使用 | compile-pass |
| LEX_02_08_032_PASS_EXPONENTIATION_OP | 2.8 | compile-pass | LEX_02_08_032_PASS_EXPONENTIATION_OP.ets | 指数运算符 | compile-pass |
| LEX_02_08_033_PASS_ARROW_FUNCTION | 2.8 | compile-pass | LEX_02_08_033_PASS_ARROW_FUNCTION.ets | 箭头函数 | compile-pass |
| LEX_02_08_034_PASS_OPERATOR_PRECEDENCE | 2.8 | compile-pass | LEX_02_08_034_PASS_OPERATOR_PRECEDENCE.ets | 运算符优先级 | compile-pass |
| LEX_02_08_035_PASS_MORE_COMPOUND_ASSIGNMENT | 2.8 | compile-pass | LEX_02_08_035_PASS_MORE_COMPOUND_ASSIGNMENT.ets | 更多复合赋值 | compile-pass |
| LEX_02_08_021_RUNTIME_ARITHMETIC_RESULT | 2.8 | runtime | LEX_02_08_021_RUNTIME_ARITHMETIC_RESULT.ets | 算术运算符 + - * / % ** 运行时结果验证 | runtime |
| LEX_02_08_022_RUNTIME_RELATIONAL_RESULT | 2.8 | runtime | LEX_02_08_022_RUNTIME_RELATIONAL_RESULT.ets | 关系运算符 < > <= >= 运行时返回 boolean | runtime |
| LEX_02_08_023_RUNTIME_EQUALITY_RESULT | 2.8 | runtime | LEX_02_08_023_RUNTIME_EQUALITY_RESULT.ets | 相等性运算符 == != === !== 运行时结果 | runtime |
| LEX_02_08_024_RUNTIME_LOGICAL_SHORTCIRCUIT | 2.8 | runtime | LEX_02_08_024_RUNTIME_LOGICAL_SHORTCIRCUIT.ets | 逻辑运算符 && // 短路求值与 ! 取反 | runtime |
| LEX_02_08_025_RUNTIME_BITWISE_SHIFT_RESULT | 2.8 | runtime | LEX_02_08_025_RUNTIME_BITWISE_SHIFT_RESULT.ets | 位运算符 & / ^ ~ 与移位运算符 << >> >>> 运行时结果 | runtime |
| LEX_02_08_026_RUNTIME_COMPOUND_ASSIGNMENT | 2.8 | runtime | LEX_02_08_026_RUNTIME_COMPOUND_ASSIGNMENT.ets | 复合赋值运算符 += -= *= /= %= **= 与 a op= b 等价于 a = a op b | runtime |
| LEX_02_08_027_RUNTIME_INC_DEC_PREPOST | 2.8 | runtime | LEX_02_08_027_RUNTIME_INC_DEC_PREPOST.ets | 自增自减前置/后置运算符返回值差异 | runtime |
| LEX_02_08_028_RUNTIME_TERNARY_RESULT | 2.8 | runtime | LEX_02_08_028_RUNTIME_TERNARY_RESULT.ets | 三元运算符 ? : 根据条件选择分支 | runtime |
| LEX_02_08_029_RUNTIME_OPTIONAL_NULLISH | 2.8 | runtime | LEX_02_08_029_RUNTIME_OPTIONAL_NULLISH.ets | 可选链 ?. 在 null 时短路、空值合并 ?? 仅替换 null/undefined | runtime |
| LEX_02_08_030_RUNTIME_SPREAD_AND_INSTANCEOF | 2.8 | runtime | LEX_02_08_030_RUNTIME_SPREAD_AND_INSTANCEOF.ets | 展开运算符 ... 与 instanceof / typeof 运算符运行时语义 | runtime |
| LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR | 2.8 | runtime | LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets | 补充测试因子：?? / ?. / ??= 与 T/null 字段、参数、返回值组合 | runtime |
| LEX_02_08_036_RT_EXPONENTIATION | 2.8 | runtime | LEX_02_08_036_RT_EXPONENTIATION.ets | 指数运算符运行时验证 | runtime |
| LEX_02_08_037_RT_ARROW_FUNCTION | 2.8 | runtime | LEX_02_08_037_RT_ARROW_FUNCTION.ets | 箭头函数运行时验证 | runtime |
| LEX_02_08_038_RT_OPERATOR_PRECEDENCE | 2.8 | runtime | LEX_02_08_038_RT_OPERATOR_PRECEDENCE.ets | 运算符优先级运行时验证 | runtime |
| LEX_02_08_039_RT_MORE_COMPOUND_ASSIGNMENT | 2.8 | runtime | LEX_02_08_039_RT_MORE_COMPOUND_ASSIGNMENT.ets | 更多复合赋值运行时验证 | runtime |
| LEX_02_09_01_032_FAIL_BIGINT_INT_MIX | 2.9.1 | compile-fail | LEX_02_09_01_032_FAIL_BIGINT_INT_MIX.ets | bigint 与 int/long 混合运算不支持 | compile-fail |
| LEX_02_09_019_FAIL_LEADING_ZERO | 2.9.1 | compile-fail | LEX_02_09_019_FAIL_LEADING_ZERO.ets | 前导零语法不支持（八进制旧语法） | compile-fail |
| LEX_02_09_020_FAIL_HEX_NO_DIGIT | 2.9.1 | compile-fail | LEX_02_09_020_FAIL_HEX_NO_DIGIT.ets | 十六进制前缀后无数字 | compile-fail |
| LEX_02_09_021_FAIL_BINARY_INVALID | 2.9.1 | compile-fail | LEX_02_09_021_FAIL_BINARY_INVALID.ets | 二进制字面量包含非二进制数字 | compile-fail |
| LEX_02_09_022_FAIL_OCTAL_INVALID | 2.9.1 | compile-fail | LEX_02_09_022_FAIL_OCTAL_INVALID.ets | 八进制字面量包含非八进制数字 | compile-fail |
| LEX_02_09_001_PASS_DECIMAL | 2.9.1 | compile-pass | LEX_02_09_001_PASS_DECIMAL.ets | 十进制整数字面量 | compile-pass |
| LEX_02_09_002_PASS_HEXADECIMAL | 2.9.1 | compile-pass | LEX_02_09_002_PASS_HEXADECIMAL.ets | 十六进制整数字面量 | compile-pass |
| LEX_02_09_003_PASS_OCTAL | 2.9.1 | compile-pass | LEX_02_09_003_PASS_OCTAL.ets | 八进制整数字面量 | compile-pass |
| LEX_02_09_004_PASS_BINARY | 2.9.1 | compile-pass | LEX_02_09_004_PASS_BINARY.ets | 二进制整数字面量 | compile-pass |
| LEX_02_09_005_PASS_UNDERSCORE_DECIMAL | 2.9.1 | compile-pass | LEX_02_09_005_PASS_UNDERSCORE_DECIMAL.ets | 十进制带下划线分隔符 | compile-pass |
| LEX_02_09_006_PASS_UNDERSCORE_HEX | 2.9.1 | compile-pass | LEX_02_09_006_PASS_UNDERSCORE_HEX.ets | 十六进制带下划线分隔符 | compile-pass |
| LEX_02_09_007_PASS_FLOAT_SUFFIX | 2.9.1 | compile-pass | LEX_02_09_007_PASS_FLOAT_SUFFIX.ets | float 类型后缀 | compile-pass |
| LEX_02_09_008_PASS_BIGINT_SUFFIX | 2.9.1 | compile-pass | LEX_02_09_008_PASS_BIGINT_SUFFIX.ets | bigint 类型后缀 | compile-pass |
| LEX_02_09_009_PASS_FLOAT_STANDARD | 2.9.1 | compile-pass | LEX_02_09_009_PASS_FLOAT_STANDARD.ets | 标准浮点字面量 | compile-pass |
| LEX_02_09_01_040_PASS_NEGATIVE_LITERALS | 2.9.1 | compile-pass | LEX_02_09_01_040_PASS_NEGATIVE_LITERALS.ets | 负数字面量 | compile-pass |
| LEX_02_09_01_041_PASS_ZERO_BASES | 2.9.1 | compile-pass | LEX_02_09_01_041_PASS_ZERO_BASES.ets | 零的不同表示 | compile-pass |
| LEX_02_09_01_042_PASS_SCIENTIFIC_VARIANTS | 2.9.1 | compile-pass | LEX_02_09_01_042_PASS_SCIENTIFIC_VARIANTS.ets | 科学计数法变体 | compile-pass |
| LEX_02_09_010_PASS_SCIENTIFIC_NOTATION | 2.9.1 | compile-pass | LEX_02_09_010_PASS_SCIENTIFIC_NOTATION.ets | 科学计数法浮点字面量 | compile-pass |
| LEX_02_09_011_PASS_FLOAT_NO_LEADING_ZERO | 2.9.1 | compile-pass | LEX_02_09_011_PASS_FLOAT_NO_LEADING_ZERO.ets | 无前导零浮点字面量 | compile-pass |
| LEX_02_09_012_PASS_INT_INFER | 2.9.1 | compile-pass | LEX_02_09_012_PASS_INT_INFER.ets | 整数类型推断 | compile-pass |
| LEX_02_09_013_PASS_DOUBLE_INFER | 2.9.1 | compile-pass | LEX_02_09_013_PASS_DOUBLE_INFER.ets | 浮点类型推断 | compile-pass |
| LEX_02_09_014_PASS_LONG_INFER | 2.9.1 | compile-pass | LEX_02_09_014_PASS_LONG_INFER.ets | long 类型推断（超出 int 范围） | compile-pass |
| LEX_02_09_015_PASS_BIGINT_INFER | 2.9.1 | compile-pass | LEX_02_09_015_PASS_BIGINT_INFER.ets | bigint 类型推断 | compile-pass |
| LEX_02_09_016_PASS_INT_MAX | 2.9.1 | compile-pass | LEX_02_09_016_PASS_INT_MAX.ets | int 最大值边界 | compile-pass |
| LEX_02_09_017_PASS_INT_MIN | 2.9.1 | compile-pass | LEX_02_09_017_PASS_INT_MIN.ets | int 最小值边界 | compile-pass |
| LEX_02_09_018_PASS_LONG_OVERFLOW | 2.9.1 | compile-pass | LEX_02_09_018_PASS_LONG_OVERFLOW.ets | long 超出 int 范围 | compile-pass |
| LEX_02_09_01_028_RT_BIGINT_FUNCTION | 2.9.1 | runtime | LEX_02_09_01_028_RT_BIGINT_FUNCTION.ets | BigInt() 函数验证 | runtime |
| LEX_02_09_01_029_RT_BIGINT_ASINTN | 2.9.1 | runtime | LEX_02_09_01_029_RT_BIGINT_ASINTN.ets | BigInt.asIntN() 函数验证 | runtime |
| LEX_02_09_01_030_RT_BIGINT_ASUINTN | 2.9.1 | runtime | LEX_02_09_01_030_RT_BIGINT_ASUINTN.ets | BigInt.asUintN() 函数验证 | runtime |
| LEX_02_09_01_031_RT_BIGINT_NEGATIVE | 2.9.1 | runtime | LEX_02_09_01_031_RT_BIGINT_NEGATIVE.ets | 负数 bigint 运算验证 | runtime |
| LEX_02_09_01_043_RT_NEGATIVE_LITERALS | 2.9.1 | runtime | LEX_02_09_01_043_RT_NEGATIVE_LITERALS.ets | 负数字面量运行时验证 | runtime |
| LEX_02_09_01_044_RT_ZERO_BASES | 2.9.1 | runtime | LEX_02_09_01_044_RT_ZERO_BASES.ets | 零的不同表示运行时验证 | runtime |
| LEX_02_09_01_045_RT_SCIENTIFIC_VARIANTS | 2.9.1 | runtime | LEX_02_09_01_045_RT_SCIENTIFIC_VARIANTS.ets | 科学计数法变体运行时验证 | runtime |
| LEX_02_09_01_046_RT_LONG_MAX_VALUE | 2.9.1 | runtime | LEX_02_09_01_046_RT_LONG_MAX_VALUE.ets | long 最大值运行时验证 | runtime |
| LEX_02_09_01_047_RT_BIGINT_BOUNDARY | 2.9.1 | runtime | LEX_02_09_01_047_RT_BIGINT_BOUNDARY.ets | bigint 边界值运行时验证 | runtime |
| LEX_02_09_023_RT_BASE_EQUALITY | 2.9.1 | runtime | LEX_02_09_023_RT_BASE_EQUALITY.ets | 各进制值相等验证 | runtime |
| LEX_02_09_024_RT_FLOAT_ARITHMETIC | 2.9.1 | runtime | LEX_02_09_024_RT_FLOAT_ARITHMETIC.ets | 浮点运算验证 | runtime |
| LEX_02_09_025_RT_BIGINT_ARITHMETIC | 2.9.1 | runtime | LEX_02_09_025_RT_BIGINT_ARITHMETIC.ets | bigint 运算验证 | runtime |
| LEX_02_09_026_RT_UNDERSCORE_VALUE | 2.9.1 | runtime | LEX_02_09_026_RT_UNDERSCORE_VALUE.ets | 下划线不影响值验证 | runtime |
| LEX_02_09_027_RT_SCIENTIFIC_NOTATION | 2.9.1 | runtime | LEX_02_09_027_RT_SCIENTIFIC_NOTATION.ets | 科学计数法值验证 | runtime |
| LEX_02_09_02_012_FAIL_VALUE_TOO_LARGE_LONG | 2.9.2 | compile-fail | LEX_02_09_02_012_FAIL_VALUE_TOO_LARGE_LONG.ets | 整数值超出 long 范围 | compile-fail |
| LEX_02_09_02_013_FAIL_HEX_TOO_LARGE | 2.9.2 | compile-fail | LEX_02_09_02_013_FAIL_HEX_TOO_LARGE.ets | 十六进制值超出 long 范围 | compile-fail |
| LEX_02_09_02_014_FAIL_INT_OVERFLOW | 2.9.2 | compile-fail | LEX_02_09_02_014_FAIL_INT_OVERFLOW.ets | int 类型赋值超出范围 | compile-fail |
| LEX_02_09_02_015_FAIL_NEGATIVE_TOO_LARGE | 2.9.2 | compile-fail | LEX_02_09_02_015_FAIL_NEGATIVE_TOO_LARGE.ets | int 类型赋值超出负数范围 | compile-fail |
| LEX_02_09_02_001_PASS_DECIMAL_BASIC | 2.9.2 | compile-pass | LEX_02_09_02_001_PASS_DECIMAL_BASIC.ets | 基本十进制整数字面量 | compile-pass |
| LEX_02_09_02_002_PASS_DECIMAL_UNDERSCORE | 2.9.2 | compile-pass | LEX_02_09_02_002_PASS_DECIMAL_UNDERSCORE.ets | 十进制带下划线分隔符 | compile-pass |
| LEX_02_09_02_003_PASS_HEXADECIMAL | 2.9.2 | compile-pass | LEX_02_09_02_003_PASS_HEXADECIMAL.ets | 十六进制整数字面量 | compile-pass |
| LEX_02_09_02_004_PASS_OCTAL | 2.9.2 | compile-pass | LEX_02_09_02_004_PASS_OCTAL.ets | 八进制整数字面量 | compile-pass |
| LEX_02_09_02_005_PASS_BINARY | 2.9.2 | compile-pass | LEX_02_09_02_005_PASS_BINARY.ets | 二进制整数字面量 | compile-pass |
| LEX_02_09_02_006_PASS_TYPE_INFERENCE_INT | 2.9.2 | compile-pass | LEX_02_09_02_006_PASS_TYPE_INFERENCE_INT.ets | 整数类型推断为 int | compile-pass |
| LEX_02_09_02_007_PASS_TYPE_INFERENCE_LONG | 2.9.2 | compile-pass | LEX_02_09_02_007_PASS_TYPE_INFERENCE_LONG.ets | 整数类型推断为 long | compile-pass |
| LEX_02_09_02_008_PASS_MAX_INT | 2.9.2 | compile-pass | LEX_02_09_02_008_PASS_MAX_INT.ets | int 最大值边界 | compile-pass |
| LEX_02_09_02_009_PASS_MIN_INT | 2.9.2 | compile-pass | LEX_02_09_02_009_PASS_MIN_INT.ets | int 最小值边界 | compile-pass |
| LEX_02_09_02_010_PASS_MAX_LONG | 2.9.2 | compile-pass | LEX_02_09_02_010_PASS_MAX_LONG.ets | long 最大值边界 | compile-pass |
| LEX_02_09_02_011_PASS_MIN_LONG | 2.9.2 | compile-pass | LEX_02_09_02_011_PASS_MIN_LONG.ets | long 最小值边界 | compile-pass |
| LEX_02_09_02_024_PASS_ZERO_BASES | 2.9.2 | compile-pass | LEX_02_09_02_024_PASS_ZERO_BASES.ets | 零的不同进制表示 | compile-pass |
| LEX_02_09_02_025_PASS_NEGATIVE_BASES | 2.9.2 | compile-pass | LEX_02_09_02_025_PASS_NEGATIVE_BASES.ets | 负数进制表示 | compile-pass |
| LEX_02_09_02_016_RT_RADIX_EQUALITY | 2.9.2 | runtime | LEX_02_09_02_016_RT_RADIX_EQUALITY.ets | 各进制值相等验证 | runtime |
| LEX_02_09_02_017_RT_UNDERSCORE_VALUE | 2.9.2 | runtime | LEX_02_09_02_017_RT_UNDERSCORE_VALUE.ets | 下划线不影响值验证 | runtime |
| LEX_02_09_02_018_RT_TYPE_INFERENCE | 2.9.2 | runtime | LEX_02_09_02_018_RT_TYPE_INFERENCE.ets | 类型推断验证 | runtime |
| LEX_02_09_02_019_RT_ARITHMETIC | 2.9.2 | runtime | LEX_02_09_02_019_RT_ARITHMETIC.ets | 整数运算验证 | runtime |
| LEX_02_09_02_020_RT_NEGATIVE_ARITHMETIC | 2.9.2 | runtime | LEX_02_09_02_020_RT_NEGATIVE_ARITHMETIC.ets | 负整数运算验证 | runtime |
| LEX_02_09_02_021_RT_LONG_ARITHMETIC | 2.9.2 | runtime | LEX_02_09_02_021_RT_LONG_ARITHMETIC.ets | long 运算验证 | runtime |
| LEX_02_09_02_022_RT_TYPE_CONVERSION | 2.9.2 | runtime | LEX_02_09_02_022_RT_TYPE_CONVERSION.ets | 类型转换验证 | runtime |
| LEX_02_09_02_023_RT_INT_OVERFLOW | 2.9.2 | runtime | LEX_02_09_02_023_RT_INT_OVERFLOW.ets | 整数溢出检测验证 | runtime |
| LEX_02_09_02_026_RT_ZERO_BASES | 2.9.2 | runtime | LEX_02_09_02_026_RT_ZERO_BASES.ets | 零的不同进制表示运行时验证 | runtime |
| LEX_02_09_02_027_RT_NEGATIVE_BASES | 2.9.2 | runtime | LEX_02_09_02_027_RT_NEGATIVE_BASES.ets | 负数进制表示运行时验证 | runtime |
| LEX_02_09_02_028_RT_LONG_OVERFLOW | 2.9.2 | runtime | LEX_02_09_02_028_RT_LONG_OVERFLOW.ets | long 溢出行为运行时验证 | runtime |
| LEX_02_09_02_029_RT_BOUNDARY_ARITHMETIC | 2.9.2 | runtime | LEX_02_09_02_029_RT_BOUNDARY_ARITHMETIC.ets | int/long 边界运算运行时验证 | runtime |
| LEX_02_09_02_030_RT_TYPE_CONVERSION | 2.9.2 | runtime | LEX_02_09_02_030_RT_TYPE_CONVERSION.ets | 更多类型转换运行时验证 | runtime |
| LEX_02_09_03_009_FAIL_FLOAT_TOO_LARGE | 2.9.3 | compile-fail | LEX_02_09_03_009_FAIL_FLOAT_TOO_LARGE.ets | float 类型值超出范围 | compile-fail |
| LEX_02_09_03_010_FAIL_DOUBLE_TOO_LARGE | 2.9.3 | compile-fail | LEX_02_09_03_010_FAIL_DOUBLE_TOO_LARGE.ets | double 类型值超出范围 | compile-fail |
| LEX_02_09_03_011_FAIL_INVALID_FLOAT_SUFFIX | 2.9.3 | compile-fail | LEX_02_09_03_011_FAIL_INVALID_FLOAT_SUFFIX.ets | 无效的 float 后缀 | compile-fail |
| LEX_02_09_03_001_PASS_FLOAT_STANDARD | 2.9.3 | compile-pass | LEX_02_09_03_001_PASS_FLOAT_STANDARD.ets | 标准浮点字面量 | compile-pass |
| LEX_02_09_03_002_PASS_FLOAT_NO_LEADING_ZERO | 2.9.3 | compile-pass | LEX_02_09_03_002_PASS_FLOAT_NO_LEADING_ZERO.ets | 无前导零浮点字面量 | compile-pass |
| LEX_02_09_03_003_PASS_FLOAT_UNDERSCORE | 2.9.3 | compile-pass | LEX_02_09_03_003_PASS_FLOAT_UNDERSCORE.ets | 浮点带下划线分隔符 | compile-pass |
| LEX_02_09_03_004_PASS_SCIENTIFIC_NOTATION | 2.9.3 | compile-pass | LEX_02_09_03_004_PASS_SCIENTIFIC_NOTATION.ets | 科学计数法浮点字面量 | compile-pass |
| LEX_02_09_03_005_PASS_FLOAT_SUFFIX | 2.9.3 | compile-pass | LEX_02_09_03_005_PASS_FLOAT_SUFFIX.ets | float 类型后缀 | compile-pass |
| LEX_02_09_03_006_PASS_SCIENTIFIC_UNDERSCORE | 2.9.3 | compile-pass | LEX_02_09_03_006_PASS_SCIENTIFIC_UNDERSCORE.ets | 科学计数法带下划线 | compile-pass |
| LEX_02_09_03_007_PASS_TYPE_INFERENCE_DOUBLE | 2.9.3 | compile-pass | LEX_02_09_03_007_PASS_TYPE_INFERENCE_DOUBLE.ets | 浮点类型推断为 double | compile-pass |
| LEX_02_09_03_008_PASS_TYPE_INFERENCE_FLOAT | 2.9.3 | compile-pass | LEX_02_09_03_008_PASS_TYPE_INFERENCE_FLOAT.ets | 浮点类型推断为 float | compile-pass |
| LEX_02_09_03_020_PASS_NEGATIVE_FLOATS | 2.9.3 | compile-pass | LEX_02_09_03_020_PASS_NEGATIVE_FLOATS.ets | 负浮点数 | compile-pass |
| LEX_02_09_03_021_PASS_ZERO_FLOATS | 2.9.3 | compile-pass | LEX_02_09_03_021_PASS_ZERO_FLOATS.ets | 零浮点表示 | compile-pass |
| LEX_02_09_03_022_PASS_SCIENTIFIC_VARIANTS | 2.9.3 | compile-pass | LEX_02_09_03_022_PASS_SCIENTIFIC_VARIANTS.ets | 科学计数法变体 | compile-pass |
| LEX_02_09_03_012_RT_FLOAT_ARITHMETIC | 2.9.3 | runtime | LEX_02_09_03_012_RT_FLOAT_ARITHMETIC.ets | 浮点运算验证 | runtime |
| LEX_02_09_03_013_RT_SCIENTIFIC_NOTATION | 2.9.3 | runtime | LEX_02_09_03_013_RT_SCIENTIFIC_NOTATION.ets | 科学计数法值验证 | runtime |
| LEX_02_09_03_014_RT_FLOAT_SUFFIX | 2.9.3 | runtime | LEX_02_09_03_014_RT_FLOAT_SUFFIX.ets | float 后缀值验证 | runtime |
| LEX_02_09_03_015_RT_UNDERSCORE_VALUE | 2.9.3 | runtime | LEX_02_09_03_015_RT_UNDERSCORE_VALUE.ets | 下划线不影响值验证 | runtime |
| LEX_02_09_03_016_RT_NAN_DETECTION | 2.9.3 | runtime | LEX_02_09_03_016_RT_NAN_DETECTION.ets | NaN 检测验证 | runtime |
| LEX_02_09_03_017_RT_INFINITY_DETECTION | 2.9.3 | runtime | LEX_02_09_03_017_RT_INFINITY_DETECTION.ets | Infinity 检测验证 | runtime |
| LEX_02_09_03_018_RT_PRECISION_LOSS | 2.9.3 | runtime | LEX_02_09_03_018_RT_PRECISION_LOSS.ets | 精度丢失验证 | runtime |
| LEX_02_09_03_019_RT_FLOAT_DOUBLE_MIX | 2.9.3 | runtime | LEX_02_09_03_019_RT_FLOAT_DOUBLE_MIX.ets | float 与 double 混合运算验证 | runtime |
| LEX_02_09_03_023_RT_NEGATIVE_FLOATS | 2.9.3 | runtime | LEX_02_09_03_023_RT_NEGATIVE_FLOATS.ets | 负浮点数运行时验证 | runtime |
| LEX_02_09_03_024_RT_ZERO_FLOATS | 2.9.3 | runtime | LEX_02_09_03_024_RT_ZERO_FLOATS.ets | 零浮点表示运行时验证 | runtime |
| LEX_02_09_03_025_RT_SCIENTIFIC_VARIANTS | 2.9.3 | runtime | LEX_02_09_03_025_RT_SCIENTIFIC_VARIANTS.ets | 科学计数法变体运行时验证 | runtime |
| LEX_02_09_03_026_RT_SPECIAL_VALUE_OPS | 2.9.3 | runtime | LEX_02_09_03_026_RT_SPECIAL_VALUE_OPS.ets | 特殊值运算运行时验证 | runtime |
| LEX_02_09_03_027_RT_FLOAT_DOUBLE_PRECISION | 2.9.3 | runtime | LEX_02_09_03_027_RT_FLOAT_DOUBLE_PRECISION.ets | float vs double 精度运行时验证 | runtime |
| LEX_02_09_04_006_FAIL_BIGINT_FLOAT_SUFFIX | 2.9.4 | compile-fail | LEX_02_09_04_006_FAIL_BIGINT_FLOAT_SUFFIX.ets | bigint 不能有小数点 | compile-fail |
| LEX_02_09_04_007_FAIL_BIGINT_SCIENTIFIC_NOTATION | 2.9.4 | compile-fail | LEX_02_09_04_007_FAIL_BIGINT_SCIENTIFIC_NOTATION.ets | bigint 不能使用科学计数法 | compile-fail |
| LEX_02_09_04_012_FAIL_HEX_BIGINT_NOT_SUPPORTED | 2.9.4 | compile-fail | LEX_02_09_04_012_FAIL_HEX_BIGINT_NOT_SUPPORTED.ets | 十六进制 bigint 不支持 | compile-fail |
| LEX_02_09_04_013_FAIL_INVALID_HEX_BIGINT | 2.9.4 | compile-fail | LEX_02_09_04_013_FAIL_INVALID_HEX_BIGINT.ets | 无效十六进制 bigint | compile-fail |
| LEX_02_09_04_001_PASS_BIGINT_BASIC | 2.9.4 | compile-pass | LEX_02_09_04_001_PASS_BIGINT_BASIC.ets | 基本 bigint 字面量 | compile-pass |
| LEX_02_09_04_002_PASS_BIGINT_UNDERSCORE | 2.9.4 | compile-pass | LEX_02_09_04_002_PASS_BIGINT_UNDERSCORE.ets | bigint 带下划线分隔符 | compile-pass |
| LEX_02_09_04_003_PASS_BIGINT_NEGATIVE | 2.9.4 | compile-pass | LEX_02_09_04_003_PASS_BIGINT_NEGATIVE.ets | 负 bigint 字面量 | compile-pass |
| LEX_02_09_04_004_PASS_BIGINT_LARGE_VALUE | 2.9.4 | compile-pass | LEX_02_09_04_004_PASS_BIGINT_LARGE_VALUE.ets | 大数值 bigint | compile-pass |
| LEX_02_09_04_005_PASS_BIGINT_TYPE_INFERENCE | 2.9.4 | compile-pass | LEX_02_09_04_005_PASS_BIGINT_TYPE_INFERENCE.ets | bigint 类型推断 | compile-pass |
| LEX_02_09_04_018_PASS_ZERO_BIGINT | 2.9.4 | compile-pass | LEX_02_09_04_018_PASS_ZERO_BIGINT.ets | 零 bigint | compile-pass |
| LEX_02_09_04_019_PASS_BIGINT_DIV_MOD | 2.9.4 | compile-pass | LEX_02_09_04_019_PASS_BIGINT_DIV_MOD.ets | bigint 除法/取模 | compile-pass |
| LEX_02_09_04_008_RT_BIGINT_ARITHMETIC | 2.9.4 | runtime | LEX_02_09_04_008_RT_BIGINT_ARITHMETIC.ets | bigint 运算验证 | runtime |
| LEX_02_09_04_009_RT_BIGINT_UNDERSCORE_VALUE | 2.9.4 | runtime | LEX_02_09_04_009_RT_BIGINT_UNDERSCORE_VALUE.ets | 下划线不影响值验证 | runtime |
| LEX_02_09_04_010_RT_BIGINT_CONVERSION | 2.9.4 | runtime | LEX_02_09_04_010_RT_BIGINT_CONVERSION.ets | BigInt 转换函数验证 | runtime |
| LEX_02_09_04_011_RT_BIGINT_COMPARISON | 2.9.4 | runtime | LEX_02_09_04_011_RT_BIGINT_COMPARISON.ets | bigint 比较验证 | runtime |
| LEX_02_09_04_014_RT_BIGINT_ASINTN | 2.9.4 | runtime | LEX_02_09_04_014_RT_BIGINT_ASINTN.ets | asIntN 函数验证 | runtime |
| LEX_02_09_04_015_RT_BIGINT_ASUINTN | 2.9.4 | runtime | LEX_02_09_04_015_RT_BIGINT_ASUINTN.ets | asUintN 函数验证 | runtime |
| LEX_02_09_04_016_RT_BIGINT_CONVERSION_EDGE | 2.9.4 | runtime | LEX_02_09_04_016_RT_BIGINT_CONVERSION_EDGE.ets | BigInt 转换边界情况 | runtime |
| LEX_02_09_04_017_RT_BIGINT_BITWISE | 2.9.4 | runtime | LEX_02_09_04_017_RT_BIGINT_BITWISE.ets | bigint 位运算验证 | runtime |
| LEX_02_09_04_020_RT_ZERO_BIGINT | 2.9.4 | runtime | LEX_02_09_04_020_RT_ZERO_BIGINT.ets | 零 bigint 运行时验证 | runtime |
| LEX_02_09_04_021_RT_BIGINT_DIV_MOD | 2.9.4 | runtime | LEX_02_09_04_021_RT_BIGINT_DIV_MOD.ets | bigint 除法/取模运行时验证 | runtime |
| LEX_02_09_04_022_RT_BIGINT_BOUNDARY | 2.9.4 | runtime | LEX_02_09_04_022_RT_BIGINT_BOUNDARY.ets | bigint 边界值运行时验证 | runtime |
| LEX_02_09_04_023_RT_BIGINT_LONG_CONVERSION | 2.9.4 | runtime | LEX_02_09_04_023_RT_BIGINT_LONG_CONVERSION.ets | bigint 与 long 转换运行时验证 | runtime |
| LEX_02_09_04_024_RT_BIGINT_STRING | 2.9.4 | runtime | LEX_02_09_04_024_RT_BIGINT_STRING.ets | bigint 字符串转换运行时验证 | runtime |
| LEX_02_09_05_007_FAIL_INVALID_BOOLEAN | 2.9.5 | compile-fail | LEX_02_09_05_007_FAIL_INVALID_BOOLEAN.ets | 无效布尔值 | compile-fail |
| LEX_02_09_05_012_FAIL_BOOLEAN_INT_MIX | 2.9.5 | compile-fail | LEX_02_09_05_012_FAIL_BOOLEAN_INT_MIX.ets | 布尔与整数类型隔离 | compile-fail |
| LEX_02_09_05_001_PASS_BOOLEAN_BASIC | 2.9.5 | compile-pass | LEX_02_09_05_001_PASS_BOOLEAN_BASIC.ets | 基本布尔字面量 | compile-pass |
| LEX_02_09_05_002_PASS_BOOLEAN_TYPE_INFERENCE | 2.9.5 | compile-pass | LEX_02_09_05_002_PASS_BOOLEAN_TYPE_INFERENCE.ets | 布尔类型推断 | compile-pass |
| LEX_02_09_05_003_PASS_BOOLEAN_LOGICAL | 2.9.5 | compile-pass | LEX_02_09_05_003_PASS_BOOLEAN_LOGICAL.ets | 布尔逻辑运算 | compile-pass |
| LEX_02_09_05_004_PASS_BOOLEAN_NOT | 2.9.5 | compile-pass | LEX_02_09_05_004_PASS_BOOLEAN_NOT.ets | 布尔 NOT 运算 | compile-pass |
| LEX_02_09_05_005_PASS_BOOLEAN_COMPARISON | 2.9.5 | compile-pass | LEX_02_09_05_005_PASS_BOOLEAN_COMPARISON.ets | 布尔比较运算 | compile-pass |
| LEX_02_09_05_006_PASS_BOOLEAN_USAGE | 2.9.5 | compile-pass | LEX_02_09_05_006_PASS_BOOLEAN_USAGE.ets | 布尔赋值与使用 | compile-pass |
| LEX_02_09_05_014_PASS_BOOLEAN_ARRAY | 2.9.5 | compile-pass | LEX_02_09_05_014_PASS_BOOLEAN_ARRAY.ets | 布尔数组 | compile-pass |
| LEX_02_09_05_017_PASS_BOOLEAN_DEFAULT | 2.9.5 | compile-pass | LEX_02_09_05_017_PASS_BOOLEAN_DEFAULT.ets | 布尔默认值 | compile-pass |
| LEX_02_09_05_018_PASS_BOOLEAN_LOOP | 2.9.5 | compile-pass | LEX_02_09_05_018_PASS_BOOLEAN_LOOP.ets | 布尔在循环中 | compile-pass |
| LEX_02_09_05_019_PASS_BOOLEAN_FUNC_PARAM | 2.9.5 | compile-pass | LEX_02_09_05_019_PASS_BOOLEAN_FUNC_PARAM.ets | 布尔函数参数 | compile-pass |
| LEX_02_09_05_008_RT_BOOLEAN_LOGICAL | 2.9.5 | runtime | LEX_02_09_05_008_RT_BOOLEAN_LOGICAL.ets | 布尔逻辑运算正确性 | runtime |
| LEX_02_09_05_009_RT_BOOLEAN_COMPARISON | 2.9.5 | runtime | LEX_02_09_05_009_RT_BOOLEAN_COMPARISON.ets | 布尔比较正确性 | runtime |
| LEX_02_09_05_010_RT_BOOLEAN_NOT | 2.9.5 | runtime | LEX_02_09_05_010_RT_BOOLEAN_NOT.ets | 布尔 NOT 运算正确性 | runtime |
| LEX_02_09_05_011_RT_SHORT_CIRCUIT | 2.9.5 | runtime | LEX_02_09_05_011_RT_SHORT_CIRCUIT.ets | 短路求值验证 | runtime |
| LEX_02_09_05_013_RT_BOOLEAN_TO_STRING | 2.9.5 | runtime | LEX_02_09_05_013_RT_BOOLEAN_TO_STRING.ets | 布尔转字符串验证 | runtime |
| LEX_02_09_05_015_RT_CONDITIONAL | 2.9.5 | runtime | LEX_02_09_05_015_RT_CONDITIONAL.ets | 条件表达式验证 | runtime |
| LEX_02_09_05_016_RT_OPERATOR_PRECEDENCE | 2.9.5 | runtime | LEX_02_09_05_016_RT_OPERATOR_PRECEDENCE.ets | 运算优先级验证 | runtime |
| LEX_02_09_05_020_RT_BOOLEAN_DEFAULT | 2.9.5 | runtime | LEX_02_09_05_020_RT_BOOLEAN_DEFAULT.ets | 布尔默认值运行时验证 | runtime |
| LEX_02_09_05_021_RT_BOOLEAN_LOOP | 2.9.5 | runtime | LEX_02_09_05_021_RT_BOOLEAN_LOOP.ets | 布尔在循环中运行时验证 | runtime |
| LEX_02_09_05_022_RT_BOOLEAN_FUNC_PARAM | 2.9.5 | runtime | LEX_02_09_05_022_RT_BOOLEAN_FUNC_PARAM.ets | 布尔函数参数运行时验证 | runtime |
| LEX_02_09_05_023_RT_BOOLEAN_TYPE_GUARD | 2.9.5 | runtime | LEX_02_09_05_023_RT_BOOLEAN_TYPE_GUARD.ets | 布尔类型守卫运行时验证 | runtime |
| LEX_02_09_06_008_FAIL_UNESCAPED_NEWLINE | 2.9.6 | compile-fail | LEX_02_09_06_008_FAIL_UNESCAPED_NEWLINE.ets | 字符串中未转义换行 | compile-fail |
| LEX_02_09_06_009_FAIL_INVALID_ESCAPE | 2.9.6 | compile-fail | LEX_02_09_06_009_FAIL_INVALID_ESCAPE.ets | 无效转义序列 | compile-fail |
| LEX_02_09_06_010_FAIL_UNTERMINATED_STRING | 2.9.6 | compile-fail | LEX_02_09_06_010_FAIL_UNTERMINATED_STRING.ets | 未终止的字符串 | compile-fail |
| LEX_02_09_06_011_FAIL_INVALID_HEX_ESCAPE | 2.9.6 | compile-fail | LEX_02_09_06_011_FAIL_INVALID_HEX_ESCAPE.ets | 无效十六进制转义 | compile-fail |
| LEX_02_09_06_012_FAIL_INVALID_UNICODE_ESCAPE | 2.9.6 | compile-fail | LEX_02_09_06_012_FAIL_INVALID_UNICODE_ESCAPE.ets | 无效 Unicode 转义 | compile-fail |
| LEX_02_09_06_001_PASS_DOUBLE_QUOTE | 2.9.6 | compile-pass | LEX_02_09_06_001_PASS_DOUBLE_QUOTE.ets | 双引号字符串 | compile-pass |
| LEX_02_09_06_002_PASS_SINGLE_QUOTE | 2.9.6 | compile-pass | LEX_02_09_06_002_PASS_SINGLE_QUOTE.ets | 单引号字符串 | compile-pass |
| LEX_02_09_06_003_PASS_QUOTE_ESCAPE | 2.9.6 | compile-pass | LEX_02_09_06_003_PASS_QUOTE_ESCAPE.ets | 引号和反斜杠转义 | compile-pass |
| LEX_02_09_06_004_PASS_CONTROL_ESCAPE | 2.9.6 | compile-pass | LEX_02_09_06_004_PASS_CONTROL_ESCAPE.ets | 控制字符转义 | compile-pass |
| LEX_02_09_06_005_PASS_HEX_ESCAPE | 2.9.6 | compile-pass | LEX_02_09_06_005_PASS_HEX_ESCAPE.ets | 十六进制转义 | compile-pass |
| LEX_02_09_06_006_PASS_UNICODE_ESCAPE | 2.9.6 | compile-pass | LEX_02_09_06_006_PASS_UNICODE_ESCAPE.ets | Unicode 转义 | compile-pass |
| LEX_02_09_06_007_PASS_TYPE_INFERENCE | 2.9.6 | compile-pass | LEX_02_09_06_007_PASS_TYPE_INFERENCE.ets | 类型推断 | compile-pass |
| LEX_02_09_06_018_PASS_NULL_ESCAPE | 2.9.6 | compile-pass | LEX_02_09_06_018_PASS_NULL_ESCAPE.ets | 空字符转义 | compile-pass |
| LEX_02_09_06_019_PASS_OTHER_ESCAPE | 2.9.6 | compile-pass | LEX_02_09_06_019_PASS_OTHER_ESCAPE.ets | 其他单字符转义 | compile-pass |
| LEX_02_09_06_024_PASS_STRING_INTERPOLATION | 2.9.6 | compile-pass | LEX_02_09_06_024_PASS_STRING_INTERPOLATION.ets | 字符串插值 | compile-pass |
| LEX_02_09_06_025_PASS_STRING_METHODS | 2.9.6 | compile-pass | LEX_02_09_06_025_PASS_STRING_METHODS.ets | 字符串方法 | compile-pass |
| LEX_02_09_06_026_PASS_STRING_CONDITIONAL | 2.9.6 | compile-pass | LEX_02_09_06_026_PASS_STRING_CONDITIONAL.ets | 字符串条件表达式 | compile-pass |
| LEX_02_09_06_027_PASS_STRING_ARRAY | 2.9.6 | compile-pass | LEX_02_09_06_027_PASS_STRING_ARRAY.ets | 字符串数组 | compile-pass |
| LEX_02_09_06_013_RT_STRING_CONCAT | 2.9.6 | runtime | LEX_02_09_06_013_RT_STRING_CONCAT.ets | 字符串拼接验证 | runtime |
| LEX_02_09_06_014_RT_ESCAPE_VALUES | 2.9.6 | runtime | LEX_02_09_06_014_RT_ESCAPE_VALUES.ets | 转义序列值验证 | runtime |
| LEX_02_09_06_015_RT_STRING_LENGTH | 2.9.6 | runtime | LEX_02_09_06_015_RT_STRING_LENGTH.ets | 字符串长度验证 | runtime |
| LEX_02_09_06_016_RT_STRING_COMPARISON | 2.9.6 | runtime | LEX_02_09_06_016_RT_STRING_COMPARISON.ets | 字符串比较验证 | runtime |
| LEX_02_09_06_017_RT_QUOTE_EQUIVALENCE | 2.9.6 | runtime | LEX_02_09_06_017_RT_QUOTE_EQUIVALENCE.ets | 单引号双引号等价验证 | runtime |
| LEX_02_09_06_020_RT_STRING_INDEX | 2.9.6 | runtime | LEX_02_09_06_020_RT_STRING_INDEX.ets | 字符串索引访问验证 | runtime |
| LEX_02_09_06_021_RT_STRING_TO_NUMBER | 2.9.6 | runtime | LEX_02_09_06_021_RT_STRING_TO_NUMBER.ets | 字符串与数字转换验证 | runtime |
| LEX_02_09_06_022_RT_EMPTY_STRING | 2.9.6 | runtime | LEX_02_09_06_022_RT_EMPTY_STRING.ets | 空字符串操作验证 | runtime |
| LEX_02_09_06_023_RT_NULL_ESCAPE_VALUE | 2.9.6 | runtime | LEX_02_09_06_023_RT_NULL_ESCAPE_VALUE.ets | 空字符转义值验证 | runtime |
| LEX_02_09_06_028_RT_STRING_INTERPOLATION | 2.9.6 | runtime | LEX_02_09_06_028_RT_STRING_INTERPOLATION.ets | 字符串插值运行时验证 | runtime |
| LEX_02_09_06_029_RT_STRING_METHODS | 2.9.6 | runtime | LEX_02_09_06_029_RT_STRING_METHODS.ets | 字符串方法运行时验证 | runtime |
| LEX_02_09_06_030_RT_STRING_CONDITIONAL | 2.9.6 | runtime | LEX_02_09_06_030_RT_STRING_CONDITIONAL.ets | 字符串条件表达式运行时验证 | runtime |
| LEX_02_09_06_031_RT_STRING_ARRAY | 2.9.6 | runtime | LEX_02_09_06_031_RT_STRING_ARRAY.ets | 字符串数组运行时验证 | runtime |
| LEX_02_09_07_006_FAIL_UNESCAPED_BACKTICK | 2.9.7 | compile-fail | LEX_02_09_07_006_FAIL_UNESCAPED_BACKTICK.ets | 未转义的反引号 | compile-fail |
| LEX_02_09_07_001_PASS_BASIC_MULTILINE | 2.9.7 | compile-pass | LEX_02_09_07_001_PASS_BASIC_MULTILINE.ets | 基本多行字符串 | compile-pass |
| LEX_02_09_07_002_PASS_NEWLINE | 2.9.7 | compile-pass | LEX_02_09_07_002_PASS_NEWLINE.ets | 包含换行符 | compile-pass |
| LEX_02_09_07_003_PASS_ESCAPE | 2.9.7 | compile-pass | LEX_02_09_07_003_PASS_ESCAPE.ets | 转义序列 | compile-pass |
| LEX_02_09_07_004_PASS_LINE_CONTINUATION | 2.9.7 | compile-pass | LEX_02_09_07_004_PASS_LINE_CONTINUATION.ets | 行续接 | compile-pass |
| LEX_02_09_07_005_PASS_LEADING_SPACES | 2.9.7 | compile-pass | LEX_02_09_07_005_PASS_LEADING_SPACES.ets | 前导空格保留 | compile-pass |
| LEX_02_09_07_010_PASS_MULTILINE_INTERPOLATION | 2.9.7 | compile-pass | LEX_02_09_07_010_PASS_MULTILINE_INTERPOLATION.ets | 多行字符串插值 | compile-pass |
| LEX_02_09_07_011_PASS_MULTILINE_FUNC | 2.9.7 | compile-pass | LEX_02_09_07_011_PASS_MULTILINE_FUNC.ets | 多行字符串在函数中 | compile-pass |
| LEX_02_09_07_012_PASS_SPECIAL_CHARS | 2.9.7 | compile-pass | LEX_02_09_07_012_PASS_SPECIAL_CHARS.ets | 特殊字符在多行字符串中 | compile-pass |
| LEX_02_09_07_007_RT_MULTILINE_VALUE | 2.9.7 | runtime | LEX_02_09_07_007_RT_MULTILINE_VALUE.ets | 多行字符串值验证 | runtime |
| LEX_02_09_07_008_RT_ESCAPE_VALUE | 2.9.7 | runtime | LEX_02_09_07_008_RT_ESCAPE_VALUE.ets | 转义序列值验证 | runtime |
| LEX_02_09_07_009_RT_LEADING_SPACES | 2.9.7 | runtime | LEX_02_09_07_009_RT_LEADING_SPACES.ets | 前导空格保留验证 | runtime |
| LEX_02_09_07_013_RT_MULTILINE_INTERPOLATION | 2.9.7 | runtime | LEX_02_09_07_013_RT_MULTILINE_INTERPOLATION.ets | 多行字符串插值运行时验证 | runtime |
| LEX_02_09_07_014_RT_MULTILINE_LENGTH | 2.9.7 | runtime | LEX_02_09_07_014_RT_MULTILINE_LENGTH.ets | 多行字符串长度运行时验证 | runtime |
| LEX_02_09_07_015_RT_MULTILINE_COMPARISON | 2.9.7 | runtime | LEX_02_09_07_015_RT_MULTILINE_COMPARISON.ets | 多行字符串比较运行时验证 | runtime |
| LEX_02_09_07_016_RT_MULTILINE_FUNC | 2.9.7 | runtime | LEX_02_09_07_016_RT_MULTILINE_FUNC.ets | 多行字符串在函数中运行时验证 | runtime |
| LEX_02_09_08_005_FAIL_UNDEFINED_AS_IDENTIFIER | 2.9.8 | compile-fail | LEX_02_09_08_005_FAIL_UNDEFINED_AS_IDENTIFIER.ets | undefined 不能作为标识符 | compile-fail |
| LEX_02_09_08_001_PASS_UNDEFINED_BASIC | 2.9.8 | compile-pass | LEX_02_09_08_001_PASS_UNDEFINED_BASIC.ets | 基本 undefined | compile-pass |
| LEX_02_09_08_002_PASS_UNDEFINED_TYPE | 2.9.8 | compile-pass | LEX_02_09_08_002_PASS_UNDEFINED_TYPE.ets | undefined 类型 | compile-pass |
| LEX_02_09_08_003_PASS_UNDEFINED_USAGE | 2.9.8 | compile-pass | LEX_02_09_08_003_PASS_UNDEFINED_USAGE.ets | undefined 使用场景 | compile-pass |
| LEX_02_09_08_004_PASS_UNDEFINED_COMPARISON | 2.9.8 | compile-pass | LEX_02_09_08_004_PASS_UNDEFINED_COMPARISON.ets | undefined 比较运算 | compile-pass |
| LEX_02_09_08_009_PASS_UNDEFINED_DEFAULT_PARAM | 2.9.8 | compile-pass | LEX_02_09_08_009_PASS_UNDEFINED_DEFAULT_PARAM.ets | undefined 作为默认参数值 | compile-pass |
| LEX_02_09_08_010_PASS_UNDEFINED_UNION_TYPE | 2.9.8 | compile-pass | LEX_02_09_08_010_PASS_UNDEFINED_UNION_TYPE.ets | undefined 在联合类型中 | compile-pass |
| LEX_02_09_08_011_PASS_UNDEFINED_OPTIONAL_PARAM | 2.9.8 | compile-pass | LEX_02_09_08_011_PASS_UNDEFINED_OPTIONAL_PARAM.ets | undefined 在可选参数中 | compile-pass |
| LEX_02_09_08_012_PASS_UNDEFINED_ARRAY_INIT | 2.9.8 | compile-pass | LEX_02_09_08_012_PASS_UNDEFINED_ARRAY_INIT.ets | undefined 在数组初始化中 | compile-pass |
| LEX_02_09_08_013_PASS_UNDEFINED_SWITCH_CASE | 2.9.8 | compile-pass | LEX_02_09_08_013_PASS_UNDEFINED_SWITCH_CASE.ets | undefined 在 switch/case 中 | compile-pass |
| LEX_02_09_08_014_PASS_UNDEFINED_LOGICAL_OP | 2.9.8 | compile-pass | LEX_02_09_08_014_PASS_UNDEFINED_LOGICAL_OP.ets | undefined 在逻辑运算中 | compile-pass |
| LEX_02_09_08_006_RT_UNDEFINED_VALUE | 2.9.8 | runtime | LEX_02_09_08_006_RT_UNDEFINED_VALUE.ets | undefined 值验证 | runtime |
| LEX_02_09_08_007_RT_UNDEFINED_COMPARISON | 2.9.8 | runtime | LEX_02_09_08_007_RT_UNDEFINED_COMPARISON.ets | undefined 比较验证 | runtime |
| LEX_02_09_08_008_RT_UNDEFINED_TYPE_CHECK | 2.9.8 | runtime | LEX_02_09_08_008_RT_UNDEFINED_TYPE_CHECK.ets | undefined 类型检查 | runtime |
| LEX_02_09_08_015_RT_UNDEFINED_STRING_CONCAT | 2.9.8 | runtime | LEX_02_09_08_015_RT_UNDEFINED_STRING_CONCAT.ets | undefined 在字符串连接中 | runtime |
| LEX_02_09_08_016_RT_UNDEFINED_TEMPLATE_STRING | 2.9.8 | runtime | LEX_02_09_08_016_RT_UNDEFINED_TEMPLATE_STRING.ets | undefined 在模板字符串中 | runtime |
| LEX_02_09_08_017_RT_UNDEFINED_FUNC_ARG | 2.9.8 | runtime | LEX_02_09_08_017_RT_UNDEFINED_FUNC_ARG.ets | undefined 作为函数参数 | runtime |
| LEX_02_09_08_018_RT_UNDEFINED_OBJ_PROPERTY | 2.9.8 | runtime | LEX_02_09_08_018_RT_UNDEFINED_OBJ_PROPERTY.ets | undefined 在对象属性访问中 | runtime |
| LEX_02_09_08_019_RT_UNDEFINED_OPTIONAL_CHAIN | 2.9.8 | runtime | LEX_02_09_08_019_RT_UNDEFINED_OPTIONAL_CHAIN.ets | undefined 在可选链中 | runtime |
| LEX_02_09_08_020_RT_UNDEFINED_NULLISH_COAL | 2.9.8 | runtime | LEX_02_09_08_020_RT_UNDEFINED_NULLISH_COAL.ets | undefined 在空值合并中 | runtime |
| LEX_02_09_09_005_FAIL_NULL_AS_IDENTIFIER | 2.9.9 | compile-fail | LEX_02_09_09_005_FAIL_NULL_AS_IDENTIFIER.ets | null 不能作为标识符 | compile-fail |
| LEX_02_09_09_001_PASS_NULL_BASIC | 2.9.9 | compile-pass | LEX_02_09_09_001_PASS_NULL_BASIC.ets | 基本 null | compile-pass |
| LEX_02_09_09_002_PASS_NULL_TYPE | 2.9.9 | compile-pass | LEX_02_09_09_002_PASS_NULL_TYPE.ets | null 类型 | compile-pass |
| LEX_02_09_09_003_PASS_NULL_USAGE | 2.9.9 | compile-pass | LEX_02_09_09_003_PASS_NULL_USAGE.ets | null 使用场景 | compile-pass |
| LEX_02_09_09_004_PASS_NULL_COMPARISON | 2.9.9 | compile-pass | LEX_02_09_09_004_PASS_NULL_COMPARISON.ets | null 比较运算 | compile-pass |
| LEX_02_09_09_009_PASS_NULL_DEFAULT_PARAM | 2.9.9 | compile-pass | LEX_02_09_09_009_PASS_NULL_DEFAULT_PARAM.ets | null 作为默认参数值 | compile-pass |
| LEX_02_09_09_010_PASS_NULL_UNION_TYPE | 2.9.9 | compile-pass | LEX_02_09_09_010_PASS_NULL_UNION_TYPE.ets | null 在联合类型中 | compile-pass |
| LEX_02_09_09_011_PASS_NULL_OPTIONAL_PARAM | 2.9.9 | compile-pass | LEX_02_09_09_011_PASS_NULL_OPTIONAL_PARAM.ets | null 在可选参数中 | compile-pass |
| LEX_02_09_09_012_PASS_NULL_ARRAY_INIT | 2.9.9 | compile-pass | LEX_02_09_09_012_PASS_NULL_ARRAY_INIT.ets | null 在数组初始化中 | compile-pass |
| LEX_02_09_09_013_PASS_NULL_SWITCH_CASE | 2.9.9 | compile-pass | LEX_02_09_09_013_PASS_NULL_SWITCH_CASE.ets | null 在 switch/case 中 | compile-pass |
| LEX_02_09_09_014_PASS_NULL_LOGICAL_OP | 2.9.9 | compile-pass | LEX_02_09_09_014_PASS_NULL_LOGICAL_OP.ets | null 在逻辑运算中 | compile-pass |
| LEX_02_09_09_006_RT_NULL_VALUE | 2.9.9 | runtime | LEX_02_09_09_006_RT_NULL_VALUE.ets | null 值验证 | runtime |
| LEX_02_09_09_007_RT_NULL_COMPARISON | 2.9.9 | runtime | LEX_02_09_09_007_RT_NULL_COMPARISON.ets | null 比较验证 | runtime |
| LEX_02_09_09_008_RT_NULL_TYPE_CHECK | 2.9.9 | runtime | LEX_02_09_09_008_RT_NULL_TYPE_CHECK.ets | null 类型检查 | runtime |
| LEX_02_09_09_015_RT_NULL_STRING_CONCAT | 2.9.9 | runtime | LEX_02_09_09_015_RT_NULL_STRING_CONCAT.ets | null 在字符串连接中 | runtime |
| LEX_02_09_09_016_RT_NULL_TEMPLATE_STRING | 2.9.9 | runtime | LEX_02_09_09_016_RT_NULL_TEMPLATE_STRING.ets | null 在模板字符串中 | runtime |
| LEX_02_09_09_017_RT_NULL_FUNC_ARG | 2.9.9 | runtime | LEX_02_09_09_017_RT_NULL_FUNC_ARG.ets | null 作为函数参数 | runtime |
| LEX_02_09_09_018_RT_NULL_OBJ_PROPERTY | 2.9.9 | runtime | LEX_02_09_09_018_RT_NULL_OBJ_PROPERTY.ets | null 在对象属性访问中 | runtime |
| LEX_02_09_09_019_RT_NULL_OPTIONAL_CHAIN | 2.9.9 | runtime | LEX_02_09_09_019_RT_NULL_OPTIONAL_CHAIN.ets | null 在可选链中 | runtime |
| LEX_02_09_09_020_RT_NULL_NULLISH_COAL | 2.9.9 | runtime | LEX_02_09_09_020_RT_NULL_NULLISH_COAL.ets | null 在空值合并中 | runtime |
| LEX_02_03_046_PASS_OGHAM_SPACE_MARK | 2.3 | compile-pass | LEX_02_03_046_PASS_OGHAM_SPACE_MARK.ets | Ogham Space Mark (U+1680) 作为词法分隔符 | compile-pass |
| LEX_02_03_047_PASS_UNICODE_SPACE_RANGE | 2.3 | compile-pass | LEX_02_03_047_PASS_UNICODE_SPACE_RANGE.ets | U+2000–U+200A 区段空白字符作为词法分隔符 | compile-pass |
| LEX_02_09_03_028_PASS_HEX_FLOAT | 2.9.3 | compile-pass | LEX_02_09_03_028_PASS_HEX_FLOAT.ets | 十六进制浮点字面量（hex float） | compile-pass |
| LEX_02_09_09_021_RT_NULL_TYPEOF | 2.9.9 | runtime | LEX_02_09_09_021_RT_NULL_TYPEOF.ets | typeof null 运行时返回值验证 | runtime |
| LEX_02_09_03_029_PASS_NAN_INF_LITERAL | 2.9.3 | compile-pass | LEX_02_09_03_029_PASS_NAN_INF_LITERAL.ets | NaN 和 Infinity 字面量编译通过验证 | compile-pass |