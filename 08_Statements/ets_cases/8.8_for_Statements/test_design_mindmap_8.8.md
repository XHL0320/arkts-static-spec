# 8.8 for 语句 测试设计思维导图

## 1. 规格定义
- forStatement: 'for' '(' forInit? ';' forContinue? ';' forUpdate? ')' statement
- forInit 中声明的变量具有循环作用域
- forContinue 表达式类型必须为 boolean（或扩展条件表达式）
- 否则产生编译期错误
- 可以使用已存在的变量作为循环索引
- 可以在 forInit 中声明新变量（显式类型或类型推导）

## 2. 测试分类

### 2.1 compile-pass（编译通过）
| 编号 | 文件 | 测试点 |
|------|------|--------|
| 001 | STM_08_08_001_PASS_BASIC_FOR | 基础 for 循环，forInit 声明新变量，显式类型 int |
| 002 | STM_08_08_002_PASS_FOR_TYPE_INFERENCE | forInit 类型推导 let i = 0 |
| 003 | STM_08_08_003_PASS_FOR_EXISTING_VAR | 使用已存在变量作为循环索引 |
| 004 | STM_08_08_004_PASS_FOR_EMPTY_INIT | forInit 和 forUpdate 均为空 |
| 005 | STM_08_08_005_PASS_FOR_EMPTY_CONTINUE | forContinue 为空（无终止条件） |

### 2.2 compile-fail（编译失败）
| 编号 | 文件 | 测试点 |
|------|------|--------|
| 006 | STM_08_08_006_FAIL_NON_BOOLEAN_CONDITION | forContinue 为非 boolean 表达式 |
| 007 | STM_08_08_007_FAIL_VAR_OUT_OF_SCOPE | 循环作用域变量在循环外使用 |

### 2.3 runtime（运行时）
| 编号 | 文件 | 测试点 |
|------|------|--------|
| 008 | STM_08_08_008_RUNTIME_FOR_BASIC | 基础 for 循环求和验证 |
| 009 | STM_08_08_009_RUNTIME_FOR_EXISTING_VAR | 使用已存在变量索引，验证运行结果 |

## 3. 边界值与异常场景
- forInit 可省略（空语句）
- forContinue 可省略（默认 true，无限循环需 break 退出）
- forUpdate 可省略
- forInit 可声明带有初始化的新变量，也可使用表达式
- 空条件（forContinue 缺失）相当于 true
- 非 boolean 条件编译失败

## 4. 文件命名规范
- 前缀：STM_08_08_
- 编号：3位数字，全局递增
- 后缀：_PASS_xxx.ets / _FAIL_xxx.ets / _RUNTIME_xxx.ets
- 注释块包含 @id, @expect, @section, @design, @note

## 5. 统计
- compile-pass: 5 个
- compile-fail: 2 个
- runtime: 2 个
- 总计: 9 个
