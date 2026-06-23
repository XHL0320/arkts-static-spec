# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.2 Subtyping

_Subtype _relationship between types S and T, where S is a subtype of T (recorded as S<:T), means that any object of type S can be safely used in any context to replace an object of type T. The opposite relation (recorded as T:>S) is called _supertype _relationship. Each type is its own subtype and supertype (S<:S and S:>S).

By the definition of S<:T, type T belongs to the set of _supertypes _of type S. The set of _supertypes _includes all _direct supertypes _(discussed in subsections), and all their respective supertypes. More formally speaking, the set is obtained by reflexive and transitive closure over the direct supertype relation.

The terms subclass, subinterface, superclass, and _superinterface _are used in the following sections as synonyms for _subtype _and _supertype _when considering non-generic classes, generic classes, or interface types.

If a relationship of two types is not described in one of the following sections, then the types are not related to each other. Specifically, two _Resizable Array Types_and two _Tuple Types_are not related to each other, except where they are identical (see Type Identity).

1 class Base {}

2 class Derived extends Base {}

3

4 function not_a_subtype (

5 ab : Array<Base> , ad : Array<Derived> ,

6 tb : [Base, Base], td : [Derived, Derived], 7 ) {

8 ab = ad // Compile-time error

9 tb = td _// Compile-time error _10 }
