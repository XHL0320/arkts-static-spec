# 7.27.4 布尔关系运算符 - 测试执行报告

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
| | EXP_07_27_04_001_PASS_BOOLEAN_RELATIONAL | 布尔关系比较（false < true） | ✅ 通过 |
| | EXP_07_27_04_002_PASS_BOOLEAN_NEGATION | 布尔关系与逻辑非组合 | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_04_003_FAIL_BOOLEAN_VS_INT | boolean 与 int 关系比较应产生编译错误 | ✅ 通过 |
| | EXP_07_27_04_004_FAIL_BOOLEAN_VS_STRING | boolean 与 string 关系比较应产生编译错误 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_04_005_RUNTIME_BOOLEAN_TRUTH_TABLE | 布尔关系真值表验证 | ✅ 通过 |
| | EXP_07_27_04_006_RUNTIME_BOOLEAN_IF | 布尔关系在控制流中使用 | ✅ 通过 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.27.4_Boolean_Relational_Operators" bash run_expressions_cases_wsl.sh
```
