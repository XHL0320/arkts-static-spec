# 7.27.3 字符串关系运算符 - 测试执行报告

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
| | EXP_07_27_03_001_PASS_STRING_BASIC_CMP | 验证两个string类型操作数之间的所有四种关系运算符编译通过，执行字典序比较 | ✅ 通过 |
| | EXP_07_27_03_002_PASS_STRING_LEXICOGRAPHIC | 验证字符串字典序比较的正确行为：逐字符比较Unicode码点，短字符串是长字符串前缀时短字符串较小 | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_03_003_FAIL_STRING_NUMBER | 验证string类型与number类型操作数不能直接用于关系运算符，应产生编译时错误 | ✅ 通过 |
| | EXP_07_27_03_004_FAIL_STRING_BOOLEAN | 验证string类型与boolean类型操作数不能用于关系运算符，应产生编译时错误 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_03_005_RUNTIME_STRING_EMPTY | 验证空字符串参与字典序关系比较的运行时行为：空字符串小于任何非空字符串 | ✅ 通过 |
| | EXP_07_27_03_006_RUNTIME_STRING_UNICODE | 验证Unicode字符串字典序比较的运行时行为：按Unicode码点逐字符比较 | ✅ 通过 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.27.3_String_Relational_Operators" bash run_expressions_cases_wsl.sh
```
