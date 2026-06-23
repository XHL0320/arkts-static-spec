# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

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
