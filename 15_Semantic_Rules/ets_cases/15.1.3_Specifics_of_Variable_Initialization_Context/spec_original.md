# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.1.3 Specifics of Variable Initialization Context

If the variable or a constant declaration (see Variable and Constant Declarations) has an explicit type annotation, then the same rules as for _assignment-like contexts _apply. Otherwise, there are two cases for let x = expr (see Type Inference from Initializer) as follows:

• The type of the right-hand-side expression is known from the expression itself, then this type becomes the type of the variable as in the example below:

1 function foo(x : int) {

2 let y = x _// type of 'y' is 'int ' _3 }

• Otherwise, the type of expr is evaluated as type of a standalone expression as in the example below:

1 function foo() {

2 let x = 1 // x is of type 'int ' (default type of '1 ')

3 let y = [ 1 , 2] _// x is of type 'number [] ' _4 }
