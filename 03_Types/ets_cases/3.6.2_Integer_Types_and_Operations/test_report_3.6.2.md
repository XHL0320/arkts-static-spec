# 3.6.2 Integer Types and Operations - 测试执行报告

**测试日期：** 2026-06-11
**编译器：** es2panda
**运行时：** ark VM + boot files
**运行环境：** WSL2 Ubuntu 22.04
**对应规范：** ArkTS Static Spec §3.6.2 Integer Types and Operations

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 8 | 8 | 0 | 100% |
| **总计** | **21** | **21** | **0** | **100%** |

**🎯 最终通过率：100%**（修复 1 个用例后达成）

---

## 详细执行结果

### compile-pass（10个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | PASS_RELATIONAL_OPS | 关系运算 < <= > >= | PASS |
| 002 | PASS_EQUALITY_OPS | 相等运算 == != | PASS |
| 003 | PASS_UNARY_OPS | 一元 + - ~ | PASS |
| 004 | PASS_ARITHMETIC_OPS | 算术 + - * / % 含推升 | PASS |
| 005 | PASS_INCR_DECR | 自增自减前后缀 | PASS |
| 006 | PASS_SHIFT_OPS | 移位 << >> >>> | PASS |
| 007 | PASS_BITWISE_OPS | 按位 & ^ \| | PASS |
| 008 | PASS_TERNARY | 三元 ?: | PASS |
| 009 | PASS_STRING_CONCAT | int + string 拼接 | PASS |
| 010 | PASS_EXPONENTIATION_BIGINT | 整数幂运算 → bigint | PASS |

### compile-fail（3个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 011 | FAIL_INT_BOOLEAN_CONVERT | 整数 ↔ boolean 互转 | PASS |
| 012 | FAIL_SHIFT_FLOAT_OPERAND | 移位浮点操作数 | PASS |
| 013 | FAIL_BITWISE_FLOAT_OPERAND | 按位浮点操作数 | PASS |

### runtime（8个，真实执行 + assert）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 014 | RUNTIME_TYPE_PROMOTION_LONG | long+int 推升为 long | PASS |
| 015 | RUNTIME_TYPE_PROMOTION_INT | byte+short 推升为 int | PASS |
| 016 | RUNTIME_OVERFLOW_SILENT | 溢出静默回绕 | PASS |
| 017 | RUNTIME_DIV_BY_ZERO | 除零抛 ArithmeticError | PASS |
| 018 | RUNTIME_MOD_BY_ZERO | 取模零抛 ArithmeticError | PASS |
| 019 | RUNTIME_SHIFT_BEHAVIOR | >> 算术 vs >>> 逻辑 | PASS |
| 020 | RUNTIME_BITWISE_RESULT | & ^ \| 结果 | PASS |
| 021 | RUNTIME_STRING_CONCAT_DECIMAL | 整数转 decimal 字符串 | PASS |

---

## 执行过程异常修复记录

| 用例 | 异常 | 根因 | 修复方式 |
|------|------|------|---------|
| 014 | `As' expression for cast is deprecated for numeric types` | ArkTS 弃用 `as` 用于数值类型转换 | 改用 `i.toLong()` 方法 |

**新发现的设计问题：** ArkTS 数值类型转换不再支持 `as` 表达式，必须使用 stdlib 的 `toLong()`/`toInt()` 等方法（详见 design_issues_report_3.6.2.md）。

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.6.2_Integer_Types_and_Operations" bash run_types_cases_wsl.sh
```