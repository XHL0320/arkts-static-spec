# 09 类 - 测试用例目录

**生成日期：** 2026-06-22
**共计：** 368 个测试用例

---

## 9.1 Class Declarations（12 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_01_001_PASS_EMPTY_CLASS | compile-pass | 空类声明 |
| 002 | CLS_09_01_002_PASS_CLASS_WITH_FIELDS | compile-pass | 含字段的类 |
| 003 | CLS_09_01_003_PASS_CLASS_WITH_METHODS | compile-pass | 含方法的类 |
| 004 | CLS_09_01_004_PASS_GENERIC_CLASS | compile-pass | 泛型类声明 |
| 005 | CLS_09_01_005_PASS_CLASS_WITH_CONSTRUCTOR | compile-pass | 含构造器的类 |
| 006 | CLS_09_01_006_FAIL_DUPLICATE_CLASS_MODIFIER | compile-fail | 重复类修饰符 |
| 007 | CLS_09_01_007_FAIL_CLASS_EXTENDS_ITSELF | compile-fail | extends 自身循环 |
| 008 | CLS_09_01_008_FAIL_CLASS_NAME_KEYWORD | compile-fail | 类名为关键字 |
| 009 | CLS_09_01_009_FAIL_CLASS_EXTENDS_INTERFACE | compile-fail | extends 接口 |
| 010 | CLS_09_01_010_RUNTIME_CLASS_INSTANCE | runtime | 实例创建+字段访问 |
| 011 | CLS_09_01_011_RUNTIME_GENERIC_CLASS_INSTANCE | runtime | 泛型实例化 |
| 012 | CLS_09_01_012_RUNTIME_CLASS_METHOD_CALL | runtime | 方法调用 |

## 9.1.1 Abstract Classes（12 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_01_013_PASS_ABSTRACT_CLASS_DECL | compile-pass | abstract 类声明 |
| 002 | CLS_09_01_014_PASS_ABSTRACT_CLASS_CONCRETE_METHOD | compile-pass | abstract 含具体方法 |
| 003 | CLS_09_01_015_PASS_ABSTRACT_SUBCLASS_EXTENDS_ABSTRACT | compile-pass | 抽象子类继承抽象类 |
| 004 | CLS_09_01_016_PASS_NON_ABSTRACT_SUBCLASS | compile-pass | 非抽象子类继承抽象类 |
| 005 | CLS_09_01_017_FAIL_INSTANTIATE_ABSTRACT_CLASS | compile-fail | 实例化抽象类 |
| 006 | CLS_09_01_018_FAIL_NON_ABSTRACT_WITH_ABSTRACT_METHOD | compile-fail | 非抽象类含抽象方法 |
| 007 | CLS_09_01_019_FAIL_ABSTRACT_METHOD_FINAL | compile-fail | abstract+final |
| 008 | CLS_09_01_020_FAIL_ABSTRACT_METHOD_OVERRIDE | compile-fail | abstract+override |
| 009 | CLS_09_01_021_FAIL_NON_ABSTRACT_MISSING_IMPL | compile-fail | 非抽象子类未实现抽象方法 |
| 010 | CLS_09_01_022_RUNTIME_ABSTRACT_SUBCLASS_DISPATCH | runtime | 抽象类→子类派发 |
| 011 | CLS_09_01_023_RUNTIME_ABSTRACT_CONSTRUCTOR_EXEC | runtime | 抽象类构造器执行 |
| 012 | CLS_09_01_024_RUNTIME_MULTI_LEVEL_ABSTRACT | runtime | 多层抽象继承 |

## 9.2 Class Extension Clause（13 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_02_001_PASS_EXTENDS_CLASS | compile-pass | extends 合法类 |
| 002 | CLS_09_02_002_PASS_MULTI_LEVEL_EXTENDS | compile-pass | 多层继承 |
| 003 | CLS_09_02_003_PASS_NO_EXTENDS_IMPLICIT_OBJECT | compile-pass | 默认继承Object |
| 004 | CLS_09_02_004_PASS_EXTENDS_ACCESSIBLE_CLASS | compile-pass | 继承可访问类 |
| 005 | CLS_09_02_005_FAIL_EXTENDS_INTERFACE | compile-fail | extends 接口 |
| 006 | CLS_09_02_006_FAIL_EXTENDS_ENUM | compile-fail | extends 枚举 |
| 007 | CLS_09_02_007_FAIL_EXTENDS_CYCLE | compile-fail | extends 循环 |
| 008 | CLS_09_02_008_FAIL_EXTENDS_INACCESSIBLE | compile-fail | extends 不可访问类 |
| 009 | CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT | compile-fail | 显式extends Object ⚠️SPEC不一致 |
| 010 | CLS_09_02_010_RUNTIME_INHERIT_CHAIN | runtime | 继承链实例化 |
| 011 | CLS_09_02_011_RUNTIME_INSTANCEOF_OBJECT | runtime | instanceof Object |
| 012 | CLS_09_02_012_RUNTIME_INHERIT_METHOD_CALL | runtime | 继承方法调用 |
| 013 | CLS_09_02_013_FAIL_EXTENDS_UNION_TYPE | compile-fail | extends union类型 |

## 9.3 Class Implementation Clause（10 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_03_001_PASS_IMPLEMENTS_SINGLE_INTERFACE | compile-pass | 单接口实现 |
| 002 | CLS_09_03_002_PASS_IMPLEMENTS_MULTI_INTERFACE | compile-pass | 多接口实现 |
| 003 | CLS_09_03_003_PASS_IMPLEMENTS_ALL_METHODS | compile-pass | 实现所有接口方法 |
| 004 | CLS_09_03_004_PASS_REPEATED_INTERFACE_IGNORED | compile-pass | 重复接口被忽略 |
| 005 | CLS_09_03_005_FAIL_INACCESSIBLE_INTERFACE | compile-fail | 不可访问接口 |
| 006 | CLS_09_03_006_FAIL_SAME_GENERIC_DIFF_INSTANTIATION | compile-fail | 同泛型不同实例化 |
| 007 | CLS_09_03_007_FAIL_FIELD_METHOD_NAME_CONFLICT | compile-fail | 字段方法同名冲突 |
| 008 | CLS_09_03_008_FAIL_NOT_IMPLEMENTED_INTERFACE_METHOD | compile-fail | 未实现接口方法 |
| 009 | CLS_09_03_009_RUNTIME_INTERFACE_DISPATCH | runtime | 接口方法派发 |
| 010 | CLS_09_03_010_RUNTIME_MULTI_INTERFACE_CALL | runtime | 多接口调用 |

## 9.3.1 Implementing Required Interface Properties（17 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_03_1_001_PASS_FIELD_IMPL_INTERFACE_PROPERTY | compile-pass | 字段实现接口属性 |
| 002 | CLS_09_03_1_002_PASS_READONLY_FIELD_IMPL_READONLY | compile-pass | readonly字段实现readonly属性 |
| 003 | CLS_09_03_1_003_PASS_GETTER_SETTER_IMPL_PROPERTY | compile-pass | getter+setter实现属性 |
| 004 | CLS_09_03_1_004_PASS_FIELD_IMPL_READONLY_PROPERTY | compile-pass | writeable字段实现readonly属性 |
| 005 | CLS_09_03_1_005_PASS_GETTER_IMPL_READONLY_PROPERTY | compile-pass | getter实现readonly属性 |
| 006 | CLS_09_03_1_006_PASS_GETTER_IMPL_INTERFACE_GETTER | compile-pass | getter实现接口getter |
| 007 | CLS_09_03_1_007_FAIL_READONLY_IMPL_WRITEABLE | compile-fail | readonly字段实现writeable属性 |
| 008 | CLS_09_03_1_008_FAIL_GETTER_ONLY_IMPL_WRITEABLE | compile-fail | getter-only实现writeable属性 |
| 009 | CLS_09_03_1_009_FAIL_SETTER_ONLY_IMPL_WRITEABLE | compile-fail | setter-only实现writeable属性 |
| 010 | CLS_09_03_1_010_FAIL_NO_IMPL_REQUIRED_PROPERTY | compile-fail | 无实现必需属性 |
| 011 | CLS_09_03_1_011_FAIL_OVERRIDE_FIELD_BY_ACCESSOR | compile-fail | 覆盖超类字段→accessor |
| 012 | CLS_09_03_1_012_RUNTIME_FIELD_IMPL_PROPERTY | runtime | 字段实现运行时 |
| 013 | CLS_09_03_1_013_RUNTIME_INTERFACE_REF_ACCESS | runtime | 接口引用隐式getter |
| 014 | CLS_09_03_1_014_RUNTIME_READONLY_IMPL | runtime | readonly属性运行时 |
| 015 | CLS_09_03_1_015_FAIL_SETTER_ONLY_IMPL_READONLY | compile-fail | setter-only实现readonly属性 |
| 016 | CLS_09_03_1_016_FAIL_FIELD_IMPL_DIFF_TYPE_PROPERTY | compile-fail | getter+setter不同类型用field实现 |
| 017 | CLS_09_03_1_017_PASS_ACCESSOR_IMPL_DIFF_TYPE_PROPERTY | compile-pass | getter+setter不同类型用accessor实现 |

## 9.3.2 Implementing Optional Interface Properties（9 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_03_2_001_PASS_NO_IMPL_OPTIONAL | compile-pass | 不实现可选属性 |
| 002 | CLS_09_03_2_002_PASS_OPTIONAL_FIELD_IMPL | compile-pass | optional字段实现 |
| 003 | CLS_09_03_2_003_PASS_ACCESSOR_IMPL_OPTIONAL | compile-pass | accessor实现可选属性 |
| 004 | CLS_09_03_2_004_FAIL_NON_OPTIONAL_IMPL_OPTIONAL | compile-fail | 非可选字段实现可选属性 |
| 005 | CLS_09_03_2_005_RUNTIME_OPTIONAL_FIELD_ACCESS | runtime | optional字段运行时 |
| 006 | CLS_09_03_2_006_RUNTIME_DEFAULT_ACCESSOR_UNDEFINED | runtime | 默认accessor返回undefined |
| 007 | CLS_09_03_2_007_RUNTIME_OPTIONAL_PROPERTY_SET_ERROR | runtime | 不实现可选属性后set→runtime error |
| 008 | CLS_09_03_2_008_PASS_GETTER_ONLY_IMPL_OPTIONAL | compile-pass | 只有getter实现可选属性 |
| 009 | CLS_09_03_2_009_PASS_SETTER_ONLY_IMPL_OPTIONAL | compile-pass | 只有setter实现可选属性 |

## 9.4 Class Members（10 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_04_001_PASS_STATIC_INSTANCE_SAME_NAME | compile-pass | static/instance同名 |
| 002 | CLS_09_04_002_PASS_CLASS_WITH_ALL_MEMBER_TYPES | compile-pass | 含所有成员类型 |
| 003 | CLS_09_04_003_PASS_INHERIT_PUBLIC_PROTECTED | compile-pass | 继承public/protected |
| 004 | CLS_09_04_004_FAIL_FIELD_METHOD_SAME_NAME | compile-fail | 同scope字段方法同名 |
| 005 | CLS_09_04_005_FAIL_FIELD_FIELD_SAME_NAME | compile-fail | 同scope两字段同名 |
| 006 | CLS_09_04_006_FAIL_METHOD_METHOD_SAME_NAME | compile-fail | 同scope同签名方法 |
| 007 | CLS_09_04_007_RUNTIME_STATIC_INSTANCE_DISTINCT | runtime | static/instance区分 |
| 008 | CLS_09_04_008_RUNTIME_MEMBER_ACCESS | runtime | 成员访问 |
| 009 | CLS_09_04_009_PASS_STATIC_INIT_BLOCK | compile-pass | 静态初始化块 |
| 010 | CLS_09_04_010_PASS_METHOD_OVERLOAD | compile-pass | 方法重载 |

## 9.5 Access Modifiers（4 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_05_001_PASS_DEFAULT_PUBLIC | compile-pass | 默认public |
| 002 | CLS_09_05_002_PASS_ALL_MODIFIER_COMBOS | compile-pass | 三种修饰符 |
| 003 | CLS_09_05_003_FAIL_PRIVATE_ACCESS_OUTSIDE | compile-fail | 类外访问private |
| 004 | CLS_09_05_004_RUNTIME_PUBLIC_ACCESS | runtime | public运行时 |

## 9.5.1 Private Access Modifier（9 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_05_1_001_PASS_PRIVATE_ACCESS_IN_CLASS | compile-pass | 类内访问private |
| 002 | CLS_09_05_1_002_PASS_SUBCLASS_REUSE_PRIVATE_NAME | compile-pass | 子类重用private名称 |
| 003 | CLS_09_05_1_003_PASS_PRIVATE_CONSTRUCTOR_IN_CLASS | compile-pass | private构造器 |
| 004 | CLS_09_05_1_004_FAIL_PRIVATE_FIELD_OUTSIDE | compile-fail | 类外访问private字段 |
| 005 | CLS_09_05_1_005_FAIL_PRIVATE_METHOD_OUTSIDE | compile-fail | 类外访问private方法 |
| 006 | CLS_09_05_1_006_FAIL_PRIVATE_METHOD_IN_SUBCLASS | compile-fail | 子类访问private方法 |
| 007 | CLS_09_05_1_007_FAIL_PRIVATE_FIELD_IN_SUBCLASS | compile-fail | 子类访问private字段 |
| 008 | CLS_09_05_1_008_RUNTIME_PRIVATE_ACCESS_IN_CLASS | runtime | private类内访问 |
| 009 | CLS_09_05_1_009_RUNTIME_SUBCLASS_REUSE_NAME | runtime | 子类重用名称 |

## 9.5.2 Protected Access Modifier（7 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_05_2_001_PASS_PROTECTED_ACCESS_IN_CLASS | compile-pass | 类内访问protected |
| 002 | CLS_09_05_2_002_PASS_PROTECTED_ACCESS_IN_SUBCLASS | compile-pass | 子类访问protected |
| 003 | CLS_09_05_2_003_FAIL_PROTECTED_ACCESS_OUTSIDE | compile-fail | 外部访问protected |
| 004 | CLS_09_05_2_004_FAIL_PROTECTED_FIELD_OUTSIDE | compile-fail | 外部访问protected字段 |
| 005 | CLS_09_05_2_005_RUNTIME_PROTECTED_IN_SUBCLASS | runtime | protected子类访问 |
| 006 | CLS_09_05_2_006_RUNTIME_PROTECTED_METHOD_DISPATCH | runtime | protected方法派发 |
| 007 | CLS_09_05_2_007_FAIL_PROTECTED_CTOR_INSTANTIATION | compile-fail | protected构造器外部实例化 |

## 9.5.3 Public Access Modifier（4 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_05_3_001_PASS_PUBLIC_ACCESS_EVERYWHERE | compile-pass | public处处可访问 |
| 002 | CLS_09_05_3_002_PASS_IMPLICIT_PUBLIC | compile-pass | 无修饰符默认public |
| 003 | CLS_09_05_3_003_RUNTIME_PUBLIC_ACCESS | runtime | public运行时 |
| 004 | CLS_09_05_3_004_FAIL_PUBLIC_MEMBER_INACCESSIBLE_TYPE | compile-fail | public成员类型不可访问 |

## 9.6 Field Declarations（8 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_06_0001_PASS_FIELD_BASIC | compile-pass | 基本字段声明 |
| 002 | CLS_09_06_0002_PASS_FIELD_INITIALIZER | compile-pass | 字段初始化器 |
| 003 | CLS_09_06_0003_PASS_STATIC_INSTANCE_FIELD | compile-pass | static/instance字段 |
| 004 | CLS_09_06_0004_FAIL_DUPLICATE_FIELD_MODIFIER | compile-fail | 重复字段修饰符 |
| 005 | CLS_09_06_0005_FAIL_FIELD_METHOD_SAME_NAME | compile-fail | 字段方法同名 |
| 006 | CLS_09_06_0006_FAIL_FIELD_IMPL_TYPE_MISMATCH | compile-fail | 接口属性类型不匹配 |
| 007 | CLS_09_06_0007_RUNTIME_FIELD_ACCESS | runtime | 字段访问运行时 |
| 008 | CLS_09_06_0008_RUNTIME_FIELD_INITIALIZER_EXEC | runtime | 初始化器执行 |

## 9.6.1 Static and Instance Fields（7 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_06_1_001_PASS_STATIC_FIELD_BASIC | compile-pass | static字段基本 |
| 002 | CLS_09_06_1_002_PASS_INSTANCE_FIELD_BASIC | compile-pass | instance字段基本 |
| 003 | CLS_09_06_1_003_PASS_STATIC_FIELD_ACCESS_BY_CLASSNAME | compile-pass | 类名访问static |
| 004 | CLS_09_06_1_004_FAIL_STATIC_FIELD_GENERIC_PARAM | compile-fail | static使用泛型参数 |
| 005 | CLS_09_06_1_005_FAIL_INSTANCE_ACCESS_STATIC | compile-fail | 实例访问static |
| 006 | CLS_09_06_1_006_RUNTIME_STATIC_FIELD_SHARED | runtime | static字段共享 |
| 007 | CLS_09_06_1_007_RUNTIME_INSTANCE_FIELD_PER_OBJ | runtime | instance字段独立 |

## 9.6.2 Readonly Constant Fields（6 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_06_2_001_PASS_READONLY_FIELD | compile-pass | readonly字段 |
| 002 | CLS_09_06_2_002_PASS_STATIC_READONLY | compile-pass | static readonly |
| 003 | CLS_09_06_2_003_FAIL_READONLY_REASSIGN | compile-fail | readonly重新赋值 |
| 004 | CLS_09_06_2_004_FAIL_STATIC_READONLY_REASSIGN | compile-fail | static readonly重新赋值 |
| 005 | CLS_09_06_2_005_RUNTIME_READONLY_ACCESS | runtime | readonly访问 |
| 006 | CLS_09_06_2_006_RUNTIME_READONLY_INIT_IN_CTOR | runtime | 构造器初始化readonly |

## 9.6.3 Optional Fields（5 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_06_3_001_PASS_OPTIONAL_FIELD_NO_INIT | compile-pass | optional无初始化器 |
| 002 | CLS_09_06_3_002_PASS_OPTIONAL_FIELD_WITH_INIT | compile-pass | optional含初始化器 |
| 003 | CLS_09_06_3_003_FAIL_OPTIONAL_ASSIGN_TO_NONNULLISH | compile-fail | optional赋值给non-nullish |
| 004 | CLS_09_06_3_004_RUNTIME_OPTIONAL_DEFAULT_UNDEFINED | runtime | optional默认undefined |
| 005 | CLS_09_06_3_005_RUNTIME_OPTIONAL_WITH_VALUE | runtime | optional赋值后访问 |

## 9.6.4 Field Initialization（6 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_06_4_001_PASS_FIELD_INITIALIZER_EXPR | compile-pass | 字段初始化器表达式 |
| 002 | CLS_09_06_4_002_PASS_FIELD_DEFAULT_VALUE | compile-pass | 字段默认值 |
| 003 | CLS_09_06_4_003_FAIL_FIELD_THIS_INITIALIZER | compile-fail | this在初始化器 ⚠️SPEC不一致 |
| 004 | CLS_09_06_4_004_RUNTIME_FIELD_INIT_ORDER | runtime | 字段初始化顺序 |
| 005 | CLS_09_06_4_005_RUNTIME_INITIALIZER_EVAL | runtime | 初始化器求值 |
| 006 | CLS_09_06_4_006_FAIL_SUPER_IN_INITIALIZER | compile-fail | super在初始化器 |

## 9.6.5 Fields with Late Initialization（9 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_06_5_001_PASS_LATE_INIT_FIELD | compile-pass | late init字段 |
| 002 | CLS_09_06_5_002_PASS_LATE_INIT_ASSIGN_THEN_READ | compile-pass | 初始化后读取 |
| 003 | CLS_09_06_5_003_FAIL_LATE_INIT_STATIC | compile-fail | static late init |
| 004 | CLS_09_06_5_004_FAIL_LATE_INIT_READONLY | compile-fail | readonly late init |
| 005 | CLS_09_06_5_005_FAIL_LATE_INIT_OPTIONAL | compile-fail | optional late init ⚠️SPEC不一致 |
| 006 | CLS_09_06_5_006_FAIL_LATE_INIT_WITH_INITIALIZER | compile-fail | late init含初始化器 |
| 007 | CLS_09_06_5_007_RUNTIME_LATE_INIT_ASSIGN_READ | runtime | 初始化后读取运行时 |
| 008 | CLS_09_06_5_008_RUNTIME_LATE_INIT_UNINIT_ERROR | runtime | 未初始化读取runtime error |
| 009 | CLS_09_06_5_009_FAIL_LATE_INIT_NULLISH_TYPE | compile-fail | late init为nullish类型 |

## 9.6.6 Override Fields（12 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_06_6_001_PASS_OVERRIDE_SAME_TYPE_FIELD | compile-pass | override同类型字段 |
| 002 | CLS_09_06_6_002_PASS_OVERRIDE_FIELD_INITIALIZER | compile-pass | override字段初始化器 |
| 003 | CLS_09_06_6_003_PASS_OVERRIDE_FIELD_IN_CTOR | compile-pass | 构造器中初始化override |
| 004 | CLS_09_06_6_004_FAIL_OVERRIDE_FIELD_TYPE_MISMATCH | compile-fail | override类型不匹配 |
| 005 | CLS_09_06_6_005_FAIL_OVERRIDE_FIELD_ACCESS_MISMATCH | compile-fail | override修饰符不匹配 |
| 006 | CLS_09_06_6_006_FAIL_OVERRIDE_STATIC_FIELD | compile-fail | static+override |
| 007 | CLS_09_06_6_007_FAIL_OVERRIDE_NO_BASE_FIELD | compile-fail | override不存在字段 |
| 008 | CLS_09_06_6_008_RUNTIME_OVERRIDE_FIELD_VALUE | runtime | override字段值运行时 |
| 009 | CLS_09_06_6_009_RUNTIME_OVERRIDE_FIELD_INIT_ORDER | runtime | override字段初始化顺序 |
| 010 | CLS_09_06_6_010_FAIL_OVERRIDE_READONLY_ON_NON_READONLY | compile-fail | override readonly加到非readonly |
| 011 | CLS_09_06_6_011_FAIL_OVERRIDE_FIELD_COVERS_ACCESSOR | compile-fail | override field覆盖getter/setter |
| 012 | CLS_09_06_6_012_PASS_GENERIC_OVERRIDE_FIELD_TYPE | compile-pass | 泛型override field类型匹配 |

---

## 9.7 Method Declarations（8 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_07_001_PASS_GENERAL_METHOD_SYNTAX | compile-pass | 方法声明基本语法 |
| 002 | CLS_09_07_002_PASS_METHOD_MODIFIER_COMBO | compile-pass | 合法修饰符组合 |
| 003 | CLS_09_07_003_PASS_METHOD_IMPLEMENTS_INTERFACE | compile-pass | 实现接口方法 |
| 004 | CLS_09_07_004_FAIL_METHOD_FIELD_CONFLICT | compile-fail | 方法/字段名冲突 |
| 005 | CLS_09_07_005_FAIL_DUPLICATE_MODIFIER | compile-fail | 重复修饰符 |
| 006 | CLS_09_07_006_FAIL_STATIC_ABSTRACT_COMBO | compile-fail | static+abstract 组合 |
| 007 | CLS_09_07_007_RUNTIME_METHOD_DISPATCH | runtime | 方法调度 |
| 008 | CLS_09_07_008_RUNTIME_VOID_METHOD_CALL | runtime | void 方法调用 |

## 9.7.1 Static Methods（18 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_07_001_PASS_STATIC_METHOD_BASIC | compile-pass | static 基本语法 |
| 004 | CLS_09_07_004_PASS_STATIC_METHOD_ACCESS_PROTECTED_PRIVATE | compile-pass | 保护/私有静态访问 |
| 040 | CLS_09_07_040_PASS_STATIC_MULTI_PARAM | compile-pass | 多参数静态方法 |
| 002 | CLS_09_07_002_FAIL_STATIC_ABSTRACT_THIS | compile-fail | static+abstract |
| 005 | CLS_09_07_005_FAIL_STATIC_METHOD_THIS_KEYWORD | compile-fail | static 中 this |
| 006 | CLS_09_07_006_FAIL_STATIC_METHOD_SUPER_KEYWORD | compile-fail | static 中 super |
| 007 | CLS_09_07_007_FAIL_STATIC_METHOD_TYPE_PARAMETER | compile-fail | static 类型参数 |
| 009 | CLS_09_07_009_FAIL_STATIC_METHOD_OVERRIDE_MODIFIER | compile-fail | static+override |
| 010 | CLS_09_07_010_FAIL_STATIC_METHOD_CALLED_ON_INSTANCE | compile-fail | 实例调用静态方法 |
| 017 | CLS_09_07_017_FAIL_STATIC_OVERRIDE | compile-fail | static 不允许 override |
| 022 | CLS_09_07_022_FAIL_STATIC_WITH_ABSTRACT | compile-fail | static+abstract |
| 028 | CLS_09_07_028_FAIL_STATIC_THIS | compile-fail | static this 引用 |
| 029 | CLS_09_07_029_FAIL_STATIC_SUPER | compile-fail | static super 引用 |
| 003 | CLS_09_07_003_RUNTIME_STATIC_METHOD_CALL | runtime | 静态方法调用 |
| 008 | CLS_09_07_008_RUNTIME_STATIC_METHOD_NOT_INHERITED | runtime | 静态不继承 |
| 021 | CLS_09_07_021_RUNTIME_STATIC_ACCESS_PROTECTED | runtime | 静态保护访问 |
| 038 | CLS_09_07_038_RUNTIME_STATIC_FACTORY | runtime | 静态工厂模式 |
| 041 | CLS_09_07_041_RUNTIME_STATIC_CALC | runtime | 静态计算 |

## 9.7.2 Instance Methods（12 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 004 | CLS_09_07_004_PASS_INSTANCE_METHOD_BASIC | compile-pass | 实例方法基本 |
| 015 | CLS_09_07_015_PASS_INSTANCE_METHOD_THIS_FIELDS | compile-pass | this 访问字段 |
| 016 | CLS_09_07_016_PASS_INSTANCE_METHOD_INTERFACE_IMPL | compile-pass | 接口方法实现 |
| 018-1 | CLS_09_07_018_PASS_INSTANCE_METHOD_COMPLEX_PARAMS | compile-pass | 复杂参数 |
| 018-2 | CLS_09_07_018_PASS_INSTANCE_OVERRIDE_INTERFACE | compile-pass | override 接口 |
| 019 | CLS_09_07_019_PASS_INSTANCE_METHOD_PARAM_SHADOW | compile-pass | 参数遮蔽 |
| 030 | CLS_09_07_030_PASS_INSTANCE_ACCESS_THIS | compile-pass | this 访问 |
| 020 | CLS_09_07_020_FAIL_INSTANCE_METHOD_DUP_SIG | compile-fail | 签名冲突 |
| 048 | CLS_09_07_048_FAIL_METHOD_NAME_CONFLICT | compile-fail | 方法名冲突 |
| 017 | CLS_09_07_017_RUNTIME_INSTANCE_METHOD_CALLS | runtime | 实例方法调用 |
| 034 | CLS_09_07_034_RUNTIME_INSTANCE_THIS_FIELD | runtime | this 字段运行时 |
| 049 | CLS_09_07_049_RUNTIME_OVERRIDE_CHAIN | runtime | override 链 |

## 9.7.3 Abstract Methods（17 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 005 | CLS_09_07_005_PASS_ABSTRACT_METHOD_IMPL | compile-pass | 抽象方法实现 |
| 020 | CLS_09_07_020_PASS_ABSTRACT_OVERRIDE_NONABSTRACT | compile-pass | 重写抽象 |
| 021 | CLS_09_07_021_PASS_ABSTRACT_OVERRIDE_INTERFACE | compile-pass | 接口抽象方法 |
| 022 | CLS_09_07_022_PASS_ABSTRACT_OVERRIDE_ABSTRACT | compile-pass | 抽象重写抽象 |
| 006 | CLS_09_07_006_FAIL_ABSTRACT_PRIVATE_NONABSTRACT | compile-fail | abstract+private |
| 015 | CLS_09_07_015_FAIL_ABSTRACT_STATIC | compile-fail | abstract+static |
| 016 | CLS_09_07_016_FAIL_ABSTRACT_FINAL | compile-fail | abstract+final |
| 017 | CLS_09_07_017_FAIL_ABSTRACT_NATIVE | compile-fail | abstract+native |
| 018 | CLS_09_07_018_FAIL_ABSTRACT_ASYNC | compile-fail | abstract+async |
| 019-1 | CLS_09_07_019_FAIL_ABSTRACT_NOT_IMPLEMENTED | compile-fail | 未实现抽象 |
| 019-2 | CLS_09_07_019_FAIL_ABSTRACT_STATIC | compile-fail | abstract+static |
| 039 | CLS_09_07_039_FAIL_ABSTRACT_NATIVE | compile-fail | abstract+native |
| 020 | CLS_09_07_020_RUNTIME_ABSTRACT_DISPATCH | runtime | 抽象方法派发 |
| 023 | CLS_09_07_023_RUNTIME_ABSTRACT_DISPATCH | runtime | 多态派发 |
| 024 | CLS_09_07_024_RUNTIME_ABSTRACT_MULTILEVEL | runtime | 多层抽象 |
| 026 | CLS_09_07_026_RUNTIME_ABSTRACT_OVERRIDE_NONABSTRACT | runtime | 抽象→非抽象 |
| 035 | CLS_09_07_035_RUNTIME_ABSTRACT_MULTI_IMPL | runtime | 多实现 |

## 9.7.4 Async Methods（21 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 014 | CLS_09_07_014_PASS_ASYNC_METHOD_BASIC | compile-pass | async 基本语法 |
| 042 | CLS_09_07_042_PASS_ASYNC_RETURN_PROMISE | compile-pass | async 返回 Promise |
| 045 | CLS_09_07_045_PASS_ASYNC_STATIC | compile-pass | static async |
| 046 | CLS_09_07_046_PASS_ASYNC_RETURN_T | compile-pass | async 返回 T 装箱 |
| 048 | CLS_09_07_048_PASS_ASYNC_VOID_RETURN | compile-pass | async void 返回 |
| 060 | CLS_09_07_060_PASS_ASYNC_FINAL_METHOD | compile-pass | final async (es2panda 接受) |
| 043 | CLS_09_07_043_FAIL_ASYNC_ABSTRACT | compile-fail | async+abstract |
| 047 | CLS_09_07_047_FAIL_ASYNC_WRONG_PROMISE_SIG | compile-fail | Promise 签名不匹配 |
| 049 | CLS_09_07_049_FAIL_ASYNC_OVERLOAD | compile-fail | async 不支持 overload |
| 050 | CLS_09_07_050_FAIL_ASYNC_NON_PROMISE_RETURN | compile-fail | 非 Promise 返回 |
| 051 | CLS_09_07_051_FAIL_ASYNC_NATIVE | compile-fail | async+native |
| 052 | CLS_09_07_052_FAIL_ASYNC_STATIC_FINAL | compile-fail | async+static+final |
| 053 | CLS_09_07_053_FAIL_ASYNC_OVERRIDE_WRONG_SIG | compile-fail | override 签名不匹配 |
| 054 | CLS_09_07_054_FAIL_ASYNC_NON_ABSTRACT_EMPTY_BODY | compile-fail | 非抽象空体 |
| 061 | CLS_09_07_061_FAIL_ASYNC_OVERRIDE_WITHOUT_ASYNC | compile-fail | 缺少 async |
| 044 | CLS_09_07_044_RUNTIME_ASYNC_CALL | runtime | async 调用 |
| 055 | CLS_09_07_055_RUNTIME_ASYNC_AWAIT_PROMISE | runtime | await Promise |
| 056 | CLS_09_07_056_RUNTIME_ASYNC_STATIC_CALL | runtime | static async |
| 057 | CLS_09_07_057_RUNTIME_ASYNC_MULTIPLE_AWAITS | runtime | 多次 await |
| 058 | CLS_09_07_058_RUNTIME_ASYNC_CHAIN | runtime | async 链式 |
| 059 | CLS_09_07_059_RUNTIME_ASYNC_INSTANCE_METHOD | runtime | 实例 async |

## 9.7.5 Overriding Methods（9 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 007 | CLS_09_07_007_PASS_OVERRIDE_METHOD | compile-pass | override 基本 |
| 015 | CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT | compile-pass | 不同默认值(CLS-I2) |
| 017 | CLS_09_07_017_PASS_OVERRIDE_INTERFACE_DEFAULT | compile-pass | 接口默认方法 |
| 018 | CLS_09_07_018_PASS_OVERRIDE_COVARIANT_RETURN | compile-pass | 协变返回 |
| 008 | CLS_09_07_008_FAIL_OVERRIDE_NOTHING_STATIC | compile-fail | 无处覆盖+static |
| 016 | CLS_09_07_016_FAIL_OVERRIDE_STATIC | compile-fail | override+static |
| 019 | CLS_09_07_019_RUNTIME_OVERRIDE_BASE_REF | runtime | 基类引用调用 |
| 020 | CLS_09_07_020_RUNTIME_OVERRIDE_MULTILEVEL | runtime | 多层覆盖 |
| 036 | CLS_09_07_036_RUNTIME_OVERRIDE_DEFAULT_PARAM | runtime | 默认参数覆盖 |

## 9.7.6 Native Methods（3 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 045 | CLS_09_07_045_PASS_NATIVE_DECLARATION | compile-pass | native 声明语法 |
| 046 | CLS_09_07_046_PASS_NATIVE_STATIC | compile-pass | native static (CLS-I4) |
| 013 | CLS_09_07_013_FAIL_NATIVE_WITH_BODY | compile-fail | native 不能有体 |

## 9.7.7 Method Body（13 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 010 | CLS_09_07_010_PASS_METHOD_BODY_VALID | compile-pass | 合法方法体 |
| 019 | CLS_09_07_019_PASS_IF_ELSE_BOTH_RETURN | compile-pass | 分支返回完备 |
| 020 | CLS_09_07_020_PASS_METHOD_BODY_EDGE_CASES | compile-pass | 边界情况 |
| 025 | CLS_09_07_025_PASS_ALL_PATHS_RETURN | compile-pass | 全路径返回 |
| 009 | CLS_09_07_009_FAIL_MISSING_RETURN_AND_BODY | compile-fail | 缺少返回/体 |
| 015 | CLS_09_07_015_FAIL_VOID_RETURN_VALUE | compile-fail | void 返回值 |
| 016 | CLS_09_07_016_FAIL_NATIVE_BLOCK_BODY | compile-fail | native 块体 |
| 017 | CLS_09_07_017_FAIL_NON_VOID_MISSING_RETURN | compile-fail | 非 void 缺返回 |
| 018 | CLS_09_07_018_FAIL_EMPTY_BODY_SEMICOLON | compile-fail | 空体分号 |
| 024 | CLS_09_07_024_FAIL_NO_RETURN_ON_PATH | compile-fail | 遗漏返回路径 |
| 032 | CLS_09_07_032_FAIL_VOID_RETURN_VALUE | compile-fail | void 返回值 |
| 021 | CLS_09_07_021_RUNTIME_COMPLEX_CONTROL_FLOW | runtime | 复杂控制流 |
| 033 | CLS_09_07_033_RUNTIME_METHOD_BODY_CONTROL_FLOW | runtime | 控制流返回 |

## 9.7.8 Methods Returning this（8 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 011 | CLS_09_07_011_PASS_METHOD_RETURN_THIS | compile-pass | this 返回类型 |
| 016 | CLS_09_07_016_PASS_GENERIC_RETURN_THIS | compile-pass | 泛型 this 返回 |
| 013 | CLS_09_07_013_FAIL_OVERRIDE_WRONG_RETURN_TYPE | compile-fail | override 错误返回 |
| 014 | CLS_09_07_014_FAIL_RETURN_NON_THIS | compile-fail | 返回非 this |
| 037 | CLS_09_07_037_FAIL_RETURN_NON_THIS | compile-fail | 返回非 this |
| 012 | CLS_09_07_012_RUNTIME_RETURN_THIS | runtime | this 返回接口 |
| 015 | CLS_09_07_015_RUNTIME_GENERIC_RETURN_THIS | runtime | 泛型 this 返回 |
| 027 | CLS_09_07_027_RUNTIME_CHAIN_RETURN_THIS | runtime | 链式调用 |

## 9.8 Class Accessor Declarations（31 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_08_001_PASS_BASIC_GETTER_SETTER | compile-pass | 基本 getter/setter |
| 002 | CLS_09_08_002_PASS_GETTER_INFERRED_TYPE | compile-pass | getter 类型推断 |
| 003 | CLS_09_08_003_PASS_OVERRIDE_ACCESSOR_COVARIANT | compile-pass | override 协变 |
| 008 | CLS_09_08_008_PASS_GETTER_SETTER_MODIFIER_MISMATCH | compile-pass | 修饰符不匹配(CLS-I1) |
| 015 | CLS_09_08_015_PASS_GETTER_ONLY | compile-pass | 仅 getter |
| 016 | CLS_09_08_016_PASS_SETTER_ONLY | compile-pass | 仅 setter |
| 017 | CLS_09_08_017_PASS_ABSTRACT_ACCESSOR | compile-pass | 抽象 accessor |
| 018 | CLS_09_08_018_PASS_STATIC_ACCESSOR | compile-pass | 静态 accessor |
| 023 | CLS_09_08_023_PASS_GETTER_ONLY | compile-pass | 仅 getter |
| 027 | CLS_09_08_027_PASS_COMPUTED_ACCESSOR | compile-pass | 计算属性 |
| 031 | CLS_09_08_031_PASS_SETTER_ONLY_ACCESS | compile-pass | 仅 setter 访问 |
| 004 | CLS_09_08_004_FAIL_ACCESSOR_AS_METHOD | compile-fail | 当作方法 |
| 005 | CLS_09_08_005_FAIL_SETTER_OPTIONAL_PARAM | compile-fail | setter 可选参数 |
| 006 | CLS_09_08_006_FAIL_ACCESSOR_FIELD_CONFLICT | compile-fail | 字段冲突 |
| 007 | CLS_09_08_007_FAIL_ACCESSOR_METHOD_CONFLICT | compile-fail | 方法冲突 |
| 009 | CLS_09_08_009_FAIL_FIELD_OVERRIDES_ACCESSOR | compile-fail | 字段覆盖 accessor |
| 012 | CLS_09_08_012_FAIL_GETTER_WITH_PARAMETERS | compile-fail | getter 带参数 |
| 013 | CLS_09_08_013_FAIL_SETTER_WITH_RETURN_TYPE | compile-fail | setter 返回类型 |
| 014 | CLS_09_08_014_FAIL_SETTER_NO_PARAMETERS | compile-fail | setter 无参数 |
| 019 | CLS_09_08_019_FAIL_OVERRIDE_GETTER_NON_COVARIANT | compile-fail | getter 非协变 |
| 020 | CLS_09_08_020_FAIL_OVERRIDE_SETTER_NON_CONTRAVARIANT | compile-fail | setter 非逆变 |
| 024 | CLS_09_08_024_FAIL_GETTER_WITH_PARAMS | compile-fail | getter 有参数 |
| 025 | CLS_09_08_025_FAIL_SETTER_RETURN_TYPE | compile-fail | setter 返回类型 |
| 026 | CLS_09_08_026_FAIL_SETTER_NO_PARAMS | compile-fail | setter 无参数 |
| 033 | CLS_09_08_033_FAIL_ACCESSOR_NAME_METHOD_CONFLICT | compile-fail | 方法名冲突 |
| 010 | CLS_09_08_010_RUNTIME_GETTER_SETTER_BASIC | runtime | getter/setter 运行 |
| 011 | CLS_09_08_011_RUNTIME_OVERRIDE_ACCESSOR | runtime | override accessor |
| 021 | CLS_09_08_021_RUNTIME_ABSTRACT_ACCESSOR | runtime | 抽象 accessor |
| 022 | CLS_09_08_022_RUNTIME_STATIC_GETTER_SETTER | runtime | 静态 accessor |
| 028 | CLS_09_08_028_RUNTIME_GETTER_INFERRED | runtime | getter 推断 |
| 032 | CLS_09_08_032_RUNTIME_ACCESSOR_VALIDATION | runtime | accessor 校验 |

## 9.9 Constructor Declaration（10 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_09_001_PASS_CONSTRUCTOR_BASIC | compile-pass | 构造器基本语法 |
| 002 | CLS_09_09_002_PASS_CONSTRUCTOR_PARAM_DEFAULTS | compile-pass | 构造器默认参数 |
| 003 | CLS_09_09_003_PASS_CONSTRUCTOR_ACCESS_MODIFIER | compile-pass | 构造器访问修饰符 |
| 007 | CLS_09_09_007_PASS_CONSTRUCTOR_OVERLOAD_CTOR | compile-pass | 默认参数重载 |
| 004 | CLS_09_09_004_FAIL_NATIVE_CONSTRUCTOR_WITH_BODY | compile-fail | native 构造器主体 |
| 005 | CLS_09_09_005_FAIL_NON_NATIVE_CONSTRUCTOR_NO_BODY | compile-fail | 非 native 缺体 |
| 006 | CLS_09_09_006_FAIL_SUPER_CONSTRUCTOR_NOT_ACCESSIBLE | compile-fail | 父类构造器不可访问 |
| 008 | CLS_09_09_008_RUNTIME_CONSTRUCTOR_INIT_FIELDS | runtime | 字段初始化 |
| 009 | CLS_09_09_009_RUNTIME_CONSTRUCTOR_DEFAULT_PARAM | runtime | 默认参数运行时 |
| 010 | CLS_09_09_010_RUNTIME_CONSTRUCTOR_CHAIN | runtime | 构造器链 |

## 9.9.1 Constructor Body（18 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_09_001_PASS_PRIMARY_CONSTRUCTOR | compile-pass | 主构造器 |
| 002 | CLS_09_09_002_PASS_SECONDARY_CONSTRUCTOR | compile-pass | 次构造器 |
| 010 | CLS_09_09_010_PASS_CODE_BEFORE_SUPER | compile-pass | super 前代码 |
| 003 | CLS_09_09_003_FAIL_SUPER_NOT_ROOT | compile-fail | super 非根语句 |
| 004 | CLS_09_09_004_FAIL_RETURN_VALUE_IN_CONSTRUCTOR | compile-fail | 构造器返回值 |
| 006 | CLS_09_09_006_FAIL_SUPER_ARG_THIS | compile-fail | super 参数 this |
| 007 | CLS_09_09_007_FAIL_SUPER_ARG_SUPER | compile-fail | super 参数 super |
| 008 | CLS_09_09_008_FAIL_CONSTRUCTOR_RECURSIVE | compile-fail | 构造器递归 |
| 009 | CLS_09_09_009_FAIL_THIS_NOT_ROOT | compile-fail | this 非根语句 |
| 016 | CLS_09_09_016_FAIL_SUPER_ARG_USE_SUPER | compile-fail | super 参数 super |
| 018 | CLS_09_09_018_FAIL_SELF_CALL_CYCLE | compile-fail | 自调用循环 |
| 025 | CLS_09_09_025_FAIL_SECONDARY_NOT_ROOT | compile-fail | 次级非根 |
| 005 | CLS_09_09_005_RUNTIME_CONSTRUCTOR_EXEC_ORDER | runtime | 执行顺序 |
| 011 | CLS_09_09_011_RUNTIME_FIELD_INIT_ORDER | runtime | 字段初始化顺序 |
| 012 | CLS_09_09_012_RUNTIME_INSTANCEOF_IN_CONSTRUCTOR | runtime | 构造器中 instanceof |
| 017 | CLS_09_09_017_RUNTIME_FIELD_INIT_ORDER | runtime | 字段初始化顺序 |
| 020 | CLS_09_09_020_RUNTIME_SECONDARY_CTOR | runtime | 次级构造器 |
| 023 | CLS_09_09_023_RUNTIME_INHERITANCE_CTOR_CHAIN | runtime | 继承构造器链 |

## 9.9.2 Explicit Constructor Call（9 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 006 | CLS_09_09_006_PASS_SUPER_CALL | compile-pass | super() 调用 |
| 008 | CLS_09_09_008_PASS_THIS_CALL | compile-pass | this() 调用 |
| 007 | CLS_09_09_007_FAIL_SUPER_ARG_THIS | compile-fail | super 参数含 this |
| 009 | CLS_09_09_009_FAIL_SUPER_NAMED_CALL | compile-fail | 命名 super(CLS-I3) |
| 010 | CLS_09_09_010_FAIL_THIS_NAMED_CALL | compile-fail | 命名 this(CLS-I3) |
| 011 | CLS_09_09_011_FAIL_CALL_AS_EXPRESSION | compile-fail | 表达式调用 |
| 012 | CLS_09_09_012_FAIL_ARG_INSTANCE_METHOD | compile-fail | 实例方法参数 |
| 024 | CLS_09_09_024_FAIL_SUPER_ARG_INSTANCE_METHOD | compile-fail | super 实例方法参数 |
| 047 | CLS_09_09_047_RUNTIME_SUPER_CALL_CHAIN | runtime | super 链式调用 |

## 9.9.3 Default Constructor（9 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 008 | CLS_09_09_008_PASS_DEFAULT_CONSTRUCTOR | compile-pass | 默认构造器 |
| 011 | CLS_09_09_011_PASS_SUBCLASS_DEFAULT_CTOR | compile-pass | 子类默认构造器 |
| 012 | CLS_09_09_012_PASS_OBJECT_DEFAULT_CTOR | compile-pass | 对象默认构造器 |
| 009 | CLS_09_09_009_FAIL_NO_ACCESSIBLE_SUPER_CTOR | compile-fail | 父类构造器不可访问 |
| 014 | CLS_09_09_014_FAIL_SUPER_NO_PARAMETERLESS | compile-fail | 父类无能参数构造器 |
| 050 | CLS_09_09_050_FAIL_DEFAULT_CTOR_ABSTRACT_SUPER | compile-fail | 抽象类的默认构造器 |
| 010 | CLS_09_09_010_RUNTIME_DEFAULT_CTOR_FIELD_INIT | runtime | 字段初始化 |
| 013 | CLS_09_09_013_RUNTIME_MULTI_LEVEL_DEFAULT_CTOR | runtime | 多层默认构造器 |
| 015 | CLS_09_09_015_RUNTIME_DEFAULT_CTOR_INHERIT_FIELD_INIT | runtime | 继承字段初始化 |

## 9.10 Inheritance（41 用例）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
| 001 | CLS_09_10_001_PASS_BASIC_INHERITANCE | compile-pass | 基本继承 |
| 002 | CLS_09_10_002_PASS_MULTI_LEVEL_INHERITANCE | compile-pass | 多层继承 |
| 003 | CLS_09_10_003_PASS_OVERRIDE_COMPATIBLE | compile-pass | 兼容覆盖 |
| 004 | CLS_09_10_004_PASS_OVERRIDE_CONTRAVARIANCE | compile-pass | 逆变参数 |
| 013-1 | CLS_09_10_013_PASS_MULTI_INTERFACE | compile-pass | 多接口 |
| 013-2 | CLS_09_10_013_PASS_PROTECTED_ACCESSIBLE_IN_SUBCLASS | compile-pass | protect 访问 |
| 014-1 | CLS_09_10_014_PASS_EXTENDS_IMPLEMENTS | compile-pass | 扩展+实现 |
| 014-2 | CLS_09_10_014_PASS_MULTIPLE_INTERFACE_IMPL | compile-pass | 多接口实现 |
| 015 | CLS_09_10_015_PASS_EXTENDS_IMPLEMENTS_COMBINED | compile-pass | 扩展+实现组合 |
| 016 | CLS_09_10_016_PASS_FIELD_OVERRIDE_SAME_TYPE | compile-pass | 字段覆盖同类型 |
| 020 | CLS_09_10_020_PASS_OVERRIDE_WITH_COVARIANT | compile-pass | 协变覆盖 |
| 026 | CLS_09_10_026_PASS_PROTECTED_ACCESS_SUBCLASS | compile-pass | protect 子类访问 |
| 005 | CLS_09_10_005_FAIL_NON_ABSTRACT_MISSING_IMPL | compile-fail | 非抽象缺实现 |
| 006 | CLS_09_10_006_FAIL_INTERFACE_NOT_IMPLEMENTED | compile-fail | 接口未实现 |
| 007 | CLS_09_10_007_FAIL_OVERRIDE_RETURN_NOT_COVARIANT | compile-fail | 返回非协变 |
| 008 | CLS_09_10_008_FAIL_OVERRIDE_PARAM_NOT_CONTRAVARIANT | compile-fail | 参数非逆变 |
| 009 | CLS_09_10_009_FAIL_CONSTRUCTOR_NOT_INHERITED | compile-fail | 构造器不继承 |
| 015 | CLS_09_10_015_FAIL_PRIVATE_MEMBER_NOT_INHERITED | compile-fail | 私有不继承 |
| 017-1 | CLS_09_10_017_FAIL_FIELD_OVERRIDE_TYPE_MISMATCH | compile-fail | 字段类型不匹配 |
| 017-2 | CLS_09_10_017_FAIL_STATIC_NOT_INHERITED | compile-fail | 静态不继承 |
| 018 | CLS_09_10_018_FAIL_PRIVATE_MEMBER_NOT_ACCESSIBLE | compile-fail | 私有不可访问 |
| 019 | CLS_09_10_019_FAIL_FIELD_OVERRIDE_ACCESS_MODIFIER_MISMATCH | compile-fail | 访问修饰符不匹配 |
| 020 | CLS_09_10_020_FAIL_OVERRIDE_FIELD_NOT_IN_BASE | compile-fail | 字段不在基类 |
| 021 | CLS_09_10_021_FAIL_OVERRIDE_NON_COVARIANT | compile-fail | 非协变覆盖 |
| 025 | CLS_09_10_025_FAIL_OVERRIDE_NON_CONTRAVARIANT_PARAM | compile-fail | 非逆变参数 |
| 028 | CLS_09_10_028_FAIL_OVERRIDE_STATIC_METHOD | compile-fail | 静态方法覆盖 |
| 010 | CLS_09_10_010_RUNTIME_INHERITANCE_CHAIN | runtime | 继承链 |
| 011 | CLS_09_10_011_RUNTIME_OVERRIDE_DISPATCH | runtime | 覆盖派发 |
| 012 | CLS_09_10_012_RUNTIME_ACCESSOR_INHERITANCE | runtime | accessor 继承 |
| 016 | CLS_09_10_016_RUNTIME_PROTECTED_ACCESS | runtime | protect 访问 |
| 018 | CLS_09_10_018_RUNTIME_INSTANCEOF_CHAIN | runtime | instanceof 链 |
| 019 | CLS_09_10_019_RUNTIME_SUPER_METHOD_CALL | runtime | super 方法调用 |
| 021 | CLS_09_10_021_RUNTIME_SUPER_METHOD_CALL | runtime | super 方法 |
| 022-1 | CLS_09_10_022_RUNTIME_INSTANCEOF_CHAIN | runtime | instanceof 链 |
| 022-2 | CLS_09_10_022_RUNTIME_MULTI_LEVEL | runtime | 多层继承 |
| 023-1 | CLS_09_10_023_RUNTIME_FIELD_OVERRIDE | runtime | 字段覆盖 |
| 023-2 | CLS_09_10_023_RUNTIME_OVERRIDE_VIA_BASE_REF | runtime | 基类引用覆盖 |
| 024 | CLS_09_10_024_RUNTIME_STATIC_NOT_INHERITED | runtime | 静态不继承 |
| 027 | CLS_09_10_027_RUNTIME_PRIVATE_NOT_ACCESSIBLE | runtime | 私有不可访问 |
| 029 | CLS_09_10_029_RUNTIME_SUPER_CONSTRUCTOR_ARGS | runtime | super 构造器参数 |
| 030 | CLS_09_10_030_RUNTIME_TRIPLE_INHERITANCE_METHOD | runtime | 三层继承方法 |
