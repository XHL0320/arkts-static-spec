

**CHAPTER ****TEN**



**INTERFACES**







An interface declaration declares an _interface type_, i.e., a reference type that:

•  Includes properties and methods as its members;

•  Has no instance variables (fields);

•  Usually declares one or more methods;

•  Allows otherwise unrelated classes to provide implementations for the methods, and so implement the interface. Creating an instance of interface type is not possible.

An interface can be declared _direct extension _of one or more other interfaces. If so, the interface inherits all members from the interfaces it extends. Inherited members can be optionally overridden or hidden.

A class can be declared to _directly implement _one or more interfaces. Any instance of a class implements all methods specified by its interface(s).  A class implements all interfaces that its direct superclasses and direct superinterfaces implement. Interface inheritance allows objects to support common behaviors without sharing a superclass.

The value of a variable declared _interface type _can be a reference to any instance of a class that implements the spec- ified interface.  However, it is not enough for a class to implement all methods of an interface.  A class or one of its superclasses must be actually declared to implement an interface. Otherwise, the class is not considered to implement the interface.

The rules of subtyping are discussed in detail in _<font style="color:#355F7C;">Subtyping for Non-Generic Classes and Interfaces </font>_and _<font style="color:#355F7C;">Subtyping for Generic Classes and Interfaces</font>_.









**<font style="color:#20435C;">10.1  Interface Declarations</font>**

_Interface declaration _specifies a new named reference type.

The syntax of _interface declarations _is presented below:



<font style="color:#0D85B5;">interfaceDeclaration </font>:

'<font style="color:#0D85B5;">interface </font>'  <font style="color:#0D85B5;">identifier  typeParameters</font>?

<font style="color:#0D85B5;">interfaceExtendsClause</font>?  '{ '  <font style="color:#0D85B5;">interfaceMember</font><font style="color:#666666;">☆  </font>'} '

_<font style="color:#40808F;">;</font>_

<font style="color:#0D85B5;">interfaceExtendsClause </font>:

'<font style="color:#0D85B5;">extends </font>'  <font style="color:#0D85B5;">interfaceTypeList</font>

_<font style="color:#40808F;">;</font>_

(continues on next page)

**231**





(continued from previous page)





<font style="color:#0D85B5;">interfaceTypeList </font>:

<font style="color:#0D85B5;">typeReference  </font>( ' , '  <font style="color:#0D85B5;">typeReference</font>)<font style="color:#666666;">*</font>

_<font style="color:#40808F;">;</font>_

The _identifier_ in an interface declaration specifies the interface name.

An interface declaration with typeParameters introduces a new generic interface (see_<font style="color:#355F7C;">Generics</font>_).

The scope of an interface declaration is defined in _<font style="color:#355F7C;">Scopes</font>_.









**<font style="color:#20435C;">10.2 Superinterfaces and Subinterfaces</font>**

An interface declared with an extends clause extends all other named interfaces, and thus inherits all their members. Such other named interfaces are _direct_ _superinterfaces_ of a declared interface.  A class that _implements_ the declared interface also implements all interfaces that the interface _extends_.

A compile-time error occurs if:

•  _typeReference_ _丶_ in the extends clause refers directly to, or is an alias of non-interface type.

•  Interface type named by typeReference is not _<font style="color:#355F7C;">Accessible</font>_.

•  Type arguments (see _<font style="color:#355F7C;">Type</font>_<font style="color:#355F7C;"> </font>_<font style="color:#355F7C;">Arguments</font>_) of typeReference denote a parameterized type that is not well-formed (see _<font style="color:#355F7C;">Generic</font>_<font style="color:#355F7C;"> </font>_<font style="color:#355F7C;">Instantiations</font>_).

•  The extends graph has a cycle.

If an interface declaration (possibly generic) I <F1  , . . . ,  Fn > (_n  ≥_ 0) contains an extends clause, then the _direct_ _superinterfaces_ of the interface type I <F1   , . . . ,  Fn > are the types given in the extends clause of the declaration of I.

All _direct_ _superinterfaces_ of the parameterized interface type I <T1   , . . . , Tn > are types J <U1 _θ  _, . . . ,  Uk _θ_>, if:

•  Ti (1 _≤_ _i ≤_ _n_) is the type of a generic interface declaration I <F1   , . . . ,  Fn > (_n > _0);

•  J <U1   , . . . ,  Uk > is a direct superinterface of I <F1   , . . . ,  Fn >; and

•  _θ _is a substitution [F1   :=  T1   , <u>    </u> ,  Fn  := Tn].

The transitive closure of the direct superinterface relationship results in the _superinterface_ relationship.

Interface _I_ is a _subinterface_ of _K_ wherever _K_ is a superinterface of _I_. Interface _K_ is a superinterface of _I_ if:

• _I_ is a direct subinterface of _K_; or

• _K_ is a superinterface of some interface _J_ of which _I_ is, in turn, a subinterface.

There is no single interface to which all interfaces are extensions (unlike class Object to which every class is an extension).

A compile-time error occurs if an interface depends on itself.





**<font style="color:#20435C;">10.3  Interface Members</font>**

An _interface declaration _contains _interface members _which are either properties (see[_<font style="color:#355F7C;">Interface Properties</font>_](#bookmark3)) or methods (see [_<font style="color:#355F7C;">Interface Method Declarations</font>_](#bookmark4)).

The syntax of _interface member _is presented below:



<font style="color:#0D85B5;">interfaceMember</font>

:  <font style="color:#0D85B5;">annotationUsage</font>?

(  <font style="color:#0D85B5;">interfaceProperty</font>

|  <font style="color:#0D85B5;">interfaceMethodDeclaration</font>

|  <font style="color:#0D85B5;">explicitInterfaceMethodOverload </font>)

_<font style="color:#40808F;">;</font>_

The scope of declaration of a member _m _that the interface type I declares or inherits is specified in _<font style="color:#355F7C;">Scopes</font>_.

The usage of annotations is discussed in _<font style="color:#355F7C;">Using Annotations</font>_.

_Interface members _include:

•  Members declared explicitly in the interface declaration;

•  Members inherited from a direct superinterface (see [_<font style="color:#355F7C;">Superinterfaces and Subinterfaces</font>_](#bookmark2)).

A compile-time error occurs if the method explicitly declared by the interface has the same name as the Object’s public method.

1           <font style="color:#007021;">interface  </font>I  {

2                              toString  (p <font style="color:#666666;">: </font><font style="color:#8F2100;">number</font>) <font style="color:#666666;">: </font><font style="color:#007021;">void  </font>_<font style="color:#40808F;">// Compile-time  error</font>_

3                              toString() <font style="color:#666666;">:  </font><font style="color:#8F2100;">string  </font>{ <font style="color:#007021;">return  </font><font style="color:#4070A1;">"some  string"  </font>} _<font style="color:#40808F;">// Compile-time  error </font>_4              }

An interface inherits all members of the interfaces it extends (see [_<font style="color:#355F7C;">Interface Inheritance</font>_](#bookmark5)).

A name in a declaration scope must be unique, i.e., the names of properties and methods of an interface type must not be the same (see [_<font style="color:#355F7C;">Interface Declarations</font>_](#bookmark1)).









**<font style="color:#20435C;">10.4  Interface Properties</font>**

_Interface property _is an _accessor _which can be declared in the form of a field declaration, or a getter or setter declaration, or getter and setter declarations.

The syntax of _interface property _is presented below:



<font style="color:#0D85B5;">interfaceProperty </font>:

'<font style="color:#0D85B5;">readonly </font>'?  <font style="color:#0D85B5;">identifier  </font>'? '?  ' : '  <font style="color:#0D85B5;">type</font>

|   '<font style="color:#0D85B5;">get </font>'  <font style="color:#0D85B5;">identifier  </font>' ( '  ') '  <font style="color:#0D85B5;">returnType</font>

|   '<font style="color:#0D85B5;">set </font>'  <font style="color:#0D85B5;">identifier  </font>' ( '  <font style="color:#0D85B5;">requiredParameter  </font>') '

_<font style="color:#40808F;">;</font>_

An interface property is a _required property _(see [_<font style="color:#355F7C;">Required Interface Properties</font>_](#bookmark6)) if it is one of the following:

•  Explicit _accessor_, i.e., a getter or a setter; or





• Form of a field that has no '? '.

Otherwise, it is an _optional property _(see [_<font style="color:#355F7C;">Optional Interface Properties</font>_](#bookmark7)).

If '? ' is used after the name of the property, then the property type is semantically equivalent to type  |  undefined.



1           <font style="color:#007021;">interface  </font>I  {

2                             property? <font style="color:#666666;">: </font><font style="color:#8F2100;">Type </font>3              }

4            _<font style="color:#40808F;">// is  the  same  as</font>_

5           <font style="color:#007021;">interface  </font>I  {

6                             property <font style="color:#666666;">: </font><font style="color:#8F2100;">Type  </font><font style="color:#666666;">|  </font><font style="color:#007021;">undefined </font>7              }











**<font style="color:#20435C;">10.4.1  Required Interface Properties</font>**

A _required property _defined in the form of a field implicitly defines the following:

•  Getter, if the property is marked as readonly;

•  Otherwise, both a getter and a setter of the same name.

A type annotation for the field defines return type for the getter and type of parameter for the setter. As a result, the following declarations have the same efect:



1              <font style="color:#007021;">interface  </font>Style  {

2                              color <font style="color:#666666;">:  </font><font style="color:#8F2100;">string </font>3              }

4            _<font style="color:#40808F;">// is  the  same  as</font>_

5              <font style="color:#007021;">interface  </font>Style  {

6                              get  color() <font style="color:#666666;">:  </font><font style="color:#8F2100;">string</font>

7                               set  color(s <font style="color:#666666;">:  </font><font style="color:#8F2100;">string</font>) 8              }





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

A _required property _defined in a form of accessors does not define any additional entities in the interface.



A class that implements an interface with properties can also use a field or an accessor notation (see _<font style="color:#355F7C;">Implementing Required Interface Properties</font>_, _<font style="color:#355F7C;">Implementing Optional Interface Properties</font>_).









**<font style="color:#20435C;">10.4.2  Optional Interface Properties</font>**

An _optional property _can be defined in two forms:

•  Short form identifier  '? '  ' : '    T; or

• Explicit form identifier  ' : '    T  |  undefined.





In both cases, identifier has efective type T  |  undefined.

The _optional property _implicitly defines the following:

• A getter (if the property is marked as readonly);

•  Otherwise, both a getter and a setter of the same name.

Accessors have implicitly defined bodies, in this aspect they are similar to _<font style="color:#355F7C;">Default Interface Method Declarations</font>_. However, ArkTS does not support explicitly defined accessors with bodies.

The following declaration:

1           <font style="color:#007021;">interface  </font>I  {

2                              num? <font style="color:#666666;">: </font><font style="color:#8F2100;">number </font>3              }

– implicitly declares two accessors:



1           <font style="color:#007021;">interface  </font>I  {

2                            get num() <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">|  </font><font style="color:#007021;">undefined  </font>{  <font style="color:#007021;">return  undefined  </font>}

3                            set  num(x <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">|  </font><font style="color:#007021;">undefined</font>)  {  <font style="color:#007021;">throw  new  </font>InvalidStoreAccessError  } 4              }

If the default setter is not overridden in a class that implements the interface, InvalidStoreAccessError is thrown at attempt to set value of an optional property. See also _<font style="color:#355F7C;">Implementing Optional Interface Properties</font>_.









**<font style="color:#20435C;">10.5  Interface Method Declarations</font>**

An ordinary _interface method declaration _specifies the method name and signature, and is called _abstract_. Its implicit accessibility is public.

An interface method can have a body (see _<font style="color:#355F7C;">Default Interface Method Declarations</font>_) as an experimental feature.

The syntax of _interface method declaration _is presented below:



<font style="color:#0D85B5;">interfaceMethodDeclaration </font>: <font style="color:#0D85B5;">identifier  signature</font>

|  <font style="color:#0D85B5;">interfaceDefaultMethodDeclaration</font>

_<font style="color:#40808F;">;</font>_











**<font style="color:#20435C;">10.6  Interface Inheritance</font>**

Interface _I _inherits all properties and methods from its direct superinterfaces. Semantic checks are described in _<font style="color:#355F7C;">Over- riding in Interfaces </font>_and _<font style="color:#355F7C;">Implicit Method Overloading</font>_.









<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

The semantic rules of methods apply to properties because any interface property implicitly defines a getter, a setter, or both.



Private methods defined in superinterfaces are not accessible (see _<font style="color:#355F7C;">Accessible</font>_) in the interface body.

A compile-time error occurs if interface _I _declares a private method _m _with a signature compatible with the instance method _m__′  _(see _<font style="color:#355F7C;">Override-Compatible Signatures</font>_) that has any access modifier in the superinterface of _I_.

The same scheme applies to properties and accessors:

1              <font style="color:#007021;">interface  </font>I1  {

2                               prop1 <font style="color:#666666;">:  </font><font style="color:#8F2100;">number</font>

3                              set  prop2  (p <font style="color:#666666;">:  </font><font style="color:#8F2100;">number</font>)

4                              get  prop3  () <font style="color:#666666;">:  </font><font style="color:#8F2100;">number </font>5              }

6              <font style="color:#007021;">interface  </font>I2  {

7                                prop1 <font style="color:#666666;">: </font><font style="color:#8F2100;">number</font>

8                              set  prop2  (p <font style="color:#666666;">: </font><font style="color:#8F2100;">number</font>)

9                              get  prop3  () <font style="color:#666666;">:  </font><font style="color:#8F2100;">number </font>10              }

11              <font style="color:#007021;">interface  </font>I3  <font style="color:#007021;">extends  </font>I1,  I2  {}

12            _<font style="color:#40808F;">//  There  is  only  one property prop1, prop2  and prop3  in  I3</font>_

13

14              <font style="color:#007021;">function  </font>foo  (i3 <font style="color:#666666;">:  </font><font style="color:#8F2100;">I3</font>)  {

15                          i3.prop1 <font style="color:#666666;">=  </font><font style="color:#21804F;">5 </font>_<font style="color:#40808F;">// Setter  for prop1  is  called</font>_

16                          i3.prop1         _<font style="color:#40808F;">// Getter  for prop1  is  called</font>_

17                          i3.prop2 <font style="color:#666666;">=  </font><font style="color:#21804F;">5 </font>_<font style="color:#40808F;">// Setter  for prop2  is  called</font>_

18                       i3.prop2        _<font style="color:#40808F;">// Compile-time  error  as  no  getter  for prop2</font>_

19                       i3.prop3  <font style="color:#666666;">=  </font><font style="color:#21804F;">5 </font>_<font style="color:#40808F;">// Compile-time  error  as  no  getter  for prop3</font>_

20                          i3.prop3         _<font style="color:#40808F;">// Getter  for prop3  is  called</font>_

21              }

