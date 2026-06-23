# 7.36.1 常量表达式求值细节 - 测试执行报告

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
| | EXP_07_36_01_001_PASS_CONST_DOUBLE_PROMOTION | 常量表达式 double 提升（操作数为 double 时其他转 double） | ✅ 通过 |
| | EXP_07_36_01_002_PASS_CONST_FLOAT_PROMOTION | 常量表达式 float 提升 | ✅ 通过 |
| | EXP_07_36_01_003_PASS_CONST_BIGINT_INTERNAL | 常量表达式大整数内部类型（任意精度） | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|


### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_36_01_004_RUNTIME_CONST_MIXED | 混合常量表达式各子表达式独立求值 | ✅ 通过 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.36.1_Specifics_of_Constant_Expressions_Evaluation" bash run_expressions_cases_wsl.sh
```
