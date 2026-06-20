# 05 Generics — Test Design Mindmap

```mermaid
mindmap
  root((Generics))
    5.1_Type_Parameters
      Basic Declarations
        Generic class
        Generic interface
        Generic function
        Generic type alias
        Multiple type params
      Constraints
        Class constraint
        Union constraint
        Literal union constraint
        keyof constraint
        Dependent param
      Constraint Violations
        Not satisfied
        Union not satisfied
        Literal constraint
        keyof constraint
        Dependent not satisfied
      Circular Dependencies
        Self-circular
        Mutual circular
        Mutual union circular
        Circular with default
      Default Values
        Type param default
        Multi default
        Func default
        Default equivalence
        Default after no-default
        Default ref forward
      Variance in Generic Methods
        Generic method variance invalid
    5.2_Variance_Wildcard
      Covariant out
        out in return position
        out in readonly position
        out in constructor
      Contravariant in
        in in parameter position
        in in interleave position
      Invariant
        Invariant in any position
      Out-Position Violations
        out in in-position
        out in field
        out in method param
        out in return of method param
      In-Position Violations
        in in out-position return
        in in invariant field
        in in callback return
      Wildcard Subtyping
        Wildcard not subtype any
        Wildcard not subtype constraint
        out wildcard not subtype never
        in wildcard not subtype C
      Wildcard Write Protection
        Wildcard write in pos
        Wildcard write invariant
        in wildcard write
        Wildcard invariant assign
      Runtime
        instanceof wildcard
    5.3_Generic_Instantiations
      Explicit Instantiation
        Class instantiation
        Method instantiation
        Function instantiation
        Type alias instantiation
        Partial instantiation
      Type Arguments
        Number type arg
        Union type arg
        Array type arg
        Tuple type arg
        Func type arg
      Implicit Inference
        Func inference
        Multi-param inference
        Method default from class
      Errors
        Non-generic with args
        Arg count mismatch
        Constraint violation
        Cannot infer
        No context infer
        Default order implicit
      Runtime
        Explicit instantiation
        Implicit instantiation
```
