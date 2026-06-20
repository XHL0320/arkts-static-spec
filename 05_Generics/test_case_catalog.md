# 05 Generics — Test Case Catalog

## 5.1 Type Parameters (29 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_001 | Basic generic class | PASS | `GEN_05_01_001_PASS_BASIC_GENERIC_CLASS.ets` |
| GEN_05_01_002 | Generic interface | PASS | `GEN_05_01_002_PASS_GENERIC_INTERFACE.ets` |
| GEN_05_01_003 | Generic function | PASS | `GEN_05_01_003_PASS_GENERIC_FUNCTION.ets` |
| GEN_05_01_004 | Generic type alias | PASS | `GEN_05_01_004_PASS_GENERIC_TYPE_ALIAS.ets` |
| GEN_05_01_005 | Multiple type params | PASS | `GEN_05_01_005_PASS_MULTIPLE_PARAMS.ets` |
| GEN_05_01_006 | Constraint — class | PASS | `GEN_05_01_006_PASS_CONSTRAINT_CLASS.ets` |
| GEN_05_01_007 | Constraint — union | PASS | `GEN_05_01_007_PASS_CONSTRAINT_UNION.ets` |
| GEN_05_01_008 | Constraint — literal union | PASS | `GEN_05_01_008_PASS_CONSTRAINT_LITERAL_UNION.ets` |
| GEN_05_01_009 | Constraint — keyof | PASS | `GEN_05_01_009_PASS_CONSTRAINT_KEYOF.ets` |
| GEN_05_01_010 | Dependent type param | PASS | `GEN_05_01_010_PASS_DEPENDENT_PARAM.ets` |
| GEN_05_01_011 | Type param default | PASS | `GEN_05_01_011_PASS_TYPE_PARAM_DEFAULT.ets` |
| GEN_05_01_012 | Multi default | PASS | `GEN_05_01_012_PASS_MULTI_DEFAULT.ets` |
| GEN_05_01_013 | Func default | PASS | `GEN_05_01_013_PASS_FUNC_DEFAULT.ets` |
| GEN_05_01_014 | Default equivalence | PASS | `GEN_05_01_014_PASS_DEFAULT_EQUIV.ets` |
| GEN_05_01_020 | Constraint not satisfied | FAIL | `GEN_05_01_020_FAIL_CONSTRAINT_NOT_SATISFIED.ets` |
| GEN_05_01_021 | Constraint union not satisfied | FAIL | `GEN_05_01_021_FAIL_CONSTRAINT_UNION_NOT_SATISFIED.ets` |
| GEN_05_01_022 | Literal constraint violation | FAIL | `GEN_05_01_022_FAIL_LITERAL_CONSTRAINT.ets` |
| GEN_05_01_023 | keyof constraint violation | FAIL | `GEN_05_01_023_FAIL_KEYOF_CONSTRAINT.ets` |
| GEN_05_01_024 | Dependent not satisfied | FAIL | `GEN_05_01_024_FAIL_DEPENDENT_NOT_SATISFIED.ets` |
| GEN_05_01_025 | Circular self-reference | FAIL | `GEN_05_01_025_FAIL_CIRCULAR_SELF.ets` |
| GEN_05_01_026 | Circular mutual | FAIL | `GEN_05_01_026_FAIL_CIRCULAR_MUTUAL.ets` |
| GEN_05_01_027 | Circular mutual union | FAIL | `GEN_05_01_027_FAIL_CIRCULAR_MUTUAL_UNION.ets` |
| GEN_05_01_028 | Default after no-default | FAIL | `GEN_05_01_028_FAIL_DEFAULT_AFTER_NO_DEFAULT.ets` |
| GEN_05_01_029 | Default ref forward | FAIL | `GEN_05_01_029_FAIL_DEFAULT_REF_FORWARD.ets` |
| GEN_05_01_030 | Generic method variance | FAIL | `GEN_05_01_030_FAIL_GENERIC_METHOD_VARIANCE.ets` |
| GEN_05_01_031 | Circular with default | FAIL | `GEN_05_01_031_FAIL_CIRCULAR_WITH_DEFAULT.ets` |
| GEN_05_01_035 | Generic class | RUNTIME | `GEN_05_01_035_RUNTIME_GENERIC_CLASS.ets` |
| GEN_05_01_036 | Generic function | RUNTIME | `GEN_05_01_036_RUNTIME_GENERIC_FUNCTION.ets` |
| GEN_05_01_037 | Default type arg | RUNTIME | `GEN_05_01_037_RUNTIME_DEFAULT_TYPE_ARG.ets` |

## 5.2 Variance & Wildcard (22 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_02_001 | Covariant out — return | PASS | `GEN_05_02_001_PASS_COVARIANT_OUT_RETURN.ets` |
| GEN_05_02_002 | Covariant out — readonly | PASS | `GEN_05_02_002_PASS_COVARIANT_OUT_READONLY.ets` |
| GEN_05_02_003 | Contravariant in — param | PASS | `GEN_05_02_003_PASS_CONTRAVARIANT_IN_PARAM.ets` |
| GEN_05_02_004 | Invariant — any position | PASS | `GEN_05_02_004_PASS_INVARIANT_ANY_POS.ets` |
| GEN_05_02_005 | Variance interleave | PASS | `GEN_05_02_005_PASS_VARIANCE_INTERLEAVE.ets` |
| GEN_05_02_006 | out in constructor | PASS | `GEN_05_02_006_PASS_OUT_CONSTRUCTOR.ets` |
| GEN_05_02_026 | Type alias variance（设计问题）| PASS | `GEN_05_02_026_PASS_TYPE_ALIAS_VARIANCE.ets` |
| GEN_05_02_010 | out in in-position | FAIL | `GEN_05_02_010_FAIL_OUT_IN_IN_POSITION.ets` |
| GEN_05_02_011 | out in field | FAIL | `GEN_05_02_011_FAIL_OUT_IN_FIELD.ets` |
| GEN_05_02_012 | in in out-position return | FAIL | `GEN_05_02_012_FAIL_IN_IN_OUT_POSITION_RETURN.ets` |
| GEN_05_02_013 | in in invariant field | FAIL | `GEN_05_02_013_FAIL_IN_INVARIANT_FIELD.ets` |
| GEN_05_02_014 | Func param variance ⚠️ | FAIL | `GEN_05_02_014_FAIL_FUNC_PARAM_VARIANCE.ets` |
| GEN_05_02_015 | out in method param return ⚠️ | FAIL | `GEN_05_02_015_FAIL_OUT_IN_RETURN_OF_METHOD_PARAM.ets` |
| GEN_05_02_016 | Wildcard not subtype any | FAIL | `GEN_05_02_016_FAIL_WILDCARD_NOT_SUBTYPE_ANY.ets` |
| GEN_05_02_017 | Wildcard not subtype constraint | FAIL | `GEN_05_02_017_FAIL_WILDCARD_NOT_SUBTYPE_CONSTRAINT.ets` |
| GEN_05_02_018 | Wildcard write in-pos | FAIL | `GEN_05_02_018_FAIL_WILDCARD_WRITE_IN_POS.ets` |
| GEN_05_02_019 | Wildcard write invariant | FAIL | `GEN_05_02_019_FAIL_WILDCARD_WRITE_INVARIANT.ets` |
| GEN_05_02_021 | out wildcard not subtype never | FAIL | `GEN_05_02_021_FAIL_OUT_WILDCARD_NOT_SUBTYPE_NEVER.ets` |
| GEN_05_02_022 | in wildcard not subtype C | FAIL | `GEN_05_02_022_FAIL_IN_WILDCARD_NOT_SUBTYPE_C.ets` |
| GEN_05_02_023 | in wildcard write | FAIL | `GEN_05_02_023_FAIL_IN_WILDCARD_WRITE.ets` |
| GEN_05_02_024 | Wildcard invariant assign | FAIL | `GEN_05_02_024_FAIL_WILDCARD_INVARIANT_ASSIGN.ets` |
| GEN_05_02_025 | in callback return | FAIL | `GEN_05_02_025_FAIL_IN_CALLBACK_RETURN.ets` |
| GEN_05_02_020 | instanceof wildcard | RUNTIME | `GEN_05_02_020_RUNTIME_INSTANCEOF_WILDCARD.ets` |

## 5.3 Generic Instantiations (21 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_03_001 | Type arg — number | PASS | `GEN_05_03_001_PASS_TYPE_ARG_NUMBER.ets` |
| GEN_05_03_002 | Type arg — union | PASS | `GEN_05_03_002_PASS_TYPE_ARG_UNION.ets` |
| GEN_05_03_003 | Type arg — array | PASS | `GEN_05_03_003_PASS_TYPE_ARG_ARRAY.ets` |
| GEN_05_03_004 | Type arg — tuple | PASS | `GEN_05_03_004_PASS_TYPE_ARG_TUPLE.ets` |
| GEN_05_03_005 | Type arg — func type | PASS | `GEN_05_03_005_PASS_TYPE_ARG_FUNC_TYPE.ets` |
| GEN_05_03_006 | Explicit class instantiation | PASS | `GEN_05_03_006_PASS_EXPLICIT_CLASS_INST.ets` |
| GEN_05_03_007 | Explicit method instantiation | PASS | `GEN_05_03_007_PASS_EXPLICIT_METHOD_INST.ets` |
| GEN_05_03_008 | Explicit func instantiation | PASS | `GEN_05_03_008_PASS_EXPLICIT_FUNC_INST.ets` |
| GEN_05_03_009 | Explicit type alias | PASS | `GEN_05_03_009_PASS_EXPLICIT_TYPE_ALIAS.ets` |
| GEN_05_03_010 | Partial instantiation | PASS | `GEN_05_03_010_PASS_PARTIAL_INST_GENERIC.ets` |
| GEN_05_03_011 | Implicit func infer | PASS | `GEN_05_03_011_PASS_IMPLICIT_FUNC_INFER.ets` |
| GEN_05_03_012 | Implicit multi infer | PASS | `GEN_05_03_012_PASS_IMPLICIT_MULTI_INFER.ets` |
| GEN_05_03_013 | Method default from class | PASS | `GEN_05_03_013_PASS_METHOD_DEFAULT_FROM_CLASS.ets` |
| GEN_05_03_020 | Non-generic with args | FAIL | `GEN_05_03_020_FAIL_NON_GENERIC_WITH_ARGS.ets` |
| GEN_05_03_021 | Arg count mismatch | FAIL | `GEN_05_03_021_FAIL_ARG_COUNT_MISMATCH.ets` |
| GEN_05_03_022 | Constraint violation | FAIL | `GEN_05_03_022_FAIL_CONSTRAINT_VIOLATION.ets` |
| GEN_05_03_023 | Cannot infer | FAIL | `GEN_05_03_023_FAIL_CANNOT_INFER.ets` |
| GEN_05_03_024 | Infer no context | FAIL | `GEN_05_03_024_FAIL_INFER_NO_CONTEXT.ets` |
| GEN_05_03_027 | Default order implicit | FAIL | `GEN_05_03_027_FAIL_DEFAULT_ORDER_IMPLICIT.ets` |
| GEN_05_03_025 | Explicit instantiation | RUNTIME | `GEN_05_03_025_RUNTIME_EXPLICIT_INST.ets` |
| GEN_05_03_026 | Implicit instantiation | RUNTIME | `GEN_05_03_026_RUNTIME_IMPLICIT_INST.ets` |
