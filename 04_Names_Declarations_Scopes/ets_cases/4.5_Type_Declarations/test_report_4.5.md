# 4.5 Type Declarations - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 11 | 11 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **23** | **23** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_05_001_PASS_TYPE_ALIAS_ARRAY | 数组类型别名 | PASS |
| 2 | NAM_04_05_002_PASS_TYPE_ALIAS_FUNC | 函数类型别名 | PASS |
| 3 | NAM_04_05_003_PASS_TYPE_ALIAS_UNION | 联合类型别名 | PASS |
| 4 | NAM_04_05_004_PASS_TYPE_ALIAS_SHORT_NAME | 长类型简短别名 | PASS |
| 5 | NAM_04_05_005_PASS_RECURSIVE_ARRAY_ELEMENT | 递归别名-数组元素类型 | PASS |
| 6 | NAM_04_05_006_PASS_RECURSIVE_TYPE_ARG | 递归别名-泛型参数 | PASS |
| 7 | NAM_04_05_007_PASS_GENERIC_ALIAS | 泛型类型别名 | PASS |
| 8 | NAM_04_05_008_PASS_TYPE_PARAM_DEPEND | 类型参数依赖 | PASS |
| 9 | NAM_04_05_009_PASS_GENERIC_RECURSIVE_OK | 泛型递归合法 | PASS |
| 10 | NAM_04_05_010_PASS_GENERIC_UNION_RECURSIVE | 泛型联合递归 | PASS |
| 11 | NAM_04_05_011_PASS_TYPE_ALIAS_SIMPLE | 简单类型别名赋值兼容 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_05_015_FAIL_DIRECT_SELF_REF | 直接自身递归 | PASS |
| 2 | NAM_04_05_016_FAIL_UNION_SELF_REF | 联合自身递归 | PASS |
| 3 | NAM_04_05_017_FAIL_CIRCULAR_TYPE_ARG | 循环泛型依赖 | PASS |
| 4 | NAM_04_05_018_FAIL_PARAM_SELF_DEPEND | 参数自依赖 | PASS |
| 5 | NAM_04_05_019_FAIL_PARAM_CIRCULAR_DEPEND | 参数循环依赖 | PASS |
| 6 | NAM_04_05_020_FAIL_GENERIC_WO_ARG | 泛型无类型参数 | PASS |
| 7 | NAM_04_05_021_FAIL_INDIRECT_CIRCULAR | 间接循环依赖(type A=B; B=A) | PASS |
| 8 | NAM_04_05_022_FAIL_GENERIC_SELF_REF | 泛型自身引用(type A\<T\> = A\<T\>) | PASS |
| 🆕 | NAM_04_05_023_FAIL_INDIRECT_CIRCULAR_ALIAS | 间接循环别名 | PASS |
| 🆕 | NAM_04_05_024_FAIL_UNION_GENERIC_SELF_REF | 泛型联合自身引用 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | NAM_04_05_025_RUNTIME_TYPE_ALIAS_USE | 类型别名运行时使用 | 1 | PASS |
| 2 | NAM_04_05_026_RUNTIME_ALIAS_FUNC_TYPE | 函数类型别名运行时 | 1 | PASS |

## 执行过程
- **执行日期：** 2026-06-18
- **环境：** WSL2 (Linux 5.15.153.1)
- **异常修复：** 无
- **补充日期：** 2026-06-19（新增 compile-fail ×4：021-024；021-022 之前 PENDING 现已执行通过；023-024 为 Gap 方法论探针——间接循环别名(两阶段声明边界)和泛型联合自身引用(union语法糖干扰循环检测)，均已通过）
