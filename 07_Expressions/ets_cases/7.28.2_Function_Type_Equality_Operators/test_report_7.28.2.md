# 7.28.2 函数类型相等运算符 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | - | - | 待执行 |
| compile-fail | 1 | - | - | 待执行 |
| runtime（真实执行） | 1 | - | - | 待执行 |
| **总计** | **5** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_28_02_001_PASS_FUNC_REF_EQ | 同一函数引用相等 | 待执行 |
| | EXP_07_28_02_002_PASS_DIFF_FUNC_NEQ | 不同函数引用不相等 | 待执行 |
| | EXP_07_28_02_003_PASS_METHOD_REF_EQ | 方法引用相等（含绑定实例） | 待执行 |

### compile-fail（1 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_28_02_004_FAIL_FUNC_NON_FUNC_EQ | 函数类型与非函数类型相等比较应产生编译错误 | 待执行 |

### runtime（1 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_28_02_005_RUNTIME_METHOD_BOUND_EQ | 不同绑定实例方法引用不等 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.28.2_Function_Type_Equality_Operators" bash run_expressions_cases_wsl.sh
```
