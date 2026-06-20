# 10 Interfaces — 测试设计脑图

```mermaid
mindmap
  root((10 Interfaces))
    10.1_Interface_Declarations
      compile-pass
        Basic Interface
        Generic Interface
        Interface With Extends
        Multiple Members
    10.2_Superinterfaces
      compile-pass
        Single Extends
        Multiple Extends
        Multi-Level Extends
      compile-fail
        Extends Non-Interface
        Extends Cycle
        Self Extends
        Bad Type Args
    10.3_Interface_Members
      compile-pass
        Property And Method
        Multiple Methods
        Object Method Clash (ISS-10-01 GAP)
      compile-fail
        Duplicate Member
        Object Method Clash Return (ISS-10-02 GAP)
    10.4_Interface_Properties
      compile-pass
        Required Readonly
        Required ReadWrite
        Getter Setter
        Getter Only
        Setter Only
        Optional Property
        Optional Undefined
      compile-fail
        Getter Only Assign
        Setter Only Read
    10.5_Interface_Methods
      compile-pass
        Abstract Method
        Method With Params
        Method With Return
        Method Void
        Class Implements Interface
        Multi Interface Impl
      compile-fail
        Missing Implementation
        Method Signature Mismatch
      runtime
        Interface Impl
        Interface Property
    10.6_Interface_Inheritance
      compile-pass
        Inheritance Chain
        Diamond Inheritance
        Interface Type Var
        Class Extends Implements
      compile-fail
        Inherited Getter Only Write
        Inherited Setter Only Read
```
