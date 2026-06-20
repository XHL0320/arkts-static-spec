# 5.2 Variance and Wildcard - 测试设计思维导图

## 概述
Variance modifiers (in/out) control subtyping relationships between generic instantiations. Wildcard type (*) represents unknown instantiation for invariant type parameters.

## 子类型覆盖
### 1. Covariant (out) (5.1.3)
- 正向编译: out 类型参数在 out-position（返回值、构造函数参数、readonly字段）
- 反向编译: out 类型参数在 in-position（方法参数、非readonly字段）

### 2. Contravariant (in) (5.1.3)
- 正向编译: in 类型参数在 in-position（方法参数）
- 反向编译: in 类型参数在 out-position（返回值、字段）

### 3. Invariant (no modifier) (5.1.3)
- 正向编译: 无变体修饰符可在任何位置

### 4. Variance interleaving for function types (5.1.3)
- 正向编译: 函数类型中变体的交错

### 5. Wildcard type (5.1.4)
- 运行时: instanceof 推断出通配符类型

## 文件命名规范
- GEN_05_02_YYY_{CATEGORY}_{DESCRIPTION}.ets
