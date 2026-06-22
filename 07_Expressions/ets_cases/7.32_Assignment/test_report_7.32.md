# 7.32 赋值 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | - | - | 待执行 |
| compile-fail | 1 | - | - | 待执行 |
| runtime（真实执行） | 1 | - | - | 待执行 |
| **总计** | **4** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_001_PASS_ASSIGN_BASIC | 基本赋值右结合（a = b = c） | 待执行 |
| | EXP_07_32_002_PASS_ASSIGN_FIELD | 字段赋值 | 待执行 |

### compile-fail（1 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_003_FAIL_ASSIGN_TYPE_MISMATCH | 类型不兼容赋值应产生编译错误 | 待执行 |

### runtime（1 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_004_RUNTIME_ASSIGN_RESULT_VALUE | 赋值表达式返回赋值后的值 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.32_Assignment" bash run_expressions_cases_wsl.sh
```
