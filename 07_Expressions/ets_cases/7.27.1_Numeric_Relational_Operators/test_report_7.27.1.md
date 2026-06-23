# 7.27.1 数值关系运算符 - 测试执行报告

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
| | EXP_07_27_01_001_PASS_NUMERIC_INT_CMP | 验证int类型操作数之间的所有四种关系运算符(<, >, <=, >=)编译通过，执行有符号整数比较 | ✅ 通过 |
| | EXP_07_27_01_002_PASS_NUMERIC_FLOAT_CMP | 验证float/double类型操作数之间的关系运算符编译通过，执行IEEE 754浮点比较 | ✅ 通过 |
| | EXP_07_27_01_003_PASS_NUMERIC_MIXED_INT_LONG | 验证int与long混合类型关系运算编译通过，转换为long后进行有符号整数比较 | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_01_004_FAIL_NUMERIC_STRING | 验证数值类型与字符串类型操作数不能用于关系运算符，应产生编译时错误 | ✅ 通过 |
| | EXP_07_27_01_005_FAIL_NUMERIC_BOOLEAN | 验证数值类型与boolean类型操作数不能用于关系运算符，应产生编译时错误 | ✅ 通过 |
| | EXP_07_27_01_006_FAIL_NUMERIC_OBJECT | 验证数值类型与Object类型操作数不能用于关系运算符，应产生编译时错误 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_01_007_RUNTIME_NUMERIC_INFINITY | 验证IEEE 754浮点无穷大的关系比较运行时行为：负无穷 < 所有有限值 < 正无穷 | ✅ 通过 |
| | EXP_07_27_01_008_RUNTIME_NUMERIC_ZERO | 验证IEEE 754规范中+0与-0的关系比较运行时行为：+0 == -0，因此<=和>=均返回true，<和>均返回false | ✅ 通过 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.27.1_Numeric_Relational_Operators" bash run_expressions_cases_wsl.sh
```
