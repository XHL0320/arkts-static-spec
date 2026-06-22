# 7.27.3 字符串关系运算符 - 测试执行报告

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
| | EXP_07_27_03_001_PASS_STRING_BASIC_CMP | 验证两个string类型操作数之间的所有四种关系运算符编译通过，执行字典序比较 | 待执行 |
| | EXP_07_27_03_002_PASS_STRING_LEXICOGRAPHIC | 验证字符串字典序比较的正确行为：逐字符比较Unicode码点，短字符串是长字符串前缀时短字符串较小 | 待执行 |

### compile-fail（2 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_03_003_FAIL_STRING_NUMBER | 验证string类型与number类型操作数不能直接用于关系运算符，应产生编译时错误 | 待执行 |
| | EXP_07_27_03_004_FAIL_STRING_BOOLEAN | 验证string类型与boolean类型操作数不能用于关系运算符，应产生编译时错误 | 待执行 |

### runtime（2 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_03_005_RUNTIME_STRING_EMPTY | 验证空字符串参与字典序关系比较的运行时行为：空字符串小于任何非空字符串 | 待执行 |
| | EXP_07_27_03_006_RUNTIME_STRING_UNICODE | 验证Unicode字符串字典序比较的运行时行为：按Unicode码点逐字符比较 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.27.3_String_Relational_Operators" bash run_expressions_cases_wsl.sh
```
