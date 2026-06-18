# 8.4 常量或变量声明 测试设计思维导图

## 一、规格说明
- let/const 声明定义新的可变/不可变变量
- constantOrVariableDeclaration: annotationUsage? (variableDeclaration | constantDeclaration)
- 可见性由外围块作用域规则确定
- 声明可以遮蔽同一外围作用域中的同名声明
- BUT: 参数和局部变量在同一作用域中同名 -> 编译时错误

## 二、子类型枚举

### 1. 变量声明 (variableDeclaration)
- let 声明: let 标识符 = 表达式
- let 带类型注解: let 标识符: 类型 = 表达式
- let 无初始值? 可能有默认值规则
- 多重声明? let a = 1, b = 2?

### 2. 常量声明 (constantDeclaration)
- const 声明: const 标识符 = 表达式
- const 必须初始化
- const 具有块作用域
- const 不可重新赋值

### 3. 注解用法 (annotationUsage)
- 可选修饰符 @xxx 标注在声明前

### 4. 作用域与遮蔽
- 块作用域 (block scope)
- 内部块遮蔽外部同名变量 (允许)
- 同一作用域参数与局部变量同名 (禁止)

## 三、测试点分布

### compile-pass (5个文件)
| 编号 | 测试点 | 描述 |
|------|--------|------|
| 001 | let基本声明 | let声明变量，类型推断 |
| 002 | const基本声明 | const声明常量，类型推断 |
| 003 | 块内遮蔽 | 外层let与内层const同名(允许) |
| 004 | let带类型注解 | let x: int = 10 |
| 005 | const复杂类型 | const与数组/对象/联合类型 |

### compile-fail (3个文件)
| 编号 | 测试点 | 描述 |
|------|--------|------|
| 006 | 参数与局部变量同名 | 同一作用域参数和let同名 -> 编译错误 |
| 007 | const重新赋值 | const声明后再次赋值 -> 编译错误 |
| 008 | 同一作用域重复声明 | let重复声明同名变量 -> 编译错误 |

### runtime (2个文件)
| 编号 | 测试点 | 描述 |
|------|--------|------|
| 009 | let/const值语义 | let可变 const不可变 运行时验证 |
| 010 | 作用域遮蔽运行时行为 | 嵌套块中遮蔽行为的运行时验证 |

## 四、边界值与异常场景

### 边界值
- 空代码块内部声明
- 深层嵌套作用域(3层以上)遮蔽
- const与复杂对象引用不可变性(引用不可变，内容可变?)
- let无初始值? (ArkTS可能要求初始化)
- 使用int/number/string/boolean各种类型

### 异常场景
- const声明未初始化
- 函数参数与局部变量同名
- 同一作用域重复声明
- const重新赋值

## 五、文件命名规范
- 前缀: STM_08_04_
- compile-pass: STM_08_04_001_PASS_DESCRIPTION.ets
- compile-fail: STM_08_04_00N_FAIL_DESCRIPTION.ets
- runtime: STM_08_04_00N_RUNTIME_DESCRIPTION.ets
- 编号连续不重复
