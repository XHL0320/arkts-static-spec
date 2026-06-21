# 09 类 - 规范摘录

**来源：** ArkTS 静态语言规范，第 09 章 类（Classes）（§9.7-§9.10）
**版本：** Release 1.2.1-alpha TECHNICAL PREVIEW 10
**提取日期：** 2026-06-19

## Scope

本章覆盖 Class 类型的方法声明、访问器声明、构造器声明和继承机制。

## 子章节覆盖

| 章节 | 标题 | 核心内容 |
|------|------|---------|
| 9.7 | Method Declarations | classMethodDeclaration 语法；修饰符约束（abstract/static/final/override/native/async）；方法/字段名冲突；方法/setter 名冲突 |
| 9.7.1 | Static Methods | static 修饰符约束（不得与 abstract/final/override/native/async 组合）；this/super 禁止；类名访问；不继承 |
| 9.7.2 | Instance Methods | 非静态方法；this 访问字段/方法；虚分派；同类私有成员访问 |
| 9.7.3 | Abstract Methods | abstract 修饰符约束（不得 private/static/final/native/async）；空体；必须在抽象类；子类必须实现 |
| 9.7.4 | Async Methods | async 修饰符；返回 Promise<T>；不得与 abstract/native 组合；await 挂起表达式 |
| 9.7.5 | Overriding Methods | override 修饰符（可选但推荐）；必须覆盖父类方法；override+static 禁止；默认参数一致 |
| 9.7.6 | Native Methods | native 修饰符；空体（分号）；不得与 abstract 组合 |
| 9.7.7 | Method Body | 块体 vs 空体分号；abstract/native 空体；非 abstract/native 必须有体；非 void 全路径返回 |
| 9.7.8 | Methods Returning this | this 作为返回类型；仅返回 this 或 this 返回方法结果；override 也必须返回 this |
| 9.8 | Class Accessor Declarations | getter（无参+返回类型）；setter（单参数+无返回）；getter+setter 修饰符一致；override 协变/逆变 |
| 9.9 | Constructor Declaration | 构造器语法；命名构造器（实验）；native 构造器无体；访问修饰符 |
| 9.9.1 | Constructor Body | super() 根语句；参数不得用 this/super；不得返回值；不得自调用循环；字段初始化顺序 |
| 9.9.2 | Explicit Constructor Call | super(args)/this(args) 显式委托；命名构造器（实验/不支持）；根语句要求 |
| 9.9.3 | Default Constructor | 隐式：public + 无参 + super() + 字段初始化器；父类必须有无参构造器 |
| 9.10 | Inheritance | extends 单继承；继承所有非静态可访问成员；抽象方法必须实现；构造器不继承 |

## 已知 Spec 与实现差异

详见 [issue_report.md](issue_report.md) 中的 CLS-I1 ~ CLS-I4。
- **CLS-I1**（MEDIUM）：getter/setter 修饰符不匹配，es2panda 未检查
- **CLS-I2**（MEDIUM）：override 默认参数不一致，es2panda 未检查
- **CLS-I3**（LOW）：命名构造器实验特性，es2panda 不支持
- **CLS-I4**（LOW）：native+static 修饰符组合，es2panda 未报错

## 章节文件目录

```
ets_cases/
├── 9.7_Method_Declarations/          # 8 用例: 3P+3F+2R
├── 9.7.1_Static_Methods/             # 18 用例: 3P+10F+5R
├── 9.7.2_Instance_Methods/           # 12 用例: 7P+2F+3R
├── 9.7.3_Abstract_Methods/           # 17 用例: 4P+8F+5R
├── 9.7.4_Async_Methods/              # 21 用例: 6P+9F+6R
├── 9.7.5_Overriding_Methods/         # 9 用例: 4P+2F+3R
├── 9.7.6_Native_Methods/             # 3 用例: 2P+1F+0R
├── 9.7.7_Method_Body/               # 13 用例: 4P+7F+2R
├── 9.7.8_Methods_Returning_this/     # 8 用例: 2P+3F+3R
├── 9.8_Class_Accessor_Declarations/  # 31 用例: 11P+14F+6R
├── 9.9_Constructor_Declaration/     # 10 用例: 4P+3F+3R
├── 9.9.1_Constructor_Body/          # 18 用例: 3P+9F+6R
├── 9.9.2_Explicit_Constructor_Call/  # 9 用例: 2P+6F+1R
├── 9.9.3_Default_Constructor/       # 9 用例: 3P+3F+3R
└── 9.10_Inheritance/                # 41 用例: 12P+14F+15R
```
