# 15.2.2 Subtyping for Generic Classes and Interfaces - Test Report

## Execution Overview
| Metric | Value |
|---|---|
| Total Cases | 14 |
| Passed | 14 |
| Failed | 0 |
| Pass Rate | 100% |

## Case List
| ID | Case File | Type | Result |
|---|---|---|---|
| SEM_15_02_02_001_PASS_generic_self_assign | SEM_15_02_02_001_PASS_generic_self_assign.ets | compile-pass | ✅ |
| SEM_15_02_02_002_PASS_generic_class_super_assign | SEM_15_02_02_002_PASS_generic_class_super_assign.ets | compile-pass | ✅ |
| SEM_15_02_02_003_PASS_generic_interface_impl_assign | SEM_15_02_02_003_PASS_generic_interface_impl_assign.ets | compile-pass | ✅ |
| SEM_15_02_02_004_PASS_generic_interface_sub_assign | SEM_15_02_02_004_PASS_generic_interface_sub_assign.ets | compile-pass | ✅ |
| SEM_15_02_02_005_PASS_contravariant_ok | SEM_15_02_02_005_PASS_contravariant_ok.ets | compile-pass | ✅ |
| SEM_15_02_02_006_PASS_covariant_ok | SEM_15_02_02_006_PASS_covariant_ok.ets | compile-pass | ✅ |
| SEM_15_02_02_100_FAIL_GENERIC_INVARIANCE | SEM_15_02_02_100_FAIL_GENERIC_INVARIANCE.ets | compile-fail | ✅ |
| SEM_15_02_02_101_FAIL_generic_class_to_object | SEM_15_02_02_101_FAIL_generic_class_to_object.ets | compile-fail | ✅ |
| SEM_15_02_02_102_FAIL_generic_interface_to_object | SEM_15_02_02_102_FAIL_generic_interface_to_object.ets | compile-fail | ✅ |
| SEM_15_02_02_103_FAIL_covariant_mismatch | SEM_15_02_02_103_FAIL_covariant_mismatch.ets | compile-fail | ✅ |
| SEM_15_02_02_104_FAIL_contravariant_mismatch | SEM_15_02_02_104_FAIL_contravariant_mismatch.ets | compile-fail | ✅ |
| SEM_15_02_02_105_FAIL_generic_interface_super_assign | SEM_15_02_02_105_FAIL_generic_interface_super_assign.ets | compile-fail | ✅ |
| SEM_15_02_02_106_FAIL_generic_class_sub_assign | SEM_15_02_02_106_FAIL_generic_class_sub_assign.ets | compile-fail | ✅ |
| SEM_15_02_02_200_RUNTIME_generic_subtype | SEM_15_02_02_200_RUNTIME_generic_subtype.ets | runtime | ✅ |

## Result Statistics
| Category | Count | Pass | Fail |
|---|---|---|---|
| compile-pass | 6 | 6 | 0 |
| compile-fail | 7 | 7 | 0 |
| runtime | 1 | 1 | 0 |
| **Total** | **14** | **14** | **0** |

## Detailed Results

### compile-pass (6/6 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_02_001_PASS_generic_self_assign | SEM_15_02_02_001_PASS_generic_self_assign.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_02_002_PASS_generic_class_super_assign | SEM_15_02_02_002_PASS_generic_class_super_assign.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_02_003_PASS_generic_interface_impl_assign | SEM_15_02_02_003_PASS_generic_interface_impl_assign.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_02_004_PASS_generic_interface_sub_assign | SEM_15_02_02_004_PASS_generic_interface_sub_assign.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_02_005_PASS_contravariant_ok | SEM_15_02_02_005_PASS_contravariant_ok.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_02_006_PASS_covariant_ok | SEM_15_02_02_006_PASS_covariant_ok.ets | compile-pass | compile-pass | ✅ |

### compile-fail (7/7 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_02_100_FAIL_GENERIC_INVARIANCE | SEM_15_02_02_100_FAIL_GENERIC_INVARIANCE.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_02_101_FAIL_generic_class_to_object | SEM_15_02_02_101_FAIL_generic_class_to_object.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_02_102_FAIL_generic_interface_to_object | SEM_15_02_02_102_FAIL_generic_interface_to_object.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_02_103_FAIL_covariant_mismatch | SEM_15_02_02_103_FAIL_covariant_mismatch.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_02_104_FAIL_contravariant_mismatch | SEM_15_02_02_104_FAIL_contravariant_mismatch.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_02_105_FAIL_generic_interface_super_assign | SEM_15_02_02_105_FAIL_generic_interface_super_assign.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_02_106_FAIL_generic_class_sub_assign | SEM_15_02_02_106_FAIL_generic_class_sub_assign.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_02_200_RUNTIME_generic_subtype | SEM_15_02_02_200_RUNTIME_generic_subtype.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
