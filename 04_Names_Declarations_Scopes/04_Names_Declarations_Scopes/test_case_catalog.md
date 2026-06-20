# 04 Names, Declarations & Scopes — Test Case Catalog

## 4.1 Names (15 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| NAM_04_01_001 | Simple name | PASS | `NAM_04_01_001_PASS_SIMPLE_NAME.ets` |
| NAM_04_01_002 | Qualified name — module | PASS | `NAM_04_01_002_PASS_QUALIFIED_NAME_MODULE.ets` |
| NAM_04_01_003 | Qualified name — class | PASS | `NAM_04_01_003_PASS_QUALIFIED_NAME_CLASS.ets` |
| NAM_04_01_004 | Qualified name — instance | PASS | `NAM_04_01_004_PASS_QUALIFIED_NAME_INSTANCE.ets` |
| NAM_04_01_005 | Identifier with underscore | PASS | `NAM_04_01_005_PASS_IDENTIFIER_UNDERSCORE.ets` |
| NAM_04_01_006 | Identifier with dollar | PASS | `NAM_04_01_006_PASS_IDENTIFIER_DOLLAR.ets` |
| NAM_04_01_007 | Multiple dot chaining | PASS | `NAM_04_01_007_PASS_MULTIPLE_DOTS.ets` |
| NAM_04_01_010 | Empty name | FAIL | `NAM_04_01_010_FAIL_EMPTY_NAME.ets` |
| NAM_04_01_011 | Digit start | FAIL | `NAM_04_01_011_FAIL_DIGIT_START.ets` |
| NAM_04_01_012 | Keyword as name | FAIL | `NAM_04_01_012_FAIL_KEYWORD_AS_NAME.ets` |
| NAM_04_01_013 | Dot only | FAIL | `NAM_04_01_013_FAIL_DOT_ONLY.ets` |
| NAM_04_01_014 | Special characters | FAIL | `NAM_04_01_014_FAIL_SPECIAL_CHARS.ets` |
| NAM_04_01_015 | Type keyword clash | FAIL | `NAM_04_01_015_FAIL_TYPE_KEYWORD.ets` |
| NAM_04_01_020 | Simple ref | RUNTIME | `NAM_04_01_020_RUNTIME_SIMPLE_REF.ets` |
| NAM_04_01_021 | Qualified ref | RUNTIME | `NAM_04_01_021_RUNTIME_QUALIFIED_REF.ets` |

## 4.2 Declarations (13 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| NAM_04_02_001 | Different names | PASS | `NAM_04_02_001_PASS_DIFF_NAMES.ets` |
| NAM_04_02_002 | Overload signature | PASS | `NAM_04_02_002_PASS_OVERLOAD_SIGNATURE.ets` |
| NAM_04_02_003 | Class static vs instance | PASS | `NAM_04_02_003_PASS_CLASS_STATIC_INSTANCE.ets` |
| NAM_04_02_004 | Class field vs method | PASS | `NAM_04_02_004_PASS_CLASS_FIELD_METHOD.ets` |
| NAM_04_02_010 | Same name const + func | FAIL | `NAM_04_02_010_FAIL_SAME_NAME_CONST_FUNC.ets` |
| NAM_04_02_011 | Same name class + var | FAIL | `NAM_04_02_011_FAIL_SAME_NAME_CLASS_VAR.ets` |
| NAM_04_02_012 | Field method same name | FAIL | `NAM_04_02_012_FAIL_CLASS_FIELD_METHOD_SAME.ets` |
| NAM_04_02_013 | Predefined type clash | FAIL | `NAM_04_02_013_FAIL_PREDEFINED_TYPE_CLASH.ets` |
| NAM_04_02_014 | Overload equivalent | FAIL | `NAM_04_02_014_FAIL_OVERLOAD_EQUIVALENT.ets` |
| NAM_04_02_015 | Overload type erasure | FAIL | `NAM_04_02_015_FAIL_OVERLOAD_TYPE_ERASURE.ets` |
| NAM_04_02_016 | Ambiguous import | FAIL | `NAM_04_02_016_FAIL_AMBIGUOUS_IMPORT.ets` |
| NAM_04_02_017 | Import duplicate | FAIL | `NAM_04_02_017_FAIL_IMPORT_DUPLICATE.ets` ⚠️ 空文件 |
| NAM_04_02_020 | Overload dispatch | RUNTIME | `NAM_04_02_020_RUNTIME_OVERLOAD_DISPATCH.ets` |

## 4.3 Scopes (15 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| NAM_04_03_001 | Module scope | PASS | `NAM_04_03_001_PASS_MODULE_SCOPE.ets` |
| NAM_04_03_002 | Class scope this | PASS | `NAM_04_03_002_PASS_CLASS_SCOPE_THIS.ets` |
| NAM_04_03_003 | Class scope static | PASS | `NAM_04_03_003_PASS_CLASS_SCOPE_STATIC.ets` |
| NAM_04_03_004 | Block scope | PASS | `NAM_04_03_004_PASS_BLOCK_SCOPE.ets` |
| NAM_04_03_005 | Shadowing | PASS | `NAM_04_03_005_PASS_SHADOWING.ets` |
| NAM_04_03_006 | Type param scope | PASS | `NAM_04_03_006_PASS_TYPE_PARAM_SCOPE.ets` |
| NAM_04_03_007 | Nested block | PASS | `NAM_04_03_007_PASS_NESTED_BLOCK.ets` |
| NAM_04_03_015 | Func ref let after decl | PASS | `NAM_04_03_015_PASS_FUNC_REF_LET_AFTER_DECL.ets` |
| NAM_04_03_010 | Before declaration | FAIL | `NAM_04_03_010_FAIL_BEFORE_DECLARATION.ets` |
| NAM_04_03_011 | Block out of scope | FAIL | `NAM_04_03_011_FAIL_BLOCK_OUT_OF_SCOPE.ets` |
| NAM_04_03_012 | Instance as static | FAIL | `NAM_04_03_012_FAIL_INSTANCE_AS_STATIC.ets` |
| NAM_04_03_013 | Ambiguous scope | FAIL | `NAM_04_03_013_FAIL_AMBIGUOUS_SCOPE.ets` |
| NAM_04_03_014 | Type param in static | FAIL | `NAM_04_03_014_FAIL_TYPE_PARAM_IN_STATIC.ets` |
| NAM_04_03_020 | Module scope runtime | RUNTIME | `NAM_04_03_020_RUNTIME_MODULE_SCOPE.ets` |
| NAM_04_03_021 | Shadowing runtime | RUNTIME | `NAM_04_03_021_RUNTIME_SHADOWING.ets` |

## 4.4 Accessible (12 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| NAM_04_04_001 | Type accessible | PASS | `NAM_04_04_001_PASS_TYPE_ACCESSIBLE.ets` |
| NAM_04_04_002 | Func accessible | PASS | `NAM_04_04_002_PASS_FUNC_ACCESSIBLE.ets` |
| NAM_04_04_003 | Var accessible | PASS | `NAM_04_04_003_PASS_VAR_ACCESSIBLE.ets` |
| NAM_04_04_004 | Module access | PASS | `NAM_04_04_004_PASS_MODULE_ACCESS.ets` |
| NAM_04_04_010 | Out of block scope | FAIL | `NAM_04_04_010_FAIL_OUT_OF_BLOCK_SCOPE.ets` |
| NAM_04_04_011 | Out of func scope | FAIL | `NAM_04_04_011_FAIL_OUT_OF_FUNC_SCOPE.ets` |
| NAM_04_04_012 | Use before declare | FAIL | `NAM_04_04_012_FAIL_USE_BEFORE_DECLARE.ets` |
| NAM_04_04_013 | Cross func access | FAIL | `NAM_04_04_013_FAIL_CROSS_FUNC_ACCESS.ets` |
| NAM_04_04_014 | If block leak | FAIL | `NAM_04_04_014_FAIL_IF_BLOCK_LEAK.ets` |
| NAM_04_04_015 | Loop var leak | FAIL | `NAM_04_04_015_FAIL_LOOP_VAR_LEAK.ets` |
| NAM_04_04_020 | Scope chain | RUNTIME | `NAM_04_04_020_RUNTIME_SCOPE_CHAIN.ets` |
| NAM_04_04_021 | Nested shadow | RUNTIME | `NAM_04_04_021_RUNTIME_NESTED_SHADOW.ets` |

## 4.5 Type Declarations (23 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| NAM_04_05_001 | Type alias array | PASS | `NAM_04_05_001_PASS_TYPE_ALIAS_ARRAY.ets` |
| NAM_04_05_002 | Type alias func | PASS | `NAM_04_05_002_PASS_TYPE_ALIAS_FUNC.ets` |
| NAM_04_05_003 | Type alias union | PASS | `NAM_04_05_003_PASS_TYPE_ALIAS_UNION.ets` |
| NAM_04_05_004 | Type alias short name | PASS | `NAM_04_05_004_PASS_TYPE_ALIAS_SHORT_NAME.ets` |
| NAM_04_05_005 | Recursive array element | PASS | `NAM_04_05_005_PASS_RECURSIVE_ARRAY_ELEMENT.ets` |
| NAM_04_05_006 | Recursive type arg | PASS | `NAM_04_05_006_PASS_RECURSIVE_TYPE_ARG.ets` |
| NAM_04_05_007 | Generic alias | PASS | `NAM_04_05_007_PASS_GENERIC_ALIAS.ets` |
| NAM_04_05_008 | Type param depend | PASS | `NAM_04_05_008_PASS_TYPE_PARAM_DEPEND.ets` |
| NAM_04_05_009 | Generic recursive OK | PASS | `NAM_04_05_009_PASS_GENERIC_RECURSIVE_OK.ets` |
| NAM_04_05_010 | Generic union recursive | PASS | `NAM_04_05_010_PASS_GENERIC_UNION_RECURSIVE.ets` |
| NAM_04_05_011 | Type alias simple | PASS | `NAM_04_05_011_PASS_TYPE_ALIAS_SIMPLE.ets` |
| NAM_04_05_015 | Direct self ref | FAIL | `NAM_04_05_015_FAIL_DIRECT_SELF_REF.ets` |
| NAM_04_05_016 | Union self ref | FAIL | `NAM_04_05_016_FAIL_UNION_SELF_REF.ets` |
| NAM_04_05_017 | Circular type arg | FAIL | `NAM_04_05_017_FAIL_CIRCULAR_TYPE_ARG.ets` |
| NAM_04_05_018 | Param self depend | FAIL | `NAM_04_05_018_FAIL_PARAM_SELF_DEPEND.ets` |
| NAM_04_05_019 | Param circular depend | FAIL | `NAM_04_05_019_FAIL_PARAM_CIRCULAR_DEPEND.ets` |
| NAM_04_05_020 | Generic without arg | FAIL | `NAM_04_05_020_FAIL_GENERIC_WO_ARG.ets` |
| NAM_04_05_021 | Indirect circular | FAIL | `NAM_04_05_021_FAIL_INDIRECT_CIRCULAR.ets` |
| NAM_04_05_022 | Generic self ref | FAIL | `NAM_04_05_022_FAIL_GENERIC_SELF_REF.ets` |
| NAM_04_05_023 | Indirect circular alias | FAIL | `NAM_04_05_023_FAIL_INDIRECT_CIRCULAR_ALIAS.ets` |
| NAM_04_05_024 | Union generic self ref | FAIL | `NAM_04_05_024_FAIL_UNION_GENERIC_SELF_REF.ets` |
| NAM_04_05_025 | Type alias use | RUNTIME | `NAM_04_05_025_RUNTIME_TYPE_ALIAS_USE.ets` |
| NAM_04_05_026 | Alias func type | RUNTIME | `NAM_04_05_026_RUNTIME_ALIAS_FUNC_TYPE.ets` |

## 4.6 Variable & Constant Declarations (25 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| NAM_04_06_001 | Var with type | PASS | `NAM_04_06_001_PASS_VAR_WITH_TYPE.ets` |
| NAM_04_06_002 | Var type inferred | PASS | `NAM_04_06_002_PASS_VAR_TYPE_INFERRED.ets` |
| NAM_04_06_003 | Var multi declare | PASS | `NAM_04_06_003_PASS_VAR_MULTI_DECLARE.ets` |
| NAM_04_06_004 | Var lambda infer | PASS | `NAM_04_06_004_PASS_VAR_LAMBDA_INFER.ets` |
| NAM_04_06_005 | Const with type | PASS | `NAM_04_06_005_PASS_CONST_WITH_TYPE.ets` |
| NAM_04_06_006 | Const inferred | PASS | `NAM_04_06_006_PASS_CONST_INFERRED.ets` |
| NAM_04_06_007 | Const multi | PASS | `NAM_04_06_007_PASS_CONST_MULTI.ets` |
| NAM_04_06_008 | Let literal promotion | PASS | `NAM_04_06_008_PASS_LET_LITERAL_PROMOTION.ets` |
| NAM_04_06_009 | Const literal retain | PASS | `NAM_04_06_009_PASS_CONST_LITERAL_RETAIN.ets` |
| NAM_04_06_010 | Ternary infer let | PASS | `NAM_04_06_010_PASS_TERNARY_INFER_LET.ets` |
| NAM_04_06_011 | Ternary infer const | PASS | `NAM_04_06_011_PASS_TERNARY_INFER_CONST.ets` |
| NAM_04_06_012 | Null/undef infer | PASS | `NAM_04_06_012_PASS_NULL_UNDEF_INFER.ets` |
| NAM_04_06_013 | Init ref previous | PASS | `NAM_04_06_013_PASS_INIT_REF_PREVIOUS.ets` |
| NAM_04_06_015 | Var no type no init | FAIL | `NAM_04_06_015_FAIL_VAR_NO_TYPE_NO_INIT.ets` |
| NAM_04_06_016 | Ambiguous var with init | FAIL | `NAM_04_06_016_FAIL_AMBIGUOUS_VAR_WITH_INIT.ets` |
| NAM_04_06_017 | Const no init | FAIL | `NAM_04_06_017_FAIL_CONST_NO_INIT.ets` |
| NAM_04_06_018 | Init ref forward | FAIL | `NAM_04_06_018_FAIL_INIT_REF_FORWARD.ets` |
| NAM_04_06_019 | Init not assignable | FAIL | `NAM_04_06_019_FAIL_INIT_NOT_ASSIGNABLE.ets` |
| NAM_04_06_020 | Object literal infer | FAIL | `NAM_04_06_020_FAIL_OBJECT_LITERAL_INFER.ets` |
| NAM_04_06_021 | Const ambiguous no init | FAIL | `NAM_04_06_021_FAIL_CONST_AMBIGUOUS_NO_INIT.ets` |
| NAM_04_06_022 | Ambiguous var no type | FAIL | `NAM_04_06_022_FAIL_AMBIGUOUS_VAR_NO_TYPE.ets` |
| NAM_04_06_023 | Const object literal infer | FAIL | `NAM_04_06_023_FAIL_CONST_OBJECT_LITERAL_INFER.ets` |
| NAM_04_06_025 | Var ops runtime | RUNTIME | `NAM_04_06_025_RUNTIME_VAR_OPS.ets` |
| NAM_04_06_026 | Const ops runtime | RUNTIME | `NAM_04_06_026_RUNTIME_CONST_OPS.ets` |
| NAM_04_06_027 | Type inference runtime | RUNTIME | `NAM_04_06_027_RUNTIME_TYPE_INFERENCE.ets` |

## 4.7 Function Declarations (29 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| NAM_04_07_001 | Func declaration | PASS | `NAM_04_07_001_PASS_FUNC_DECLARATION.ets` |
| NAM_04_07_002 | Func signature | PASS | `NAM_04_07_002_PASS_FUNC_SIGNATURE.ets` |
| NAM_04_07_003 | Func no params | PASS | `NAM_04_07_003_PASS_FUNC_NO_PARAMS.ets` |
| NAM_04_07_004 | Readonly param read | PASS | `NAM_04_07_004_PASS_READONLY_PARAM_READ.ets` |
| NAM_04_07_005 | Optional default | PASS | `NAM_04_07_005_PASS_OPTIONAL_DEFAULT.ets` |
| NAM_04_07_006 | Optional qmark | PASS | `NAM_04_07_006_PASS_OPTIONAL_QMARK.ets` |
| NAM_04_07_007 | Rest array | PASS | `NAM_04_07_007_PASS_REST_ARRAY.ets` |
| NAM_04_07_008 | Rest tuple | PASS | `NAM_04_07_008_PASS_REST_TUPLE.ets` |
| NAM_04_07_009 | Rest generic | PASS | `NAM_04_07_009_PASS_REST_GENERIC.ets` |
| NAM_04_07_010 | Param shadowing | PASS | `NAM_04_07_010_PASS_PARAM_SHADOWING.ets` |
| NAM_04_07_011 | Return void | PASS | `NAM_04_07_011_PASS_RETURN_VOID.ets` |
| NAM_04_07_012 | Return undefined | PASS | `NAM_04_07_012_PASS_RETURN_UNDEFINED.ets` |
| NAM_04_07_013 | Return inferred | PASS | `NAM_04_07_013_PASS_RETURN_INFERRED.ets` |
| NAM_04_07_014 | Native func | PASS | `NAM_04_07_014_PASS_NATIVE_FUNC.ets` |
| NAM_04_07_015 | Optional before required | FAIL | `NAM_04_07_015_FAIL_OPTIONAL_BEFORE_REQUIRED.ets` |
| NAM_04_07_016 | Readonly assign | FAIL | `NAM_04_07_016_FAIL_READONLY_ASSIGN.ets` |
| NAM_04_07_017 | Rest followed by param | FAIL | `NAM_04_07_017_FAIL_REST_FOLLOWED_BY_PARAM.ets` |
| NAM_04_07_018 | Rest not array | FAIL | `NAM_04_07_018_FAIL_REST_NOT_ARRAY.ets` |
| NAM_04_07_019 | Return missing | FAIL | `NAM_04_07_019_FAIL_RETURN_MISSING.ets` |
| NAM_04_07_020 | Return never missing | FAIL | `NAM_04_07_020_FAIL_RETURN_NEVER_MISSING.ets` |
| NAM_04_07_021 | Native with body | FAIL | `NAM_04_07_021_FAIL_NATIVE_WITH_BODY.ets` |
| NAM_04_07_022 | Rest tuple wrong count | FAIL | `NAM_04_07_022_FAIL_REST_TUPLE_WRONG_COUNT.ets` |
| NAM_04_07_023 | Opt tuple rest missing | FAIL | `NAM_04_07_023_FAIL_OPT_TUPLE_REST_MISSING.ets` |
| NAM_04_07_024 | Readonly tuple assign | FAIL | `NAM_04_07_024_FAIL_READONLY_TUPLE_ASSIGN.ets` |
| NAM_04_07_029 | Return implicit undefined | FAIL | `NAM_04_07_029_FAIL_RETURN_IMPLICIT_UNDEFINED.ets` |
| NAM_04_07_025 | Func call runtime | RUNTIME | `NAM_04_07_025_RUNTIME_FUNC_CALL.ets` |
| NAM_04_07_026 | Optional default runtime | RUNTIME | `NAM_04_07_026_RUNTIME_OPTIONAL_DEFAULT.ets` |
| NAM_04_07_027 | Rest array runtime | RUNTIME | `NAM_04_07_027_RUNTIME_REST_ARRAY.ets` |
| NAM_04_07_028 | Func return runtime | RUNTIME | `NAM_04_07_028_RUNTIME_FUNC_RETURN.ets` |
