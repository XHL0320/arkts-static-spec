# 7.26 Shift Expressions - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 10 | 10 | 0 | 100% |
| **总计** | **22** | **22** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_26_001_PASS_INT_SHIFT_BASIC | int <<, >>, >>> 基本编译 | ✅ |
| 002 | EXP_07_26_002_PASS_LONG_SHIFT_BASIC | long <<, >>, >>> 基本编译 | ✅ |
| 003 | EXP_07_26_003_PASS_BIGINT_SHIFT | bigint <<, >> 编译（无 >>>） | ✅ |
| 004 | EXP_07_26_004_PASS_BYTE_SHORT_PROMOTION | byte/short → int 提升编译 | ✅ |
| 005 | EXP_07_26_005_PASS_SHIFT_GROUPING | 左结合链式移位编译 | ✅ |
| 006 | EXP_07_26_006_PASS_FLOAT_DOUBLE_TRUNCATION | float/double 截断后移位编译 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 007 | EXP_07_26_021_FAIL_BIGINT_UNSIGNED_RIGHT | bigint >>> 编译错误 | ✅ (expected error) |
| 008 | EXP_07_26_022_FAIL_BIGINT_NUMERIC_MIXED | bigint + int 混合编译错误 | ✅ (expected error) |
| 009 | EXP_07_26_023_FAIL_SHIFT_STRING | string << int 编译错误 | ✅ (expected error) |
| 010 | EXP_07_26_024_FAIL_SHIFT_BOOLEAN | boolean << int 编译错误 | ✅ (expected error) |
| 011 | EXP_07_26_025_FAIL_SHIFT_OBJECT | Object >> int 编译错误 | ✅ (expected error) |
| 012 | EXP_07_26_026_FAIL_NON_NUMERIC_BOTH | string >>> string 编译错误 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 013 | EXP_07_26_031_RUNTIME_INT_SHIFT_LEFT | int << 左移基本值（5<<2=20, -3<<2=-12, 1<<0=1） | 5 | ✅ |
| 014 | EXP_07_26_032_RUNTIME_INT_SIGNED_RIGHT | int >> 符号扩展（20>>2=5, -20>>2=-5, -1>>31=-1） | 6 | ✅ |
| 015 | EXP_07_26_033_RUNTIME_INT_UNSIGNED_RIGHT | int >>> 零扩展（-1>>>31=1, -1>>>1=2147483647） | 5 | ✅ |
| 016 | EXP_07_26_034_RUNTIME_LONG_SHIFT | long <<, >>, >>> 值验证 | 5 | ✅ |
| 017 | EXP_07_26_035_RUNTIME_INT_SHIFT_DISTANCE_MASK | int 移位距离掩码 0x1f（1<<32=1, 1<<33=2） | 6 | ✅ |
| 018 | EXP_07_26_036_RUNTIME_LONG_SHIFT_DISTANCE_MASK | long 移位距离掩码 0x3f（1<<64=1, 1<<65=2） | 5 | ✅ |
| 019 | EXP_07_26_037_RUNTIME_INT_SHIFT_LEFT_OVERFLOW | int << 溢出（1<<31=MIN_INT, MAX_INT<<1=-2） | 5 | ✅ |
| 020 | EXP_07_26_038_RUNTIME_BIGINT_SHIFT | bigint <<, >> 值+大数（1n<<100n=2^100） | 6 | ✅ |
| 021 | EXP_07_26_039_RUNTIME_SHIFT_NEGATIVE_DISTANCE | 负移位距离掩码（1<<-1=1<<31, 1L<<-1=MIN_LONG） | 5 | ✅ |
| 022 | EXP_07_26_040_RUNTIME_UNSIGNED_RIGHT_FORMULA | >>> 公式验证：(n>>s)+(2<<~s) 对 int/long 均成立 | 5 | ✅ |

## 执行过程异常修复记录

1. **移位运算符类型覆盖完整**：ArkTS 实现了与 Java 完全一致的移位运算规则。int/long/byte/short/float/double 全部支持三个移位运算符（<<, >>, >>>）；bigint 支持 << 和 >>，但不支持 >>>（编译时错误）；byte/short → int 提升（左操作数自动提升为 int）；double → long, float → int 截断（浮点操作数先截断再移位）。
2. **移位距离掩码规则与 Java 一致**：int LHS 仅取 RHS 低 5 位（掩码 0x1f），`1 << 32 = 1 << 0 = 1`；long LHS 仅取 RHS 低 6 位（掩码 0x3f），`1L << 64 = 1L << 0 = 1`；负距离 `1 << -1 = 1 << 31 = MIN_INT`（-1 & 0x1f = 31）。与 Java 行为完全一致。
3. **>>> 公式验证通过**：Spec 定义的 >>> 公式对所有测试值成立：int 类型 `n >>> s = (n >> s) + (2 << ~s)`；long 类型 `n >>> s = (n >> s) + (2L << ~s)`。对负数 n 和不同 s 值均验证通过。
4. **bigint 移位特点**：bigint 移位无距离掩码限制（与 int/long 不同）；bigint 右移是带符号的（算术右移），-5n >> 1n = -3n（floor(-2.5) = -3）；bigint 左移大数 `1n << 100n = 1267650600228229401496703205376n`；bigint 不支持 >>>（编译时错误）。
5. **左结合性**：移位运算符左结合（left-to-right）：`a << b >> c = (a << b) >> c`。
6. **无 long 字面量后缀**：ArkTS 不支持 Java 风格的 `L` 后缀（`8L`），需要使用 `let v: long = 8` 变量声明来创建 long 类型值。

## 后续运行命令

```bash
SECTIONS="7.26_Shift_Expressions" bash run_expressions_cases_wsl.sh
```
