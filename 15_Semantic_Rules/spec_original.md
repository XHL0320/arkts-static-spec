# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---
CHAPTER

FIFTEEN

SEMANTIC RULES

This Chapter contains semantic rules to be used throughout this Specification document. The description of the rules is more or less informal. Some details are omitted to simplify the understanding.

15.1 Semantic Essentials

The section gives a brief introduction to the major semantic terms and their usage in several contexts.

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

15.1.3 Specifics of Variable Initialization Context

If the variable or a constant declaration (see Variable and Constant Declarations) has an explicit type annotation, then the same rules as for _assignment-like contexts _apply. Otherwise, there are two cases for let x = expr (see Type Inference from Initializer) as follows:

• The type of the right-hand-side expression is known from the expression itself, then this type becomes the type of the variable as in the example below:

1 function foo(x : int) {

2 let y = x _// type of 'y' is 'int ' _3 }

• Otherwise, the type of expr is evaluated as type of a standalone expression as in the example below:

1 function foo() {

2 let x = 1 // x is of type 'int ' (default type of '1 ')

3 let y = [ 1 , 2] _// x is of type 'number [] ' _4 }

15.1.4 Specifics of Numeric Operator Contexts

The postfix and prefix increment and decrement operators evaluate byte and short operands without widening. It is also true for an assignment operator (considering assignment as a binary operator).

For other numeric operators, the operands of unary and binary numeric expressions are widened to a larger numeric type. The minimum type is int. None of those operators evaluates values of types byte and short without widening. Details of specific operators are discussed in corresponding sections of the Specification.

15.1.5 Specifics of String Operator Contexts

If one operand of the binary operator '+ ' is of type string, then the string conversion applies to another non-string operand to convert it to string (see _String Concatenation _and String Operator Contexts).

15.1.6 Other Contexts

The only semantic rule for all other contexts, and specifically for Overriding, is to use Subtyping.

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

15.1.8 Semantic Essentials Summary

Major semantic terms are listed below:

• Type of Expression;

• Assignment-like Contexts;

• Type Inference from Initializer;

• Numeric Operator Contexts;

• String Operator Contexts;

• Subtyping;

• Assignability;

• Overriding;

• Overloading;

• Type Inference.

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

15.2.7 Subtyping for Fixed-Size Array Types

If a fixed-size array contains elements of reference types (see Reference Types), then the subtyping of elements is based on the subtyping of element types. It is formally described as follows:

FixedSize <: FixedSize if B <: A.

The situation is represented in the following example:

1 let x: FixedArray<string> = ["aa" , "bb" , "cc"]

2 let y : FixedArray<Object> = x // OK, as string <: Object

3 x = y // Compile-time error

The subtyping allows array assignments that can cause an ArrayStoreError at runtime if a value of a type that is not a subtype of the element type of one array is put into that array by using a subtype of the element type of another array. Type safety is ensured by runtime checks performed by the runtime system as represented in the example below:

1 class C {}

2 class D extends C {}

3

4 function foo (ca : FixedArray<C>) {

5 ca [0] = new C() _// ArrayStoreError if ca refers to FixedArray _6 }

7

8 let da : FixedArray<D> = [new D()]

9

10 foo(da) // leads to runtime error in 'foo '

15.2.8 Subtyping for Intersection Types

Intersection type I defined as (I1 & . . . & In ) is a subtype of type T if Ii is a subtype of T for some i.

Type T is a subtype of intersection type (I1 & . . . & In ) if T is a subtype of each Ii .

15.2.9 Subtyping for Difference Types

Diference type A - B is a subtype of T if A is a subtype of T.

Type T is a subtype of the diference type A - B if T is a subtype of A, and no value belongs both to T and B (i.e., T & B = never).

15.3 Type Identity

_Identity _relation between two types means that the types are indistinguishable. Identity relation is symmetric and transitive. Identity relation for types A and B is defined as follows:

• Array types A = T1 [] and B = Array are identical if T1 and T2 are identical.

• Tuple types A = [T1 , T2 , ..., Tn ] and B = [U1 , U2 , ..., Um ] are identical on condition that:

**– **n is equal to m, i.e., the types have the same number of elements;

**– **Every _T_i is identical to _U_i for any _i _in 1 . . n.

• Union types A = T1 | T2 | ... | Tn and B = U1 | U2 | ... | Um are identical on condition that:

**– **n is equal to m, i.e., the types have the same number of elements;

**– **_U_i in U undergoes a permutation after which every _T_i is identical to _U_i for any _i _in 1 . . n.

• Types A and B are identical if A is a subtype of B (A<:B), and B is at the same time a subtype of A (A:>B).

. **Note **

_Type Alias Declaration_creates no new type but only a new name for the existing type. An alias is indistinguishable from its base type.

1

2

3

4

5

6

7

. **Note **

If a generic class or an interface has a type parameter T while its method has its own type parameter T, then the two types are diferent and unrelated.

class A<T> { data : T

constructor (p: T) { this.data = p } // OK, as here 'T' is a class type parameter

method <T>(p : T) {

this.data = p // Compile-time error as 'T' of the class is different from 'T' of␣ ˓→ the method

}

}

15.4 Assignability

Type T1 is assignable to type T2 if:

• T1 is a subtype of T2 (see Subtyping); or

• _Implicit conversion _(see Implicit Conversions) is present that allows converting a value of type T1 to type T2 .

_Assignability _relationship is asymmetric, i.e., that T1 is assignable to T2 does not imply that T2 is assignable to type T1 .

15.5 Invariance, Covariance and Contravariance

Variance is how subtyping between types relates to subtyping between derived types, including generic types (See Generics), member signatures of generic types (type of parameters, return type), and overriding entities (See Override- Compatible Signatures). Variance can be of three kinds:

• Covariance,

• Contravariance, and

• Invariance.

_Covariance _means it is possible to use a type which is more specific than originally specified.

_Contravariance _means it is possible to use a type which is more general than originally specified.

_Invariance _means it is only possible to use the original type, i.e., there is no subtyping for derived types.

Valid and invalid usages of variance are represented in the examples below. If class Base is defined as follows:

1 class Base {

2 method_one(p : Base) : Base {}

3 method_two(p : Derived) : Base {}

4 method_three(p : Derived) : Derived {} 5 }

—then the code below is valid:

1 class Derived extends Base {

2 // invariance: parameter type and return type are unchanged

3 override method_one(p : Base) : Base {}

4

5 // covariance for the return type: Derived is a subtype of Base

6 override method_two(p : Derived) : Derived {}

7

8 // contravariance for parameter types: Base is a supertype for Derived

9 override method_three(p : Base) : Derived {} 10 }

On the contrary, the following code causes compile-time errors:

1 class Derived extends Base {

2

3 // covariance for parameter types is prohibited

4 override method_one(p : Derived) : Base {}

5

6 // contravariance for the return type is prohibited

7 override method_three(p : Derived) : Base {} 8 }

15.6 Compatibility of Call Arguments

The following semantic checks must be performed to arguments from the left to the right when checking the validity of any function, method, constructor, or lambda call:

Step 1: All arguments in the form of a spread expression (see Spread Expression) that spreads an array literal (see Array Literal) are to be linearized recursively to ensure that no spread expression of that form remains at the call site.

Step 2: The following checks are performed on all arguments from left to right, starting from arg_pos = 1 and par_pos = 1:

if parameter at position par_pos is of non-rest form then

if _T_arg_pos <: _T_par_pos then increment arg_pos and par_pos else a compile-time error occurs, exit Step 2

else // parameter is of rest form (see Rest Parameter) if parameter is of rest_array_form then

if argument is a spread expression of an array of some type _U _and ‘U’ <: _T_rest_array_type then increment arg_pos else if _T_arg_pos <: _T_rest_array_type then increment arg_pos else increment par_pos

else // parameter is of rest_tuple_form

for _rest_tuple_pos _in 1 .. rest_tuple_types.count do

if _T_arg_pos <: _T_rest_tuple_pos then increment arg_pos and _rest_tuple_pos _else if rest_tuple_pos < rest_tuple_types.count then increment rest_tuple_pos else a compile-time error occurs, exit Step 2

end increment par_pos end

end

The checks are represented in the examples below:

1 function call ( . . .p : Object []) {}

2 call ( [1 , "str" , true], [ 123]) // Initial call form

3 call (1 , "str" , true , 123) // To be unfolded into the form with

4 // no spread expressions

5

6 let arr : number [] = [1 , 2 , 3]

7 tricky_call ( . . .arr) // Type 'number ' is assignable to 'Object ' , and a new

8 // array of type 'Object [] ' is created from elements

9 // of the array of numbers

10

11 function tricky_call ( . . .p : Object []) {

12 p[0] = true

13 console.log ("Initial array: " , arr)

14 console.log ("Parameter array: " , p) 15 }

16

17 function foo1 (p : Object) {}

18 foo1 (1) // Type of '1 ' must be assignable to 'Object '

19 // p becomes 1

20

21 function foo2 ( . . .p : Object []) {}

22 foo2 (1 , "111") // Types of '1 ' and "111" must be assignable to 'Object '

23 // p becomes array [1, "111"]

24

25 function foo31 ( . . .p : (number|string)[]) {}

26 foo31 ( . . .[1 , "111"]) // Type of array literal [1, "111"] must be assignable to␣ ˓→ (number|string) []

27 // p becomes array [1, "111"]

28

29 function foo32 ( . . .p : [number , string]) {}

30 foo32 ( . . .[1 , "111"]) // Types of '1 ' and "111" must be assignable to 'number ' and 'string (continues on next page)

(continued from previous page)

˓→ ' accordingly

31 // p becomes tuple [1, "111"]

32

33 function foo4 ( p : number []) {}

34 foo4 (1 , [2 , 3]) //

35 // p becomes array [1 , 2 , 3]

15.7 Type Inference

ArkTS supports strong typing but allows not to burden a programmer with the task of specifying type annotations everywhere. A smart compiler can infer types of some entities and expressions from the surrounding context. This technique called _type inference _allows keeping type safety and program code readability, doing less typing, and focusing on business logic. Type inference is applied by the compiler in the following contexts:

• Type Inference for Constant Expressions;

• Variable and constant declarations (see Type Inference from Initializer);

• Implicit generic instantiations (see Implicit Generic Instantiations);

• Function, method or lambda return type (see Return Type Inference);

• Lambda expression parameter type (see Lambda Signature);

• Array literal type inference (see Array Literal Type Inference from Context, and Array Type Inference from Types of Elements);

• Object literal type inference (see Object Literal);

• Smart casts (see Smart Casts and Smart Types).

15.7.1 Type Inference for Constant Expressions

The type of a constant expression (see Constant Expressions) is first inferred from the context, if the context allows. The following contexts allow inference:

• Assignment-like Contexts;

• _Cast Expression _context;

• Numeric Operator Contexts.

If context does not allow to to infer type, the _value default type _is set as follows:

• int for a constant expression of a big integer type (seeSpecifics of Constant Expressions Evaluation) if its value can be represented by a 32-bit number;

• long for a constant expression of a big integer type (seeSpecifics of Constant Expressions Evaluation) if its value can be represented by a 64-bit number;

• double or float for a floating-point constant expression (see_Specifics of Constant Expressions Evaluation_).

Type inference is used only where the _target type _is one of the following:

• Case 1: _Numeric type _(see Numeric Types); or

• Case 2: Union type (see Union Types) containing at least one numeric type.

Case 1: Target type is a numeric type

Where a _target type _is numeric, the type of a constant expression is inferred from the _target type _and the value of the const expression, if one of following conditions is met:

_Target type _is equal to or larger than the value default type; or

Value is an _integer value _that fitting into the range of the target type.

. **Note **

A _floating-point suffix _if present declares a floating-point literal, and no type inference occurs.

If none of the conditions above is met, then the _target type _is not a valid type for the constant expression, and a compile- time error occurs.

Type inference for a numeric _target type _is represented in the examples below:

1 let l : long = 1 // OK, target type is larger than literal default type

2 let b : byte = 127 // OK, integer value fits type 'byte '

3 let f : float = 123f // OK, target type is the same as literal default type

4 let g : double = 11 // OK, target type is larger than literal default type

5

6 b = 63 + 64 // OK, integer value fits type 'byte '

7 b = 1 as short // OK, integer value fits type 'byte '

8 let s : short = -32767 // OK, integer value fits type 'short '

9

10 l = 1.0 // Compile-time error, 'double ' cannot be assigned to 'long '

11 b = 128 // Compile-time error, value is out of range

12 f = 3.14 // Compile-time error, 'double ' cannot be assigned to 'float '

Case 2: Target type is a union type containing at least one numeric type

In the case the _target type _is a union type (N1 | . . . | Nk | . . . | Un ), where k ≥ 1 and Ni is a numeric type, then the inferred literal type is determined as follows:

If no Ni suits the value, then the default type is used;

If only a single Ni suits the value, then Ni is the inferred type;

If several N types suit the value, then the following checks are performed:

• If the value is an integer value, and only one suitable _integer _Ni is present, then this Ni is the inferred type. Otherwise, a compile-time error occurs due to type inference ambiguity.

Type inference for a union target type is represented in the examples below:

1 let b : byte | Object = 127 // inferred type for 127 is 'byte '

2 b = 128 /* inferred type for 128 is 'int ' (default literal type),

3 _which is a subtype of Object _4 */

5

6 let c : byte | string = 127 // inferred type for 127 is 'byte '

(continues on next page)

(continued from previous page)

7 c = 128 /* inferred type for 128 is 'int ' (default literal type),

8 compile-time error as no type in a union is a supertype for

9 _'int ' _10 */

11

12 let d : int | double = 1.0 // inferred type for 1 .0 is 'double '

13 d = 1 // inferred type for 1 is 'int '

14

15 let e : byte | long = 128 // inferred type for 128 is 'long '

16 e = 127 // Compile-time error, type inference ambiguity for 127

17

18 let f : float | double = 3.14 // inferred type is 'double '

19 f = 2f // inferred type is 'float '

20

21 let g : float | double = 3.4e39 // inferred type is 'double '

22 g = 1 // Compile-time error, type inference ambiguity for 1

1

2

3

. Note

If _target type _is a union type that contains no numeric type, then the default type of the literal is used. The following code is valid as numeric types are subtypes of ‘Object’:

let x: Object | string = 1 // OK, instance of type 'int ' is assigned to 'x ' x = 1.0 // OK, instance of type 'double ' is assigned to 'x '

15.7.2 Return Type Inference

A missing function, method, getter, or lambda return type can be inferred from the function, method, getter, or lambda body. A compile-time error occurs if return type is missing from a native function (see Native Functions).

The current version of ArkTS allows inferring return types at least under the following conditions:

• If there is no return statement, or if all return statements have no expressions, then the return type is void (see Type void or undefined). It efectively implies that a call to a function, method, or lambda returns the value undefined.

• If there are _k _return statements (where _k _is 1 or more) with the same type expression R, then R is the return type.

• If there are _k _return statements (where _k _is 2 or more) with expressions of types T1 , ..., Tk , then R is the union type (seeUnion Types) of these types (T1 | . . . | Tk ), and its normalized version (see Union Types Normalization) is the return type. If at least one of return statements has no expression, then type undefined is added to the return type union.

• If a lambda body contains no return statement but at least one throw statement (see throw Statements), then the lambda return type is never (see Type never).

• If a function, a method, or a lambda is async (see_Asynchronous execution_), a return type is inferred by applying the above rules, and the return type T is not Promise, then the return type is assumed to be Promise.

Return type inference is represented in the example below:



1 // Explicit return type

2 function foo() : string { return "foo" }

3

4 // Implicit return type inferred as string

5 function goo() { return "goo" }

6

7 class Base {}

8 class Derived1 extends Base {}

9 class Derived2 extends Base {}

10

11 function bar (condition : boolean) {

12 if (condition)

13 return new Derived1()

14 else

15 return new Derived2() 16 }

17 // Return type of bar will be Derived1|Derived2 union type

18

19 function boo (condition : boolean) {

20 if (condition) return 1 21 }

22 // That is a compile-time error as there is an execution path with no return

_Smart types _can appear in the process of return type inference (see Smart Casts and Smart Types). A compile-time error occurs if an inferred return type is a Type Expressionthat cannot be expressed in ArkTS:

1 class C{}

2 interface I {}

3 class D extends C implements I {}

4

5 function foo(c : C) {

6 return c instanceof I ? c : new D() _// Compile-time error, inferred type is C & I _7 }

15.8 Smart Casts and Smart Types

ArkTS uses the concept of smart casts, meaning that in some cases the compiler can implicitly cast a value of a variable to a type which is more specific than the declared type of the variable. The more specific type is called smart type. _Smart casts _allow keeping type safety, require less typing from programmer and improve performance.

Smart casts are applied to local variables (see Variable and Constant Declarations) and parameters (see Parameter List), except those that are captured and modified in lambdas. Further in the text term _variable _is used for both local variables and parameters.

. Note

Smart casts are not applied to global variables and class fields, as it is difficult to track their values.

A variable has a single declared type, and can have diferent _smart types _in diferent contexts. A _smart type _of variable is always a subtype of its declared type.

_Smart type _is used by the compiler each time the value of a variable is read. It is never used when a variable value is changed.

The usage and benefits of a _smart type _are represented in the example below:

1 class C {}

2 class D extends C {

3 foo() {} 4 }

5

6 function bar(c : C) {

7 if (c instanceof D) {

8 c.foo() _// OK, here smart type of 'c' is 'D', 'foo' is safely called _9 }

10 c.foo () // Compile-time error, 'c' does not have method 'foo'

11 (c as D) .foo() _// no compile-time error, can throw runtime error _12 }

The compiler uses data-flow analysis based on Control-flow Graph_ _to compute smart types (see Computing Smart Types). The following language features influence the computation:

• Variable declarations;

• Variable assignments (a variable initialization is handled as a variable declaration combined with an assignment);

• _instanceof Expression _with variables;

• Conditional statements and conditional expressions that include:

**– **_Equality Expressions _of a variable and an expression that process string literals, null value, and undefined value in a specific way.

**– **_Equality Expressions_of typeof v and a string literal, where v is a variable.

**– **Extended Conditional Expressions.

• Loop Statements.

A _smart type _usually takes the form of a Type Expressionthat can contain types not otherwise represented in ArkTS, namely:

• Intersection Types;

• Difference Types.

15.8.1 Type Expression

The _type _of an entity is conventionally defined as the set of values an entity (e.g., a variable) can take, and the set of operators applicable to that entity. Two types with equal sets of values and operators are considered equal irrespective of a syntactic form used to denote the types.

However, in some cases it is useful to distinguish between equal types with diferent representation or syntactic form. For example, types Object and Object| C are equal but they behave in diferent ways as a context of an Object Literal:



1 class C {

2 num = 1 3 }

4 function foo(x : Object|C) {}

5 function bar(x : Object) {}

6

7 foo({num : 42}} // OK, object literal is of type 'C'

8 bar({num : 42}} // Compile-time error, Object does not have field 'num '

The term _type expression _is used below as notation that consists of type names and operators on types, namely:

• ' | ' for union operator;

• '& ' for intersection operator (see Intersection Types);

• '- ' for diference operator (see Difference Types).

Computing _smart types _is the process of creating, evaluating, and simplifying type expressions.

. Note

_Intersection types _and _difference types _are semantic (not syntactic notions) that cannot be represented in ArkTS.

15.8.2 Intersection Types

An _intersection type _is a type created from other types by using the intersection operator '& '. The values of intersection type A & B are all values that belong to both A and B. The same applies to the set of operations.

Intersection types cannot be expressed directly in ArkTS. Instead, they appear as _smart types _of variables in the process of Computing Smart Typesas represented below:

1 class C {

2 foo() {} 3 }

4 interface I {

5 bar() : void 6 }

7

8 function test(i : I) {

9 if (i instanceof C) {

10 // smart type of 'i ' here is of some subtype of 'C' that implements 'I '

11 // type expression for this type is I & subtype of C

12 i.foo () // OK

13 i.bar() _// OK _14 }

15 }

More details are provided in Subtyping for Intersection Types.

15.8.3 Difference Types

A _difference type _is a type created from two other types by a subtraction operation, i.e., by using the operator '- '. The values of the diference type A - B are all values that belong to type A but not to type B. The same applies to the set of operations.

Diference types in ArkTS cannot be expressed directly. They appear as _smart types _of variables in the process of Computing Smart Types:

1 function foo(x : string | undefined) : number {

2 if (x == undefined) {

3 return 0

4 } else {

5 _// smart type of 'x ' here is (string | undefined - undefined) = string, _6 // hence, string property can be applied to 'x '

7 return x .length 8 }

9 }

This is discussed in detail in Subtyping for Difference Types.

15.8.4 Computing Smart Types

Computing smart types is based on must-alias sets. A _must-alias set _is a set of variables known to have the same value in a given context.

Two maps are used to specify a context (l, s), where:

• l: V → L, map from variables _V _to must-alias sets L;

• s: L → T, map from must-alias sets to smart types _T _ascribed to those sets.

Contexts are computed in relation to nodes of Control-flow Graph. Control-flow graph (CFG) contains the following kinds of nodes:

• Nodes for expressions that have results assigned to variables, including temporary variables;

• _Branching nodes _that have true and false branches;

• _Assuming nodes _that have an assumed condition specified;

• _Backedge nodes _that mark the transfer of control from the end point of a loop to its start point.

The way maps (l, s) are changed when processing specific nodes is described below.

The notation N(①) is used to denote a union of type x and all types to which type x can be converted, namely:

• If x is a numeric type, then a larger numeric type;

• If x is an enumeration type, then enumeration base type.

The notation ①_′ _is used to denote a map that replaces any previous map during node evaluation.

At a **variable declaration **let v: T:

• l(v):={v};

• s(l(v)):={T}, where T is a the declared type of v, that is either set explicitly, or inferred from an initializer expression.

In an **assignment to the variable **v: v = e:

• If _e _is a variable, and no implicit conversions are performed, then:

**– **l ' (v):={v} ∪ l(e);

**– **l ' (u):={v} ∪ l(e) for each u ∈ l(e);

**– **l ' (u):=l(v)-{v} for each u ∈ l(v)-{v};

**– **s ' (l ' (v)):=s(l(e));

**– **s ' (l(v)-{v}):=s(l(v)).

• Otherwise:

**– **l ' (v):={v};

**– **l ' (u):=l(v)-{v} for each u ∈ l(v)-{v};

**– **s ' (l ' (v)):=N(T(e), where T(e) is the smart type of e.

Maps evaluation at an _assumption node _are summarized in the following table:


Branching on
Positive Branch
Negative Branch
Assuming !(_v _instanceof A): s ' (l(v)):=s(l(v))-A,

_v _instanceof A Assuming _v _instanceof A:

s ' (l(v)):=s(l(v))&A

_v _=== _str _(string literal) s ' (l(v)):=str s ' (l(v)):=s(l(v))-str

_ v _=== undefined s ' (l(v)):=undefined s ' (l(v)):=s(l(v))-undefined

_v _=== null s ' (l(v)):=null s ' (l(v)):=s(l(v))-null

_v _== undefined s ' (l(v)):=undefined|null s ' (l(v)):=

s(l(v))-undefined-null

_v _== null s ' (l(v)):=null|undefined s ' (l(v)):=

s(l(v))-undefined-null

_v _=== ec, where _ec _is an enum constant

s ' (l(v)):=N(ec) s ' (l(v)):=s(l(v))

typeof _v _=== str

See **Note 2 **below for evaluation of type T.

s ' (l(v)):= s(l(v))&T s ' (l(v)) := s(l(v))-T

_v _=== e, where _e _is any expres- sion

If _e _is the variable w, no implicit con- No change

version occurs, and no consideration is given to null == undefined, then:

l ' (v):=l ' (w):=l(v)∪ l(w)

Otherwise,

s ' (l ' (v))=s(l(v))&N(T(e))

The definitions of T and N are as in the assignment clause.

_v _(truthiness check) s ' (l(v)):=s(l(v)) -

(null|undefined| "")

s ' (l(v)):=s(l(v))&T,

where T is union of all types the con- tain at least one value considered as false in Extended Conditional Ex- pressions.



. **Note **

In the table above the operator '=== ' can be replaced for '== ' except where the separate case for '== ' is listed explicitly.
For branching on typeof _v _=== str, type _T _is evaluated in accordance with the value of _str _as follows:
Value of str	Type of T
"boolean"	boolean
"string"	string
"bigint"	bigint
"char"	char
"undefined"	undefined
A name of a numeric type	The same numeric type
"object"	(Object - all types for which typeof is not equal to "object")


At a node that joins two CFG branches, namely C1 = ( l1 , s1 ), and C2 = ( l2 , s2 ), the following is performed for each variable v:

• l ' (v):=l1 (v)∩ l2 (v); and

• s ' (l ' (v)):=s1 (l1 (v)) | s2 (l2 (v)).

At each backedge node, the following updates are performed for each variable m modified in the loop body:

• l ' (u):=l(m)-{m} for each u ∈ l(m)-{m};

• l ' (m):={m};

• s ' (l ' (m)):={T}, where T is the declared type of m.

15.8.5 Control-flow Graph

Computing smart types based on _control-flow graph _that describes the possible evaluation paths of a function body (graphs are intraprocedural).

See Computing Smart Typesfor a list of CFG nodes that influences computation.

TBD: Describe how each language construct is translated to a CFG fragment.

15.8.6 Type Expression Simplification

The following table summarizes the contexts for _type expression simplification _transformations to be performed at each node of the CFG:




Transformation
Initial expression
Simplified expression

Associativity of '& '
(A&B)&C
A&(B&C)
Commutativity of '& '	A&B	B&A
In case of subtyping A<:B and '& '	A&B	A
A&never	never
A&Any	A
Associativity of '	'	(A
Commutativity of '	'	A
In case of subtyping A<:B and '	'	A
A	never
A	Any
Diference with never	A-never	A
In case of subtyping A<:B and '- '	A-B	never
A-Any	never
(B-A)	A
(A-B)&B	never
Other transformations	(A&B)-C	(A-C)&(B-C)
(A	B)&C
(A	B)-C
(A-B)-C	(A-(B
The following simplifications for object types are also taken into account:

If A and B are classes and neither transitively extends the other, then A&B = never, A-B = A.

If A is a final class that does not implement the interface I, then A&I = never, A-I = A.

If A is a class or interface, and _U _is never or undefined, then A&U = never, A-U = A.

The following normalization procedure is performed for every _smart type _at every node of CFG where possible:

Push _difference types _inside _intersection types _and unions, and simplify the diference.

Push _intersection types _inside unions, and simplify the intersections.

Simplify the resultant union types.

After a simplification, _smart types _undergo approximation with _difference types _A-B recursively replaced by A.

15.8.7 Smart Cast Examples

By using variable initializers or an assignment the compiler can narrow (smart cast) a declared type to a more precise subtype (smart type). It allows operations that are specific to the subtype:

1 function boo() {

2 let a: number | string = 42

3 a++ /* Smart type of 'a ' is number and number-specific

4 _operations are type-safe */ _5 }

6

7 class Base {}

8 class Derived extends Base { method () {} }

(continues on next page)



(continued from previous page)

9 function goo() {

10 let b : Base = new Derived

11 b.method () /* Smart type of 'b ' is Derived and Derived-specific

12 _operations can be applied in type-safe way */ _13 }

Other examples are explicit calls to instanceof or checks against undefined (see_Equality Expressions) as parts of if statements (seeif Statements_) or ternary conditional expressions (see Ternary Conditional Expressions):

1 class Base { method() { console.log("Base")}; }

2 class Derived extends Base { method() { console.log("Derived")}; }

3

4 function foo (b : Base|null , d : Derived|undefined) {

5 if (b instanceof Base) {

6 b .method()

7 }

8 if (d != undefined) {

9 d .method()

10 } 11 }

12

13 console.log( 'call with (Base, Derived) ')

14 foo( new Base(), new Derived())

15 console.log( 'call with (null, undefined) ')

16 foo(null , undefined)

17 /* Output is:

18 call with (Base, Derived)

19 Base

20 Derived

21 _call with (null, undefined) _22 */

In like cases, a smart compiler requires no additional checks or casts (see Cast Expression) to deduce a smart type of an entity.

Overloading_ _can cause tricky situations when a smart type results in calling an entity that suits the smart type rather than a declared type of an argument (see Overload Resolution):

1 class Base {b = 1}

2 class Derived extends Base{d = 2}

3

4 function fooBase (p : Base) {}

5 function fooDerived (p : Derived) {}

6

7 overload foo { fooDerived, fooBase }

8

9 function too() {

10 let a: Base = new Base

(continues on next page)

(continued from previous page)

11 foo (a) // fooBase will be called

12 let b : Base = new Derived

13 foo (b) _// as smart type of 'b ' is Derived, fooDerived will be called _14 }

15.9 Overriding

_Method overriding _is the language feature closely connected with inheritance. It allows a subclass or a subinterface to ofer a specific implementation of a method already defined in its supertype optionally with modified signature.

The actual method to be called is determined at runtime based on object type. Thus, overriding is related to runtime polymorphism.

. **Note **

_Overriding _does not apply to constructors.

ArkTS uses the _override-compatibility _rule to check the correctness of overriding. The _overriding _is correct if method signature in a subtype (subclass or subinterface) is _override-compatible _with the method defined in a supertype (see Override-Compatible Signatures).

An implementation is forced to _Make a Bridge Method for Overriding Method_in some cases of method overriding.

15.9.1 Overriding in Classes

. **Note **

Only accessible (see Accessible) methods are subjected to overriding. The same rule applies to accessors in case of overriding.

An overriding method can retain access modifier of a method from a superclass or a superinterface, or change _protected _for public (seeAccess Modifiers). Otherwise, a compile-time error occurs.

1 class Base {

2 public public_member() {}

3 protected protected_member() {}

4 private private_member() {} 5 }

6

7 interface Interface {

8 public_member() // All members are public in interfaces

9 private private_member() {} // Except private methods with default implementation

(continues on next page)

(continued from previous page)

10 }

11

12 class Derived extends Base implements Interface {

13 public override public_member() {}

14 // Public member can be overridden and/or implemented by the public one

15 public override protected_member() {}

16 // Protected member can be overridden by the protected or public one

17 override private_member() {}

18 // A compile-time error occurs as private methods of a superclass or

19 // a superinterface are not accessible in the derived class, and such

20 // a declaration attempt has nothing to override .

21 private_member() {}

22 // Will be a correct method declaration which is not related to

23 // private methods with the same name and signature from a supoer class

24 _// or superinterfaces _25 }

If an _instance method _is defined or inherited by a subclass with the same name as the _instance method _in a superclass or superinterface, then the following semantic rules are applied:

• If signatures are not _override-compatible _(see Override-Compatible Signatures), and if signatures formed by using _effective signature types _of original signatures are _override-compatible _after type erasure, then a compile- time error occurs.

• If signatures are _override-compatible _(see Override-Compatible Signatures), then the method of subinterface overrides the method of superinterface _in _the subinterface.

• Otherwise, Implicit Method Overloadingis used.

Overriding methods from a superclass is represented in the example below:

1 class Base {

2 method_ 1() {}

3 method_2(p : number) {} 4 }

5 class Derived extends Base {

6 override method_ 1() {} // overriding

7 override method_2(p : string) {} _// Compile-time error, not override-compatible _8 }

Overriding a method from a superinterface by a method from a superclass is represented in the example below:

1 interface I {

2 m() : void 3 }

4

5 class Base {

6 m() { } 7 }

8 class Derived extends Base implements I {

9 _// method 'm ' inherited from 'Base ' overrides 'm ' defined in 'I ' _10 }

A single method in a subclass can override several methods of a superclass:



1 class B {}

2 class C {

3 foo(a : A) {}

4 foo(b : B) {} 5 }

6 class D extends C {

7 foo(o : Object) { console.log("foo in D")} 8 }

9

10 let c : C = new D()

11 c.foo (new A()) // output: foo in D

12 c.foo (new B()) // output: foo in D

If more than one method of the subclass overrides the same method of the superclass a compile-time error occurs:

1 class I{

2 foo (p : C) {} 3 }

4 class C extends I { // More than one method of class C overrides the same method

5 foo (p : C) {}

6 foo (p : I) {} 7 }

15.9.2 Overriding in Interfaces

If a method is defined in a subinterface with the same name as an accessible method in the superinterface, then the following semantic rules apply:

• If signatures are not _override-compatible _(see Override-Compatible Signatures), and if signatures formed by using _effective signature types _of original signatures are _override-compatible _after type erasure, then a compile- time error occurs.

• If signatures are _override-compatible _(see Override-Compatible Signatures), then the method of subinterface overrides the method of superinterface _in _the subinterface.

• Otherwise, Implicit Method Overloadingis used.

1 interface Base {

2 m(p : string) : void

3 m(p : number) : void 4 }

5 interface Derived extends Base {

6 m(p : object) : void _// m overrides both Base.m(string) and Base.m(number) _7 }

. Note

Several methods of superinterface can be overridden by a single method in a subinterface.

1 interface Base {

2 method_1()

3 method_2(p : number)

4 method_3() : string

5 method_4(a : Array<string>)

6 private foo() {} _// private method with implementation body _7 }

8 interface Derived extends Base {

9 method_1() // overriding

10 method_2(p : string) // overloading

11 method_3() : number // Compile-time error, bad overriding, return type mismatch

12 method_4(a : Array<number>) // Compile-time error, original signatures are

13 // not override-compatible, but effective

14 // signatures after type erasure are compatible .

15 foo(p : number) : void // it is just a new method declaration

16 // Base.foo_() is not accessible here at all _17 }

If more than one method of the subinterface overrides the same method of the superinterface a compile-time error occurs.

1 interface I{

2 foo (p : C) : void 3 }

4 interface C extends I { // More than one method of interface C overrides the same␣ ˓→__method

5 foo (p : C) : void

6 foo (p : I) : void 7 }

15.9.3 Override-Compatible Signatures

Let’s consider classes Derived and Base for which:

• Derived is a subclass of Base

• both classes declare method foo

• in Base, foo() has a signature S1 <V1 , . . . Vk > (U1 , . . . , Un) :Un+1 ,

• in Derived, foo() has a signature S2 <W1 , . . . Wj > (T1 , . . . , Tm) :Tm+1 as in the example below:

1 class Base {

2 foo <V1, ... Vk> (p1 : U1 , ... pn : Un) : Un+1 3 }

4 class Derived extends Base {

5 override foo <W1, ... Wj> (p1 : T1 , ... pm : Tm) : Tm+1 6 }

The signature S2 is override-compatible with S1 only if **all **of the following conditions are met:

Number of parameters of both methods is the same, i.e., n = m.

Each parameter type Ti is a supertype of Ui for i in 1 . .n (contravariance).

If return type Tm+1 is this, then Un+1 is this, or any of superinterfaces or superclass of the current type.

If return type Tm+1 is not this, then it must be a subtype of Un+1 (covariance).

Number of type parameters of either method is the same, i.e., k = j.

Constraints of W1 , . . . Wj are to be contravariant (see Invariance, Covariance and Contravariance) to the appro- priate constraints of V1 , . . . Vk .

The following rule applies to generics:

• Derived class must have type parameter constraints to be subtypes (see Subtyping) of respective type parameter constraints in the base type;

• Otherwise, a compile-time error occurs.

1 class Base {}

2 class Derived extends Base {}

3 class A1 <CovariantTypeParameter extends Base> {}

4 class B1 <CovariantTypeParameter extends Derived> extends A1<CovariantTypeParameter> {}

5 // OK, derived class may have type compatible constraint of type parameters

6

7 class A2 <ContravariantTypeParameter extends Derived> {}

8 class B2 <ContravariantTypeParameter extends Base> extends A2<ContravariantTypeParameter> ˓→ {}

9 // Compile-time error, derived class cannot have non-compatible constraints of type␣ ˓→__parameters

The semantics is represented in the examples below:

Class/Interface Types
1 interface Base {

2 param(p : Derived) : void

3 ret() : Base 4 }

5

6 interface Derived extends Base {

7 param(p : Base) : void // Contravariant parameter

8 ret() : Derived _// Covariant return type _9 }

Function Types
1 interface Base {

2 param(p : (q : Base)=>Derived) : void

3 ret() : (q : Derived)=> Base 4 }

5

6 interface Derived extends Base {

7 param(p : (q : Derived)=>Base) : void // Covariant parameter type, contravariant␣ ˓→__return type

8 ret() : (q : Base)=> Derived // Contravariant parameter type, covariant␣ ˓→__return type

9 }

Union Types
1 interface BaseSuperType {}

2 interface Base extends BaseSuperType {

3 // Overriding for parameters

4 param<T extends Derived, U extends Base>(p : T | U) : void

5

6 // Overriding for return type

7 ret<T extends Derived, U extends Base>() : T | U 8 }

9

10 interface Derived extends Base {

11 // Overriding kinds for parameters, Derived <: Base

12 param<T extends Base, U extends Object>(

13 p : Base | BaseSuperType // contravariant parameter type: Derived | Base <: Base␣ ˓→ | BaseSuperType

14 ) : void

15 // Overriding kinds for return type

16 ret<T extends Base, U extends BaseSuperType>() : T | U 17 }

Type Parameter Constraint
1 interface Base {

2 param<T extends Derived>(p : T) : void

3 ret<T extends Derived>() : T 4 }

5

6 interface Derived extends Base {

7 param<T extends Base>(p : T) : void // Contravariance for constraints of type␣ ˓→__parameters

8 ret<T extends Base>() : T // Contravariance for constraints of the␣ ˓→__return type

9 }

Override compatibility with Object is represented in the example below:

1 enum E { One, Two }

2 interface Base {

3 kinds_of_parameters<T extends Derived, U extends Base>(

4 // It represents all possible kinds of parameter type

5 p01 : Derived ,

6 p02 : (q : Base)=>Derived,

7 p03 : number ,

8 p04 : T | U,

9 p05 : E ,

10 p06 : Base [] ,

11 p07 : [Base, Base]

12 ) : void

13 kinds_of_return_type() : Object _// It can be overridden by all subtypes of Object _14 }

15 interface Derived extends Base {

16 kinds_of_parameters( // Object is a supertype for all class types

17 p1 : Object ,

(continues on next page)

(continued from previous page)

18 p2 : Object ,

19 p3 : Object ,

20 p4 : Object ,

21 p5 : Object ,

22 p6 : Object ,

23 p7 : Object

24 ) : void 25 }

26

27 interface Derived1 extends Base {

28 kinds_of_return_type() : Base _// Valid overriding _29 }

30 interface Derived2 extends Base {

31 kinds_of_return_type() : (q : Derived)=> Base _// Valid overriding _32 }

33 interface Derived3 extends Base {

34 kinds_of_return_type() : number _// Valid overriding _35 }

36 interface Derived4 extends Base {

37 kinds_of_return_type() : number | string _// Valid overriding _38 }

39 interface Derived5 extends Base {

40 kinds_of_return_type() : E _// Valid overriding _41 }

42 interface Derived6 extends Base {

43 kinds_of_return_type() : Base [] _// Valid overriding _44 }

45 interface Derived7 extends Base {

46 kinds_of_return_type() : [Base, Base] _// Valid overriding _47 }

15.10 Overloading

_Overloading _is the language feature that allows using the same name to call several functions, methods, or constructors with diferent signatures.

The actual function, method, or constructor to be called is determined at compile time. Thus, _overloading _is compile- time polymorphism by name.

ArkTS supports the following two _overloading _mechanisms:

• Implicit overloading, where a set of overloaded entities for functions and methods is determined by their names, or includes all unnamed constructors; and

• _Explicit overloading _(see Explicit Overload Declarations) that allows a developer to specify a set of overloaded entities explicitly.

In either case, an ordered set of overloaded entities is built at compile time, and used by Overload Resolutionto select one entity to call from within the set. _Overload resolution _uses the first-match algorithm to streamline the resolution process, i.e., only the first appropriate entity is called, while all other entities are not considered.

If signatures of implicitly overloaded entities are overload-equivalent, then a compile-time error occurs (seeOverload- Equivalent Signatures). _Explicitly overloaded entities _are never checked for overload equivalence. _Explicitly overloaded entities _with separate names never cause a compile-time error.

Overloading for the module scope name _main _is prohibited, and causes a compile-time error if attempted:

1 function main() {}

2 function main(p : string []) {}

3 // Such declarations lead to a compile-time error

15.10.1 Implicit Function Overloading

Two or more functions declared with the same name in the same declaration scope are implicitly overloaded.

. Note

Same-name functions declared in diferent scopes cannot be _implicitly overloaded _(see Declaration Distinguishable by Signatures). A compile-time error occurs if the names of an imported function and of a function declared in the current module are the same.

When calling an overloaded function (see Function Call Expression), Overload Resolutionis used to determine exactly which function must be called.

1 function foo(p : number) {} // #1

2 function foo(p : string) {} // #2

3

4 foo(5) // function marked #1 is called

5 foo("5") // function marked #2 is called

If signatures of two implicitly overloaded non-generic functions are overload-equivalent (see Overload-Equivalent Sig- natures), then a compile-time error occurs. However, an implicit overload with instantiation of a generic and overload- equivalent non-generic function causes no compile-time error, and the textually first function is used:

1 function goo(x : int) : void {}

2 function goo(x : int) : void {} // Compile-time error, overload-equivalent

3 // non-generic functions

4

5 function foo<T>(x : T) {}

6 function foo(x : number) {}

7

8 foo(1) // OK, instance of foo() with T=number called

9

10 function bar(x : number) {}

11 function bar<T>(x : T) {}

12

13 bar(1) // OK, plain bar() called

15.10.2 Implicit Method Overloading

Two or more methods within a class or an interface are implicitly overloaded if:

• All have the same name;

• All are either static or non-static.

A compile-time error occurs if signatures of two implicitly overloaded methods are overload-equivalent (seeOverload- Equivalent Signatures).

Implicit overload can be caused by method declaration or inheritance:

1 class Base{

2 foo(p : number) {} _// #1 _3 }

4

5 class Derived extends Base {

6 foo(p : string) {} _// #2 _7 }

8

9 let d = new Derived()

10

11 d.foo(5) // method marked #1 is called

12 d.foo("5") // method marked #2 is called

When calling an overloaded method (see Method Call Expression), Overload Resolution_ _is used to determine exactly which method is to be called.

1 class C{

2 foo(p : number) {} // #1

3 foo(p : string) {} _// #2 _4 }

5

6 let c = new C()

7

8 c.foo(5) // method marked #1 is called

9 c.foo("5") // method marked #2 is called

If an instantiation of a generic class or a generic interface leads to an _overload-equivalent _method, then the textually first method is called:

1 class Template<T> {

2 foo (p : T) { console.log("generic foo") }

3 foo (p : number) { console.log("plain foo") }

4 bar (p : number) { console.log("plain bar") }

5 bar (p : T) { console.log("generic bar") } 6 }

7

8 // This instantiation leads to two overload-equivalent methods

9 let instantiation : Template<number> = new Template<number>

10

11 instantiation.foo (1) // prints 'generic foo'

12 instantiation.bar (1) // prints 'plain bar'

15.10.3 Implicit Constructor Overloading

Two or more unnamed constructors within a class are implicitly overloaded. If signatures of two overloaded constructors are _overload-equivalent _(see Overload-Equivalent Signatures), then a compile-time error occurs.

Overload Resolution_ _is used to determine exactly which one constructor is to be called in a class instance creation expression (see New Expressions).

1 class BigFloat {

2 /other code/

3 constructor (n : number) {/body1/} // #1

4 constructor (s : string) {/body2/} _// #2 _5 }

6

7 new BigFloat(1) // constructor, marked #1, is used

8 new BigFloat("3 . 14") // constructor, marked #2, is used

15.10.4 Overload-Equivalent Signatures

Signatures _S1 _and _S2 _are _overload-equivalent _if:

• Both have the same number of parameters;

• _Effective signature types _(see Type Erasure) of each parameter type in _S1 _and _S2 _are equal.

Return types of _S1 _and _S2 _do not afect overload-equivalence.

The following code causes a compile-time error as function signatures are overload-equivalent:

1 function foo(x : Array<string>) : string {}

2 function foo(x : Array<number>) : number {} // Compile-time error

15.11 Overload Resolution

_Overload resolution _is used to select one entity to call from an _ordered set of overloaded entities _(called in short overload set) in a function call or a method call or a constructor call, where the constructor call is a part of a new expression (see New Expressions).

An overload set for each overloaded name is formed while processing declarations. The process (see Forming an Overload Set) takes into account the following:

• Textual order of implicitly overloaded entities;

• Listing order of explicit overload declarations; and

• Inheritance.

The _overload resolution _process is rather straightforward. The process takes overloaded entities one after another from an overload set, and checks the call of each entity to be valid for the arguments given. The first entity for which the call is valid is the selected entity. Other entities are not checked after the first valid entity is found.

A compile-time occurs if a call is invalid for any overload entities.

A call of an entity is valid if:

• Each required parameter has an argument;

• There is no excess argument that fails to correspond to a parameter, including to an optional parameter or to a rest parameter;

• Each argument is assignable to a corresponding parameter type, or to a corresponding element type of a rest parameter.

Return types of overload entities are not considered by overload resolution, it means that the selected entity can lead to a compile-time error, like in the following example:

1 function foo(n : number) : number {}

2 function foo(s : string) : string {}

3

4 let x: number = foo("1") // Compile-time error

15.11.1 Forming an Overload Set

Only a single _overload set _is created for each overloaded name in a scope. An overload set combines entities that are overloaded implicitly and explicitly. If an entity is not overloaded, then an _overload set _contains the very entity for the entity name. The order of an _overload set _is determined as follows:

If an overload set is formed from _implicit overloads _only, then the order of the _overload set _corresponds to the textual order of entity declaration;

If an overload set is formed from _explicit overloads _only, then the order of the _overload set _is the same as the order of the entities listed.

If an overload set is a combination of implicitly and explicitly overloaded entities, then:

• An _explicit overload _list must contain the name of an implicitly overloaded entity. Otherwise, a compile- time error occurs.

• The order is based on the order of the _explicit overload _list as an _explicit overload _has a higher priority. All implicitly overloaded entities are listed in the textual order of declaration, and are included into the _explicit overload _list at the position of the overloaded name.

The textual position of an _explicit overload _does not influence the order in the overload set. An _explicit overload _is efectively processed at the end of the scope.

An overload set for interface and instance class methods can contain methods from superinterfaces and superclasses. Methods defined in an interface or in a class are added to the overload set before any inherited method, i.e., more specific entities have a higher priority. Further details are discussed in Overload Set for Interface Methods and Overload Set for Class Instance Methods.

15.11.2 Overload Set for Functions

For a given function name, the overload set is formed from implicitly overloaded functions (see Implicit Function Overloading) and from functions listed in Explicit Function Overload (see Forming an Overload Set).

The example below illustrates how _overload set _is formed and used by overload resolution:

1 function fooN(n : number) {}

2

3 function foo() {} // implicitly overloaded foo#1

4 function foo(b : boolean) {} _// implicitly overloaded foo#2 _5

6 function fooX(x? : number) {}

7

8 overload foo {fooN, foo, fooX}

9 _// The overload set for 'foo ' is {fooN, foo#1, foo#2, fooX} _10

11 overload bar {fooX, foo}

12 // The overload set for 'bar ' is {fooX, foo#1, foo#2}

13

14 foo(1) // fooN is called

15 bar(1) // fooX is called

16

17 foo() // foo#1 is called

18 bar() // fooX is called

19

20 foo(true) // foo#2 is called

21 bar(true) // foo#2 is called

15.11.3 Overload Set for Interface Methods

An overload set for a given interface is formed from the following:

• Implicitly overloaded methods (see Implicit Method Overloading);

• Explicitly overloaded methods listed in Explicit Interface Method Overload;

• Overload sets from superinterfaces, if any.

The following steps are taken to form an overload set:

Explicitly and implicitly overloaded methods defined in a given interface are added into the overload set in the order described in Forming an Overload Set.

Overload sets from each direct superinterface are added at the end of an overload set in the order of the implements clauses. A method that is already added to the overload set is not added again.

. **Note **

Overload sets from non-direct superinterfaces are not considered as they are already accounted for in direct super- interfaces.

Forming an _overload set _for an interface that has no superinterface is represented in the example below:

1 interface I {

2 foo(x : number) // #1

3 foo(s : string) // #2

4 _// The overload set for 'foo ' is {foo#1, foo#2} _5 }

6

7 interface J {

8 foo(x : number) // #1

9 foo(s : string) // #2

10 fooOpt(x? : number)

11 overload foo { foo, fooOpt}

12 _// The overload set for 'foo ' is {foo#1, foo#2, fooOpt} _13 }

Overload sets for an interface with superinterfaces is represented in the example below:

1 interface I1 {

2 foo(x : number) _// #1 _3 }

4 interface I2 {

5 foo(s : string) // #2

6 foo(b : boolean) _// #3 _7 }

8 interface J extends I1, I2 { // the order in extends list is used

9 foo() // #4

10 /* The overload set is {foo#4, foo#1, foo#2, foo#3}

11 _Formed as: set(J)={foo#4} append set(I1)={foo#1} append set(I2)={foo#2, foo#3} _12 */

13 }

That overridden methods occur only once in a list (I and I2 as defined above) is represented in the example below:

1 interface K extends I1, I2 {

2 foo(s : string) // #2 as it overrides I2.foo

3 /* The overload set is {foo#2 , foo#1 , foo#3}

4 Formed as: set(K)={foo#2} append set(I1)={foo#1} append set(I2)={foo#2, foo#3}

5 Second occurrence of foo#2 is skipped.

6 _*/ _7 }

Combining implicit and explicit overloads is represented in the example below:

1 interface I {

2 foo(s : string) // #1

3 fooOpt(x? : number)

4 overload foo {fooOpt, foo}

5 _// The overload set is {fooOpt, foo#1} _6 }

7

8 interface J1 extends I {

9 foo(b : boolean) // #2

10 /* The overload set is {foo#2, fooOpt, foo#1}

11 Formed as: {foo#2} append set(I)={fooOpt, foo#1}

(continues on next page)

(continued from previous page)

12 */

13 }

14

15 interface J2 extends I {

16 foo(b : boolean) // #2

17 overload foo {foo, fooOpt}

18 /* The overload set is {foo#2, fooOpt, foo#1}

19 Formed as: {foo#2, fooOpt} append set(A)={fooOpt, foo#1}

20 Second occurrence of fooOpt is skipped.

21 _*/ _22 }

15.11.4 Overload Set for Class Static Methods

An overload set of static methods for a given class is formed from implicitly overloaded methods (see Implicit Method Overloading), and from the methods listed in Explicit Class Method Overload.

The algorithm that defines the order of an _overload set _considers only the static methods defined directly in a class scope (see Forming an Overload Set) because static methods are not inherited.

The formation and the use of an _overload set _by the _overload resolution _is represented in the example below:

1 class C {

2

3 static foo() {} // implicitly overloaded foo#1

4 static foo(b : boolean) {} // implicitly overloaded foo#2

5 static fooX(x? : number) {}

6

7 static overload foo {foo, fooX}

8 _// The overload set for 'foo ' is {foo#1, foo#2, fooX} _9 }

10

11 C.foo (1) // fooX is called

12 C.foo () // foo#1 is called

13 C.foo (true) // foo#2 is called

15.11.5 Overload Set for Class Instance Methods

An overload set for class instance methods of a given class is formed from the following:

• Implicitly overloaded methods (see Implicit Method Overloading);

• Explicitly overloaded methods listed in Explicit Class Method Overload;

• Methods from a direct superclass, if any.

The following steps are taken to form an overload set:

Explicitly and implicitly overloaded methods defined in a given class are added into an overload set in the or- der described in Forming an Overload Set, including the methods that override or implement methods from supertypes.

Overload set from a direct superclass (if any) is added at the end of an overload set. A method that is already added to the overload set is not added again.

Overload sets from each superinterface are added at the end of an overload set in the order of the implements clauses. A method that is already added to the overload set is not added again.

. Note

Overload sets from non-direct supertypes are not considered.

Forming an _overload set _for a class that has neither a superclass nor a superinterface is represented in the example below:

1 class C {

2 foo(x : number) {} // #1

3 foo(s : string) {} // #2

4 _// The overload set for 'foo ' is {foo#1, foo#2} _5 }

6

7 class D {

8 foo(x : number) {} // #1

9 foo(s : string) {} // #2

10 fooOpt(x? : number) {}

11 overload foo { foo, fooOpt}

12 _// The overload set for 'foo ' is {foo#1, foo#2, fooOpt} _13 }

An overload set for a class with a superclass and a superinterface is represented in the example below:

1 interface I {

2 foo(x : number) _// #1 _3 }

4

5 class C {

6 foo(s : string) {} _// #2 _7 }

8

9 class D extends C implements I{

10 foo(x : number) {} // overrides #1

11 foo(x : boolean) {} // #3

12 /* The overload set is {foo#1, foo#3, foo#2}

13 Formed as: set(D)={foo#1, foo#3} append set(C)={foo#2} append set(I)={foo#1}

14 Second occurrence of foo#1 is skipped.

15 _*/ _16 }

Only direct supertypes are considered for overload sets. It is represented in the example below:

1 interface I{

2 foo(x : number) {} // #1

(continues on next page)

(continued from previous page)

3 }

4 class C implement I{

5 foo(x : A) // #2

6 // Note: foo in I has default body, no need to implement it in C

7 _// The overload set is {foo#2, foo#1} _8 }

9 class D extends C {

10 foo(s : string) {} // #3

11 foo(x : A | undefined) {} // overrides #2

12 /* The overload set is {foo#3, foo#2, foo#1}

13 Formed as: set(D)={foo#3, foo#2} append set(C)={foo#2, foo#1}

14 Second occurrence of foo#2 from set(C) is skipped.

15 _*/ _16 }

17 class E extends D {

18 foo(x : number) {} // overrides #1

19 /* The overload set is {foo#1, foo#3, foo#2}

20 Formed as: set(E)={foo#1} append set(D)={foo#3, foo#2, foo#1}

21 Second occurrence of foo#1 from set(D) is skipped.

22 _*/ _23 }

More details are provided in Overloading and Overriding.

15.11.6 Overload Set for Constructors

For a given class, the overload set for constructors is formed from implicitly overloaded constructors (see Implicit Constructor Overloading) and from constructors listed in Explicit Constructor Overload. The order of constructors in the overload set is determined according to the following rules:

• If an overload set is formed from implicitly overloaded constructors only, the order is the textual order of con- structors declarations;

• If and overload set is formed from _explicit overload _only, the order is the order of constructors in its list.

• For a combination of implicitly and explicitly overloaded constructors, the order is based by the order in explicit overload, all unnamed constructors are included in textual order of their declarations to the beginning of the ordered set.

The example below illustrates how _overload set _is formed and used by overload resolution:

1 class C {

2 constructor () {} // ctor#1

3 constructor (s : string) // ctor#2

4 constructor fromNumber(n : number) {}

5 overload constructor { fromNumber } 6 }

7 /* The overload set of constructors for class 'C' is

8 {ctor#1, ctor2#1, fromNumber} */

9

(continues on next page)

(continued from previous page)

10 new C() // ctor#1 is used

11 new C("aa") // ctor#2 is used

12 new C(1) // fromNumber is used

15.11.7 Overload Set Warning

A compile-time warning is issued if the order of entities in an overload set implies that some overloaded entity can never be selected for a call:

1 function f1 (p : number) {}

2 function f2 (p : number|string) {}

3 function f3 (p : string) {}

4 overload foo {f1, f2, f3} // warning: f3 will never be called as foo()

5

6 foo (5) // f1() is called

7 foo ("5") // f2() is called

15.11.8 Overload Set at Method Call

Additional processing of an _overload set _is used at _Method Call Expression _because an identifier at the call site can denote both _instance methods _and Functions with Receiver.

If the identifier at the call expression denotes _functions with receiver only, then Overload Set for Functions _is used. However, only _functions with receiver _(not ordinary functions) are considered for overload resolution:

1 class C {}

2

3 function foo(this : C) {} // #1

4 function foo(this : C , s : string) {} // #2

5 function foo(c : C , n: number) {} // #3

6

7 let c = new C()

8 c.foo() // only function #1, #2, but not #3 are considered here

9

10 foo(c) // all three functions are considered here

If the identifier denotes both instance methods and functions with receiver, then the overload set for methods is used for overload resolution, i.e., no function with receiver is called. Otherwise, a compile-time warning is issued as represented in the example below:

1 // File1

2 export class C {

3 bar() {} 4 }

5 export function foo(this : C) {}

(continues on next page)

(continued from previous page) 6

7 // File2

8 import {C, foo as bar} from "File1"

9

10 new C().bar() // C.bar is called, warning is issued

. Note

If a function with receiver is declared, and the name of the function is the same as the name of an accessible instance method or field of the receiver type, then a compile-time error occurs in most cases (see the example in Functions with Receiver). A warning is issued where no such error is reported.

15.11.9 Overloading and Overriding

When calling an overloaded method (class instance method or interface method), both Overloading_ and Overriding _influence the actual method to call. As _compile-time _polymorphism, _overload resolution _selects the method to call from a class type or an interface type known at compile time. However, the method can be overridden in subtypes, and the actual method is called in accordance with the _runtime type _of the object from which the method is called.

. **Note **

Overriding does not influence forming of overload sets by itself despite any method declared in a class—both new or overridden—is placed in the overload set before any inherited method.

The manner _overloading _and _overriding _influence the method to call is represented in the example below:

1 class C1 {}

2 class C2 extends C1 {}

3

4 class A {

5 foo(c : C2) { console.log("A.C2") }

6 foo(c : C1) { console.log("A.C1") } 7 }

8

9 class B extends A {

10 override foo(c : C2) { console.log("B.C2") } 11 }

12

13 let a: A = new B()

14 a.foo (new C2()) // 1st call output: B.C2

15 a.foo (new C1()) // 2nd call output: A.C1

The details of the first call are as follows:

• Static type of a is A, and only this type is considered for overload resolution;

• First overloaded foo can be called, and is selected;

• Runtime type of a is B, foo(c: C2) is overridden in B, and then the method from B is called. The details of the second call are as follows:

• foo(c: C1) is selected to call;

• foo(c: C1) is not overridden, and the original method from A is called.

The situation where a single method in a subclass overrides several methods ofa superclass is represented in the example below:

1 class C1 {}

2 class C2 extends C1 {}

3

4 class A {

5 foo(c : C2) { console.log("A.C2") }

6 foo(c : C1) { console.log("A.C1") } 7 }

8

9 class D extends A {

10 foo(c : C1) { console.log("D.C1") } 11 }

12

13 let a: A = new D()

14 a.foo (new C2()) // 1st call output: D.C1

15 a.foo (new C1()) // 2nd call output: D.C1

In the example above, foo in D overrides both A methods (seeOverride-Compatible Signatures). As a result, the same method is called despite diferent methods are selected at compile time for the first and the second calls.

15.11.10 Dynamic resolution of method calls

The actual method to be invoked during the _Method Call Expression _evaluation is determined in the runtime with respect to the method statically resolved during the compile time (see Overload Set at Method Call) and the actual _type _of the objectReference.

The resolution depends on the form of the call expression:

• For static method calls, overriding is not used and the statically determined method is the one to be invoked

• For super calls, overriding is not used and the statically resolved method of superclass is the one to be invoked

• For instance method calls, the actual type of the objectReference referred to as _T _is used to determine the method to be invoked.

For the statically resolved method _M _defined in the type D, let the type _C _be

• _D _if the method _M _is found in the type _D _during the execution.

• The _closest _superclass of _C _that defines the method of the signature of M.

• The _closest _superinterface of _C _that defines the method of the signature of M.

Note: For the set of programs compiled without source code updates _C _is always D

Type _T _(which is always a class) and the statically determined method _M _defined in the type _C _(where _T _is necessarily a subtype of C) are used to perform the resolution, which is defined as follows:

• If _T _is C, the result of the resolution is M.

• If _T _has a superclass and the resolution of the method _M _for the superclass of _T _succeeds and the resolved method is defined in class, let _Ms _be the result of the resolution:

**– **If the type _T _defines several method declarations that override the method _Ms _in T:

If the set of such methods contains exactly one method, this method is the result of the resolution.

Otherwise, the method resolution fails for type T.

**– **Otherwise, _Ms _is the result of the resolution.

• Otherwise, the set of the _superinterfaces _of _T _is searched for a matching method:

**– **Each considered method should be declared in the superinterface of _T _and should override the method _M _in C.

**– **For each considered method Mi, there should be no other method _Mio _satisfying the previous criterion that overrides _Mi _in the interface that defines Mio.

Note: That means, all considered method belong to subinterfaces of the declaring interface of M.

If the set contains exactly one default method, this method is the result of the resolution. Otherwise, the set either

**– **has multiple default methods

**– **has no default methods

In these cases, the resolution fails for type T.

If the method resolution fails, then a runtime error occurs.

Note: For the set of programs compiled without source code updates the resolution always results in method resolved and does never throw.

15.12 Type Erasure

Type erasure is the concept that refers to a special handling of some language types, primarilyGenerics, as members of a smaller subset of the language _type system _when considering certain parts of the language semantics. The subset defined via type mapping is referred to as effective type. _Effective type _mapping satisfies the following properties:

• For arbitrary types A and B, if A is a subtype of B, then an EffectiveType(A) is a subtype of EffectiveType(B)

• For arbitrary types A and B, EffectiveType(A | B) is identical to EffectiveType(A) | EffectiveType(B)

• For an arbitrary type A, A | undefined is a subtype of EffectiveType(A | undefined)

**– **In particular, for an arbitrary type A, undefined is a subtype of EffectiveType(A) An original type and an _effective type _can have relationships of two kinds:

• If _Effective type _of T is identical to T, then type T is preserved by type erasure;

• Otherwise, the type is considered as affected by type erasure.

If T | undefined is preserved by type erasure, then type T is preserved up to undefined.

This property limits the possible applications of type-checking expressions:

• instanceof Expression;

• Cast Expression.

Type mapping determines _effective types _as follows (the undefined union member is excluded in the right-hand-side column for brevity):




Original Type
Effective Type (undefined member excluded)

Any
Any
never	never
undefined	undefined
null	null
Generic types (seeGenerics)	Instantiation of the same generic type (see Explicit Generic In- stantiations) with type arguments selected in accordance with Type Parameter Variance:
• _Covariant _type parameters are instantiated with the con- straint type;
• _Contravariant _type parameters are instantiated with type never;
• _Invariant _type parameters are instantiated with a Wild- card Type
Type Parameters	Type Parameter Constraint
_Union Types_in the form T1	T2 . . . Tn
_Array Types_in the form T[]	Same as for a generic type Array.
Fixed-Size Array Types (FixedArray)	Instantiations of FixedArray (i.e., the efective type of type argument T is preserved).
_Function Types_in the form (P1, P2, Pn) => R	Instantiation of an internal generic _function _type with respect to the number of parameter types n. Parameter types P1, P2 . . . Pn are instantiated with Any. Return type R is instantiated with type never.
_Function Types _in the form (P1, P2, Pn, . . . PR) => R	Instantiation of an internal generic _rest-parametrized function _type with respect to the number of parameter types n. Internal generic _rest-parametrized function _of _n _parameters is a super- type of the internal generic _function _type of _n _parameters. Pa- rameter types P1, P2 . . . Pn and rest parameter type PR are instantiated with Any. Return type R is instantiated with type never.
_Tuple Types_in the form [T1, T2 . . . , Tn]	Instantiation of an internal generic tuple type with respect to the number of element types n.
String Literal Types	string
Awaited	• If T is neither a type parameter nor a subtype of Promise, then the Efective type (Awaited) is the Efective type (T);
• If T is a Promise, then the Efective type (Awaited) is the Efective type (U);
• If T is a type parameter with in variance, then the Ef- fective type (Awaited) is never;
• If T is a type parameter with out variance or no variance specified, then the Efective type (Awaited) is the Efective type (upper-bound(T)).
NonNullable	Efective type (T) - null
Partial	Special runtime partial class
Required	Effective type (T)
Readonly	Effective type (T)
Record<K, V>	Map <Effective type (K), Effective type (V)>
ReturnType	Effective type (return type of F)
Additional type mapping defines an effective signature type, i.e., an _effective type _of a corresponding type except the following:


Original Type
Effective signature type

Return type never
never
Otherwise, the original type is preserved.

A program that uses types not preserved by erasure, and relies on certain cast expressions (seeCast Expression) which narrow values to types not preserved up to undefined, can cause ClassCastError thrown during the evaluation of Field Access Expression, Method Call Expression, or Function Call Expression. Checks that cause any runtime error mentioned above ensure type safety of program execution:

1 class A<T> {

2 field : T

3

4 constructor(value : T) {

5 this.field = value

6 } 7 }

8

9 function unsafe(p : Object) : A<number> {

10 return p as A<number> // OK, but check is performed against type A<>, but not␣ ˓→__against A

11 _// thus it can cause exception later during execution _12 }

13

14 let a: A<number> = unsafe(new A<string>("a")) // A resides in A

15

16 let n = a .field // An exception is raised as the expected type is number but the actual␣ ˓→ type is string

15.13 Static Initialization

Static initialization is a routine performed once for each class (seeClasses), namespace (see Namespace Declarations), or module (see Namespaces and Modules).

_Static initialization _presumes executing the following:

• _Initializers _of _variables _or static fields;

• _Top-level statements _for modules and namespaces;

• Code inside a _static block _for classes.

_Static initialization _is performed before one of the following operations is executed for the first time:

• Calling a class static method (see Method Call Expression), accessing a class static field (see Accessing Static Fields), and creating a new class instance (see New Expressions) or a _static initialization _of a direct subclass;

• Calling a function or accessing a variable of a namespace or a module.

. **Note **

None of the operations above invokes a _static initialization _of the same entity recursively if it is not completed.

The code in a static block of a namespace is executed only if namespace members are used in a program (an example is provided in Namespace Declarations).

An initialization is not complete if the execution of a _static initialization _is terminated due to an exception thrown. A repeated attempt to execute the _static initialization _can throw an exception again.

If a _static initialization _invokes a concurrent execution (see Execution model), then all jobs that try to invoke it are synchronized. The synchronization is to ensure that the initialization is performed only once, and that the operations requiring the _static initialization _to be performed are executed after the initialization completes.

If _static initialization _routines of two concurrently initialized classes are circularly dependent, then a deadlock can occur.

15.13.1 Static Initialization Safety

A compile-time error occurs if a _named reference _refers to a not yet initialized entity, including one of the following:

• Variable (see Variable and Constant Declarations) of a module or namespace (see Namespace Declarations);

• Static field of a class (see Static and Instance Fields).

If detecting an access to a not yet initialized _entity _is not possible, then runtime evaluation is performed as follows:

• Default value is produced if the type of an entity has a default value;

• Otherwise, NullPointerError is thrown.

15.14 Compatibility Features

Some features are added to ArkTS in order to support smooth TypeScript compatibility. Using these features while doing the ArkTS programming is not recommended in most cases.

15.14.1 Extended Conditional Expressions

ArkTS provides extended semantics for conditional expressions to ensure better TypeScript alignment. It afects the semantics of the following:

• Ternary Conditional Expressions;

• Conditional-And Expression;

• Conditional-Or Expression;



• Logical Complement;

• while Statements and do Statements;

• for Statements;

• if Statements.


. Note
The extended semantics is to be deprecated in one of the future versions of ArkTS.

The extended semantics approach is based on the concept of _truthiness _that extends the boolean logic to operands of non-boolean types.
Depending on the kind of a valid expression’s type, the value of the valid expression can be handled as true or false as described in the table below:			
Value Type Kind	When false	When true	ArkTS Code Example to Check

string
empty string
non-empty string
s .length == 0
boolean	false	true	x
char	c '\u0000 '	any value except c '\u0000 '	x
enum	enum constant handled as false	enum constant handled as true	x.valueOf()
number (double/float)	0 or NaN	any other number	n != 0 && ! isNaN(n)
any integer type	== 0	!= 0	i != 0
bigint	== 0n	!= 0n	i != 0n
null or undefined	always	never	x != null or
x != undefined
Union types When value is false ac-
cording to this column		When value is true ac- cording to this column	x != null or
x != undefined for union types with nullish types
Any other nonNullish type never always new SomeType != null			
Extended semantics of _Conditional-And Expression _and _Conditional-Or Expression _afects the resultant type of ex- pressions as follows:

• For _conditional-and _expression A && B:

**– **If the value of A is known at compile time, then the type of an expression is the type of B when A is handled as true, and the type of A otherwise.

**– **If the value of A is unknown at compile time, then the type of an expression is union A | B.

• For _conditional-or _expression A || B:

**– **If the value of A is known at compile time, then the type of an expression is the type of B when A is handled as false, and the type of A otherwise.

**– **If the value of A is unknown at compile time, then the type of an expression is union A | B.

The way this approach works in practice is represented in the example below. Any nonzero number is handled as true. The loop continues until it becomes zero that is handled as false:

1 console.log(typeof (false || 1) )

2 console.log(typeof (true || 1) )

3 for (let i = 10 ; i; i--) {

4 console.log (i)

5 }

6 /* And the output will be

7 int

8 _boolean _9 10

10 _9 _11 _8 _12 _7 _13 _6 _14 _5 _15 _4 _16 _3 _17 _2 _18 _1 _19 */