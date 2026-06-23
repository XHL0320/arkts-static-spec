# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.2.2 Subtyping for Generic Classes and Interfaces

A _generic class _or _generic interface _is declared as C <F1 , . . . , Fn >, where n>0 is a _direct subtype _of another generic class or interface T, if one of the following conditions is true:

• T is a _direct superclass _of C <F1 , . . . , Fn > mentioned in the extends clause of C:

1 // T<U, V> is direct superclass of C<U,V>

2 // T<U, V> >: C<U, V>

3

4 class T<U, V> {

5 foo(p : U|V) : U| V { return p } 6 }

7

8 class C<U, V> extends T<U, V> {

9 bar(u : U) : U { return u } 10 }

11

12

13 // OK, exact match

(continues on next page)

(continued from previous page)

14 let t : T<int , boolean> = new T<int , boolean>

15 let c : C<int , boolean> = new C<int , boolean>

16

17

18 // OK, assigning to direct superclass

19 t = new C<int , boolean>

20

21 // Compile-time error, cannot assign to subclass

22 c = new T<int , boolean>

• T is one of direct superinterfaces of C <F1 , . . . , Fn > (see Superinterfaces and Subinterfaces):

1 // Interface I<U, V> is direct superinterface

2 // of J<U,V>, X<U, V>

3

4 interface I<U, V> {

5 foo(u : U) : U;

6 bar(v : V) : V; 7 }

8

9 // J<U, V> <: I<U, V>

10 // since J extends I

11 interface J<U, V> extends I<U, V> 12 {

13 foo(u : U) : U

14 bar(v : V) : V

15

16 foo1(p : U|V) : U| V

17 }

18

19 // X<U, V> <: I<U, V>

20 // since X implements I

21 class X<U, V> implements I<U,V> {

22 foo(u : U) : U { return u }

23 bar(v : V) : V { return v } 24 }

25

26 // Y<U,V> <: J<U, V> (directly)

27 // Also Y<U, V> <: I<U, V> (transitively)

28 class Y<U, V> implements J<U,V> {

29 foo(u : U) : U { return u }

30 bar(v : V) : V { return v }

31

32 foo1(p : U|V) : U| V { return p }

33 }

34

35 let i : I<int , boolean>

36 let j : J<int , boolean>

37 let x = new X<int , boolean>

38 let y = new Y<int , boolean>

39

40 // OK, assigning to direct supertypes

(continues on next page)

(continued from previous page)

41 i = x

42 j = y

43

44 // OK, assigning subinterface (J<:I)

45 i = j

46

47 // Compile-time error, cannot assign superinterface (I>:JJ

48 j = i

• T is type Object (C<:Object) if C <F1 , . . . , Fn > is either a generic class type with no direct superclasses, or a generic interface type with no direct superinterfaces:

1 // Object is direct superclass and for C<U,V>

2 _// and direct superinterface for I<U,V> _3 //

4 class C<U, V> {

5 foo(u : U) : U { return u }

6 bar(v : V) : V { return v } 7 }

8 interface I<U, V> {

9 foo(u : U) : U { return u }

10 bar(v : V) : V { return v } 11 }

12

13 let o: Object = new Object

14 let c : C<int , boolean> = new C<int , boolean>

15 let i : I<int , boolean>

16

17 // // example1 - C<U,V> <: Object

18 function example1(o : Object) {}

19

20 // OK, example(Object)

21 example1(o)

22 // OK, C<int, boolean> <: Object

23 example1(c)

24

25 // // example2 - I<U,V> <: Object

26 function example2(o : Object) {}

27 class D<U, V> implements I<U, V> {}

28 i = new D<int , boolean>

29

30 // OK, example2(Object)

31 example2(o)

32 // OK, I<int, boolean> <: Object

33 example2(i)

The direct supertype of a type parameter is the type specified as the constraint of that type parameter.

If type parameters of a generic class or an interface have a variance specified (see Type Parameter Variance), then the subtyping for instantiations of the class or interface is determined in accordance with the variance of the appropriate type parameter. For example, if a generic class G<in T1,out T2> is defined, S>:U and T<:V, then G<S,T> <: G<U, V>. It is represented by the following code:

1 // Subtyping illustration for a generic with parameter variance

2

3 // U1 <: U0

4 class U0 {}

5 class U1 extends U0 {}

6

7 // Generic with contravariant parameter

8 class E<in T> {}

9

10 let e0 : E<U0> = new E<U1> // Compile-time error, E is subtype of E

11 let e1 : E<U1> = new E<U0> // OK, E is supertype for E

12

13 // Generic with covariant parameter

14 class F<out T> {}

15

16 let f0 : F<U0> = new F<U1> // OK, F is supertype for F

17 let f1 : F<U1> = new F<U0> // Compile-time error, F is subtype of F
