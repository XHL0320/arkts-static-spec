# 7.35.4 Lambda 运行时求值 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 1 | - | - | 待执行 |
| compile-fail | 1 | - | - | 待执行 |
| runtime（真实执行） | 2 | - | - | 待执行 |
| **总计** | **4** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（1 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_04_001_PASS_LAMBDA_NEW_INSTANCE | 每次 Lambda 求值创建新实例 | 待执行 |

### compile-fail（1 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_04_002_FAIL_LAMBDA_UNINITIALIZED_CAPTURE | Lambda 捕获未初始化变量应产生编译错误 | 待执行 |

### runtime（2 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_04_003_RUNTIME_LAMBDA_FACTORY | Lambda 工厂每次创建独立作用域 | 待执行 |
| | EXP_07_35_04_004_RUNTIME_LAMBDA_LOOP_CAPTURE | 循环中 Lambda 捕获变量语义 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.35.4_Runtime_Evaluation_of_Lambda_Expressions" bash run_expressions_cases_wsl.sh
```
