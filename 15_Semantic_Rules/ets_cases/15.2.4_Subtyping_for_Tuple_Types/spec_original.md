# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.2.4 Subtyping for Tuple Types

Any tuple type is a subtype of type Tuple (see Type Tuple).

Tuple type T (P1 , . . . , Pn ) is a subtype of type S (P1 , . . . , Pm ), where n ≥ m. I.e., a tuple type is a subtype of a tuple type with fewer identical constituent types (Type Identity).

1 function foo(t1 : [number], t2 : [string , number]) {

2 let a: [] = t1 // OK

3 let b : [string] = t2 // OK

4

5 t1 = t2 // Compile-time error

6 t2 = t1 // Compile-time error

7

8 let d : [string , number , boolean] = ["a" , 1 , true]

9 let t2 = d // OK

10 let d = t2 _// Compile-time error _11 }
