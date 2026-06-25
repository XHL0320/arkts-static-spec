# 15.2.1 Subtyping for Non Generic Classes and Interfaces - Test Report

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
| SEM_15_02_01_001_PASS_CLASS_EXTENDS_SUBTYPE | SEM_15_02_01_001_PASS_CLASS_EXTENDS_SUBTYPE.ets | compile-pass | ✅ |
| SEM_15_02_01_002_PASS_INTERFACE_EXTENDS_SUBTYPE | SEM_15_02_01_002_PASS_INTERFACE_EXTENDS_SUBTYPE.ets | compile-pass | ✅ |
| SEM_15_02_01_003_PASS_class_to_object | SEM_15_02_01_003_PASS_class_to_object.ets | compile-pass | ✅ |
| SEM_15_02_01_004_PASS_class_implements_interface | SEM_15_02_01_004_PASS_class_implements_interface.ets | compile-pass | ✅ |
| SEM_15_02_01_005_PASS_interface_to_object | SEM_15_02_01_005_PASS_interface_to_object.ets | compile-pass | ✅ |
| SEM_15_02_01_100_FAIL_SELF_EXTENDS | SEM_15_02_01_100_FAIL_SELF_EXTENDS.ets | compile-fail | ✅ |
| SEM_15_02_01_200_RUNTIME_SUBTYPE | SEM_15_02_01_200_RUNTIME_SUBTYPE.ets | runtime | ✅ |

## Result Statistics
| Category | Count | Pass | Fail |
|---|---|---|---|
| compile-pass | 5 | 5 | 0 |
| compile-fail | 1 | 1 | 0 |
| runtime | 1 | 1 | 0 |
| **Total** | **7** | **7** | **0** |

## Detailed Results

### compile-pass (5/5 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_01_001_PASS_CLASS_EXTENDS_SUBTYPE | SEM_15_02_01_001_PASS_CLASS_EXTENDS_SUBTYPE.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_01_002_PASS_INTERFACE_EXTENDS_SUBTYPE | SEM_15_02_01_002_PASS_INTERFACE_EXTENDS_SUBTYPE.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_01_003_PASS_class_to_object | SEM_15_02_01_003_PASS_class_to_object.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_01_004_PASS_class_implements_interface | SEM_15_02_01_004_PASS_class_implements_interface.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_01_005_PASS_interface_to_object | SEM_15_02_01_005_PASS_interface_to_object.ets | compile-pass | compile-pass | ✅ |

### compile-fail (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_01_100_FAIL_SELF_EXTENDS | SEM_15_02_01_100_FAIL_SELF_EXTENDS.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_01_200_RUNTIME_SUBTYPE | SEM_15_02_01_200_RUNTIME_SUBTYPE.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
