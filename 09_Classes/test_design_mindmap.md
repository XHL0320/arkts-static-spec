# 09 类 - 测试设计思维导图（章节级）

**生成日期：** 2026-06-21
**本章目标：** 覆盖 ArkTS §9.1-§9.10 全部规范约束
**当前覆盖：** §9.7-§9.10（227 用例：70P+94F+63R）

---

## 一、测试分类策略

### 1.1 编译期通过（compile-pass）
- 合法声明的通过验证
- 修饰符合法组合
- 参数默认值、返回类型兼容
- 继承/重写/实现正确用法

### 1.2 编译期失败（compile-fail）
- 修饰符冲突（static+abstract/native+async 等）
- 方法签名不匹配（override 错误、返回类型不协变）
- 参数不合法（this/super 在 static 中、无效默认值）
- 访问修饰符违规（private 成员外部访问）

### 1.3 运行时（runtime）
- 方法派发（虚方法、override 动态绑定）
- 继承链（多层继承、super 调用、instanceof）
- 异步（async/await 挂起恢复、链式调用）
- 构造器（字段初始化、构造器链、默认参数）

---

## 二、子章节覆盖详情

### §9.7 Method Declarations（8 用例：3P+3F+2R）
- ✅ 方法声明基本语法
- ✅ 合法/非法修饰符组合
- ✅ 方法/字段名冲突检测
- ✅ 方法调度运行时验证

### §9.7.1 Static Methods（18 用例：3P+10F+5R）
- ✅ static 基本语法 + 多参数
- ✅ static+abstract/this/super/final/native/async 非法
- ✅ 继承/覆盖冲突检查
- ✅ static 访问限制（private/protected）
- ✅ static 方法运行时调用

### §9.7.2 Instance Methods（12 用例：7P+2F+3R）
- ✅ 实例方法基本声明（void/参数/返回类型）
- ✅ 实例方法的 this 访问字段
- ✅ 实例方法 + override + 泛型
- ✅ 递归实例方法编译通过
- ❌ 非 void 缺 return → 编译错误
- ✅ 实例方法重写派发运行时验证

### §9.7.3 Abstract Methods（17 用例：4P+8F+5R）
- ✅ abstract 合法用法（抽象类/接口实现）
- ✅ abstract+private/static/final/native/async 非法
- ✅ 非抽象类含抽象方法 → 编译错误
- ✅ 子类未实现抽象方法 → 编译错误
- ✅ 抽象方法与 override 协变
- ✅ 抽象类运行时派发

### §9.7.4 Async Methods（21 用例：6P+9F+6R）
- ✅ async 基本调用 + static async
- ✅ async 返回 Promise\<T\>/void 装箱
- ✅ final async 合法（CLS_09_07_060）
- ❌ async+abstract/native 非法
- ❌ async 重载不支持（CLS_09_07_049）
- ❌ 非 Promise 返回 / Promise 签名不匹配
- ❌ override 时 async 修饰符缺失/不匹配
- ✅ await 解析、多挂起点、async 链式调用

### §9.7.5 Overriding Methods（9 用例：4P+2F+3R）
- ✅ override 方法基本声明
- ✅ override+final 合法
- ✅ 子类重写方法调用父类实现（super）
- ❌ override+static 非法
- ❌ 重写方法签名不匹配 → 编译错误
- ✅ 重写方法运行时派发、super 调用

### §9.7.6 Native Methods（3 用例：2P+1F+0R）
- ✅ native 方法声明（空体分号）
- ✅ native 方法在类中使用
- ❌ native+abstract 非法

### §9.7.7 Method Body（13 用例：4P+7F+2R）
- ✅ 多语句方法体、嵌套块
- ✅ 方法体中的变量声明与作用域
- ❌ 非 abstract/native 方法缺体 → 编译错误
- ❌ abstract/native 方法有体 → 编译错误
- ❌ 非 void 方法缺 return → 编译错误
- ✅ 运行时多语句执行

### §9.7.8 Methods Returning this（8 用例：2P+3F+3R）
- ✅ this 作为返回类型（builder pattern）
- ❌ 非 this 返回 + 非 this 返回类型 → 编译错误
- ❌ override 方法未返回 this → 编译错误
- ✅ builder 链式调用运行时、this 返回 + override 兼容

### §9.8 Class Accessor Declarations（31 用例：11P+14F+6R）
- ✅ getter/setter 基本语法
- ✅ getter+setter 修饰符一致（CLS-I1 已知问题）
- ✅ getter/setter + override 协变/逆变
- ❌ getter 含参数 / setter 多参数 / 返回类型不匹配
- ❌ getter/setter 与字段/方法名冲突
- ✅ getter/setter 运行时读写验证

### §9.9 Constructor Declaration（10 用例：4P+3F+3R）
- ✅ 构造器基本声明 + 参数默认值
- ✅ 访问修饰符构造器（public/private）
- ❌ native 构造器有体 → 编译错误
- ❌ 非 native 构造器无体 → 编译错误
- ❌ 父类构造器不可访问 → 编译错误
- ✅ 字段初始化运行时、默认参数构造器链

### §9.9.1 Constructor Body（18 用例：3P+9F+6R）
- ✅ 构造器体基本语法 + super() 根语句
- ❌ 参数含 this/super、返回值、自调用循环
- ❌ super() 非根语句、多个 super()/this()
- ❌ super() 参数类型不匹配
- ✅ 构造器字段顺序初始化、super() 运行时调用

### §9.9.2 Explicit Constructor Call（9 用例：2P+6F+1R）
- ✅ this() 多参数委托、super() 多参数委托
- ❌ 循环委托、超级构造器无参冲突
- ❌ 委托调用参数类型不匹配
- ✅ super() 委托运行时链验证

### §9.9.3 Default Constructor（9 用例：3P+3F+3R）
- ✅ 默认无参构造器、字段初始化器
- ✅ 继承默认构造器链
- ❌ 父类缺无参构造器 → 编译错误
- ❌ 基类构造器不可访问 → 编译错误
- ❌ 默认构造器参数冲突 → 编译错误
- ✅ 默认构造器运行时字段初始化 + 继承链

### §9.10 Inheritance（41 用例：12P+14F+15R）
- ✅ 基本继承、多层继承、多接口
- ✅ override 协变/逆变
- ✅ 字段覆盖、protected 访问
- ❌ 抽象方法未实现、接口未实现
- ❌ 返回非协变、参数非逆变
- ❌ 构造器不继承、私有不继承
- ❌ 静态不继承、字段类型不匹配
- ✅ 继承链运行时、override 派发、instanceof 链
- ✅ super 方法/构造器调用、多层继承方法

---

## 三、待覆盖章节（§9.1-§9.6，未开始）

以下子章节尚未编写测试用例：

| 章节 | 内容 | 优先级 |
|------|------|--------|
| §9.1 | Class Declarations | 高 |
| §9.1.1 | Abstract Classes | 高 |
| §9.2 | Class Extension Clause | 高 |
| §9.3 | Class Implementation Clause | 高 |
| §9.3.1 | Implementing Required Interface Properties | 高 |
| §9.3.2 | Implementing Optional Interface Properties | 中 |
| §9.4 | Class Members | 高 |
| §9.5 | Access Modifiers | 高 |
| §9.5.1-9.5.3 | private/protected/public | 高 |
| §9.6 | Field Declarations | 高 |
| §9.6.1-9.6.6 | Static/Readonly/Optional/Init/Late/Override | 中-高 |
