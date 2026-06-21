# 05 Generics — Test Case Catalog

## 5.1 Type Parameters (11 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_001 | Basic generic class | PASS | `5.1_Type_Parameters/compile-pass/GEN_05_01_001_PASS_BASIC_GENERIC_CLASS.ets` |
| GEN_05_01_002 | Generic interface | PASS | `5.1_Type_Parameters/compile-pass/GEN_05_01_002_PASS_GENERIC_INTERFACE.ets` |
| GEN_05_01_003 | Generic function | PASS | `5.1_Type_Parameters/compile-pass/GEN_05_01_003_PASS_GENERIC_FUNCTION.ets` |
| GEN_05_01_004 | Generic type alias | PASS | `5.1_Type_Parameters/compile-pass/GEN_05_01_004_PASS_GENERIC_TYPE_ALIAS.ets` |
| GEN_05_01_005 | Multiple type params | PASS | `5.1_Type_Parameters/compile-pass/GEN_05_01_005_PASS_MULTIPLE_PARAMS.ets` |
| GEN_05_01_025 | Circular self-reference | FAIL | `5.1_Type_Parameters/compile-fail/GEN_05_01_025_FAIL_CIRCULAR_SELF.ets` |
| GEN_05_01_026 | Circular mutual | FAIL | `5.1_Type_Parameters/compile-fail/GEN_05_01_026_FAIL_CIRCULAR_MUTUAL.ets` |
| GEN_05_01_027 | Circular mutual union | FAIL | `5.1_Type_Parameters/compile-fail/GEN_05_01_027_FAIL_CIRCULAR_MUTUAL_UNION.ets` |
| GEN_05_01_031 | Circular with default | FAIL | `5.1_Type_Parameters/compile-fail/GEN_05_01_031_FAIL_CIRCULAR_WITH_DEFAULT.ets` |
| GEN_05_01_035 | Generic class | RUNTIME | `5.1_Type_Parameters/runtime/GEN_05_01_035_RUNTIME_GENERIC_CLASS.ets` |
| GEN_05_01_036 | Generic function | RUNTIME | `5.1_Type_Parameters/runtime/GEN_05_01_036_RUNTIME_GENERIC_FUNCTION.ets` |

## 5.1.1 Type Parameter Constraint (11 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_01_001 | Constraint — class | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_001_PASS_CONSTRAINT_CLASS.ets` |
| GEN_05_01_01_002 | Constraint — union | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_002_PASS_CONSTRAINT_UNION.ets` |
| GEN_05_01_01_003 | Constraint — literal union | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_003_PASS_CONSTRAINT_LITERAL_UNION.ets` |
| GEN_05_01_01_004 | Constraint — keyof | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_004_PASS_CONSTRAINT_KEYOF.ets` |
| GEN_05_01_01_005 | Dependent type param | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_005_PASS_DEPENDENT_PARAM.ets` |
| GEN_05_01_01_001 | Constraint not satisfied | FAIL | `5.1.1_Type_Parameter_Constraint/compile-fail/GEN_05_01_01_001_FAIL_CONSTRAINT_NOT_SATISFIED.ets` |
| GEN_05_01_01_002 | Constraint union not satisfied | FAIL | `5.1.1_Type_Parameter_Constraint/compile-fail/GEN_05_01_01_002_FAIL_CONSTRAINT_UNION_NOT_SATISFIED.ets` |
| GEN_05_01_01_003 | Literal constraint violation | FAIL | `5.1.1_Type_Parameter_Constraint/compile-fail/GEN_05_01_01_003_FAIL_LITERAL_CONSTRAINT.ets` |
| GEN_05_01_01_004 | keyof constraint violation | FAIL | `5.1.1_Type_Parameter_Constraint/compile-fail/GEN_05_01_01_004_FAIL_KEYOF_CONSTRAINT.ets` |
| GEN_05_01_01_005 | Dependent not satisfied | FAIL | `5.1.1_Type_Parameter_Constraint/compile-fail/GEN_05_01_01_005_FAIL_DEPENDENT_NOT_SATISFIED.ets` |
| GEN_05_01_01_001 | Constraint at runtime | RUNTIME | `5.1.1_Type_Parameter_Constraint/runtime/GEN_05_01_01_001_RUNTIME_CONSTRAINT_CLASS.ets` |

## 5.1.2 Type Parameter Default (7 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_02_001 | Type param default | PASS | `5.1.2_Type_Parameter_Default/compile-pass/GEN_05_01_02_001_PASS_TYPE_PARAM_DEFAULT.ets` |
| GEN_05_01_02_002 | Multi default | PASS | `5.1.2_Type_Parameter_Default/compile-pass/GEN_05_01_02_002_PASS_MULTI_DEFAULT.ets` |
| GEN_05_01_02_003 | Func default | PASS | `5.1.2_Type_Parameter_Default/compile-pass/GEN_05_01_02_003_PASS_FUNC_DEFAULT.ets` |
| GEN_05_01_02_004 | Default equivalence | PASS | `5.1.2_Type_Parameter_Default/compile-pass/GEN_05_01_02_004_PASS_DEFAULT_EQUIV.ets` |
| GEN_05_01_02_001 | Default after no-default | FAIL | `5.1.2_Type_Parameter_Default/compile-fail/GEN_05_01_02_001_FAIL_DEFAULT_AFTER_NO_DEFAULT.ets` |
| GEN_05_01_02_002 | Default ref forward | FAIL | `5.1.2_Type_Parameter_Default/compile-fail/GEN_05_01_02_002_FAIL_DEFAULT_REF_FORWARD.ets` |
| GEN_05_01_02_001 | Default type arg | RUNTIME | `5.1.2_Type_Parameter_Default/runtime/GEN_05_01_02_001_RUNTIME_DEFAULT_TYPE_ARG.ets` |

## 5.1.3 Type Parameter Variance (16 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_03_001 | Covariant out — return | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_001_PASS_RETURN.ets` |
| GEN_05_01_03_002 | Type alias variance | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_002_PASS_VARIANCE.ets` |
| GEN_05_01_03_003 | Covariant out — readonly | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_003_PASS_READONLY.ets` |
| GEN_05_01_03_004 | Contravariant in — param | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_004_PASS_PARAM.ets` |
| GEN_05_01_03_005 | Invariant — any position | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_005_PASS_POS.ets` |
| GEN_05_01_03_006 | Variance interleave | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_006_PASS_INTERLEAVE.ets` |
| GEN_05_01_03_007 | out in constructor | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_007_PASS_CONSTRUCTOR.ets` |
| GEN_05_01_03_006 | Callback variance gap | FAIL ⚠️ GAP | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_006_FAIL_CALLBACK_VARIANCE_GAP.ets` |
| GEN_05_01_03_008 | Callback return gap | FAIL ⚠️ GAP | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_008_FAIL_CALLBACK_RETURN_GAP.ets` |
| GEN_05_01_03_001 | Generic method variance | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_001_FAIL_VARIANCE.ets` |
| GEN_05_01_03_002 | out in in-position | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_002_FAIL_POSITION.ets` |
| GEN_05_01_03_003 | out in field | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_003_FAIL_FIELD.ets` |
| GEN_05_01_03_004 | in in out-position return | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_004_FAIL_RETURN.ets` |
| GEN_05_01_03_005 | in in invariant field | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_005_FAIL_FIELD.ets` |
| GEN_05_01_03_007 | out in method param return | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_007_FAIL_PARAM.ets` |
| GEN_05_01_03_001 | Covariant out runtime | RUNTIME | `5.1.3_Type_Parameter_Variance/runtime/GEN_05_01_03_001_RUNTIME_COVARIANT_OUT.ets` |

## 5.1.4 Wildcard Type (10 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_04_001 | Wildcard declaration | PASS | `5.1.4_Wildcard_Type/compile-pass/GEN_05_01_04_001_PASS_WILDCARD_DECL.ets` |
| GEN_05_01_04_001 | Wildcard not subtype any | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_001_FAIL_ANY.ets` |
| GEN_05_01_04_002 | Wildcard not subtype constraint | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_002_FAIL_CONSTRAINT.ets` |
| GEN_05_01_04_003 | Wildcard write in-pos | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_003_FAIL_POS.ets` |
| GEN_05_01_04_004 | Wildcard write invariant | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_004_FAIL_INVARIANT.ets` |
| GEN_05_01_04_005 | out wildcard not subtype never | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_005_FAIL_NEVER.ets` |
| GEN_05_01_04_006 | in wildcard not subtype C | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_006_FAIL_C.ets` |
| GEN_05_01_04_007 | in wildcard write | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_007_FAIL_WRITE.ets` |
| GEN_05_01_04_008 | Wildcard invariant assign | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_008_FAIL_ASSIGN.ets` |
| GEN_05_01_04_001 | instanceof wildcard | RUNTIME | `5.1.4_Wildcard_Type/runtime/GEN_05_01_04_001_RUNTIME_INSTANCEOF_WILDCARD.ets` |

## 5.2.1 Type Arguments (7 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_02_01_001 | Type arg — number | PASS | `5.2.1_Type_Arguments/compile-pass/GEN_05_02_01_001_PASS_TYPE_ARG_NUMBER.ets` |
| GEN_05_02_01_002 | Type arg — union | PASS | `5.2.1_Type_Arguments/compile-pass/GEN_05_02_01_002_PASS_TYPE_ARG_UNION.ets` |
| GEN_05_02_01_003 | Type arg — array | PASS | `5.2.1_Type_Arguments/compile-pass/GEN_05_02_01_003_PASS_TYPE_ARG_ARRAY.ets` |
| GEN_05_02_01_004 | Type arg — tuple | PASS | `5.2.1_Type_Arguments/compile-pass/GEN_05_02_01_004_PASS_TYPE_ARG_TUPLE.ets` |
| GEN_05_02_01_005 | Type arg — func type | PASS | `5.2.1_Type_Arguments/compile-pass/GEN_05_02_01_005_PASS_TYPE_ARG_FUNC_TYPE.ets` |
| GEN_05_02_01_001 | Invalid type arg | FAIL | `5.2.1_Type_Arguments/compile-fail/GEN_05_02_01_001_FAIL_INVALID_TYPE_ARG.ets` |
| GEN_05_02_01_001 | Type arg runtime | RUNTIME | `5.2.1_Type_Arguments/runtime/GEN_05_02_01_001_RUNTIME_TYPE_ARG.ets` |

## 5.2.2 Explicit Generic Instantiations (9 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_02_02_001 | Explicit class instantiation | PASS | `5.2.2_Explicit_Generic_Instantiations/compile-pass/GEN_05_02_02_001_PASS_EXPLICIT_CLASS_INST.ets` |
| GEN_05_02_02_002 | Explicit method instantiation | PASS | `5.2.2_Explicit_Generic_Instantiations/compile-pass/GEN_05_02_02_002_PASS_EXPLICIT_METHOD_INST.ets` |
| GEN_05_02_02_003 | Explicit func instantiation | PASS | `5.2.2_Explicit_Generic_Instantiations/compile-pass/GEN_05_02_02_003_PASS_EXPLICIT_FUNC_INST.ets` |
| GEN_05_02_02_004 | Explicit type alias | PASS | `5.2.2_Explicit_Generic_Instantiations/compile-pass/GEN_05_02_02_004_PASS_EXPLICIT_TYPE_ALIAS.ets` |
| GEN_05_02_02_005 | Partial instantiation | PASS | `5.2.2_Explicit_Generic_Instantiations/compile-pass/GEN_05_02_02_005_PASS_PARTIAL_INST_GENERIC.ets` |
| GEN_05_02_02_001 | Non-generic with args | FAIL | `5.2.2_Explicit_Generic_Instantiations/compile-fail/GEN_05_02_02_001_FAIL_NON_GENERIC_WITH_ARGS.ets` |
| GEN_05_02_02_002 | Arg count mismatch | FAIL | `5.2.2_Explicit_Generic_Instantiations/compile-fail/GEN_05_02_02_002_FAIL_ARG_COUNT_MISMATCH.ets` |
| GEN_05_02_02_003 | Constraint violation | FAIL | `5.2.2_Explicit_Generic_Instantiations/compile-fail/GEN_05_02_02_003_FAIL_CONSTRAINT_VIOLATION.ets` |
| GEN_05_02_02_001 | Explicit instantiation | RUNTIME | `5.2.2_Explicit_Generic_Instantiations/runtime/GEN_05_02_02_001_RUNTIME_EXPLICIT_INST.ets` |

## 5.2.3 Implicit Generic Instantiations (7 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_02_03_001 | Implicit func infer | PASS | `5.2.3_Implicit_Generic_Instantiations/compile-pass/GEN_05_02_03_001_PASS_IMPLICIT_FUNC_INFER.ets` |
| GEN_05_02_03_002 | Implicit multi infer | PASS | `5.2.3_Implicit_Generic_Instantiations/compile-pass/GEN_05_02_03_002_PASS_IMPLICIT_MULTI_INFER.ets` |
| GEN_05_02_03_003 | Method default from class | PASS | `5.2.3_Implicit_Generic_Instantiations/compile-pass/GEN_05_02_03_003_PASS_METHOD_DEFAULT_FROM_CLASS.ets` |
| GEN_05_02_03_001 | Cannot infer | FAIL | `5.2.3_Implicit_Generic_Instantiations/compile-fail/GEN_05_02_03_001_FAIL_CANNOT_INFER.ets` |
| GEN_05_02_03_002 | Infer no context | FAIL | `5.2.3_Implicit_Generic_Instantiations/compile-fail/GEN_05_02_03_002_FAIL_INFER_NO_CONTEXT.ets` |
| GEN_05_02_03_003 | Default order implicit | FAIL | `5.2.3_Implicit_Generic_Instantiations/compile-fail/GEN_05_02_03_003_FAIL_DEFAULT_ORDER_IMPLICIT.ets` |
| GEN_05_02_03_001 | Implicit instantiation | RUNTIME | `5.2.3_Implicit_Generic_Instantiations/runtime/GEN_05_02_03_001_RUNTIME_IMPLICIT_INST.ets` |
