# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

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
