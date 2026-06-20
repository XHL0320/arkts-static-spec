# 5.2 Variance and Wildcard - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 15 | 13 | 2 | 86.7%（2 GAP）|
| runtime | 1 | 1 | 0 | 100% |
| **总计** | **22** | **20** | **2** | **90.9%（2 GAP）** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | GEN_05_02_001_PASS_COVARIANT_OUT_RETURN | out 返回值位置 | PASS |
| 2 | GEN_05_02_002_PASS_COVARIANT_OUT_READONLY | out readonly字段 | PASS |
| 3 | GEN_05_02_003_PASS_CONTRAVARIANT_IN_PARAM | in 方法参数位置 | PASS |
| 4 | GEN_05_02_004_PASS_INVARIANT_ANY_POS | 不变体任意位置 | PASS |
| 5 | GEN_05_02_005_PASS_VARIANCE_INTERLEAVE | 变体交错 | PASS |
| 6 | GEN_05_02_006_PASS_OUT_CONSTRUCTOR | out 构造函数参数 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | GEN_05_02_010_FAIL_OUT_IN_IN_POSITION | out 在 in-position | PASS |
| 2 | GEN_05_02_011_FAIL_OUT_IN_FIELD | out 在非readonly字段 | PASS |
| 3 | GEN_05_02_012_FAIL_IN_IN_OUT_POSITION_RETURN | in 在 out-position | PASS |
| 4 | GEN_05_02_013_FAIL_IN_INVARIANT_FIELD | in 在字段位置 | PASS |
| 5 | GEN_05_02_014_FAIL_FUNC_PARAM_VARIANCE | out 在回调参数位置 🔀 | **GAP** |
| 6 | GEN_05_02_015_FAIL_OUT_IN_RETURN_OF_METHOD_PARAM | out 在方法参数返回值 | PASS |
| 7 | GEN_05_02_016_FAIL_WILDCARD_NOT_SUBTYPE_ANY | 通配符不是 any 子类型 | PASS |
| 8 | GEN_05_02_017_FAIL_WILDCARD_NOT_SUBTYPE_CONSTRAINT | 通配符不满足约束 | PASS |
| 9 | GEN_05_02_018_FAIL_WILDCARD_WRITE_IN_POS | 通配符写 in-position | PASS |
| 10 | GEN_05_02_019_FAIL_WILDCARD_WRITE_INVARIANT | 通配符写 invariant | PASS |
| 11 | GEN_05_02_021_FAIL_OUT_WILDCARD_NOT_SUBTYPE_NEVER | out 通配符非 never 子类型 | PASS |
| 12 | GEN_05_02_022_FAIL_IN_WILDCARD_NOT_SUBTYPE_C | in 通配符非 C 子类型 | PASS |
| 13 | GEN_05_02_023_FAIL_IN_WILDCARD_WRITE | in 通配符写操作 | PASS |
| 14 | GEN_05_02_024_FAIL_WILDCARD_INVARIANT_ASSIGN | 通配符不变体赋值 | PASS |
| 15 | GEN_05_02_025_FAIL_IN_CALLBACK_RETURN | in 在回调返回值位置 | **GAP** |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | GEN_05_02_020_RUNTIME_INSTANCEOF_WILDCARD | instanceof通配符 | 1 | PASS |

## 执行过程
- **执行日期：** 2026-06-18
- **环境：** WSL2 (Linux 5.15.153.1), es2panda (build 2026-06-11)
- **异常修复：** 无
- **补充日期：** 2026-06-19（新增 compile-fail ×2：out 在回调参数位置 + in 在回调返回值位置；014 空文件补全）
- **最新执行：** 2026-06-20（7 个 PENDING 用例全部通过；2 个 GAP 仍存在）
- 🔀 **Gap 分析：** GEN_05_02_014 和 GEN_05_02_025 为类型5探针（语法糖消解语义约束）。
  规范要求 out/in 类型参数不得出现在嵌套的 in/out-position（含回调函数参数内部），
  编译器仅检查直接成员签名位置，未递归检查回调函数类型参数内部的变体违规。
  标记 `GAP DOCUMENTED`：编译器变体检查粒度止于成员签名表层。
