# 7.35.3 Lambda 表达式类型 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | - | - | 待执行 |
| compile-fail | 0 | - | - | 待执行 |
| runtime（真实执行） | 1 | - | - | 待执行 |
| **总计** | **3** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_03_001_PASS_LAMBDA_TYPE_FUNC | Lambda 类型为函数类型 | 待执行 |
| | EXP_07_35_03_002_PASS_LAMBDA_RETURN_INFERRED | Lambda 返回类型从体推断 | 待执行 |

### compile-fail（0 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|


### runtime（1 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_03_003_RUNTIME_LAMBDA_TYPE_CHECK | Lambda 类型为函数类型运行时验证 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.35.3_Lambda_Expression_Type" bash run_expressions_cases_wsl.sh
```
