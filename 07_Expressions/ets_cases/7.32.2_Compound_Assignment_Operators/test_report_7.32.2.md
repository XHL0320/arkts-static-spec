# 7.32.2 复合赋值运算符 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | - | - | 待执行 |
| compile-fail | 2 | - | - | 待执行 |
| runtime（真实执行） | 2 | - | - | 待执行 |
| **总计** | **9** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（5 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_02_001_PASS_COMPOUND_ARITH | 复合赋值算术运算（+= -= *= /= %=） | 待执行 |
| | EXP_07_32_02_002_PASS_COMPOUND_SHIFT | 复合赋值移位运算（<<= >>= >>>=） | 待执行 |
| | EXP_07_32_02_003_PASS_COMPOUND_BITWISE | 复合赋值位运算（&= |= ^=） | 待执行 |
| | EXP_07_32_02_004_PASS_COMPOUND_LOGIC | 复合赋值逻辑运算（&&= ||= ??=） | 待执行 |
| | EXP_07_32_02_005_PASS_COMPOUND_LHS_ONCE | 复合赋值左侧仅求值一次 | 待执行 |

### compile-fail（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_02_006_FAIL_COMPOUND_MISMATCH | 复合赋值类型不兼容应产生编译错误 | 待执行 |
| | EXP_07_32_02_007_FAIL_COMPOUND_NON_LVALUE | 复合赋值非左值应产生编译错误 | 待执行 |

### runtime（2 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_32_02_008_RUNTIME_COMPOUND_ARRAY | 数组元素复合赋值 | 待执行 |
| | EXP_07_32_02_009_RUNTIME_COMPOUND_NULLISH | ??= 空值合并赋值（左侧 null/undefined 时赋值） | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.32.2_Compound_Assignment_Operators" bash run_expressions_cases_wsl.sh
```
