# 7.35 Lambda 表达式 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | - | - | 待执行 |
| compile-fail | 1 | - | - | 待执行 |
| runtime（真实执行） | 0 | - | - | 待执行 |
| **总计** | **5** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（4 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_001_PASS_LAMBDA_BLOCK_BODY | Lambda 表达式块体 | 待执行 |
| | EXP_07_35_002_PASS_LAMBDA_EXPR_BODY | Lambda 表达式表达式体（隐式 return） | 待执行 |
| | EXP_07_35_003_PASS_LAMBDA_SHORTEST | Lambda 最短形式（e => e） | 待执行 |
| | EXP_07_35_004_PASS_LAMBDA_ANNOTATION | Lambda 参数类型标注 | 待执行 |

### compile-fail（1 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_005_FAIL_LAMBDA_DUPLICATE_PARAM | Lambda 参数重名应产生编译错误 | 待执行 |

### runtime（0 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|


---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.35_Lambda_Expressions" bash run_expressions_cases_wsl.sh
```
