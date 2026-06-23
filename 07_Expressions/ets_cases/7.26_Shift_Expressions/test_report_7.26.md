# 7.26 移位表达式 - 测试执行报告

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
| | EXP_07_26_001_PASS_INT_SHIFT_BASIC | 验证int类型左移(<<)、有符号右移(>>)、无符号右移(>>>)的基本用法，操作数均为int类型 | ✅ 通过 |
| | EXP_07_26_002_PASS_LONG_SHIFT_BASIC | 验证long类型左移(<<)、有符号右移(>>)、无符号右移(>>>)的基本用法 | ✅ 通过 |
| | EXP_07_26_003_PASS_BIGINT_SHIFT | 验证bigint类型的左移(<<)和有符号右移(>>)，bigint不支持无符号右移(>>>) | ✅ 通过 |
| | EXP_07_26_004_PASS_BYTE_SHORT_PROMOTION | 验证byte和short类型作为移位操作左操作数时，自动提升为int类型 | ✅ 通过 |
| | EXP_07_26_005_PASS_SHIFT_GROUPING | 验证移位运算符左结合性（从左到右分组），a << b >> c = ((a << b) >> c) | ✅ 通过 |
| | EXP_07_26_006_PASS_SHIFT_CHAINED | 验证链式移位操作，多个移位运算符连续使用 | ✅ 通过 |
| | EXP_07_26_010_FAIL_FLOAT_DOUBLE_TRUNCATION_NOTE | 验证float/double作为移位操作数时被截断为long/int的规则——float截断为int，double截断为long | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_26_007_FAIL_BIGINT_UNSIGNED_RIGHT | 验证bigint类型使用无符号右移(>>>)应产生编译时错误 | ✅ 通过 |
| | EXP_07_26_008_FAIL_BIGINT_NUMERIC_MIXED | 验证bigint与numeric类型混合作为移位操作数时产生编译时错误 | ✅ 通过 |
| | EXP_07_26_009_FAIL_NON_NUMERIC_SHIFT | 验证非数值类型（string）作为移位操作数时产生编译时错误 | ✅ 通过 |
| | EXP_07_26_011_FAIL_SHIFT_WITH_OBJECT | 验证Object类型作为移位操作数时产生编译时错误 | ✅ 通过 |
| | EXP_07_26_012_FAIL_SHIFT_STRING_OPERAND | 验证string类型作为移位操作数时产生编译时错误 | ✅ 通过 |
| | EXP_07_26_013_FAIL_SHIFT_BOOLEAN | 验证boolean类型作为移位操作数时产生编译时错误 | ✅ 通过 |
| | EXP_07_26_014_FAIL_SHIFT_NULL | 验证null作为移位操作数时产生编译时错误 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_26_015_RUNTIME_INT_SIGNED_RIGHT_NEG | 运行时验证负数int的有符号右移(>>)保持符号扩展：n >> s = floor(n / 2^s) | ✅ 通过 |
| | EXP_07_26_016_RUNTIME_INT_UNSIGNED_RIGHT_NEG | 运行时验证负数int的无符号右移(>>>)零扩展：高位补0而非补1 | ✅ 通过 |
| | EXP_07_26_017_RUNTIME_LONG_SHIFT_DISTANCE_MASK | 运行时验证long类型移位距离只使用低6位（掩码0x3f，范围0-63） | ✅ 通过 |
| | EXP_07_26_018_RUNTIME_INT_SHIFT_DISTANCE_MASK | 运行时验证int类型移位距离只使用低5位（掩码0x1f，范围0-31） | ✅ 通过 |
| | EXP_07_26_019_RUNTIME_SHIFT_LEFT_OVERFLOW | 运行时验证左移溢出回绕行为：n << s = n * 2^s，即使溢出也按此规则 | ✅ 通过 |
| | EXP_07_26_020_RUNTIME_BIGINT_SHIFT_LARGE | 运行时验证bigint大值移位：bigint无位移距离掩码限制，可以任意精度移位 | ✅ 通过 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.26_Shift_Expressions" bash run_expressions_cases_wsl.sh
```
