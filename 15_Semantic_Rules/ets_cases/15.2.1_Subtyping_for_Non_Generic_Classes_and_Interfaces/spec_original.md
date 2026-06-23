# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.2.1 Subtyping for Non-Generic Classes and Interfaces

S for non-generic classes and interfaces is a direct _subclass _or _subinterface _of T (or of Object type) when one of the following conditions is true:

• Class S is a _direct subtype _of class T (S<:T) if T is mentioned in the extends clause of S (see Class Extension Clause):

1 // Illustrating S<:T

2 class T {}

3 class S extends T {}

4 function foo(t : T) {}

5

6 // Using T

7 foo(new T)

8

9 // Using S (S<:T)

10 foo(new S)

• Class S is a _direct subtype _of class Object (S<:Object) if S has no Class Extension Clause:

1 // Illustrating S<:Object

2 class S {}

3 function foo(o : Object) {}

4

5 // Using Object

6 foo(new Object)

7

8 // Using S (S<:Object)

9 foo(new S)

• Class S is a _direct subtype _of interface T (S<:T) if T is mentioned in the implements clause of S (see Class Implementation Clause):

1 // Illustrating S<:T

2 // S is class, T is interface

3 interface T {}

4 class S implements T {}

5 function foo(t : T) {}

6 let s : S = new S

7

8 // Using T

9 let t : T = s

10 foo(t)

11

12 // Using S (S<:T)

13 foo(s)

• Interface S is a _direct subtype _of interface T (S<:T) if T is mentioned in the extends clause of S (see Superin- terfaces and Subinterfaces):

1 // Illustrating S<:T

2 // S is interface, T is interface

3 interface T {}

4 interface S extends T {}

(continues on next page)



(continued from previous page)

5 function foo(t : T) {}

6 let t : T

7 let s : S

8

9 // Using T

10 class A implements T {}

11 t = new A

12 foo(t)

13

14 // Using S (S<:T)

15 class B implements S {}

16 s = new B

17 foo(s)

• Interface S is a _direct subtype _of class Object (S<:Object) if S has no extends clause (see Superinterfaces and Subinterfaces).

1 // Illustrating subinterface of Object

2 interface S {}

3 function foo(o : Object) {}

4

5 // Using Object

6 foo(new Object)

7

8 // Using subinterface of Object

9 class A implements S {}

10 let s : S = new A;

11 foo(s)
