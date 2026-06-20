# 5.3 Generic Instantiations - 测试设计思维导图

## 概述
Generic instantiation transforms a generic into a real entity. Can be explicit (providing type arguments) or implicit (inferring from context).

## 子类型覆盖
### 1. Type arguments (5.2.1)
- 正向编译: 各种类型参数类型（number、union、array、tuple、function类型）

### 2. Explicit instantiation (5.2.2)
- 正向编译: 类明确实例化、方法明确实例化、函数明确实例化、类型别名明确实例化
- 反向编译: 非泛型实体提供类型参数

### 3. Well-formed instantiation (5.2.2)
- 反向编译: 类型参数数量不匹配、类型参数不满足约束

### 4. Implicit instantiation (5.2.3)
- 正向编译: 从参数推断类型参数
- 反向编译: 无法推断类型参数

### 5. Method generic with default from class param (5.2.3)
- 正向编译: 方法的类型参数默认来自类的类型参数

## 文件命名规范
- GEN_05_03_YYY_{CATEGORY}_{DESCRIPTION}.ets
