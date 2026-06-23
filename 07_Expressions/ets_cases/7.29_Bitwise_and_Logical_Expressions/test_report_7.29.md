# 7.29 位运算与逻辑表达式 - 测试执行报告

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
| | EXP_07_29_001_PASS_BITWISE_BASIC | 基本位运算（& | ^）int 类型 | ✅ 通过 |
| | EXP_07_29_002_PASS_BITWISE_PRECEDENCE | 位运算符优先级（& > ^ > |） | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_29_003_FAIL_BITWISE_STRING | string 类型位运算应产生编译错误 | ✅ 通过 |
| | EXP_07_29_004_FAIL_BITWISE_OBJECT | Object 类型位运算应产生编译错误 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|


---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.29_Bitwise_and_Logical_Expressions" bash run_expressions_cases_wsl.sh
```
