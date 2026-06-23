# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.1.4 Specifics of Numeric Operator Contexts

The postfix and prefix increment and decrement operators evaluate byte and short operands without widening. It is also true for an assignment operator (considering assignment as a binary operator).

For other numeric operators, the operands of unary and binary numeric expressions are widened to a larger numeric type. The minimum type is int. None of those operators evaluates values of types byte and short without widening. Details of specific operators are discussed in corresponding sections of the Specification.
