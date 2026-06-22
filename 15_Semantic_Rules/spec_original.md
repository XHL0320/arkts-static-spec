# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

## 15.1 Semantic Essentials

### 15.1.1 Type of Standalone Expression

Standalone expression is an expression for which there is no target type in the context where the expression is used.

The type of a standalone expression is determined as follows:
- In case of Numeric Literals, the type is the default type of a literal: int/long for integer literals; double/float for floating-point literals.
- In case of Constant Expressions, the type is inferred from operand types and operations.
- In case of an Array Literal, the type is inferred from the elements.
- Otherwise, a compile-time error occurs. Specifically, a compile-time error occurs if an object literal is used as a standalone expression.

### 15.1.2 Specifics of Assignment-like Contexts

Assignment-like context can be considered as an assignment `x = expr`.

- If the type of a right-hand-side expression is known from the expression itself, then the Assignability check is performed.
- Otherwise, an attempt is made to apply the type of the left-hand-side expression to the right-hand-side expression.

### 15.1.3 Specifics of Variable Initialization Context

If the variable or a constant declaration has an explicit type annotation, then the same rules as for assignment-like contexts apply.
Otherwise, there are two cases:
- The type of the right-hand-side expression is known from the expression itself, then this type becomes the type of the variable.
- Otherwise, the type of expr is evaluated as type of a standalone expression.

### 15.1.4 Specifics of Numeric Operator Contexts

The postfix and prefix increment and decrement operators evaluate byte and short operands without widening.
For other numeric operators, the operands are widened to a larger numeric type. The minimum type is int.

### 15.1.5 Specifics of String Operator Contexts

If one operand of the binary operator '+' is of type string, then the string conversion applies to another non-string operand.

### 15.1.7 Specifics of Type Parameters

If the type of a left-hand-side expression in assignment-like context is a type parameter, then it provides no additional information for type inference even where a type parameter constraint is set.
If the target type of an expression is a type parameter, then the type of the expression is inferred as the type of a standalone expression.

---

## 15.2 Subtyping

Subtype relationship S<:T means any object of type S can be safely used in any context to replace an object of type T.

Each type is its own subtype and supertype (S<:S).

### 15.2.1 Subtyping for Non-Generic Classes and Interfaces

S is a direct subtype of T when T is mentioned in the extends clause of S.

### 15.2.2 Subtyping for Generic Classes and Interfaces

Generic types are invariant: `Array<Derived>` is NOT a subtype of `Array<Base>`.

### 15.2.5 Subtyping for Union Types

U<:T if and only if each member type of U is a subtype of T.

### 15.2.6 Subtyping for Function Types

Function types are contravariant in parameters and covariant in return type.

---

## 15.12 Type Erasure

Type erasure removes type parameter information, replacing type parameters with their bounds or Object.

Types not preserved by type erasure cannot be used as type arguments for FixedArray instantiations (ESE461884).

---

*摘录日期：2026-06-22*
