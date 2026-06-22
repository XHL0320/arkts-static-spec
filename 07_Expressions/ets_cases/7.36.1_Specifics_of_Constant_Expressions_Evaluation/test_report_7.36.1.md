# 7.36.1 常量表达式求值细节 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | - | - | 待执行 |
| compile-fail | 0 | - | - | 待执行 |
| runtime（真实执行） | 1 | - | - | 待执行 |
| **总计** | **4** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_36_01_001_PASS_CONST_DOUBLE_PROMOTION | 常量表达式 double 提升（操作数为 double 时其他转 double） | 待执行 |
| | EXP_07_36_01_002_PASS_CONST_FLOAT_PROMOTION | 常量表达式 float 提升 | 待执行 |
| | EXP_07_36_01_003_PASS_CONST_BIGINT_INTERNAL | 常量表达式大整数内部类型（任意精度） | 待执行 |

### compile-fail（0 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|


### runtime（1 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_36_01_004_RUNTIME_CONST_MIXED | 混合常量表达式各子表达式独立求值 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.36.1_Specifics_of_Constant_Expressions_Evaluation" bash run_expressions_cases_wsl.sh
```
