# 7.27 关系表达式 - 测试执行报告

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
| runtime（真实执行） | 2 | - | - | 待执行 |
| **总计** | **6** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_001_PASS_RELATIONAL_BASIC | 基本关系运算 int 类型（< > <= >=） | 待执行 |
| | EXP_07_27_002_PASS_RELATIONAL_NESTED | 嵌套关系表达式（左结合分组） | 待执行 |

### compile-fail（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_003_FAIL_RELATIONAL_INCOMPATIBLE | 不兼容类型关系运算应产生编译错误 | 待执行 |
| | EXP_07_27_004_FAIL_RELATIONAL_OBJECT | Object 类型关系运算应产生编译错误 | 待执行 |

### runtime（2 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_005_RUNTIME_RELATIONAL_NAN | NaN 关系比较永远返回 false | 待执行 |
| | EXP_07_27_006_RUNTIME_RELATIONAL_CHAINING | 关系运算链式比较 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.27_Relational_Expressions" bash run_expressions_cases_wsl.sh
```
