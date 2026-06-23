# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

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
