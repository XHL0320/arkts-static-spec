# 5.1 Type Parameters - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 14 | 14 | 0 | 100% |
| compile-fail | 12 | 12 | 0 | 100% |
| runtime | 3 | 3 | 0 | 100% |
| **总计** | **29** | **29** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | GEN_05_01_001_PASS_BASIC_GENERIC_CLASS | 基本泛型类声明 | PASS |
| 2 | GEN_05_01_002_PASS_GENERIC_INTERFACE | 泛型接口声明 | PASS |
| 3 | GEN_05_01_003_PASS_GENERIC_FUNCTION | 泛型函数声明 | PASS |
| 4 | GEN_05_01_004_PASS_GENERIC_TYPE_ALIAS | 泛型类型别名 | PASS |
| 5 | GEN_05_01_005_PASS_MULTIPLE_PARAMS | 多类型参数 | PASS |
| 6 | GEN_05_01_006_PASS_CONSTRAINT_CLASS | 类约束 | PASS |
| 7 | GEN_05_01_007_PASS_CONSTRAINT_UNION | 联合约束 | PASS |
| 8 | GEN_05_01_008_PASS_CONSTRAINT_LITERAL_UNION | 字面量约束 | PASS |
| 9 | GEN_05_01_009_PASS_CONSTRAINT_KEYOF | keyof约束 | PASS |
| 10 | GEN_05_01_010_PASS_DEPENDENT_PARAM | 依赖参数 | PASS |
| 11 | GEN_05_01_011_PASS_TYPE_PARAM_DEFAULT | 类型参数默认值 | PASS |
| 12 | GEN_05_01_012_PASS_MULTI_DEFAULT | 多参数部分默认 | PASS |
| 13 | GEN_05_01_013_PASS_FUNC_DEFAULT | 函数默认类型参数 | PASS |
| 14 | GEN_05_01_014_PASS_DEFAULT_EQUIV | 默认语义等价 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | GEN_05_01_020_FAIL_CONSTRAINT_NOT_SATISFIED | 约束不满足 | PASS |
| 2 | GEN_05_01_021_FAIL_CONSTRAINT_UNION_NOT_SATISFIED | 联合约束不满足 | PASS |
| 3 | GEN_05_01_022_FAIL_LITERAL_CONSTRAINT | 字面量约束不匹配 | PASS |
| 4 | GEN_05_01_023_FAIL_KEYOF_CONSTRAINT | keyof约束不匹配 | PASS |
| 5 | GEN_05_01_024_FAIL_DEPENDENT_NOT_SATISFIED | 依赖约束不满足 | PASS |
| 6 | GEN_05_01_025_FAIL_CIRCULAR_SELF | 自依赖 | PASS |
| 7 | GEN_05_01_026_FAIL_CIRCULAR_MUTUAL | 循环依赖 | PASS |
| 8 | GEN_05_01_027_FAIL_CIRCULAR_MUTUAL_UNION | 联合循环依赖 | PASS |
| 9 | GEN_05_01_028_FAIL_DEFAULT_AFTER_NO_DEFAULT | 无默认在有默认后 | PASS |
| 10 | GEN_05_01_029_FAIL_DEFAULT_REF_FORWARD | 默认前向引用 | PASS |
| 11 | GEN_05_01_030_FAIL_GENERIC_METHOD_VARIANCE | 函数参数 variance | PASS |
| 🆕 | GEN_05_01_031_FAIL_CIRCULAR_WITH_DEFAULT | 默认值参与循环依赖检测 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | GEN_05_01_035_RUNTIME_GENERIC_CLASS | 泛型类运行时 | 1 | PASS |
| 2 | GEN_05_01_036_RUNTIME_GENERIC_FUNCTION | 泛型函数运行时 | 1 | PASS |
| 3 | GEN_05_01_037_RUNTIME_DEFAULT_TYPE_ARG | 默认类型参数运行时 | 1 | PASS |

## 执行过程
- **执行日期：** 2026-06-18
- **环境：** WSL2 (Linux 5.15.153.1), es2panda (build 2026-06-11)
- **异常修复：** 无
- **补充日期：** 2026-06-19（新增 compile-fail ×1：默认值参与循环依赖检测；Gen_05_01_035 预存运行时问题）
- **Gap 分析：** GEN_05_01_031 为类型6探针（两阶段声明消解循环依赖），编译器正确检测——默认值解析在循环检测之前完成
