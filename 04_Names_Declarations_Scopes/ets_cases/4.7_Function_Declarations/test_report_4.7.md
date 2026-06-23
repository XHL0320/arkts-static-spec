# 4.7 Function Declarations - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 14 | 14 | 0 | 100% |
| compile-fail | 11 | 11 | 0 | 100% |
| runtime | 4 | 4 | 0 | 100% |
| **总计** | **29** | **29** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_07_001_PASS_func_declaration | 顶层函数声明 | PASS |
| 2 | NAM_04_07_002_PASS_FUNC_SIGNATURE | 函数签名定义 | PASS |
| 3 | NAM_04_07_003_PASS_FUNC_NO_PARAMS | 无参数函数 | PASS |
| 4 | NAM_04_07_004_PASS_READONLY_PARAM_READ | 只读参数可读取 | PASS |
| 5 | NAM_04_07_005_PASS_OPTIONAL_DEFAULT | 可选参数带默认值 | PASS |
| 6 | NAM_04_07_006_PASS_OPTIONAL_QMARK | 可选参数问号语法 | PASS |
| 7 | NAM_04_07_007_PASS_REST_ARRAY | rest参数-数组类型 | PASS |
| 8 | NAM_04_07_008_PASS_REST_TUPLE | rest参数-元组类型 | PASS |
| 9 | NAM_04_07_009_PASS_REST_GENERIC | rest参数-泛型 | PASS |
| 10 | NAM_04_07_010_PASS_PARAM_SHADOWING | 参数覆盖顶层变量 | PASS |
| 11 | NAM_04_07_011_PASS_RETURN_VOID | void返回类型 | PASS |
| 12 | NAM_04_07_012_PASS_RETURN_UNDEFINED | undefined返回类型 | PASS |
| 13 | NAM_04_07_013_PASS_RETURN_INFERRED | 返回类型推断 | PASS |
| 14 | NAM_04_07_002_PASS_native_func | native函数声明 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_07_015_FAIL_OPTIONAL_BEFORE_REQUIRED | 可选在必需前 | PASS |
| 2 | NAM_04_07_016_FAIL_READONLY_ASSIGN | 对只读参数赋值 | PASS |
| 3 | NAM_04_07_017_FAIL_REST_FOLLOWED_BY_PARAM | rest后还有参数 | PASS |
| 4 | NAM_04_07_018_FAIL_REST_NOT_ARRAY | rest非数组类型 | PASS |
| 5 | NAM_04_07_019_FAIL_RETURN_MISSING | 缺少return | PASS |
| 6 | NAM_04_07_020_FAIL_RETURN_NEVER_MISSING | never缺少退出 | PASS |
| 7 | NAM_04_07_100_FAIL_native_with_body | native有函数体 | PASS |
| 8 | NAM_04_07_022_FAIL_REST_TUPLE_WRONG_COUNT | rest元组数量不匹配 | PASS |
| 9 | NAM_04_07_023_FAIL_OPT_TUPLE_REST_MISSING | 可选元组+rest缺实参 | PASS |
| 10 | NAM_04_07_024_FAIL_READONLY_TUPLE_ASSIGN | 只读元组参数赋值 | PASS |
| 🆕 | NAM_04_07_029_FAIL_RETURN_IMPLICIT_UNDEFINED | 非void空函数体 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | NAM_04_07_200_RUNTIME_func_call | 函数调用运行时 | 1 | PASS |
| 2 | NAM_04_07_026_RUNTIME_OPTIONAL_DEFAULT | 可选参数默认值运行时 | 3 | PASS |
| 3 | NAM_04_07_027_RUNTIME_REST_ARRAY | rest参数运行时 | 3 | PASS |
| 4 | NAM_04_07_028_RUNTIME_FUNC_RETURN | 函数返回类型运行时 | 1 | PASS |

## 执行过程
- **执行日期：** 2026-06-18
- **环境：** WSL2 (Linux 5.15.153.1)
- **异常修复：** 无
- **补充日期：** 2026-06-19（新增 compile-fail ×1：非void空函数体；已验证 PENDING 用例 023/024 全部通过）
- **最新执行：** 2026-06-20 NAM_04_07_027 运行时环境修复，全部通过 ✅
- **Gap 分析：** NAM_04_07_029 为类型5探针（空块 `{}` 是否被 IR 优化为 return undefined 绕过检查），编译器正确报错
