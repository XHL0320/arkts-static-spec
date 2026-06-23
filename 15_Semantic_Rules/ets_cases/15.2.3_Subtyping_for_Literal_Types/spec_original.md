# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.2.3 Subtyping for Literal Types

Any string literal type (see String Literal Types) is _subtype _of type string. It afects overriding as shown in the example below:

1 class Base {

2 foo(p : "1") : string { return "42" } 3 }

4 class Derived extends Base {

5 override foo(p : string) : "1" { return "1" } 6 }

7 // Type "1" <: string

8

9 let base : Base = new Derived

10 let result: string = base.foo("1")

11 /* Argument "1" (value) is compatible to type "1" and to type string in

12 the overridden method

13 _Function result of type string accepts "1" (value) of literal type "1" _14 */

Literal type null (see Literal Types) is a subtype and a supertype to itself. Similarly, literal type undefined is a subtype and a supertype to itself.
