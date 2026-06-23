# 4.5 Type Declarations - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 13 | 13 | 0 | 100% |
| runtime | 1 | 1 | 0 | 100% |
| **总计** | **24** | **24** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_05_001_PASS_recursive_array_element | 递归别名-数组元素类型 | PASS |
| 2 | NAM_04_05_002_PASS_recursive_type_arg | 递归别名-泛型参数 | PASS |
| 3 | NAM_04_05_003_PASS_generic_alias | 泛型类型别名 | PASS |
| 4 | NAM_04_05_004_PASS_type_param_depend | 类型参数依赖 | PASS |
| 5 | NAM_04_05_005_PASS_generic_recursive_ok | 泛型递归合法 | PASS |
| 6 | NAM_04_05_006_PASS_generic_union_recursive | 泛型联合递归 | PASS |
| 7 | NAM_04_05_007_PASS_type_alias_simple | 简单类型别名赋值兼容 | PASS |
| 8 | NAM_04_05_008_PASS_type_decl_class | class 声明作为类型声明 | PASS |
| 9 | NAM_04_05_009_PASS_type_decl_interface | interface 声明作为类型声明 | PASS |
| 10 | NAM_04_05_010_PASS_type_decl_enum | enum 声明作为类型声明 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_05_100_FAIL_direct_self_ref | 直接自身递归 | PASS |
| 2 | NAM_04_05_101_FAIL_union_self_ref | 联合自身递归 | PASS |
| 3 | NAM_04_05_102_FAIL_circular_type_arg | 循环泛型依赖 | PASS |
| 4 | NAM_04_05_103_FAIL_param_self_depend | 参数自依赖 | PASS |
| 5 | NAM_04_05_104_FAIL_param_circular_depend | 参数循环依赖 | PASS |
| 6 | NAM_04_05_105_FAIL_generic_wo_arg | 泛型无类型参数 | PASS |
| 7 | NAM_04_05_106_FAIL_indirect_circular | 间接循环依赖(type A=B; B=A) | PASS |
| 8 | NAM_04_05_107_FAIL_generic_self_ref | 泛型自身引用(type A\<T\> = A\<T\>) | PASS |
| 🆕 | NAM_04_05_108_FAIL_indirect_circular_alias | 间接循环别名 | PASS |
| 🆕 | NAM_04_05_109_FAIL_union_generic_self_ref | 泛型联合自身引用 | PASS |
| 🆕 | NAM_04_05_110_FAIL_generic_wo_arg_def | 泛型别名定义中缺少类型参数 | PASS |
| 🆕 | NAM_04_05_111_FAIL_param_circular_union_depend | 参数循环联合依赖 | PASS |
| 🆕 | NAM_04_05_112_FAIL_type_decl_const_enum_unsupported | const enum 当前实现不支持 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | NAM_04_05_200_RUNTIME_type_alias_use | 类型别名运行时使用 | 1 | PASS |

## 执行过程
- **执行日期：** 2026-06-18
- **环境：** WSL2 (Linux 5.15.153.1)
- **异常修复：** 无
- **补充日期：** 2026-06-19（新增 compile-fail ×4：021-024；021-022 之前 PENDING 现已执行通过；023-024 为 Gap 方法论探针——间接循环别名(两阶段声明边界)和泛型联合自身引用(union语法糖干扰循环检测)，均已通过）
- **补充日期：** 2026-06-22（新增 compile-pass ×3：class/interface/enum 类型声明；新增 compile-fail ×1：const enum 当前实现不支持；ArkTS/Java/Swift 三环境验证通过或 N/A 归档）
