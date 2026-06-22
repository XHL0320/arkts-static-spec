# 7.32.3 左值表达式 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | - | - | 待执行 |
| compile-fail | 3 | - | - | 待执行 |
| runtime（真实执行） | 1 | - | - | 待执行 |
| **总计** | **7** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_03_001_PASS_LHS_VARIABLE | 左值：变量 | 待执行 |
| | EXP_07_32_03_002_PASS_LHS_FIELD | 左值：字段访问 | 待执行 |
| | EXP_07_32_03_003_PASS_LHS_ARRAY | 左值：数组元素 | 待执行 |

### compile-fail（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_03_004_FAIL_LHS_CHAINING | chaining operator ?. 在左值中应产生编译错误 | 待执行 |
| | EXP_07_32_03_005_FAIL_LHS_LITERAL | 字面量作为左值应产生编译错误 | 待执行 |
| | EXP_07_32_03_006_FAIL_LHS_CALL_RESULT | 调用结果作为左值应产生编译错误 | 待执行 |

### runtime（1 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_03_007_RUNTIME_LHS_SETTER | 左值：setter 访问器 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.32.3_Left_Hand_Side_Expressions" bash run_expressions_cases_wsl.sh
```
