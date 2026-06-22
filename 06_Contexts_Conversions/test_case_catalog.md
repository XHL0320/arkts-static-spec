# 06 Contexts and Conversions Test Case Catalog

| ID | SubTopic | Type | Case File | Purpose | Expected |
|---|---|---|---|---|---|
| CON_06_01_001 | 6.1 | compile-pass | CON_06_01_001_PASS_DECLARATION_VAR_BASIC.ets | Variable declaration with matching types | PASS |
| CON_06_01_002 | 6.1 | compile-pass | CON_06_01_002_PASS_DECLARATION_CONST_BASIC.ets | Const declaration with matching types | PASS |
| CON_06_01_003 | 6.1 | compile-pass | CON_06_01_003_PASS_DECLARATION_FIELD_BASIC.ets | Class field declaration with matching types | PASS |
| CON_06_01_004 | 6.1 | compile-pass | CON_06_01_004_PASS_ASSIGNMENT_VAR_BASIC.ets | Variable assignment with matching types | PASS |
| CON_06_01_005 | 6.1 | compile-pass | CON_06_01_005_PASS_ASSIGNMENT_FIELD_BASIC.ets | Field assignment with matching types | PASS |
| CON_06_01_006 | 6.1 | compile-pass | CON_06_01_006_PASS_CALL_ARGUMENT_BASIC.ets | Function call argument passing | PASS |
| CON_06_01_007 | 6.1 | compile-pass | CON_06_01_007_PASS_METHOD_ARGUMENT_BASIC.ets | Method call argument passing | PASS |
| CON_06_01_008 | 6.1 | compile-pass | CON_06_01_008_PASS_CONSTRUCTOR_ARGUMENT_BASIC.ets | Constructor call argument passing | PASS |
| CON_06_01_009 | 6.1 | compile-pass | CON_06_01_009_PASS_RETURN_BASIC.ets | Return statement with matching type | PASS |
| CON_06_01_010 | 6.1 | compile-pass | CON_06_01_010_PASS_COMPOSITE_ARRAY_BASIC.ets | Array literal element assignment | PASS |
| CON_06_01_011 | 6.1 | compile-pass | CON_06_01_011_PASS_COMPOSITE_OBJECT_BASIC.ets | Object literal field assignment | PASS |
| CON_06_01_012 | 6.1 | compile-pass | CON_06_01_012_PASS_DECLARATION_WIDENING.ets | Declaration with widening conversion | PASS |
| CON_06_01_013 | 6.1 | compile-pass | CON_06_01_013_PASS_GENERIC_DECLARATION.ets | Generic declaration context | PASS |
| CON_06_01_014 | 6.1 | compile-pass | CON_06_01_014_PASS_CALL_WIDENING.ets | Call with widening argument | PASS |
| CON_06_01_015 | 6.1 | compile-pass | CON_06_01_015_PASS_RETURN_WIDENING.ets | Return with widening conversion | PASS |
| CON_06_01_016 | 6.1 | compile-fail | CON_06_01_016_FAIL_DECLARATION_VAR_MISMATCH.ets | Variable declaration type mismatch | FAIL |
| CON_06_01_017 | 6.1 | compile-fail | CON_06_01_017_FAIL_DECLARATION_CONST_MISMATCH.ets | Const declaration type mismatch | FAIL |
| CON_06_01_018 | 6.1 | compile-fail | CON_06_01_018_FAIL_DECLARATION_FIELD_MISMATCH.ets | Field declaration type mismatch | FAIL |
| CON_06_01_019 | 6.1 | compile-fail | CON_06_01_019_FAIL_ASSIGNMENT_VAR_MISMATCH.ets | Variable assignment type mismatch | FAIL |
| CON_06_01_020 | 6.1 | compile-fail | CON_06_01_020_FAIL_ASSIGNMENT_FIELD_MISMATCH.ets | Field assignment type mismatch | FAIL |
| CON_06_01_021 | 6.1 | compile-fail | CON_06_01_021_FAIL_CALL_ARGUMENT_MISMATCH.ets | Function call argument mismatch | FAIL |
| CON_06_01_022 | 6.1 | compile-fail | CON_06_01_022_FAIL_METHOD_ARGUMENT_MISMATCH.ets | Method call argument mismatch | FAIL |
| CON_06_01_023 | 6.1 | compile-fail | CON_06_01_023_FAIL_CONSTRUCTOR_ARGUMENT_MISMATCH.ets | Constructor argument mismatch | FAIL |
| CON_06_01_024 | 6.1 | compile-fail | CON_06_01_024_FAIL_RETURN_MISMATCH.ets | Return type mismatch | FAIL |
| CON_06_01_025 | 6.1 | compile-fail | CON_06_01_025_FAIL_COMPOSITE_ARRAY_MISMATCH.ets | Array literal element mismatch | FAIL |
| CON_06_01_026 | 6.1 | compile-fail | CON_06_01_026_FAIL_COMPOSITE_OBJECT_MISMATCH.ets | Object literal field mismatch | FAIL |
| CON_06_01_027 | 6.1 | compile-fail | CON_06_01_027_FAIL_DECLARATION_NARROWING.ets | Declaration narrowing not allowed | FAIL |
| CON_06_01_028 | 6.1 | compile-fail | CON_06_01_028_FAIL_ASSIGNMENT_NARROWING.ets | Assignment narrowing not allowed | FAIL |
| CON_06_01_029 | 6.1 | compile-fail | CON_06_01_029_FAIL_RETURN_NARROWING.ets | Return narrowing not allowed | FAIL |
| CON_06_01_030 | 6.1 | compile-fail | CON_06_01_030_FAIL_CALL_NARROWING.ets | Call narrowing not allowed | FAIL |
| CON_06_01_031 | 6.1 | runtime | CON_06_01_031_RUNTIME_DECLARATION_CONTEXT.ets | Runtime declaration behavior | PASS |
| CON_06_01_032 | 6.1 | runtime | CON_06_01_032_RUNTIME_ASSIGNMENT_CONTEXT.ets | Runtime assignment behavior | PASS |
| CON_06_01_033 | 6.1 | runtime | CON_06_01_033_RUNTIME_CALL_CONTEXT.ets | Runtime call parameter passing | PASS |
| CON_06_01_034 | 6.1 | runtime | CON_06_01_034_RUNTIME_RETURN_CONTEXT.ets | Runtime return value behavior | PASS |
| CON_06_01_035 | 6.1 | runtime | CON_06_01_035_RUNTIME_COMPOSITE_ARRAY.ets | Runtime array literal behavior | PASS |
| CON_06_01_036 | 6.1 | runtime | CON_06_01_036_RUNTIME_COMPOSITE_OBJECT.ets | Runtime object literal behavior | PASS |
| CON_06_01_037 | 6.1 | runtime | CON_06_01_037_RUNTIME_WIDENING_ASSIGNMENT.ets | Runtime widening value preservation | PASS |
| CON_06_01_038 | 6.1 | runtime | CON_06_01_038_RUNTIME_CONST_DECLARATION.ets | Runtime const declaration behavior | PASS |
| CON_06_01_039 | 6.1 | runtime | CON_06_01_039_RUNTIME_FIELD_DECLARATION_CONTEXT.ets | Runtime field declaration behavior | PASS |
| CON_06_01_040 | 6.1 | runtime | CON_06_01_040_RUNTIME_METHOD_CALL_CONTEXT.ets | Runtime method call behavior | PASS |
| CON_06_01_041 | 6.1 | runtime | CON_06_01_041_RUNTIME_CONSTRUCTOR_CALL_CONTEXT.ets | Runtime constructor call behavior | PASS |
| CON_06_01_042 | 6.1 | runtime | CON_06_01_042_RUNTIME_ALL_CONTEXTS_INTEGRATION.ets | Runtime integration test | PASS |
| CON_06_02_001 | 6.2 | compile-pass | CON_06_02_001_PASS_INT_STRING_CONCAT.ets | Integer + string concatenation | PASS |
| CON_06_02_002 | 6.2 | compile-pass | CON_06_02_002_PASS_FLOAT_STRING_CONCAT.ets | Float + string concatenation | PASS |
| CON_06_02_003 | 6.2 | compile-pass | CON_06_02_003_PASS_BOOL_STRING_CONCAT.ets | Boolean + string concatenation | PASS |
| CON_06_02_004 | 6.2 | compile-pass | CON_06_02_004_PASS_NULL_STRING_CONCAT.ets | null + string concatenation | PASS |
| CON_06_02_005 | 6.2 | compile-pass | CON_06_02_005_PASS_UNDEFINED_STRING_CONCAT.ets | undefined + string concatenation | PASS |
| CON_06_02_006 | 6.2 | compile-pass | CON_06_02_006_PASS_ENUM_STRING_CONCAT.ets | String enum + string concatenation | PASS |
| CON_06_02_007 | 6.2 | compile-pass | CON_06_02_007_PASS_NONSTRING_ENUM_CONCAT.ets | Non-string enum + string (toString()) | PASS |
| CON_06_02_008 | 6.2 | compile-pass | CON_06_02_008_PASS_REFERENCE_STRING_CONCAT.ets | Class reference + string (toString()) | PASS |
| CON_06_02_009 | 6.2 | compile-pass | CON_06_02_009_PASS_MULTI_CONCAT.ets | Multi-type concatenation | PASS |
| CON_06_02_010 | 6.2 | compile-pass | CON_06_02_010_PASS_UNION_NULLISH_STRING_CONCAT.ets | Union nullish + string concatenation | PASS |
| CON_06_02_011 | 6.2 | compile-fail | CON_06_02_011_FAIL_NO_STRING_OPERAND.ets | No string operand '+' should fail | FAIL |
| CON_06_02_012 | 6.2 | compile-fail | CON_06_02_012_FAIL_UNDEFINED_UNDEFINED_PLUS.ets | undefined + undefined should fail | FAIL |
| CON_06_02_013 | 6.2 | compile-fail | CON_06_02_013_FAIL_ENUM_ENUM_PLUS.ets | enum + enum should fail | FAIL |
| CON_06_02_014 | 6.2 | compile-fail | CON_06_02_014_FAIL_NULL_NULL_PLUS.ets | null + null should fail | FAIL |
| CON_06_02_015 | 6.2 | compile-fail | CON_06_02_015_FAIL_OBJECT_OBJECT_PLUS.ets | object + object should fail | FAIL |
| CON_06_02_016 | 6.2 | runtime | CON_06_02_016_RUNTIME_INT_STRING_CONVERSION.ets | Runtime int→string conversion | PASS |
| CON_06_02_017 | 6.2 | runtime | CON_06_02_017_RUNTIME_FLOAT_STRING_CONVERSION.ets | Runtime float→string conversion | PASS |
| CON_06_02_018 | 6.2 | runtime | CON_06_02_018_RUNTIME_BOOL_STRING_CONVERSION.ets | Runtime bool→string conversion | PASS |
| CON_06_02_019 | 6.2 | runtime | CON_06_02_019_RUNTIME_NULL_STRING_CONVERSION.ets | Runtime null→"null" conversion | PASS |
| CON_06_02_020 | 6.2 | runtime | CON_06_02_020_RUNTIME_UNDEFINED_STRING_CONVERSION.ets | Runtime undefined→"undefined" | PASS |
| CON_06_02_021 | 6.2 | runtime | CON_06_02_021_RUNTIME_ENUM_STRING_CONVERSION.ets | Runtime string enum conversion | PASS |
| CON_06_02_022 | 6.2 | runtime | CON_06_02_022_RUNTIME_NONSTRING_ENUM_CONVERSION.ets | Runtime non-string enum toString() | PASS |
| CON_06_02_023 | 6.2 | runtime | CON_06_02_023_RUNTIME_CLASS_TOSTRING_CONVERSION.ets | Runtime class toString() | PASS |
| CON_06_02_024 | 6.2 | runtime | CON_06_02_024_RUNTIME_UNION_NULLISH_STRING.ets | Runtime union nullish conversion | PASS |
| CON_06_02_025 | 6.2 | runtime | CON_06_02_025_RUNTIME_MULTI_TYPE_CONCAT.ets | Runtime multi-type integration | PASS |
