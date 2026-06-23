# 7.32.1 简单赋值运算符 - 测试执行报告

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
| | EXP_07_32_01_001_PASS_SIMPLE_VAR | 简单赋值变量 | ✅ 通过 |
| | EXP_07_32_01_002_PASS_SIMPLE_ARRAY | 数组元素赋值 | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_01_003_FAIL_ASSIGN_TO_READONLY | readonly 变量赋值应产生编译错误 | ✅ 通过 |
| | EXP_07_32_01_004_FAIL_ASSIGN_TO_CONST | const 变量赋值应产生编译错误 | ✅ 通过 |
| | EXP_07_32_01_005_FAIL_ASSIGN_TO_LITERAL | 字面量赋值应产生编译错误 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_01_006_RUNTIME_ARRAY_OOB | 数组越界赋值运行时行为 | ✅ 通过 |
| | EXP_07_32_01_007_RUNTIME_FIELD_ASSIGN | 字段赋值运行时验证 | ✅ 通过 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.32.1_Simple_Assignment_Operator" bash run_expressions_cases_wsl.sh
```
