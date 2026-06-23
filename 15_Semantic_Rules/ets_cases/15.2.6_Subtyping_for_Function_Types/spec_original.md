# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.2.6 Subtyping for Function Types

Function type F with parameters FP1 , . . . , FPm , rest parameter FPrest (if present) and return type FR is a _subtype _of function type S with parameters SP1 , . . . , SPn , rest parameter SPrest (if present) and return type SR if **all **of the following conditions are met:

• Number of optional and required parameters of F (m) is equal or less than number of optional and required parameters of S (n).

• Number of required parameters of F is equal or less than number of required paramers of S.

• If the rest parameter FPrest is present then SPrest is present.

• For each i <= m, type of SPi is a subtype of type of FPi .

• If the rest parameter FPrest is present:

**– **For each i > m, parameter type SP must be a subtype of the element type of type of FPrest.

**– **Type of SPrest should be a subtype of type of FPrest.

• The resultant type FR is a subtype of SR.

1 class Base {}

2 class Derived extends Base {}

3

4 function check(

5 bb : (p : Base) => Base,

6 bd : (p : Base) => Derived,

7 db : (p : Derived) => Base,

8 dd : (p : Derived) => Derived 9 ) {

10 bb = bd

11 /* OK: identical parameter types, and covariant return type */

12 bb = dd

13 /* compile-time error, parameter types are not contravariant */

14 db = bd

15 /* OK: contravariant parameter types, and covariant return type */

16

17 let f : (p : Base , n: number) => Base = bb

18 /* OK: subtype has less parameters */

19

20 let g : () => Base = bb

21 _/* compile-time error, less parameters than expected */ _22 }

23

24 let foo : (x? : number , y? : string) => void = () : void => {} // OK: m <= n

25 foo = (p? : number) : void => {} // OK: m <= n

26 foo = (p1? : number , p2? : string) : void => {} // OK: Identical types

27 foo = (p : number) : void => {}

28 // Compile-time error, 1st parameter in type is optional but mandatory in lambda

29 foo = (p1 : number , p2? : string) : void => {}

30 // Compile-time error, 1st parameter in type is optional but mandatory in lambda
