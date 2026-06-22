# 7.27.6 枚举关系运算符 - 测试执行报告

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
| | EXP_07_27_06_001_PASS_ENUM_INT_CMP | 同枚举类型（int 基类型）关系比较 | 待执行 |
| | EXP_07_27_06_002_PASS_ENUM_STRING_CMP | 同枚举类型（string 基类型）关系比较 | 待执行 |

### compile-fail（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_06_003_FAIL_ENUM_DIFF_TYPE | 不同枚举类型关系比较应产生编译错误 | 待执行 |
| | EXP_07_27_06_004_FAIL_ENUM_VS_INT | 枚举类型与 int 关系比较应产生编译错误 | 待执行 |

### runtime（2 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_06_005_RUNTIME_ENUM_ORDERING | 枚举值排序验证 | 待执行 |
| | EXP_07_27_06_006_RUNTIME_ENUM_SAME_VALUE | 同值枚举关系比较 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.27.6_Enumeration_Relational_Operators" bash run_expressions_cases_wsl.sh
```
