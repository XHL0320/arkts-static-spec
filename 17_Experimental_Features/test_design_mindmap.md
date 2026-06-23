# 17 Experimental Features Test Design Mindmap

## 测试分类
- compile-pass: 正向编译用例
- compile-fail: 反向编译用例
- runtime: 运行时用例

## 子章节

- 17.1_Type_char
  - normal: char声明, 赋值, Object子类型
  - edge: U+0000/U+FFFF边界
  - error: 不兼容类型运算

- 17.1.1_char_Literals
  - normal: c'a', c'\n', c'\x7F', c'\\x00'
  - error: c'\u{FFFFF}'超出范围

- 17.1.2_char_Operations
  - normal: char==char, char==int, char<char, char>double
  - error: char与非数值类型比较

- 17.2_Fixed_Size_Array_Types
  - normal: FixedArray声明, 索引, length
  - error: FixedArray与Array互赋值

- 17.2.1_Fixed_Size_Array_Creation
  - normal: 字面量, constructor(len,elem)
  - error: 非preserved类型参数

- 17.3_Value_Array_Types
  - normal: ValueArray<int/double>声明/创建
  - error: ValueArray<string>, union类型

- 17.4_Resizable_Array_Creation_Expressions
  - normal: new T[n](elem)
  - error: 负维度, 非int维度, 类型参数元素

- 17.4.1_Runtime_Evaluation_of_Array_Creation_Expressions
  - runtime: NegativeArraySizeError, 正常创建

- 17.5_Indexable_Types
  - normal: $_get+$_set, 索引读写
  - error: async修饰

- 17.6_Iterable_Types
  - normal: $_iterator(), for-of遍历

- 17.7_Callable_Types
  - normal: static $_invoke/instantiate, C() call
  - error: 同时定义两者

- 17.7.1_Callable_Types_with_invoke_Method
  - normal: $_invoke多签名, 隐式/显式调用

- 17.7.2_Callable_Types_with_instantiate_Method
  - normal: factory参数, 额外参数
  - error: 非factory第一参数

- 17.8.1_For_of_Explicit_Type_Annotation
  - normal: for(let x:Type of iterable)
  - error: 类型不兼容

- 17.9.1_Explicit_Function_Overload
  - normal: overload函数集, 有序解析
  - error: 跨作用域, 未导出

- 17.9.2_Explicit_Class_Method_Overload
  - normal: static/non-static overload
  - error: modifier不匹配

- 17.9.3_Explicit_Interface_Method_Overload
  - normal: 接口overload, 类实现
  - error: 多接口冲突

- 17.9.4_Overload_Name_Same_As_Method_Name
  - normal: overload名=方法名
  - error: 同名方法不在列表中

- 17.9.5_Explicit_Constructor_Overload
  - normal: 命名构造器overload
  - error: 多个overload constructor

- 17.10.1_Native_Functions
  - normal: native函数声明, 无body
  - error: native+body

- 17.10.2_Native_Methods
  - error: native+abstract, native+body

- 17.10.3_Native_Constructors
  - error: native构造器+body

- 17.11.1_Final_Classes
  - normal: final class
  - error: extends final

- 17.11.2_Final_Methods
  - normal: final method
  - error: final+abstract, override final

- 17.11.3_Named_Constructors
  - normal: constructor Name(), new C.Name()
  - error: 同名构造器, 全命名时new X()

- 17.12_Default_Interface_Method_Declarations
  - normal: 接口默认方法, private默认方法

- 17.13.1_Functions_with_Receiver
  - normal: this:Type参数, 两种调用语法
  - edge: 实例方法优先

- 17.13.2_Receiver_Type
  - normal: class/interface/array receiver
  - error: 其他类型

- 17.13.3_Function_Types_with_Receiver
  - normal: (this:T)=>R类型

- 17.13.4_Lambda_Expressions_with_Receiver
  - normal: (this:T)=>{...}

- 17.13.5_Implicit_this_in_Lambda_with_Receiver_Body
  - normal: 省略this.前缀
  - error: 歧义

- 17.14_Trailing_Lambdas
  - normal: f(){body}语法
  - error: 非函数类型最后参数

- 17.15_Accessor_Declarations
  - normal: getter/setter声明使用
  - error: getter作左值, setter取值

- 17.16.1_Destructuring_Assignment
  - normal: [a,,b]=arr解构
  - error: 类型不兼容, 非数组rhs
