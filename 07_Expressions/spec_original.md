# 07 表达式 - 规范摘录

**来源：** ArkTS 静态语言规范，第 07 章 表达式（Expressions）（§7.26-§7.36.1）
**版本：** Release 1.2.1-alpha TECHNICAL PREVIEW 10
**提取日期：** 2026-06-22

## Scope

本章覆盖 ArkTS 表达式的后半部分：移位、关系、相等、位运算/逻辑、条件与/或、赋值、三元、字符串插值、Lambda、常量表达式。

## 子章节覆盖（本次目标 §7.26-§7.36.1）

| 章节 | 标题 | 核心内容 |
|------|------|---------|
| 7.26 | Shift Expressions | << >> >>> 移位运算符；数值类型/bigint 操作数；double/float 截断；int 5-bit / long 6-bit 掩码 |
| 7.27 | Relational Expressions | < > <= >= 关系运算符；类型 boolean；操作数类型决定比较种类 |
| 7.27.1 | Numeric Relational Operators | 数值关系运算；有符号整数比较；IEEE 754 浮点比较；NaN 返回 false |
| 7.27.2 | Bigint Relational Operators | bigint 关系运算；bigint-bigint / bigint-整数 / bigint-double 转换规则 |
| 7.27.3 | String Relational Operators | 字符串字典序比较 |
| 7.27.4 | Boolean Relational Operators | 布尔关系运算；false < true 真值表 |
| 7.27.5 | char Relational Operators | char 关系运算；码元比较 |
| 7.27.6 | Enumeration Relational Operators | 同枚举类型比较；基于基类型选择数值或字符串比较 |
| 7.28 | Equality Expressions | == === != !== 相等运算符；交换律；类型 boolean |
| 7.28.1 | Numeric Equality Operators | 数值相等；IEEE 754 规则（NaN≠NaN）；bigint≠numeric |
| 7.28.2 | Function Type Equality Operators | 函数引用相等；方法引用含绑定实例 |
| 7.28.3 | Extended Equality with null or undefined | null==undefined 为 true；null===undefined 为 false |
| 7.29 | Bitwise and Logical Expressions | & ^ \| 运算符；优先级 & > ^ > \| |
| 7.29.1 | Integer Bitwise Operators | 整数位运算；类型提升；bigint 不允许与 numeric 混合 |
| 7.29.2 | Boolean Logical Operators | 布尔逻辑运算；& ^ \| 真值表 |
| 7.30 | Conditional-And Expression | && 短路与；左操作数为 false 时跳过右侧 |
| 7.31 | Conditional-Or Expression | \|\| 短路或；左操作数为 true 时跳过右侧 |
| 7.32 | Assignment | 赋值运算符；右结合；lhsExpression 必须是左值 |
| 7.32.1 | Simple Assignment Operator | = 简单赋值；类型不兼容→编译错误 |
| 7.32.2 | Compound Assignment Operators | += -= *= /= %= 等复合赋值；等价于 lhs = (lhs op rhs) as T |
| 7.32.3 | Left-Hand-Side Expressions | 左值：变量/参数(非this)/字段/setter/数组元素/record元素 |
| 7.33 | Ternary Conditional Expressions | condition ? whenTrue : whenFalse；右结合；类型为联合类型 |
| 7.34 | String Interpolation Expressions | 反引号字符串 + \${expr} 嵌入表达式；类型 string |
| 7.35 | Lambda Expressions | 匿名函数；签名+体；创建函数类型实例 |
| 7.35.1 | Lambda Signature | 形参+可选返回类型；类型推断；参数名不可重复 |
| 7.35.2 | Lambda Body | 单表达式或块；捕获外部变量/this；非void需return |
| 7.35.3 | Lambda Expression Type | Lambda 类型为函数类型 |
| 7.35.4 | Runtime Evaluation of Lambda Expressions | 运行时创建函数类型实例；变量捕获（引用非拷贝）|
| 7.36 | Constant Expressions | 编译期求值表达式；由字面量/常量引用/一元/二元/三元/括号组成 |
| 7.36.1 | Specifics of Constant Expressions Evaluation | 大整数内部类型；double/float 提升；任意精度整数 |

## 章节文件目录

```
ets_cases/
├── 7.26_Shift_Expressions/
├── 7.27_Relational_Expressions/
├── 7.27.1_Numeric_Relational_Operators/
├── 7.27.2_Bigint_Relational_Operators/
├── 7.27.3_String_Relational_Operators/
├── 7.27.4_Boolean_Relational_Operators/
├── 7.27.5_char_Relational_Operators/
├── 7.27.6_Enumeration_Relational_Operators/
├── 7.28_Equality_Expressions/
├── 7.28.1_Numeric_Equality_Operators/
├── 7.28.2_Function_Type_Equality_Operators/
├── 7.28.3_Extended_Equality_with_null_or_undefined/
├── 7.29_Bitwise_and_Logical_Expressions/
├── 7.29.1_Integer_Bitwise_Operators/
├── 7.29.2_Boolean_Logical_Operators/
├── 7.30_Conditional_And_Expression/
├── 7.31_Conditional_Or_Expression/
├── 7.32_Assignment/
├── 7.32.1_Simple_Assignment_Operator/
├── 7.32.2_Compound_Assignment_Operators/
├── 7.32.3_Left_Hand_Side_Expressions/
├── 7.33_Ternary_Conditional_Expressions/
├── 7.34_String_Interpolation_Expressions/
├── 7.35_Lambda_Expressions/
├── 7.35.1_Lambda_Signature/
├── 7.35.2_Lambda_Body/
├── 7.35.3_Lambda_Expression_Type/
├── 7.35.4_Runtime_Evaluation_of_Lambda_Expressions/
├── 7.36_Constant_Expressions/
└── 7.36.1_Specifics_of_Constant_Expressions_Evaluation/
```
