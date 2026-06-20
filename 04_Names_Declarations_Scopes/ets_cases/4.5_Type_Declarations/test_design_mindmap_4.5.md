# 4.5 Type Declarations - 测试设计思维导图

## 概述
Type declarations include class, interface, enum, const enum, and type alias declarations.

## 子类型覆盖
### 1. Type alias for anonymous types (4.5.1)
- 正向编译: 数组类型别名、函数类型别名、联合类型别名
- 运行时: 通过别名使用类型

### 2. Type alias for existing types
- 正向编译: 长类型名的简短别名

### 3. Recursive type alias
- 正向编译: 数组元素类型递归、泛型类型参数递归
- 反向编译: 直接自身递归、循环依赖

### 4. Generic type alias
- 正向编译: 泛型别名、类型参数依赖
- 反向编译: 无类型参数使用、参数自身循环依赖

## 文件命名规范
- NAM_04_05_YYY_{CATEGORY}_{DESCRIPTION}.ets
