# 15.2.7 Subtyping for Fixed Size Array Types - Test Report

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
| SEM_15_02_07_001_PASS_fixed_array_element_covariance | SEM_15_02_07_001_PASS_fixed_array_element_covariance.ets | compile-pass | ✅ |
| SEM_15_02_07_002_PASS_fixed_array_self_assign | SEM_15_02_07_002_PASS_fixed_array_self_assign.ets | compile-pass | ✅ |
| SEM_15_02_07_003_PASS_fixed_array_element_covariance | SEM_15_02_07_003_PASS_fixed_array_element_covariance.ets | compile-pass | ✅ |
| SEM_15_02_07_004_PASS_fixed_array_runtime_store_check | SEM_15_02_07_004_PASS_fixed_array_runtime_store_check.ets | compile-pass | ✅ |
| SEM_15_02_07_100_FAIL_FIXED_ARRAY_GAP | SEM_15_02_07_100_FAIL_FIXED_ARRAY_GAP.ets | compile-fail | ✅ |
| SEM_15_02_07_101_FAIL_fixed_array_wrong_direction | SEM_15_02_07_101_FAIL_fixed_array_wrong_direction.ets | compile-fail | ✅ |
| SEM_15_02_07_200_RUNTIME_fixed_array | SEM_15_02_07_200_RUNTIME_fixed_array.ets | runtime | ✅ |

## Result Statistics
| Category | Count | Pass | Fail |
|---|---|---|---|
| compile-pass | 4 | 4 | 0 |
| compile-fail | 2 | 2 | 0 |
| runtime | 1 | 1 | 0 |
| **Total** | **7** | **7** | **0** |

## Detailed Results

### compile-pass (4/4 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_07_001_PASS_fixed_array_element_covariance | SEM_15_02_07_001_PASS_fixed_array_element_covariance.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_07_002_PASS_fixed_array_self_assign | SEM_15_02_07_002_PASS_fixed_array_self_assign.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_07_003_PASS_fixed_array_element_covariance | SEM_15_02_07_003_PASS_fixed_array_element_covariance.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_07_004_PASS_fixed_array_runtime_store_check | SEM_15_02_07_004_PASS_fixed_array_runtime_store_check.ets | compile-pass | compile-pass | ✅ |

### compile-fail (2/2 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_07_100_FAIL_FIXED_ARRAY_GAP | SEM_15_02_07_100_FAIL_FIXED_ARRAY_GAP.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_07_101_FAIL_fixed_array_wrong_direction | SEM_15_02_07_101_FAIL_fixed_array_wrong_direction.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_07_200_RUNTIME_fixed_array | SEM_15_02_07_200_RUNTIME_fixed_array.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
