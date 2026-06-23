# 15.1.2 Specifics of Assignment-like Contexts - Test Report

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
| SEM_15_01_006 | SEM_15_01_02_001_PASS_KNOWN_RHS_ASSIGN.ets | compile-pass | ✅ |
| SEM_15_01_007 | SEM_15_01_02_002_PASS_UNKNOWN_RHS_INFER.ets | compile-pass | ✅ |
| SEM_15_01_012 | SEM_15_01_02_003_PASS_WIDENING_ASSIGN.ets | compile-pass | ✅ |
| SEM_15_01_013 | SEM_15_01_02_004_PASS_SUBTYPE_ASSIGN.ets | compile-pass | ✅ |
| SEM_15_01_014 | SEM_15_01_02_100_FAIL_TYPE_MISMATCH.ets | compile-fail | ✅ |
| SEM_15_01_015 | SEM_15_01_02_101_FAIL_UNRELATED_ASSIGN.ets | compile-fail | ✅ |
| SEM_15_01_016 | SEM_15_01_02_200_RUNTIME_ASSIGN_SEMANTICS.ets | runtime | ✅ |

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
| SEM_15_01_006 | SEM_15_01_02_001_PASS_KNOWN_RHS_ASSIGN.ets | compile-pass | compile-pass | ✅ |
| SEM_15_01_007 | SEM_15_01_02_002_PASS_UNKNOWN_RHS_INFER.ets | compile-pass | compile-pass | ✅ |
| SEM_15_01_012 | SEM_15_01_02_003_PASS_WIDENING_ASSIGN.ets | compile-pass | compile-pass | ✅ |
| SEM_15_01_013 | SEM_15_01_02_004_PASS_SUBTYPE_ASSIGN.ets | compile-pass | compile-pass | ✅ |

### compile-fail (2/2 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_01_014 | SEM_15_01_02_100_FAIL_TYPE_MISMATCH.ets | compile-fail | compile-fail | ✅ |
| SEM_15_01_015 | SEM_15_01_02_101_FAIL_UNRELATED_ASSIGN.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_01_016 | SEM_15_01_02_200_RUNTIME_ASSIGN_SEMANTICS.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
