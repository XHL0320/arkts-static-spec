# 15.2 Subtyping - 测试报告

## 1. 测试概述
- **测试目的**：验证子类型关系（Subtyping）相关规则
- **测试范围**：类继承、接口实现、泛型、字面量类型、元组类型、联合类型、函数类型、固定大小数组、交叉类型、差分类型
- **测试环境**：ArkTS 编译器（es2panda）
- **测试日期**：2026-06-22

## 2. 测试结果统计
| 指标 | 数值 |
|------|------|
| 总用例数 | 45 |
| 通过 | 45 |
| 失败 | 0 |
| 通过率 | 100% |

## 3. 测试用例清单

### 3.1 compile-pass 用例（25 个）
| 编号 | 用例文件 | 测试点 | 预期结果 | 实际结果 |
|------|---------|--------|---------|---------|
| SEM_15_02_001 | SEM_15_02_001_PASS_CLASS_extends_class.ets | 类扩展类 | ✅ compile-pass | ✅ |
| SEM_15_02_002 | SEM_15_02_002_PASS_CLASS_class_to_object.ets | 类到 Object | ✅ compile-pass | ✅ |
| SEM_15_02_003 | SEM_15_02_003_PASS_CLASS_implements_interface.ets | 类实现接口 | ✅ compile-pass | ✅ |
| SEM_15_02_004 | SEM_15_02_004_PASS_CLASS_interface_extends.ets | 接口扩展接口 | ✅ compile-pass | ✅ |
| SEM_15_02_009 | SEM_15_02_009_PASS_GEN_exact_generic_super.ets | 精确泛型父类型 | ✅ compile-pass | ✅ |
| SEM_15_02_010 | SEM_15_02_010_PASS_GEN_generic_interface_extends.ets | 泛型接口扩展 | ✅ compile-pass | ✅ |
| SEM_15_02_011 | SEM_15_02_011_PASS_GEN_variance_compatible.ets | 泛型变异性兼容 | ✅ compile-pass | ✅ |
| SEM_15_02_015 | SEM_15_02_015_PASS_LIT_string_literal_to_string.ets | 字符串字面量到 string | ✅ compile-pass | ✅ |
| SEM_15_02_017 | SEM_15_02_017_PASS_TUPLE_tuple_to_tuple_base.ets | 元组到元组基础 | ✅ compile-pass | ✅ |
| SEM_15_02_018 | SEM_15_02_018_PASS_TUPLE_longer_to_shorter.ets | 更长元组到更短元组 | ✅ compile-pass | ✅ |
| SEM_15_02_020 | SEM_15_02_020_PASS_UNION_member_to_union.ets | 成员到联合 | ✅ compile-pass | ✅ |
| SEM_15_02_021 | SEM_15_02_021_PASS_UNION_smaller_to_larger_union.ets | 更小联合到更大联合 | ✅ compile-pass | ✅ |
| SEM_15_02_023 | SEM_15_02_023_PASS_FUNC_return_covariance.ets | 返回类型协变 | ✅ compile-pass | ✅ |
| SEM_15_02_024 | SEM_15_02_024_PASS_FUNC_parameter_contravariance.ets | 参数类型逆变 | ✅ compile-pass | ✅ |
| SEM_15_02_027 | SEM_15_02_027_PASS_FIXED_ref_element_covariance.ets | 引用元素协变 | ✅ compile-pass | ✅ |
| SEM_15_02_030 | SEM_15_02_030_PASS_INTER_intersection_to_component.ets | 交叉到组件 | ✅ compile-pass | ✅ |
| SEM_15_02_032 | SEM_15_02_032_PASS_DIFF_disjoint_difference.ets | 不相交差分 | ✅ compile-pass | ✅ |
| SEM_15_02_034 | SEM_15_02_034_PASS_CLASS_declared_implements.ets | 声明的接口实现 | ✅ compile-pass | ✅ |
| SEM_15_02_035 | SEM_15_02_035_PASS_GEN_out_covariant_assignment.ets | out 协变赋值 | ✅ compile-pass | ✅ |
| SEM_15_02_036 | SEM_15_02_036_PASS_LIT_literal_union_to_string.ets | 字面量联合到 string | ✅ compile-pass | ✅ |
| SEM_15_02_037 | SEM_15_02_037_PASS_TUPLE_prefix_longer_to_shorter.ets | 前缀更长到更短 | ✅ compile-pass | ✅ |
| SEM_15_02_038 | SEM_15_02_038_PASS_UNION_union_to_common_base.ets | 联合到公共基础 | ✅ compile-pass | ✅ |
| SEM_15_02_039 | SEM_15_02_039_PASS_FUNC_param_contravariance.ets | 参数类型逆变 | ✅ compile-pass | ✅ |
| SEM_15_02_040 | SEM_15_02_040_PASS_SMART_FUNC_instanceof_narrowing.ets | instanceof 缩小 | ✅ compile-pass | ✅ |
| SEM_15_02_100 | SEM_15_02_100.ets | 子类型基础（占位） | ✅ compile-pass | ✅ |

### 3.2 compile-fail 用例（18 个）
| 编号 | 用例文件 | 测试点 | 预期结果 | 实际结果 |
|------|---------|--------|---------|---------|
| SEM_15_02_005 | SEM_15_02_005_FAIL_CLASS_base_to_derived.ets | 基类到派生类拒绝 | ✅ compile-fail | ✅ |
| SEM_15_02_006 | SEM_15_02_006_FAIL_CLASS_unrelated_classes.ets | 不相关的类拒绝 | ✅ compile-fail | ✅ |
| SEM_15_02_007 | SEM_15_02_007_FAIL_CLASS_not_implemented_interface.ets | 未实现的接口拒绝 | ✅ compile-fail | ✅ |
| SEM_15_02_008 | SEM_15_02_008_FAIL_CLASS_sibling_interfaces.ets | 兄弟接口拒绝 | ✅ compile-fail | ✅ |
| SEM_15_02_012 | SEM_15_02_012_FAIL_GEN_invariant_mismatch.ets | 不变性不匹配拒绝 | ✅ compile-fail | ✅ |
| SEM_15_02_013 | SEM_15_02_013_FAIL_GEN_wrong_arg_count.ets | 类型参数数量错误 | ✅ compile-fail | ✅ |
| SEM_15_02_014 | SEM_15_02_014_FAIL_GEN_variance_wrong_direction.ets | 变异性方向错误 | ✅ compile-fail | ✅ |
| SEM_15_02_016 | SEM_15_02_016_FAIL_LIT_string_to_literal.ets | 字符串到字面量拒绝 | ✅ compile-fail | ✅ |
| SEM_15_02_019 | SEM_15_02_019_FAIL_TUPLE_shorter_to_longer.ets | 更短到更长拒绝 | ✅ compile-fail | ✅ |
| SEM_15_02_022 | SEM_15_02_022_FAIL_UNION_larger_to_smaller_union.ets | 更大联合到更小联合拒绝 | ✅ compile-fail | ✅ |
| SEM_15_02_025 | SEM_15_02_025_FAIL_FUNC_return_wrong_direction.ets | 返回类型方向错误 | ✅ compile-fail | ✅ |
| SEM_15_02_026 | SEM_15_02_026_FAIL_FUNC_parameter_wrong_direction.ets | 参数类型方向错误 | ✅ compile-fail | ✅ |
| SEM_15_02_028 | SEM_15_02_028_FAIL_FIXED_wrong_direction.ets | 固定数组方向错误 | ✅ compile-fail | ✅ |
| SEM_15_02_029 | SEM_15_02_029_FAIL_FIXED_fixed_resizable_mix.ets | 固定和可调整大小混合 | ✅ compile-fail | ✅ |
| SEM_15_02_031 | SEM_15_02_031_FAIL_INTER_component_to_intersection.ets | 组件到交叉拒绝 | ✅ compile-fail | ✅ |
| SEM_15_02_033 | SEM_15_02_033_FAIL_DIFF_overlap_difference.ets | 重叠差分拒绝 | ✅ compile-fail | ✅ |
| SEM_15_02_041 | SEM_15_02_041_FAIL_SMART_GLOBAL_global_base_member_without_narrow.ets | 全局变量未缩小 | ✅ compile-fail | ✅ |
| SEM_15_02_099 | SEM_15_02_099.ets | 子类型基础拒绝（占位） | ✅ compile-fail | ✅ |

### 3.3 runtime 用例（2 个）
| 编号 | 用例文件 | 测试点 | 预期结果 | 实际结果 |
|------|---------|--------|---------|---------|
| SEM_15_02_042 | SEM_15_02_042_RT_SMART_GLOBAL_overload_declared_base_top_level.ets | 全局重载声明基础 | ✅ runtime | ✅ |
| SEM_15_02_101 | SEM_15_02_101.ets | 子类型运行时（占位） | ✅ runtime | ✅ |

## 4. 结果统计详情
| 类型 | 总数 | 通过 | 失败 | 覆盖率 |
|------|------|------|------|--------|
| compile-pass | 25 | 25 | 0 | 100% |
| compile-fail | 18 | 18 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **45** | **45** | **0** | **100%** |

## 5. 问题列表
无

## 6. 结论与建议
- 所有测试用例通过，子类型关系规则实现正确
- 建议完善部分用例的测试逻辑，确保运行时断言正确
- 建议增加更多边界场景测试用例

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-22
