# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.2.5 Subtyping for Union Types

A union type U participates in a subtyping relationship (seeSubtyping) in the following cases:

Union type U (U1 | . . . | Un ) is a subtype of type T if each Ui is a subtype of T.
1 let s1 : "1" | "2" = "1"

2 let s2 : string = s1 // OK

3

4 let a: string | number | boolean = "abc"

5 let b : string | number = 42

6 a = b // OK

7 b = a // Compile-time error, boolean is absent is 'b '

8

9 class Base {}

10 class Derived1 extends Base {}

11 class Derived2 extends Base {}

12

13 let x: Base = ...

14 let y : Derived1 | Derived2 = ...

15

16 x = y // OK, both Derived1 and Derived2 are subtypes of Base

17 y = x // Compile-time error

18

19 let x: Base | string = ...

20 let y : Derived1 | string ...

21 x = y // OK, Derived1 is subtype of Base

22 y = x // Compile-time error

Type T is a subtype of union type U (U1 | . . . | Un ) if for some i T is a subtype of Ui .
1 let u: number | string = 1 // OK

2 u = "aa" // OK

3 u = 1.0 // OK, 1 .0 is of type 'number ' (double)

4 u = 1 // Compile-time error, type 'int ' is not a subtype of 'number '

5 u = true // Compile-time error

1

. Note

If union type normalization produces a single type, then this type is used instead of the initial set of union types. This concept is represented in the example below:

let u: "abc" | "cde" | string // type of 'u ' is string

1

2

3

4

5

6

7

8

9

10

11

12

13

14

15

16

17

18



. Note

A case of two union types is clarified as follows: union type U2 (U21 | . . . | U2n) is a subtype of union type U1 (U11 | . . . | U1m) if Step 1 applies first, followed by Step 2 applied to every type of U2.

class T1 {}

class T2 {}

class T3 extends T1 {} // T3 <: T1

class T4 extends T2 {} // T4 <: T2 class T5 {}

type U1 = T1 | T2

type U2 = T3 | T4 | T5

function foo (u1 : U1 , u2 : U2) { u1 = u2

// step 1 . U2 to be a subtype of U1 iff T3 <: U1 and T4 <: U1 and T5 <: U1 // step 2 .

// T3 to be a subtype of T1 or T2 - T1 true

// T4 to be a subtype of T1 or T2 - T2 true

// T5 to be a subtype of T1 or T2 - false for both

// Compile-time error as a result }
