# 15.2.9 Subtyping for Difference Types - Test Report

## Execution Overview
| Metric | Value |
|---|---|
| Total Cases | 5 |
| Passed | 5 |
| Failed | 0 |
| Pass Rate | 100% |

## Case List
| ID | Case File | Type | Result |
|---|---|---|---|
| SEM_15_02_09_001_PASS_diff_self_assign | SEM_15_02_09_001_PASS_diff_self_assign.ets | compile-pass | ✅ |
| SEM_15_02_09_002_PASS_difference_subtype_placeholder | SEM_15_02_09_002_PASS_difference_subtype_placeholder.ets | compile-pass | ✅ |
| SEM_15_02_09_100_FAIL_DIFFERENCE_UNSUPPORTED | SEM_15_02_09_100_FAIL_DIFFERENCE_UNSUPPORTED.ets | compile-fail | ✅ |
| SEM_15_02_09_101_FAIL_difference_unsupported | SEM_15_02_09_101_FAIL_difference_unsupported.ets | compile-fail | ✅ |
| SEM_15_02_09_200_RUNTIME_difference | SEM_15_02_09_200_RUNTIME_difference.ets | runtime | ✅ |

## Result Statistics
| Category | Count | Pass | Fail |
|---|---|---|---|
| compile-pass | 2 | 2 | 0 |
| compile-fail | 2 | 2 | 0 |
| runtime | 1 | 1 | 0 |
| **Total** | **5** | **5** | **0** |

## Detailed Results

### compile-pass (2/2 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_09_001_PASS_diff_self_assign | SEM_15_02_09_001_PASS_diff_self_assign.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_09_002_PASS_difference_subtype_placeholder | SEM_15_02_09_002_PASS_difference_subtype_placeholder.ets | compile-pass | compile-pass | ✅ |

### compile-fail (2/2 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_09_100_FAIL_DIFFERENCE_UNSUPPORTED | SEM_15_02_09_100_FAIL_DIFFERENCE_UNSUPPORTED.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_09_101_FAIL_difference_unsupported | SEM_15_02_09_101_FAIL_difference_unsupported.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_09_200_RUNTIME_difference | SEM_15_02_09_200_RUNTIME_difference.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
