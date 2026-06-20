# 5.3 Generic Instantiations - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 13 | 13 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **21** | **21** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | GEN_05_03_001_PASS_TYPE_ARG_NUMBER | 类型参数-number | PASS |
| 2 | GEN_05_03_002_PASS_TYPE_ARG_UNION | 类型参数-联合类型 | PASS |
| 3 | GEN_05_03_003_PASS_TYPE_ARG_ARRAY | 类型参数-数组类型 | PASS |
| 4 | GEN_05_03_004_PASS_TYPE_ARG_TUPLE | 类型参数-元组类型 | PASS |
| 5 | GEN_05_03_005_PASS_TYPE_ARG_FUNC_TYPE | 类型参数-函数类型 | PASS |
| 6 | GEN_05_03_006_PASS_EXPLICIT_CLASS_INST | 类明确实例化 | PASS |
| 7 | GEN_05_03_007_PASS_EXPLICIT_METHOD_INST | 方法明确实例化 | PASS |
| 8 | GEN_05_03_008_PASS_EXPLICIT_FUNC_INST | 函数明确实例化 | PASS |
| 9 | GEN_05_03_009_PASS_EXPLICIT_TYPE_ALIAS | 类型别名明确实例化 | PASS |
| 10 | GEN_05_03_010_PASS_PARTIAL_INST_GENERIC | 部分实例化产生新泛型 | PASS |
| 11 | GEN_05_03_011_PASS_IMPLICIT_FUNC_INFER | 隐式实例化-从参数推断 | PASS |
| 12 | GEN_05_03_012_PASS_IMPLICIT_MULTI_INFER | 隐式实例化-多参数推断 | PASS |
| 13 | GEN_05_03_013_PASS_METHOD_DEFAULT_FROM_CLASS | 方法默认类型参数来自类 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | GEN_05_03_020_FAIL_NON_GENERIC_WITH_ARGS | 非泛型实体提供类型参数 | PASS |
| 2 | GEN_05_03_021_FAIL_ARG_COUNT_MISMATCH | 类型参数数量不匹配 | PASS |
| 3 | GEN_05_03_022_FAIL_CONSTRAINT_VIOLATION | 类型参数不满足约束 | PASS |
| 4 | GEN_05_03_023_FAIL_CANNOT_INFER | 无法推断类型参数 | PASS |
| 5 | GEN_05_03_024_FAIL_INFER_NO_CONTEXT | 无推断上下文 | PASS |
| 🆕 | GEN_05_03_027_FAIL_DEFAULT_ORDER_IMPLICIT | 默认值顺序+隐式实例化 🔀 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | GEN_05_03_025_RUNTIME_EXPLICIT_INST | 明确实例化运行时 | 1 | PASS |
| 2 | GEN_05_03_026_RUNTIME_IMPLICIT_INST | 隐式实例化运行时 | 1 | PASS |

## 执行过程
- **执行日期：** 2026-06-18
- **环境：** WSL2 (Linux 5.15.153.1), es2panda (build 2026-06-11)
- **异常修复：**
  - GEN_05_03_024 原使用 `unknown` 类型（ArkTS 不支持），改为 `Object` 类型转换
  - GEN_05_03_012 推断类型不匹配，改为 `string` + `number` 场景
- **补充日期：** 2026-06-19（新增 compile-fail ×1：默认值顺序+隐式实例化）
- **Gap 分析：** GEN_05_03_027 为类型3探针（推断消解约束检查），编译器正确在声明阶段检测默认值顺序违规，隐式推断未被绕过
