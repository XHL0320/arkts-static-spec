# 04 Names, Declarations & Scopes — Test Design Mindmap

```mermaid
mindmap
  root((Names Declarations Scopes))
    4.1_Names
      Simple_Name
        Identifier rules
        Underscore/dollar allowed
      Qualified_Name
        Module member access
        Class static member
        Instance member access
        Multiple dot chaining
      Invalid Names
        Empty name
        Digit start
        Keyword as name
        Special characters
        Type keyword clash
    4.2_Declarations
      Distinguishability
        Different names in same scope
        Overload signature difference
        Class static vs instance
        Class field vs method
      Conflicts
        Same name const + func
        Same name class + var
        Field method same name
        Predefined type clash
        Overload equivalence
        Type erasure
        Ambiguous import
        Duplicate import
    4.3_Scopes
      Module Scope
        Top-level declarations
      Class Scope
        this access
        static access
        Instance vs static boundary
      Block Scope
        let/const block scoping
        Nested blocks
      Shadowing
        Name shadowing in nested scope
      Type Parameter Scope
        Generic type param scope
        Type param in static context
    4.4_Accessible
      Accessibility Rules
        Type name accessible
        Function name accessible
        Variable name accessible
        Module name accessible
      Inaccessibility
        Out of block scope
        Out of function scope
        Use before declare
        Cross-function access
        If-block leak
        Loop variable leak
    4.5_Type_Declarations
      Type Aliases
        Array alias
        Function type alias
        Union alias
        Short name alias
        Generic alias
      Recursive Types
        Recursive array element OK
        Recursive type argument OK
        Generic recursive OK
        Generic union recursive OK
      Invalid Recursion
        Direct self-reference
        Union self-reference
        Circular type argument
        Param self-dependency
        Generic without argument
        Indirect circular
        Generic self-reference
    4.6_Variable_Constant_Declarations
      Variable Declarations
        With type annotation
        Type inferred
        Multiple declarations
        Lambda inference
        Ternary inference
        Null/undefined inference
      Constant Declarations
        With type annotation
        Type inferred
        Multiple constants
        Literal type promotion
      Initialization
        Init reference previous OK
        Init reference forward FAIL
        Init not assignable FAIL
      Invalid Cases
        Var no type no init
        Ambiguous var with init
        Const no init
        Object literal inference
    4.7_Function_Declarations
      Function Signatures
        Full declaration
        Signature only
        No params
        Return void
        Return undefined
        Return inferred
      Parameters
        Readonly param read OK
        Optional with default
        Optional with ?
        Rest array
        Rest tuple
        Rest generic
        Param shadowing
      Invalid Parameters
        Optional before required
        Readonly param assign
        Rest followed by param
        Rest not array
      Return Rules
        Return missing FAIL
        Return never missing
        Implicit undefined
      Native Functions
        Native declaration
        Native with body FAIL
```
