# 15.2.8 Subtyping for Intersection Types - Test Report

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
| SEM_15_02_08_001_PASS_PLACEHOLDER | SEM_15_02_08_001_PASS_PLACEHOLDER.ets | compile-pass | ✅ |
| SEM_15_02_08_002_PASS_intersection_subtype_placeholder | SEM_15_02_08_002_PASS_intersection_subtype_placeholder.ets | compile-pass | ✅ |
| SEM_15_02_08_100_FAIL_INTERSECTION_UNSUPPORTED | SEM_15_02_08_100_FAIL_INTERSECTION_UNSUPPORTED.ets | compile-fail | ✅ |
| SEM_15_02_08_101_FAIL_intersection_unsupported | SEM_15_02_08_101_FAIL_intersection_unsupported.ets | compile-fail | ✅ |
| SEM_15_02_08_200_RUNTIME_intersection | SEM_15_02_08_200_RUNTIME_intersection.ets | runtime | ✅ |

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
| SEM_15_02_08_001_PASS_PLACEHOLDER | SEM_15_02_08_001_PASS_PLACEHOLDER.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_08_002_PASS_intersection_subtype_placeholder | SEM_15_02_08_002_PASS_intersection_subtype_placeholder.ets | compile-pass | compile-pass | ✅ |

### compile-fail (2/2 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_08_100_FAIL_INTERSECTION_UNSUPPORTED | SEM_15_02_08_100_FAIL_INTERSECTION_UNSUPPORTED.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_08_101_FAIL_intersection_unsupported | SEM_15_02_08_101_FAIL_intersection_unsupported.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_08_200_RUNTIME_intersection | SEM_15_02_08_200_RUNTIME_intersection.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
