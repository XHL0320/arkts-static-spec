# 7.35.1 Lambda 签名 - 测试执行报告

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
| | EXP_07_35_01_001_PASS_LAMBDA_TYPED_PARAMS | Lambda 签名含完整类型标注 | 待执行 |
| | EXP_07_35_01_002_PASS_LAMBDA_INFERRED | Lambda 签名类型推断（省略类型） | 待执行 |
| | EXP_07_35_01_003_PASS_LAMBDA_REST_PARAM | Lambda 剩余参数 | 待执行 |

### compile-fail（1 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_01_004_FAIL_LAMBDA_NO_TYPE | Lambda 无类型且无法推断应产生编译错误 | 待执行 |

### runtime（1 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_01_005_RUNTIME_LAMBDA_GENERIC | Lambda 泛型类型推断 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.35.1_Lambda_Signature" bash run_expressions_cases_wsl.sh
```
