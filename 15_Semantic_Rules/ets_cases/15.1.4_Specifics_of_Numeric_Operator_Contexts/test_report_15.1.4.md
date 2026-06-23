# 15.1.4 Specifics of Numeric Operator Contexts - Test Report

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
| SEM_15_01_010 | SEM_15_01_010_PASS_NUMERIC_OPERATOR_WIDEN.ets | compile-pass | ✅ |
| SEM_15_01_021 | SEM_15_01_021_PASS_BYTE_SHORT_INC.ets | compile-pass | ✅ |
| SEM_15_01_022 | SEM_15_01_022_PASS_MIXED_NUMERIC.ets | compile-pass | ✅ |
| SEM_15_01_023 | SEM_15_01_023_FAIL_BOOL_NUMERIC.ets | compile-fail | ✅ |
| SEM_15_01_024 | SEM_15_01_024_RUNTIME_NUMERIC_OPS.ets | runtime | ✅ |

## Result Statistics
| Category | Count | Pass | Fail |
|---|---|---|---|
| compile-pass | 3 | 3 | 0 |
| compile-fail | 1 | 1 | 0 |
| runtime | 1 | 1 | 0 |
| **Total** | **5** | **5** | **0** |

## Detailed Results

### compile-pass (3/3 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_01_010 | SEM_15_01_010_PASS_NUMERIC_OPERATOR_WIDEN.ets | compile-pass | compile-pass | ✅ |
| SEM_15_01_021 | SEM_15_01_021_PASS_BYTE_SHORT_INC.ets | compile-pass | compile-pass | ✅ |
| SEM_15_01_022 | SEM_15_01_022_PASS_MIXED_NUMERIC.ets | compile-pass | compile-pass | ✅ |

### compile-fail (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_01_023 | SEM_15_01_023_FAIL_BOOL_NUMERIC.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_01_024 | SEM_15_01_024_RUNTIME_NUMERIC_OPS.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
