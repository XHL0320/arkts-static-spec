# 4.7 Function Declarations - 测试设计思维导图

## 概述
Function declarations specify names, signatures, and bodies when introducing named functions. Functions must be on top level.

## 子类型覆盖
### 1. Function Declaration (4.7)
- 正向编译: 顶层函数、native函数、async函数

### 2. Signatures (4.7.1)
- 正向编译: 参数列表+返回类型

### 3. Parameter List (4.7.2)
- 正向编译: 必需参数
- 反向编译: 可选参数在必需参数前

### 4. Readonly Parameters (4.7.3)
- 正向编译: 只读数组/元组参数可读
- 反向编译: 对只读参数赋值修改

### 5. Optional Parameters (4.7.4)
- 正向编译: 默认值和?语法
- 运行时: 默认值生效

### 6. Rest Parameter (4.7.5)
- 正向编译: 数组/元组/泛型rest参数
- 反向编译: 不合法rest参数位置/类型

### 7. Shadowing by Parameter (4.7.6)
- 正向编译: 参数覆盖顶层变量

### 8. Return Type (4.7.7)
- 正向编译: void/undefined/never返回类型
- 反向编译: 缺少return或throw
