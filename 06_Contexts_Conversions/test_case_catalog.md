# 06 Contexts and Conversions Test Case Catalog

**总用例数：** 253（111P + 60F + 82R）

| Section | compile-pass | compile-fail | runtime | Total |
|---|---:|---:|---:|---:|
| 6.1 Assignment-like Contexts | 15 | 15 | 12 | 42 |
| 6.2 String Operator Contexts | 10 | 5 | 10 | 25 |
| 6.3 Numeric Operator Contexts | 12 | 6 | 9 | 27 |
| 6.3.1 Numeric Relational/Equality Conversions | 12 | 6 | 10 | 28 |
| 6.3.2 char Relational/Equality Conversions | 12 | 5 | 9 | 26 |
| 6.4 Implicit Conversions | 10 | 5 | 8 | 23 |
| 6.4.1 Widening Numeric Conversions | 10 | 5 | 8 | 23 |
| 6.4.2 Widening Numeric to Union | 8 | 4 | 4 | 16 |
| 6.4.3 Enumeration to Numeric | 9 | 4 | 4 | 17 |
| 6.4.4 Enumeration to string | 5 | 3 | 2 | 10 |
| 6.5 Numeric Casting Conversions | 8 | 2 | 6 | 16 |
| **Total** | **111** | **60** | **82** | **253** |

## 覆盖摘要

- 6.1：声明、赋值、调用、返回、复合 literal、widening/narrowing、运行时集成。
- 6.2：string context 中整数、浮点、boolean、null、undefined、enum、reference、union nullish 转换。
- 6.3：unary/exponentiation/multiplicative/additive/shift/bitwise/conditional/compound numeric contexts。
- 6.3.1：numeric relational/equality 的 widening、enum relational/equality、边界值。
- 6.3.2：char 与 byte/int/long/double/char 的 relational/equality 转换。
- 6.4：widening numeric、enum numeric/string、union widening、nullish/boolean string conversion 集成。
- 6.4.1：byte/short/int/long/float widening 全表。
- 6.4.2：numeric to union 的 literal inference、subtyping、唯一更大成员、歧义失败。
- 6.4.3：numeric enum 到 int/long/double/number/union/call/return/arithmetic。
- 6.4.4：string enum 到 string/string union/call/return/assignment，非 string 目标失败。
- 6.5：`.toXxx()` numeric casting、向零舍入、截断、链式转换。
