# 15.2.5 Subtyping for Union Types - Test Report

## Execution Overview
| Metric | Value |
|---|---|
| Total Cases | 16 |
| Passed | 16 |
| Failed | 0 |
| Pass Rate | 100% |

## Case List
| ID | Case File | Type | Result |
|---|---|---|---|
| SEM_15_02_05_001_PASS_UNION_TYPE_SUBTYPE | SEM_15_02_05_001_PASS_UNION_TYPE_SUBTYPE.ets | compile-pass | ✅ |
| SEM_15_02_05_002_PASS_literal_union_to_string | SEM_15_02_05_002_PASS_literal_union_to_string.ets | compile-pass | ✅ |
| SEM_15_02_05_003_PASS_union_smaller_to_larger | SEM_15_02_05_003_PASS_union_smaller_to_larger.ets | compile-pass | ✅ |
| SEM_15_02_05_004_PASS_union_to_base | SEM_15_02_05_004_PASS_union_to_base.ets | compile-pass | ✅ |
| SEM_15_02_05_005_PASS_mixed_union_to_base | SEM_15_02_05_005_PASS_mixed_union_to_base.ets | compile-pass | ✅ |
| SEM_15_02_05_006_PASS_union_string_literal_assign | SEM_15_02_05_006_PASS_union_string_literal_assign.ets | compile-pass | ✅ |
| SEM_15_02_05_007_PASS_union_number_assign | SEM_15_02_05_007_PASS_union_number_assign.ets | compile-pass | ✅ |
| SEM_15_02_05_008_PASS_union_normalization | SEM_15_02_05_008_PASS_union_normalization.ets | compile-pass | ✅ |
| SEM_15_02_05_100_FAIL_UNION_SUBTYPE_GAP | SEM_15_02_05_100_FAIL_UNION_SUBTYPE_GAP.ets | compile-fail | ✅ |
| SEM_15_02_05_101_FAIL_two_union_subtype_gap | SEM_15_02_05_101_FAIL_two_union_subtype_gap.ets | compile-fail | ✅ |
| SEM_15_02_05_102_FAIL_union_boolean_assign | SEM_15_02_05_102_FAIL_union_boolean_assign.ets | compile-fail | ✅ |
| SEM_15_02_05_103_FAIL_union_int_to_number | SEM_15_02_05_103_FAIL_union_int_to_number.ets | compile-fail | ✅ |
| SEM_15_02_05_104_FAIL_mixed_base_to_union | SEM_15_02_05_104_FAIL_mixed_base_to_union.ets | compile-fail | ✅ |
| SEM_15_02_05_105_FAIL_base_to_union | SEM_15_02_05_105_FAIL_base_to_union.ets | compile-fail | ✅ |
| SEM_15_02_05_106_FAIL_union_larger_to_smaller | SEM_15_02_05_106_FAIL_union_larger_to_smaller.ets | compile-fail | ✅ |
| SEM_15_02_05_200_RUNTIME_UNION_SUBTYPE | SEM_15_02_05_200_RUNTIME_UNION_SUBTYPE.ets | runtime | ✅ |

## Result Statistics
| Category | Count | Pass | Fail |
|---|---|---|---|
| compile-pass | 8 | 8 | 0 |
| compile-fail | 7 | 7 | 0 |
| runtime | 1 | 1 | 0 |
| **Total** | **16** | **16** | **0** |

## Detailed Results

### compile-pass (8/8 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_05_001_PASS_UNION_TYPE_SUBTYPE | SEM_15_02_05_001_PASS_UNION_TYPE_SUBTYPE.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_05_002_PASS_literal_union_to_string | SEM_15_02_05_002_PASS_literal_union_to_string.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_05_003_PASS_union_smaller_to_larger | SEM_15_02_05_003_PASS_union_smaller_to_larger.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_05_004_PASS_union_to_base | SEM_15_02_05_004_PASS_union_to_base.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_05_005_PASS_mixed_union_to_base | SEM_15_02_05_005_PASS_mixed_union_to_base.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_05_006_PASS_union_string_literal_assign | SEM_15_02_05_006_PASS_union_string_literal_assign.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_05_007_PASS_union_number_assign | SEM_15_02_05_007_PASS_union_number_assign.ets | compile-pass | compile-pass | ✅ |
| SEM_15_02_05_008_PASS_union_normalization | SEM_15_02_05_008_PASS_union_normalization.ets | compile-pass | compile-pass | ✅ |

### compile-fail (7/7 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_05_100_FAIL_UNION_SUBTYPE_GAP | SEM_15_02_05_100_FAIL_UNION_SUBTYPE_GAP.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_05_101_FAIL_two_union_subtype_gap | SEM_15_02_05_101_FAIL_two_union_subtype_gap.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_05_102_FAIL_union_boolean_assign | SEM_15_02_05_102_FAIL_union_boolean_assign.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_05_103_FAIL_union_int_to_number | SEM_15_02_05_103_FAIL_union_int_to_number.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_05_104_FAIL_mixed_base_to_union | SEM_15_02_05_104_FAIL_mixed_base_to_union.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_05_105_FAIL_base_to_union | SEM_15_02_05_105_FAIL_base_to_union.ets | compile-fail | compile-fail | ✅ |
| SEM_15_02_05_106_FAIL_union_larger_to_smaller | SEM_15_02_05_106_FAIL_union_larger_to_smaller.ets | compile-fail | compile-fail | ✅ |

### runtime (1/1 passed)
| ID | Case File | Expected | Actual | Status |
|---|---|---|---|---|
| SEM_15_02_05_200_RUNTIME_UNION_SUBTYPE | SEM_15_02_05_200_RUNTIME_UNION_SUBTYPE.ets | runtime | runtime | ✅ |

## Issues Found
无

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
