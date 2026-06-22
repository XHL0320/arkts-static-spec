# 7.36 常量表达式 - 测试执行报告

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
| runtime（真实执行） | 1 | - | - | 待执行 |
| **总计** | **8** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（4 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_36_001_PASS_CONST_LITERAL | 常量表达式：字面量 | 待执行 |
| | EXP_07_36_002_PASS_CONST_REF | 常量表达式：引用其他常量 | 待执行 |
| | EXP_07_36_003_PASS_CONST_COMPLEX | 常量表达式：复杂运算组合 | 待执行 |
| | EXP_07_36_004_PASS_CONST_PAREN | 常量表达式：括号表达式 | 待执行 |

### compile-fail（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_36_005_FAIL_CONST_INCREMENT | 常量表达式中使用 ++ 应产生编译错误 | 待执行 |
| | EXP_07_36_006_FAIL_CONST_DECREMENT | 常量表达式中使用 -- 应产生编译错误 | 待执行 |
| | EXP_07_36_007_FAIL_CONST_INVALID_REF | 常量表达式引用非常量变量应产生编译错误 | 待执行 |

### runtime（1 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_36_008_RUNTIME_CONST_EVAL | 编译期常量求值正确性验证 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.36_Constant_Expressions" bash run_expressions_cases_wsl.sh
```
