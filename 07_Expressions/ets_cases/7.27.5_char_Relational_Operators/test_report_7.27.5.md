# 7.27.5 char 关系运算符 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | - | - | 待执行 |
| compile-fail | 1 | - | - | 待执行 |
| runtime（真实执行） | 1 | - | - | 待执行 |
| **总计** | **4** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_05_001_PASS_CHAR_CMP_BASIC | char 类型基本关系比较（码元比较） | 待执行 |
| | EXP_07_27_05_002_PASS_CHAR_CMP_VAR | char 变量关系比较 | 待执行 |

### compile-fail（1 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_05_003_FAIL_CHAR_VS_INT | char 与 int 关系比较应产生编译错误 | 待执行 |

### runtime（1 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_05_004_RUNTIME_CHAR_ORDERING | char 码元排序验证 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.27.5_char_Relational_Operators" bash run_expressions_cases_wsl.sh
```
