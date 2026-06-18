# 8.5 if 语句 测试设计思维导图

## 一、规格定义
- ifStatement: 'if' '(' expression ')' thenStatement ('else' elseStatement)?
- 条件表达式类型必须为 boolean（或扩展条件表达式类型）
- 否则产生编译时错误
- 每个 else 与最近的 if 配对（dangling else 消除歧义）
- 无块语句时，if/else 体不创建块级作用域
- 有块语句时，if/else 体创建块级作用域

## 二、测试分类

### 2.1 compile-pass (编译通过)
| 编号 | 测试点 | 说明 |
|------|--------|------|
| 001 | 基本 if 语句 | if(true)/if(false) 基本形式 |
| 002 | if-else 语句 | if-else 两个分支 |
| 003 | 嵌套 if-else | 多层嵌套 + dangling else 绑定 |
| 004 | 块级作用域 | if/else 块内 let 声明隔离 |
| 005 | 无块 if 语句 | if/else 后跟单语句（无 {}） |

### 2.2 compile-fail (编译失败)
| 编号 | 测试点 | 说明 |
|------|--------|------|
| 006 | 数值型条件 | int/number 类型用作条件表达式 |
| 007 | 字符串条件 | string 类型用作条件表达式 |
| 008 | 对象引用条件 | Object 类型用作条件表达式 |

### 2.3 runtime (运行时)
| 编号 | 测试点 | 说明 |
|------|--------|------|
| 009 | if/else 分支执行验证 | true/false 分支正确执行 |
| 010 | 嵌套 if-else 与链式 else if | 多层条件选择正确性 |

## 三、边界值与异常场景

### 条件表达式边界
- boolean 字面量: true / false
- boolean 变量: let cond: boolean = true; if (cond)
- 关系运算: ==, !=, <, >, <=, >= 返回 boolean
- 逻辑运算: &&, ||, ! 返回 boolean
- 非 boolean 类型编译错误: int, string, Object, null 等

### 作用域边界
- 块内声明在块外不可见
- 同名变量可在不同分支块中声明
- 无块语句时不会创建作用域

### 语法边界
- dangling else 绑定到最近 if
- if-else 链: else if pattern
- 空块: if (true) {} else {}
- 单语句无块: if (true) doSomething()

## 四、命名规则
- 文件前缀: STM_08_05_
- PASS: STM_08_05_001_PASS_DESCRIPTION.ets (编译通过)
- FAIL: STM_08_05_006_FAIL_DESCRIPTION.ets (编译失败)
- RUNTIME: STM_08_05_009_RUNTIME_DESCRIPTION.ets (运行时)
- 全局顺序编号，跨类别连续
