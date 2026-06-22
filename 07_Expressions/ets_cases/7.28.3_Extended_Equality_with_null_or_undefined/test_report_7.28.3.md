# 7.28.3 null/undefined 扩展相等 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | - | - | 待执行 |
| compile-fail | 0 | - | - | 待执行 |
| runtime（真实执行） | 1 | - | - | 待执行 |
| **总计** | **4** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_28_03_001_PASS_NULL_UNDEFINED_EQ | null == undefined 为 true | 待执行 |
| | EXP_07_28_03_002_PASS_NULL_UNDEFINED_NEQ | null !== undefined 为 true（严格不等） | 待执行 |
| | EXP_07_28_03_003_PASS_NULL_SELF_EQ | null == null 和 undefined == undefined | 待执行 |

### compile-fail（0 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|


### runtime（1 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_28_03_004_RUNTIME_NULL_UNDEFINED_EXTENDED | 扩展 null/undefined 相等运行时验证 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.28.3_Extended_Equality_with_null_or_undefined" bash run_expressions_cases_wsl.sh
```
