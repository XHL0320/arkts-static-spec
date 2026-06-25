# 15.2.4 Subtyping for Tuple Types - Test Report

## Execution Overview
| Metric | Value |
|---|---|
| Total Cases | 9 |
| Passed | 9 |
| Failed | 0 |
| Pass Rate | 100% |

## Case List
| ID | Case File | Type | Result |
|---|---|---|---|
| SEM_15_02_04_001_PASS_TUPLE_IDENTITY | SEM_15_02_04_001_PASS_TUPLE_IDENTITY.ets | compile-pass | ✅ |
| SEM_15_02_04_002_PASS_empty_tuple_from_number | SEM_15_02_04_002_PASS_empty_tuple_from_number.ets | compile-pass | ✅ |
| SEM_15_02_04_003_PASS_prefix_tuple_subtype | SEM_15_02_04_003_PASS_prefix_tuple_subtype.ets | compile-pass | ✅ |
| SEM_15_02_04_004_PASS_tuple_longer_to_shorter | SEM_15_02_04_004_PASS_tuple_longer_to_shorter.ets | compile-pass | ✅ |
| SEM_15_02_04_100_FAIL_tuple_element_mismatch | SEM_15_02_04_100_FAIL_tuple_element_mismatch.ets | compile-fail | ✅ |
| SEM_15_02_04_101_FAIL_tuple_shorter_to_longer | SEM_15_02_04_101_FAIL_tuple_shorter_to_longer.ets | compile-fail | ✅ |
| SEM_15_02_04_102_FAIL_tuple_length_mismatch | SEM_15_02_04_102_FAIL_tuple_length_mismatch.ets | compile-fail | ✅ |
| SEM_15_02_04_103_FAIL_tuple_element_type_mismatch | SEM_15_02_04_103_FAIL_tuple_element_type_mismatch.ets | compile-fail | ✅ |
| SEM_15_02_04_200_RUNTIME_tuple_subtype | SEM_15_02_04_200_RUNTIME_tuple_subtype.ets | runtime | ✅ |

## Result Statistics
| Category | Count | Pass | Fail |
|---|---|---|---|
| compile-pass | 4 | 4 | 0 |
| compile-fail | 4 | 4 | 0 |
| runtime | 1 | 1 | 0 |
| **Total** | **9** | **9** | **0** |

## Detailed Results

### compile-pass (4/4 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_04_001_PASS_TUPLE_IDENTITY | SEM_15_02_04_001_PASS_TUPLE_IDENTITY.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_04_002_PASS_empty_tuple_from_number | SEM_15_02_04_002_PASS_empty_tuple_from_number.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_04_003_PASS_prefix_tuple_subtype | SEM_15_02_04_003_PASS_prefix_tuple_subtype.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_04_004_PASS_tuple_longer_to_shorter | SEM_15_02_04_004_PASS_tuple_longer_to_shorter.ets | compile-pass | compile-pass | ✅ |

### compile-fail (4/4 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_04_100_FAIL_tuple_element_mismatch | SEM_15_02_04_100_FAIL_tuple_element_mismatch.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_04_101_FAIL_tuple_shorter_to_longer | SEM_15_02_04_101_FAIL_tuple_shorter_to_longer.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_04_102_FAIL_tuple_length_mismatch | SEM_15_02_04_102_FAIL_tuple_length_mismatch.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_04_103_FAIL_tuple_element_type_mismatch | SEM_15_02_04_103_FAIL_tuple_element_type_mismatch.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_04_200_RUNTIME_tuple_subtype | SEM_15_02_04_200_RUNTIME_tuple_subtype.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
