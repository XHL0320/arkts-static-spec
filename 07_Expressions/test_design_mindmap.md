# 07 表达式 - 测试设计思维导图（章节级）

**生成日期：** 2026-06-22
**本章目标：** 覆盖 ArkTS §7.26-§7.36.1 全部规范约束
**测试前缀：** EXP_

---

## 一、测试分类策略

### 1.1 编译期通过（compile-pass）
- 合法运算符与合法操作数类型组合
- 类型提升/转换正确行为
- 运算符优先级与结合性
- Lambda 合法声明与类型推断

### 1.2 编译期失败（compile-fail）
- 运算符与操作数类型不兼容
- bigint 与 numeric 类型混合（禁止的组合）
- 非法左值（如 readonly、chaining operator 在左值中）
- Lambda 参数重名、类型无法推断

### 1.3 运行时（runtime）
- 移位距离掩码（int 5-bit / long 6-bit）
- IEEE 754 浮点比较（NaN、Infinity）
- 短路求值（&&、||、?:）
- Lambda 变量捕获与实例创建

---

## 二、子章节覆盖详情

### §7.26 Shift Expressions
- ✅ 基本移位（int/long << >> >>>）
- ✅ byte/short 提升到 int
- ✅ bigint << >>（非 >>>）
- ❌ bigint >>> → 编译错误
- ❌ bigint+numeric 混合 → 编译错误
- ❌ 非数值类型移位 → 编译错误
- ✅ 移位距离掩码（int 0x1f / long 0x3f）
- ✅ 有符号/无符号右移负值行为

### §7.27 Relational Expressions
- ✅ 基本关系运算（< > <= >=）
- ✅ 左结合分组
- ❌ 不兼容类型关系运算 → 编译错误
- ✅ NaN 比较永远返回 false

### §7.27.1 Numeric Relational Operators
- ✅ 整数比较（int/long）
- ✅ IEEE 754 浮点比较
- ❌ numeric+string/boolean → 编译错误
- ✅ Infinity 和 -0 vs +0 行为

### §7.27.2 Bigint Relational Operators
- ✅ bigint vs bigint
- ✅ bigint vs int（int→bigint）
- ✅ bigint vs double（bigint→double）
- ❌ bigint vs string/boolean → 编译错误
- ✅ 大整数比较正确性

### §7.27.3 String Relational Operators
- ✅ 字典序比较
- ❌ string vs number/boolean → 编译错误
- ✅ 空字符串/Unicode 比较

### §7.27.4 Boolean Relational Operators
- ✅ 布尔真值表（false < true）
- ❌ boolean vs int/string → 编译错误
- ✅ 控制流中的布尔关系

### §7.27.5 char Relational Operators
- ✅ 字符码元比较
- ❌ char vs 不兼容类型 → 编译错误
- ✅ char 排序验证

### §7.27.6 Enumeration Relational Operators
- ✅ 同枚举类型 int/string 基类型比较
- ❌ 不同枚举类型比较 → 编译错误
- ❌ enum vs int → 编译错误
- ✅ 枚举排序

### §7.28 Equality Expressions
- ✅ == === != !== 基本用法
- ✅ 交换律
- ✅ 编译期常量相等警告
- ❌ 不同枚举类型相等警告
- ✅ 联合类型相等

### §7.28.1 Numeric Equality Operators
- ✅ 整数相等、浮点相等（IEEE 754）
- ✅ NaN ≠ NaN（== 返回 false）
- ✅ +0 == -0
- ❌ bigint == numeric → false（编译通过但结果 false）
- ❌ 非数值相等 → 编译错误

### §7.28.2 Function Type Equality Operators
- ✅ 同一函数对象 == 为 true
- ✅ 不同函数对象 == 为 false
- ✅ 方法引用含绑定实例比较

### §7.28.3 Extended Equality with null or undefined
- ✅ null == undefined → true
- ✅ null === undefined → false
- ✅ !== 语义差异

### §7.29 Bitwise and Logical Expressions
- ✅ & ^ | 优先级与结合性
- ❌ 非数值/非布尔类型 → 编译错误

### §7.29.1 Integer Bitwise Operators
- ✅ int/long 位运算
- ✅ bigint 位运算
- ❌ bigint+numeric 混合 → 编译错误
- ❌ float/double 截断后位运算
- ✅ 类型提升规则

### §7.29.2 Boolean Logical Operators
- ✅ & ^ | 布尔真值表
- ❌ boolean+numeric → 编译错误

### §7.30 Conditional-And Expression
- ✅ && 短路求值
- ✅ 左→右结合、结合律
- ❌ 非 boolean 操作数 → 编译错误
- ✅ 副作用跳过验证

### §7.31 Conditional-Or Expression
- ✅ || 短路求值
- ✅ 左→右结合、结合律
- ❌ 非 boolean 操作数 → 编译错误
- ✅ 副作用跳过验证

### §7.32 Assignment
- ✅ 右结合赋值链
- ✅ 各种左值赋值

### §7.32.1 Simple Assignment Operator
- ✅ 字段/数组/record/变量赋值
- ❌ 类型不兼容 → 编译错误
- ❌ readonly 赋值 → 编译错误
- ✅ 运行时数组越界抛 RangeError
- ✅ 运行时 FixedArray 类型不匹配抛 ArrayStoreError

### §7.32.2 Compound Assignment Operators
- ✅ += -= *= /= %= **=
- ✅ <<= >>= >>>= &= |= ^= &&= ||= ??=
- ✅ lhs 只计算一次
- ✅ 数组/record 复合赋值

### §7.32.3 Left-Hand-Side Expressions
- ✅ 变量、参数（非 this）、字段、setter
- ✅ 数组元素、record 元素
- ❌ chaining operator ?. 在左值中 → 编译错误
- ❌ readonly 实体 → 编译错误

### §7.33 Ternary Conditional Expressions
- ✅ condition ? whenTrue : whenFalse
- ✅ 右结合
- ✅ 编译期已知 condition 时类型推断
- ✅ 未知时 union 类型
- ✅ 运行时仅评估一个分支

### §7.34 String Interpolation Expressions
- ✅ 反引号 + \${expr}
- ✅ 嵌入表达式隐式转 string
- ✅ 嵌套多行字符串
- ❌ 非 string 嵌入表达式（自动转换）

### §7.35 Lambda Expressions
- ✅ 完整签名+块体
- ✅ 表达式体（隐式 return）
- ✅ 最短形式 e => e
- ✅ 异步 Lambda

### §7.35.1 Lambda Signature
- ✅ 类型标注参数
- ✅ 类型推断省略类型
- ❌ 参数重名 → 编译错误
- ❌ 类型无法推断 → 编译错误

### §7.35.2 Lambda Body
- ✅ 单表达式 / 块体
- ✅ 捕获外部变量和 this
- ❌ 使用未声明/未初始化的局部变量 → 编译错误
- ❌ 非 void 无 return → 编译错误
- ✅ 表达式体 void call 等价

### §7.35.3 Lambda Expression Type
- ✅ Lambda 类型为函数类型
- ✅ 返回类型可从体推断

### §7.35.4 Runtime Evaluation of Lambda Expressions
- ✅ 创建函数类型新实例
- ✅ 变量捕获（引用非拷贝）
- ✅ 每次求值创建独立实例
- ✅ 循环中的捕获语义

### §7.36 Constant Expressions
- ✅ 编译期求值
- ✅ 允许的构造：字面量、常量引用、一元/二元/三元/括号
- ❌ ++/-- 禁止在常量表达式中
- ❌ 求值异常 → 编译错误

### §7.36.1 Specifics of Constant Expressions Evaluation
- ✅ double/float 提升规则
- ✅ 大整数内部类型（任意精度）
- ✅ 混合常量表达式各子表达式独立求值

---

## 三、已覆盖章节（§7.1-§7.25，已有目录结构）

以下子章节目录已存在但尚未填充测试用例：

| 章节 | 内容 | 状态 |
|------|------|------|
| §7.1 | Operators / Operator Precedence | 待填充 |
| §7.2 | Evaluation of Expressions | 待填充 |
| §7.3-§7.9 | Literal, Named Reference, Array/Object Literal, Spread, Parenthesized, this | 待填充 |
| §7.10-§7.14 | Field Access, Method Call, Function Call, Indexing, Chaining | 待填充 |
| §7.15-§7.20 | New, instanceof, Cast, typeof, Ensure Not Nullish, Nullish Coalescing | 待填充 |
| §7.21-§7.25 | Unary, Binary, Multiplicative, Exponentiation, Additive | 待填充 |

---

## 四、命名规范

| 元素 | 格式 |
|------|------|
| 文件前缀 | EXP_ |
| 主章节号 | 07 |
| 子章节号 | XX（26-36，含子节如 27_01） |
| 编号 | YYY（001 起连续） |
| 类别 | PASS / FAIL / RUNTIME |
| 描述 | 大写下划线 |
| 完整示例 | EXP_07_26_001_PASS_INT_SHIFT_BASIC.ets |
