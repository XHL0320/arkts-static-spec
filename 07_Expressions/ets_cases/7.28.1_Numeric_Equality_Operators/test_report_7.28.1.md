# 7.28.1 数值相等运算符 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | - | - | 待执行 |
| compile-fail | 2 | - | - | 待执行 |
| runtime（真实执行） | 3 | - | - | 待执行 |
| **总计** | **8** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_28_01_001_PASS_INT_EQ | int 类型相等比较 | 待执行 |
| | EXP_07_28_01_002_PASS_FLOAT_EQ | float/double IEEE 754 相等比较 | 待执行 |
| | EXP_07_28_01_003_PASS_WIDENING_EQ | widening 转换相等（int vs long, int vs double） | 待执行 |

### compile-fail（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_28_01_004_FAIL_NUMERIC_VS_STRING | numeric 与 string 相等比较应产生编译错误 | 待执行 |
| | EXP_07_28_01_005_FAIL_NUMERIC_VS_BOOLEAN | numeric 与 boolean 相等比较应产生编译错误 | 待执行 |

### runtime（3 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_28_01_006_RUNTIME_NAN_EQ | NaN 相等比较（NaN != NaN） | 待执行 |
| | EXP_07_28_01_007_RUNTIME_BIGINT_VS_NUMERIC | bigint == numeric 返回 false（非编译错误） | 待执行 |
| | EXP_07_28_01_008_RUNTIME_INFINITY_EQ | Infinity 相等行为 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.28.1_Numeric_Equality_Operators" bash run_expressions_cases_wsl.sh
```
