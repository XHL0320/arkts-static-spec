# 4.6 Variable and Constant Declarations - 测试设计思维导图

## 概述
Variable declarations (let) introduce named storage locations. Constant declarations (const) introduce named variables with mandatory explicit value. Both must have initial values before first usage.

## 子类型覆盖
### 1. Variable Declarations (4.6.1)
- 正向编译: let 带类型注解、类型推断、多变量声明
- 反向编译: 无类型无初始化、ambient 变量有初始化

### 2. Constant Declarations (4.6.2)
- 正向编译: const 带类型注解、类型推断
- 反向编译: 无初始化常量

### 3. Validity of Initializer (4.6.3)
- 反向编译: 初始化引用后文声明

### 4. Assignability with Initializer (4.6.4)
- 反向编译: 初始化类型不可赋值给注解类型

### 5. Type Inference from Initializer (4.6.5)
- 正向编译: let 字面量提升、三元推断、const 保留字面量
- 运行时: 推断类型运行时正确

## 文件命名规范
- NAM_04_06_YYY_{CATEGORY}_{DESCRIPTION}.ets
