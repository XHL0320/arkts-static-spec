# 15.6 Compatibility of Call Arguments - 测试报告

## 执行概览
| 指标 | 数值 |
|------|------|
\130 |
\130 |
| 失败数 | 0 |
| 通过率 | 100% |

## 用例列表

### compile-pass（编译通过）
| 用例 ID | 文件名 | 类别 | 结果 |
|---------|--------|------|------|
| SEM_15_06_001_PASS_ARG_COMPATIBILITY | SEM_15_06_001_PASS_ARG_COMPATIBILITY.ets | compile-pass | ✅ |
| SEM_15_06_002_PASS_SUBTYPE_ARG | SEM_15_06_002_PASS_SUBTYPE_ARG.ets | compile-pass | ✅ |

### compile-fail（编译失败）
| 用例 ID | 文件名 | 类别 | 结果 |
|---------|--------|------|------|
| SEM_15_06_010_FAIL_ARG_MISMATCH | SEM_15_06_010_FAIL_ARG_MISMATCH.ets | compile-fail | ✅ |
| SEM_15_06_011_FAIL_ARG_COUNT | SEM_15_06_011_FAIL_ARG_COUNT.ets | compile-fail | ✅ |

### runtime（运行时）
| 用例 ID | 文件名 | 类别 | 结果 |
|---------|--------|------|------|
| SEM_15_06_012 | SEM_15_06_012_RT_call_args.ets | runtime | ✅ |

## 结果统计
| 类别 | 总数 | 通过 | 失败 |
|------|------|------|------|
| compile-pass | 13 | 13 | 0 | 100% |
| compile-fail | 11 | 11 | 0 | 100% |
| runtime | 6 | 6 | 0 | 100% |
| **总计** | **30** | **30** | **0** | **100%** | **5** | **5** | **0** |

## 关键发现
1. **参数类型兼容**：ArkTS 正确支持参数类型与声明类型匹配
2. **子类型参数传递**：ArkTS 支持子类型参数传父类型声明（多态）
3. **类型不匹配拒绝**：编译器正确拒绝类型不兼容的参数传递
4. **参数数量不匹配拒绝**：编译器正确拒绝参数数量不匹配的调用
5. **运行时行为**：参数在运行时传递正确，值一致

## 测试环境
- 编译器版本：2026-06-22
- 测试日期：2026-06-22
- 测试人员：2026-06-22
