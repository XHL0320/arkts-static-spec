# 7.27.1 Numeric Relational Operators - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 8 | 8 | 0 | 100% |
| **总计** | **19** | **19** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_27_01_001_PASS_INT_RELATIONAL | int <, <=, >, >= 基本编译 | ✅ |
| 002 | EXP_07_27_01_002_PASS_LONG_RELATIONAL | long <, <=, >, >= 基本编译（含 spec 示例） | ✅ |
| 003 | EXP_07_27_01_003_PASS_FLOAT_RELATIONAL | float <, <=, >, >= 基本编译（含 spec 示例） | ✅ |
| 004 | EXP_07_27_01_004_PASS_DOUBLE_RELATIONAL | double <, <=, >, >= 基本编译（含 spec 示例） | ✅ |
| 005 | EXP_07_27_01_005_PASS_BYTE_SHORT_PROMOTION | byte/short → int 提升编译 | ✅ |
| 006 | EXP_07_27_01_006_PASS_MIXED_NUMERIC | int+long、int+float、int+double 等混合类型编译 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 007 | EXP_07_27_01_021_FAIL_STRING_OPERAND | string < int 编译错误 | ✅ (expected error) |
| 008 | EXP_07_27_01_022_FAIL_BOOLEAN_OPERAND | boolean <= int 编译错误 | ✅ (expected error) |
| 009 | EXP_07_27_01_023_FAIL_OBJECT_OPERAND | Object > int 编译错误 | ✅ (expected error) |
| 010 | EXP_07_27_01_024_FAIL_NULLISH_OPERAND | null/undefined >= int 编译错误 | ✅ (expected error) |
| 011 | EXP_07_27_01_025_FAIL_NON_NUMERIC_BOTH | string < boolean 双方非数值编译错误 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 012 | EXP_07_27_01_031_RUNTIME_INT_COMPARISON | int 基本比较（20 断言，含 spec 示例 1 < -3 = false） | 20 | ✅ |
| 013 | EXP_07_27_01_032_RUNTIME_INT_EDGE | int 边界值（INT_MAX、INT_MIN）比较 | 16 | ✅ |
| 014 | EXP_07_27_01_033_RUNTIME_LONG_COMPARISON | long 比较（含 spec 示例 -1L >= -1S） | 17 | ✅ |
| 015 | EXP_07_27_01_034_RUNTIME_FLOAT_COMPARISON | float 比较（含 spec 示例 1 <= 1.0f = true） | 16 | ✅ |
| 016 | EXP_07_27_01_035_RUNTIME_DOUBLE_COMPARISON | double 比较（含 spec 示例 2 <= 1.0 = false） | 17 | ✅ |
| 017 | EXP_07_27_01_036_RUNTIME_IEEE754_SPECIAL | IEEE 754 特殊值：NaN/Infinity/-0.0 | 25 | ✅ |
| 018 | EXP_07_27_01_037_RUNTIME_MIXED_TYPES | int+long+float+double 混合类型比较 | 17 | ✅ |
| 019 | EXP_07_27_01_038_RUNTIME_BYTE_SHORT | byte/short 提升后的运行时值验证 | 15 | ✅ |
| | **合计** | | **143 断言** | **✅ 100%** |

### 跨语言验证结果

| 语言 | 通过率 |
|:----:|:------:|
| ArkTS | **19/19 ✅ 100%** |
| Java | **48/48 ✅ 100%** |
| Swift | **41/41 ✅ 100%** |

### 边界覆盖情况

| 场景 | 预期 | 实际 | 状态 |
|------|:----:|:----:|:----:|
| int 比较基本值 | 正确 | 正确 | ✅ |
| int MAX_VALUE 比较 | 正确 | 正确 | ✅ |
| int MIN_VALUE 比较 | 正确 | 正确 | ✅ |
| long 比较基本值 | 正确 | 正确 | ✅ |
| long spec 示例 | true | true | ✅ |
| float 比较基本值 | 正确 | 正确 | ✅ |
| float spec 示例 | true | true | ✅ |
| double 比较基本值 | 正确 | 正确 | ✅ |
| double spec 示例 | false | false | ✅ |
| NaN < 任何值 | false | false | ✅ |
| NaN > 任何值 | false | false | ✅ |
| NaN <= NaN | false | false | ✅ |
| NaN >= NaN | false | false | ✅ |
| -Inf < 有限值 | true | true | ✅ |
| +Inf > 有限值 | true | true | ✅ |
| -Inf < +Inf | true | true | ✅ |
| -0.0 <= 0.0 | true | true | ✅ |
| 0.0 >= -0.0 | true | true | ✅ |
| string < int | compile-time error | compile-time error | ✅ |
| boolean <= int | compile-time error | compile-time error | ✅ |
| Object > int | compile-time error | compile-time error | ✅ |
| null >= int | compile-time error | compile-time error | ✅ |
| string < boolean | compile-time error | compile-time error | ✅ |

## 执行过程异常修复记录

1. **所有 19 个 ArkTS 测试 100% 通过**，0 D 类异常。
2. **IEEE 754 规则完全正确**：NaN 比较恒为 false、-Inf < 所有有限值、+Inf > 所有有限值、+0.0 = -0.0。
3. **混合数值类型比较**：byte/short→int、int→long、int→float、long→double 等数值提升链全部正确。
4. **非数值类型编译时拒绝**：string/boolean/Object/null/undefined 全部被正确识别为编译时错误。
5. **ArkTS 浮点字面量区分**：`1.5` 是 Double，`1.5f` 才是 Float（与 Java 一致）。
6. **float→double 提升精度问题**：`3.14f <= 3.14` 可能因精度问题为 false（float 3.14 的二进制近似值略大）。

## 后续运行命令

```bash
SECTIONS="7.27.1_Numeric_Relational_Operators" bash run_expressions_cases_wsl.sh
```
