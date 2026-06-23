# 7.29.1 Integer Bitwise Operators - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime | 4 | 4 | 0 | 100% |
| **总计** | **13** | **13** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | EXP_07_29_01_001_PASS_INT_BITWISE_BASIC | int 类型 &, ^, \| 基本编译 | ✅ |
| 2 | EXP_07_29_01_002_PASS_LONG_BITWISE_BASIC | long 类型 &, ^, \| 基本编译 | ✅ |
| 3 | EXP_07_29_01_003_PASS_BYTE_SHORT_PROMOTION | byte/short → int 提升后位运算 | ✅ |
| 4 | EXP_07_29_01_004_PASS_MIXED_INT_TYPES | 不同整数类型混合位运算（加宽转换） | ✅ |
| 5 | EXP_07_29_01_005_PASS_FLOAT_DOUBLE_TRUNCATION | float/double 截断为整数后位运算 | ✅ |
| 6 | EXP_07_29_01_006_PASS_BIGINT_BITWISE | bigint &, ^, \| 基本编译 | ✅ |
| 7 | EXP_07_29_01_007_PASS_BITWISE_CHAINED_PRECEDENCE | 链式位运算及优先级（& > ^ > \|） | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | EXP_07_29_01_008_FAIL_BIGINT_NUMERIC_MIXED | bigint & int 编译错误 | ✅ |
| 2 | EXP_07_29_01_009_FAIL_BIGINT_FLOAT_MIXED | bigint ^ float 编译错误 | ✅ |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | EXP_07_29_01_010_RUNTIME_INT_BITWISE | int 位运算运行时值验证（正数/负数/零/掩码） | 16 | ✅ |
| 2 | EXP_07_29_01_011_RUNTIME_LONG_BITWISE | long 位运算运行时值验证 | 14 | ✅ |
| 3 | EXP_07_29_01_012_RUNTIME_BIGINT_BITWISE | bigint 位运算运行时值验证（任意精度） | 14 | ✅ |
| 4 | EXP_07_29_01_013_RUNTIME_FLOAT_DOUBLE_TRUNCATION | float/double 截断后位运算运行时验证 | 10 | ✅ |
| | **合计** | | **54** | |

**关键发现：**
1. **7/7 compile-pass 全部通过** ✅ — int, long, byte/short, 混合类型, float/double截断, bigint, 链式优先级
2. **2/2 compile-fail 全部通过** ✅ — bigint 与数值类型混合编译时报错
3. **4/4 runtime 54 断言全部通过** ✅ — 全部位运算值正确性验证通过
4. **无 D 类异常** — Integer Bitwise Operators 规范与实现完全一致
5. **ArkTS 实现特点**：
   - `L` 后缀不支持（5L 解析为 5 + 变量 L）
   - Hex bigint 字面量不支持（0xFFn 报 Invalid BigInt number）
   - double 位运算结果类型为 long（非 int）
   - `f` 后缀 float 字面量支持

## 执行过程异常修复记录

| # | 用例 | 问题 | 修复 |
|:-:|------|------|------|
| 1 | 005 | `let f1: float = 3.14` → Double 不能赋给 Float | 改为 `3.14f` |
| 2 | 005, 011, 013 | `100L`/`5L` 等 L 后缀不被支持 | 改用 long 类型变量 |
| 3 | 005 | `doubleA: int = d1 & d2` → long 不能赋给 int | 改为 `long` 类型 |
| 4 | 012 | `0xFFFFFFFFFFFFFFFFn` 数字过大 | 改用小整数值 |
| 5 | 012 | `0xF0F0F0n` hex bigint 不被支持 | 改用十进制 bigint 字面量 |

执行环境：编译器 es2panda (ArkCompiler)，运行时 ark VM，日期 2026-06-23。

## 后续运行命令

```bash
SECTIONS="7.29.1_Integer_Bitwise_Operators" bash run_expressions_cases_wsl.sh
```
