# 7.29.1 整数位运算符 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 已在 es2panda + ark VM 编译运行通过（306P+294F+300R=900，100%）

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime（真实执行） | 10 | 10 | 0 | 100% |
| **总计** | **30** | **30** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_29_01_001_PASS_INT_BITWISE | int 位运算完整覆盖（& | ^） | ✅ 通过 |
| | EXP_07_29_01_002_PASS_LONG_BITWISE | long 类型位运算 | ✅ 通过 |
| | EXP_07_29_01_003_PASS_BIGINT_BITWISE | bigint 类型位运算 | ✅ 通过 |
| | EXP_07_29_01_004_PASS_BYTE_SHORT_WIDENING | byte/short 位运算时 widening 转换 | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_29_01_005_FAIL_BIGINT_NUMERIC_MIXED | bigint 与 numeric 混合位运算应产生编译错误 | ✅ 通过 |
| | EXP_07_29_01_006_FAIL_FLOAT_BITWISE | float 类型位运算应产生编译错误 | ✅ 通过 |
| | EXP_07_29_01_007_FAIL_BOOLEAN_BITWISE | 整数位运算不允许 boolean 操作数 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_29_01_008_RUNTIME_BITWISE_TRUTH_TABLE | 位运算真值表验证 | ✅ 通过 |
| | EXP_07_29_01_009_RUNTIME_BIGINT_BITWISE_LARGE | bigint 大值位运算 | ✅ 通过 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.29.1_Integer_Bitwise_Operators" bash run_expressions_cases_wsl.sh
```
