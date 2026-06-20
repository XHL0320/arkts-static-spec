# 4.6 Variable and Constant Declarations - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 13 | 13 | 0 | 100% |
| compile-fail | 9 | 9 | 0 | 100% |
| runtime | 3 | 3 | 0 | 100% |
| **总计** | **25** | **25** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_06_001_PASS_VAR_WITH_TYPE | 变量声明带类型注解 | PASS |
| 2 | NAM_04_06_002_PASS_VAR_TYPE_INFERRED | 变量类型推断 | PASS |
| 3 | NAM_04_06_003_PASS_VAR_MULTI_DECLARE | 多变量声明 | PASS |
| 4 | NAM_04_06_004_PASS_VAR_LAMBDA_INFER | lambda类型推断 | PASS |
| 5 | NAM_04_06_005_PASS_CONST_WITH_TYPE | 常量声明带类型注解 | PASS |
| 6 | NAM_04_06_006_PASS_CONST_INFERRED | 常量类型推断 | PASS |
| 7 | NAM_04_06_007_PASS_CONST_MULTI | 多常量声明 | PASS |
| 8 | NAM_04_06_008_PASS_LET_LITERAL_PROMOTION | let字面量提升 | PASS |
| 9 | NAM_04_06_009_PASS_CONST_LITERAL_RETAIN | const字面量保留 | PASS |
| 10 | NAM_04_06_010_PASS_TERNARY_INFER_LET | 三元运算-let推断 | PASS |
| 11 | NAM_04_06_011_PASS_TERNARY_INFER_CONST | 三元运算-const推断 | PASS |
| 12 | NAM_04_06_012_PASS_NULL_UNDEF_INFER | null/undefined推断 | PASS |
| 13 | NAM_04_06_013_PASS_INIT_REF_PREVIOUS | 初始化引用前文已声明变量 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_06_015_FAIL_VAR_NO_TYPE_NO_INIT | 变量无类型无初始化 | PASS |
| 2 | NAM_04_06_016_FAIL_AMBIGUOUS_VAR_WITH_INIT | ambient变量有初始化 | PASS |
| 3 | NAM_04_06_017_FAIL_CONST_NO_INIT | 常量无初始化 | PASS |
| 4 | NAM_04_06_018_FAIL_INIT_REF_FORWARD | 初始化引用后文声明 | PASS |
| 5 | NAM_04_06_019_FAIL_INIT_NOT_ASSIGNABLE | 初始化类型不可赋值 | PASS |
| 6 | NAM_04_06_020_FAIL_OBJECT_LITERAL_INFER | 对象字面量不可推断 | PASS |
| 7 | NAM_04_06_021_FAIL_CONST_AMBIGUOUS_NO_INIT | ambient常量有初始化 | PASS |
| 8 | NAM_04_06_022_FAIL_AMBIGUOUS_VAR_NO_TYPE | ambient变量无类型注解 | PASS |
| 🆕 | NAM_04_06_023_FAIL_CONST_OBJECT_LITERAL_INFER | const对象字面量不可推断 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | NAM_04_06_025_RUNTIME_VAR_OPS | 变量运行时读写 | 1 | PASS |
| 2 | NAM_04_06_026_RUNTIME_CONST_OPS | 常量运行时不可赋值 | 1 | PASS |
| 3 | NAM_04_06_027_RUNTIME_TYPE_INFERENCE | 类型推断运行时正确 | 1 | PASS |

## 执行过程
- **执行日期：** 2026-06-18
- **环境：** WSL2 (Linux 5.15.153.1)
- **异常修复：** 无
- **补充日期：** 2026-06-19（新增 compile-fail ×1：const对象字面量类型推断；已验证 PENDING 用例 013/022 全部通过）
- **Gap 分析：** NAM_04_06_023 为类型3探针（const literal retention 是否让对象字面量推断合法化），编译器正确报错，规范约束在 const 下同样适用
