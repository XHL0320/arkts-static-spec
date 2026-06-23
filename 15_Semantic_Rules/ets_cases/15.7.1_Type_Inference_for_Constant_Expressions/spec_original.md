# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

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
