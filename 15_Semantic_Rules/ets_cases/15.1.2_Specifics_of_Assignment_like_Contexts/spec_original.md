# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.1.2 Specifics of Assignment-like Contexts

_Assignment-like context (see Assignment-like Contexts) can be considered as an assignment x = expr, where x is a left-hand-side expression, and expr is a right-hand-side expression. E.g., there is an implicit assignment of expr to the formal parameter foo in the call foo(expr), and implicit assignments to elements or properties inArray Literal _and Object Literal.

_Assignment-like context _is specific in that the type of a left-hand-side expression is known, but the type of a right-hand- side expression is not necessarily known in the context as follows:

• If the type of a right-hand-side expression is known from the expression itself, then the Assignability_ _check is performed as in the example below:

1 function foo(x : string , y : string) {

2 x = y _// OK, assignability is checked _3 }

• Otherwise, an attempt is made to apply the type of the left-hand-side expression to the right-hand-side expression. A compile-time error occurs if the attempt fails as in the example below:

1 function foo(x : int , y : double []) {

2 x = 1 // OK, type of '1 ' is inferred from type of 'x '

3 y = [ 1 , 2] _// OK, array literal is evaluated as [1.0, 2.0] _4 }
