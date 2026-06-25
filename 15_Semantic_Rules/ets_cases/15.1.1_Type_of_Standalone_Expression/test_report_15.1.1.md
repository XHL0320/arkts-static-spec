# 15.1.1 Type of Standalone Expression - Test Report

## Execution Overview
| Metric | Value |
|---|---|
| Total Cases | 6 |
| Passed | 6 |
| Failed | 0 |
| Pass Rate | 100% |

## Case List
| ID | Case File | Type | Result |
|---|---|---|---|
| SEM_15_01_01_001_PASS_INT_LITERAL_TYPE | SEM_15_01_01_001_PASS_INT_LITERAL_TYPE.ets | compile-pass | ✅ |
| SEM_15_01_01_002_PASS_FLOAT_LITERAL_TYPE | SEM_15_01_01_002_PASS_FLOAT_LITERAL_TYPE.ets | compile-pass | ✅ |
| SEM_15_01_01_003_PASS_CONST_EXPR_TYPE | SEM_15_01_01_003_PASS_CONST_EXPR_TYPE.ets | compile-pass | ✅ |
| SEM_15_01_01_004_PASS_ARRAY_LITERAL_TYPE | SEM_15_01_01_004_PASS_ARRAY_LITERAL_TYPE.ets | compile-pass | ✅ |
| SEM_15_01_01_100_FAIL_OBJECT_LITERAL_STANDALONE | SEM_15_01_01_100_FAIL_OBJECT_LITERAL_STANDALONE.ets | compile-fail | ✅ |
| SEM_15_01_01_200_RUNTIME_STANDALONE | SEM_15_01_01_200_RUNTIME_STANDALONE.ets | runtime | ✅ |

## Result Statistics
| Category | Count | Pass | Fail |
|---|---|---|---|
| compile-pass | 4 | 4 | 0 |
| compile-fail | 1 | 1 | 0 |
| runtime | 1 | 1 | 0 |
| **Total** | **6** | **6** | **0** |

## Detailed Results

### compile-pass (4/4 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_01_01_001_PASS_INT_LITERAL_TYPE | SEM_15_01_01_001_PASS_INT_LITERAL_TYPE.ets | compile-pass | compile-pass | ✅ |
| SEM_15_01_01_002_PASS_FLOAT_LITERAL_TYPE | SEM_15_01_01_002_PASS_FLOAT_LITERAL_TYPE.ets | compile-pass | compile-pass | ✅ |
| SEM_15_01_01_003_PASS_CONST_EXPR_TYPE | SEM_15_01_01_003_PASS_CONST_EXPR_TYPE.ets | compile-pass | compile-pass | ✅ |
| SEM_15_01_01_004_PASS_ARRAY_LITERAL_TYPE | SEM_15_01_01_004_PASS_ARRAY_LITERAL_TYPE.ets | compile-pass | compile-pass | ✅ |

### compile-fail (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_01_01_100_FAIL_OBJECT_LITERAL_STANDALONE | SEM_15_01_01_100_FAIL_OBJECT_LITERAL_STANDALONE.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_01_01_200_RUNTIME_STANDALONE | SEM_15_01_01_200_RUNTIME_STANDALONE.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
