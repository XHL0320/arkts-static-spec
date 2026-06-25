# 15.2.6 Subtyping for Function Types - Test Report

## Execution Overview
| Metric | Value |
|---|---|
| Total Cases | 12 |
| Passed | 12 |
| Failed | 0 |
| Pass Rate | 100% |

## Case List
| ID | Case File | Type | Result |
|---|---|---|---|
| SEM_15_02_06_001_PASS_FUNCTION_TYPE_SUBTYPE | SEM_15_02_06_001_PASS_FUNCTION_TYPE_SUBTYPE.ets | compile-pass | ✅ |
| SEM_15_02_06_002_PASS_func_identical_params_covariant_return | SEM_15_02_06_002_PASS_func_identical_params_covariant_return.ets | compile-pass | ✅ |
| SEM_15_02_06_003_PASS_func_contravariant_params_covariant_return | SEM_15_02_06_003_PASS_func_contravariant_params_covariant_return.ets | compile-pass | ✅ |
| SEM_15_02_06_004_PASS_func_less_params_subtype | SEM_15_02_06_004_PASS_func_less_params_subtype.ets | compile-pass | ✅ |
| SEM_15_02_06_005_PASS_func_optional_params_less | SEM_15_02_06_005_PASS_func_optional_params_less.ets | compile-pass | ✅ |
| SEM_15_02_06_006_PASS_func_optional_params_equal | SEM_15_02_06_006_PASS_func_optional_params_equal.ets | compile-pass | ✅ |
| SEM_15_02_06_100_FAIL_PARAM_COVARIANCE | SEM_15_02_06_100_FAIL_PARAM_COVARIANCE.ets | compile-fail | ✅ |
| SEM_15_02_06_101_FAIL_func_optional_required_mismatch2 | SEM_15_02_06_101_FAIL_func_optional_required_mismatch2.ets | compile-fail | ✅ |
| SEM_15_02_06_102_FAIL_func_optional_required_mismatch1 | SEM_15_02_06_102_FAIL_func_optional_required_mismatch1.ets | compile-fail | ✅ |
| SEM_15_02_06_103_FAIL_func_too_few_params | SEM_15_02_06_103_FAIL_func_too_few_params.ets | compile-fail | ✅ |
| SEM_15_02_06_104_FAIL_func_params_not_contravariant | SEM_15_02_06_104_FAIL_func_params_not_contravariant.ets | compile-fail | ✅ |
| SEM_15_02_06_200_RUNTIME_func_subtype | SEM_15_02_06_200_RUNTIME_func_subtype.ets | runtime | ✅ |

## Result Statistics
| Category | Count | Pass | Fail |
|---|---|---|---|
| compile-pass | 6 | 6 | 0 |
| compile-fail | 5 | 5 | 0 |
| runtime | 1 | 1 | 0 |
| **Total** | **12** | **12** | **0** |

## Detailed Results

### compile-pass (6/6 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_06_001_PASS_FUNCTION_TYPE_SUBTYPE | SEM_15_02_06_001_PASS_FUNCTION_TYPE_SUBTYPE.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_06_002_PASS_func_identical_params_covariant_return | SEM_15_02_06_002_PASS_func_identical_params_covariant_return.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_06_003_PASS_func_contravariant_params_covariant_return | SEM_15_02_06_003_PASS_func_contravariant_params_covariant_return.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_06_004_PASS_func_less_params_subtype | SEM_15_02_06_004_PASS_func_less_params_subtype.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_06_005_PASS_func_optional_params_less | SEM_15_02_06_005_PASS_func_optional_params_less.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_06_006_PASS_func_optional_params_equal | SEM_15_02_06_006_PASS_func_optional_params_equal.ets | compile-pass | compile-pass | ✅ |

### compile-fail (5/5 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_06_100_FAIL_PARAM_COVARIANCE | SEM_15_02_06_100_FAIL_PARAM_COVARIANCE.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_06_101_FAIL_func_optional_required_mismatch2 | SEM_15_02_06_101_FAIL_func_optional_required_mismatch2.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_06_102_FAIL_func_optional_required_mismatch1 | SEM_15_02_06_102_FAIL_func_optional_required_mismatch1.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_06_103_FAIL_func_too_few_params | SEM_15_02_06_103_FAIL_func_too_few_params.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_06_104_FAIL_func_params_not_contravariant | SEM_15_02_06_104_FAIL_func_params_not_contravariant.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_06_200_RUNTIME_func_subtype | SEM_15_02_06_200_RUNTIME_func_subtype.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
