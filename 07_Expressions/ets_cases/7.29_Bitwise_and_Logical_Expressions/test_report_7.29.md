# 7.29 位运算与逻辑表达式 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | - | - | 待执行 |
| compile-fail | 2 | - | - | 待执行 |
| runtime（真实执行） | 0 | - | - | 待执行 |
| **总计** | **4** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_29_001_PASS_BITWISE_BASIC | 基本位运算（& | ^）int 类型 | 待执行 |
| | EXP_07_29_002_PASS_BITWISE_PRECEDENCE | 位运算符优先级（& > ^ > |） | 待执行 |

### compile-fail（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_29_003_FAIL_BITWISE_STRING | string 类型位运算应产生编译错误 | 待执行 |
| | EXP_07_29_004_FAIL_BITWISE_OBJECT | Object 类型位运算应产生编译错误 | 待执行 |

### runtime（0 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|


---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.29_Bitwise_and_Logical_Expressions" bash run_expressions_cases_wsl.sh
```
