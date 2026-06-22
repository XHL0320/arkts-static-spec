# 15.10.1 15.10.1_Implicit_Function_Overloading - ArkTS/Java/Swift/TypeScript Comparison Report
| Aspect | ArkTS | Java | Swift | TypeScript |
|--------|-------|------|-------|------------|
| Overload by param types | ✅ | ✅ | ✅ (labels) | Multiple sigs |
| Overload by param count | ✅ | ✅ | ✅ | ✅ |
| Ambiguous overload | ❌ rejected | ❌ | ❌ | ✅ last sig |
## Test Cases
| SEM_15_10_001_PASS_FUNCTION_OVERLOAD | PASS | ✅ |
| SEM_15_10_002_PASS_PARAM_COUNT_OVERLOAD | PASS | ✅ |
| SEM_15_10_003_PASS_UNION_OVERLOAD | PASS | ✅ |
| SEM_15_10_010_PASS_UNAMBIGUOUS_OVERLOAD | PASS | ✅ |
| SEM_15_10_011_FAIL_ERASURE_AMBIGUOUS | FAIL | ✅ |
| SEM_15_10_01_100 | RUNTIME | ✅ |
