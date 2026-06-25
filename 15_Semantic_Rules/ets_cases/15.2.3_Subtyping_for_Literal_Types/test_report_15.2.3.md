# 15.2.3 Subtyping for Literal Types - Test Report

## Execution Overview
| Metric | Value |
|---|---|
| Total Cases | 7 |
| Passed | 7 |
| Failed | 0 |
| Pass Rate | 100% |

## Case List
| ID | Case File | Type | Result |
|---|---|---|---|
| SEM_15_02_03_001_PASS_STRING_LITERAL_SUBTYPE | SEM_15_02_03_001_PASS_STRING_LITERAL_SUBTYPE.ets | compile-pass | ✅ |
| SEM_15_02_03_002_PASS_int_widens_to_number | SEM_15_02_03_002_PASS_int_widens_to_number.ets | compile-pass | ✅ |
| SEM_15_02_03_003_PASS_string_literal_override_subtype | SEM_15_02_03_003_PASS_string_literal_override_subtype.ets | compile-pass | ✅ |
| SEM_15_02_03_100_FAIL_STRING_LITERAL_NOT_INT | SEM_15_02_03_100_FAIL_STRING_LITERAL_NOT_INT.ets | compile-fail | ✅ |
| SEM_15_02_03_101_FAIL_INT_LITERAL_NOT_STRING | SEM_15_02_03_101_FAIL_INT_LITERAL_NOT_STRING.ets | compile-fail | ✅ |
| SEM_15_02_03_102_FAIL_BOOLEAN_LITERAL_NOT_NUMBER | SEM_15_02_03_102_FAIL_BOOLEAN_LITERAL_NOT_NUMBER.ets | compile-fail | ✅ |
| SEM_15_02_03_200_RUNTIME_LITERAL | SEM_15_02_03_200_RUNTIME_LITERAL.ets | runtime | ✅ |

## Result Statistics
| Category | Count | Pass | Fail |
|---|---|---|---|
| compile-pass | 3 | 3 | 0 |
| compile-fail | 3 | 3 | 0 |
| runtime | 1 | 1 | 0 |
| **Total** | **7** | **7** | **0** |

## Detailed Results

### compile-pass (3/3 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_03_001_PASS_STRING_LITERAL_SUBTYPE | SEM_15_02_03_001_PASS_STRING_LITERAL_SUBTYPE.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_03_002_PASS_int_widens_to_number | SEM_15_02_03_002_PASS_int_widens_to_number.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_03_003_PASS_string_literal_override_subtype | SEM_15_02_03_003_PASS_string_literal_override_subtype.ets | compile-pass | compile-pass | ✅ |

### compile-fail (3/3 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_03_100_FAIL_STRING_LITERAL_NOT_INT | SEM_15_02_03_100_FAIL_STRING_LITERAL_NOT_INT.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_03_101_FAIL_INT_LITERAL_NOT_STRING | SEM_15_02_03_101_FAIL_INT_LITERAL_NOT_STRING.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_03_102_FAIL_BOOLEAN_LITERAL_NOT_NUMBER | SEM_15_02_03_102_FAIL_BOOLEAN_LITERAL_NOT_NUMBER.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_03_200_RUNTIME_LITERAL | SEM_15_02_03_200_RUNTIME_LITERAL.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
