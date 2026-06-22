# 7.29.1 整数位运算符 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | - | - | 待执行 |
| compile-fail | 3 | - | - | 待执行 |
| runtime（真实执行） | 2 | - | - | 待执行 |
| **总计** | **9** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（4 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_29_01_001_PASS_INT_BITWISE | int 位运算完整覆盖（& | ^） | 待执行 |
| | EXP_07_29_01_002_PASS_LONG_BITWISE | long 类型位运算 | 待执行 |
| | EXP_07_29_01_003_PASS_BIGINT_BITWISE | bigint 类型位运算 | 待执行 |
| | EXP_07_29_01_004_PASS_BYTE_SHORT_WIDENING | byte/short 位运算时 widening 转换 | 待执行 |

### compile-fail（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_29_01_005_FAIL_BIGINT_NUMERIC_MIXED | bigint 与 numeric 混合位运算应产生编译错误 | 待执行 |
| | EXP_07_29_01_006_FAIL_FLOAT_BITWISE | float 类型位运算应产生编译错误 | 待执行 |
| | EXP_07_29_01_007_FAIL_BOOLEAN_BITWISE | 整数位运算不允许 boolean 操作数 | 待执行 |

### runtime（2 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_29_01_008_RUNTIME_BITWISE_TRUTH_TABLE | 位运算真值表验证 | 待执行 |
| | EXP_07_29_01_009_RUNTIME_BIGINT_BITWISE_LARGE | bigint 大值位运算 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.29.1_Integer_Bitwise_Operators" bash run_expressions_cases_wsl.sh
```
