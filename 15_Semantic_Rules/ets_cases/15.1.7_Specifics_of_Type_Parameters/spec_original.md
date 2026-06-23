# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.1.7 Specifics of Type Parameters

If the type of a left-hand-side expression in _assignment-like context _is a type parameter, then it provides no additional information for type inference even where a type parameter constraint is set.

If the _target type _of an expression is a type parameter, then the type of the expression is inferred as the type of a standalone expression.

The semantics is represented in the example below:

1 class C<T extends number> {

2 constructor (x : T) {} 3 }

4

5 new C(1) // Compile-time error

The type of ' 1 ' in the example above is inferred as int (default type of an integer literal). The expression is considered

new C(1) and causes a compile-time error because int is not a subtype of number (type parameter constraint). Explicit type argument new C(1) must be used to fix the code.
