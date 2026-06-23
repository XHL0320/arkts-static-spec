# 2.9.8 Undefined Literal - 测试设计思维导图

## 概述
Undefined literal 是 `void` 和 `undefined` 类型的唯一字面量，表示未定义的值。

**Spec 文法：**
```
UndefinedLiteral: 'undefined';
```

---

## 全覆盖测试矩阵

### 维度 1：基本 undefined

#### A. 基本值
- **A1** undefined 字面量（001）

### 维度 2：类型

#### B. 类型
- **B1** undefined 类型（002）
- **B2** void 类型（002）

### 维度 3：使用场景

#### C. 使用场景
- **C1** 变量赋值（003）
- **C2** 函数返回值（003）
- **C3** 比较运算（004）

### 维度 4：compile-fail

#### D. 非法使用
- **D1** undefined 不能作为标识符（005）

### 维度 5：runtime

#### E. 运行时验证
- **E1** undefined 值验证（006）
- **E2** undefined 比较验证（007）
- **E3** undefined 类型检查（008）

---

## 编号规划
- compile-pass: 001~004 (4个)
- compile-fail: 005 (1个)
- runtime: 006~008 (3个)

---

**最后更新：** 2026-06-21
