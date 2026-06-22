# 7.32.1 简单赋值运算符 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | - | - | 待执行 |
| compile-fail | 3 | - | - | 待执行 |
| runtime（真实执行） | 2 | - | - | 待执行 |
| **总计** | **7** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_01_001_PASS_SIMPLE_VAR | 简单赋值变量 | 待执行 |
| | EXP_07_32_01_002_PASS_SIMPLE_ARRAY | 数组元素赋值 | 待执行 |

### compile-fail（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_01_003_FAIL_ASSIGN_TO_READONLY | readonly 变量赋值应产生编译错误 | 待执行 |
| | EXP_07_32_01_004_FAIL_ASSIGN_TO_CONST | const 变量赋值应产生编译错误 | 待执行 |
| | EXP_07_32_01_005_FAIL_ASSIGN_TO_LITERAL | 字面量赋值应产生编译错误 | 待执行 |

### runtime（2 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_01_006_RUNTIME_ARRAY_OOB | 数组越界赋值运行时行为 | 待执行 |
| | EXP_07_32_01_007_RUNTIME_FIELD_ASSIGN | 字段赋值运行时验证 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.32.1_Simple_Assignment_Operator" bash run_expressions_cases_wsl.sh
```
