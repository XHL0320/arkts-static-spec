# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.1.1 Type of Standalone Expression

_Standalone expression _(see Type of Expression) is an expression for which there is no target type in the context where the expression is used.

The type of a _standalone expression _is determined as follows:

• In case of Numeric Literals, the type is the default type of a literal:

**– **Type of _Integer Literals_is int or long;

**– **Type of _Floating-Point Literals_is double or float.

• In case of Constant Expressions, the type is inferred from operand types and operations.

• In case of an Array Literal, the type is inferred from the elements (see Array Type Inference from Types of Elements).

• Otherwise, a compile-time error occurs. Specifically, a compile-time error occurs if an _object literal _is used as a standalone expression.

The situation is represented in the example below:

1 function foo() {

2 1 // type is 'int '

3 1.0 // type is 'number '

4 [1.0 , 2.0] // type is number []

5 [1 , "aa"] _// type is (int | string) _6 }

283
