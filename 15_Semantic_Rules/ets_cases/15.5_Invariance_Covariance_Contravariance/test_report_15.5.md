# 15.5 Invariance, Covariance, Contravariance - 测试报告

## 执行概览
| 指标 | 数值 |
|------|------|
| 总用例数 | 24 |
| 通过数 | 22 |
| 失败数 | 2 |
| 通过率 | 91.7% |

## 结果统计
| 类别 | 总数 | 通过 | 失败 |
|------|------|------|------|
| compile-pass | 11 | 11 | 0 | 100% |
| compile-fail | 9 | 9 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **22** | **22** | **0** | **100%** |

## 用例列表

### compile-pass（编译通过）
| 用例 ID | 文件名 | 类别 | 结果 |
|---------|--------|------|------|
| SEM_15_05_00_004_PASS_RETURN_COVARIANCE | SEM_15_05_00_004_PASS_RETURN_COVARIANCE.ets | compile-pass | ✅ |
| SEM_15_05_00_006_PASS_PARAM_CONTRAVARIANCE | SEM_15_05_00_006_PASS_PARAM_CONTRAVARIANCE.ets | compile-pass | ✅ |

### compile-fail（编译失败）
| 用例 ID | 文件名 | 类别 | 结果 |
|---------|--------|------|------|
| SEM_15_05_00_100_FAIL_GENERIC_INVARIANCE | SEM_15_05_00_100_FAIL_GENERIC_INVARIANCE.ets | compile-fail | ✅ |
| SEM_15_05_00_105_FAIL_COVARIANT_PARAM | SEM_15_05_00_105_FAIL_COVARIANT_PARAM.ets | compile-fail | ✅ |
| SEM_15_05_00_107_FAIL_CONTRAVARIANT_RETURN | SEM_15_05_00_107_FAIL_CONTRAVARIANT_RETURN.ets | compile-fail | ✅ |

### runtime（运行时）
| 用例 ID | 文件名 | 类别 | 结果 |
|---------|--------|------|------|
| SEM_15_05_020_RT_variance | SEM_15_05_020_RT_variance.ets | runtime | ✅ |

## 结果统计
| 类别 | 总数 | 通过 | 失败 |
|------|------|------|------|
| compile-pass | 2 | 2 | 0 |
| compile-fail | 3 | 3 | 0 |
| runtime | 1 | 1 | 0 |
| **总计** | **6** | **6** | **0** |

## 关键发现
1. **泛型不变性**：ArkTS 泛型类型参数不变（Invariance），与 Java 一致
2. **返回值协变**：ArkTS 支持返回值协变（Covariance），子类覆写方法返回类型可以是父类返回类型的子类型
3. **参数逆变**：ArkTS 支持函数类型参数逆变（Contravariance）
4. **类型安全**：编译器正确拒绝不安全的协变/逆变使用（如 out 类型参数用于参数位置）
5. **运行时行为**：协变/逆变在运行时行为正确，方法派发正常

## 测试环境
- **编译器**：ArkTS static_core (es2panda)
- **测试日期**：2026-06-23
