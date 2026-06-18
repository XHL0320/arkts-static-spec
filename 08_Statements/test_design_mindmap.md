# 08 Statements - 测试设计思维导图（章节级）

## 概述

本章定义 ArkTS 中的所有语句（Statements）类型，包括表达式语句、块语句、声明、控制流、循环、跳转、switch、异常处理等。每个语句的具体语义和编译期/运行时行为由 spec §8 定义。

**前缀：** `STM_`
**主章节号：** 08

---

## 子章节清单与测试策略

### 8.1 Normal and Abrupt Statement Execution
- **定义：** 语句正常完成 vs 突然完成（异常抛出）的区分
- 测试点：
  - PASS: 正常语句执行完成
  - FAIL: N/A（概念性）
  - RUNTIME: 验证正常完成不抛异常

### 8.2 Expression Statements
- **定义：** 任何表达式后加分号可作语句，结果被丢弃
- 测试点：
  - PASS: 赋值、自增自减、函数调用、方法调用表达式作语句
  - FAIL: 无（表达式语句语法几乎总是合法）
  - RUNTIME: 表达式副作用可观测

### 8.3 Block
- **定义：** `{ statement* }` 顺序执行，void 函数体可不含 return
- 测试点：
  - PASS: 空块、嵌套块、块中声明、void 函数缺省 return
  - FAIL: 块中不合法语句
  - RUNTIME: 块顺序执行

### 8.4 Constant or Variable Declarations
- **定义：** `let`/`const` 声明新变量/常量，可带注解
- 测试点：
  - PASS: let/const 声明、类型推断、shadowing、块作用域
  - FAIL: 同作用域重复声明、const 重新赋值、参数名冲突
  - RUNTIME: 变量作用域和 shadowing 验证

### 8.5 if Statements
- **定义：** `if (expr) thenStmt [else elseStmt]`，条件必须为 boolean 或 Extended Conditional Expressions 类型（STATEMENTS.md L139）
- 测试点：
  - PASS: if/else if/else、嵌套 if、块中 if、末尾 else 匹配、Extended Conditional Expressions（int/string/float 条件）
  - FAIL: 暂无（Extended Conditional Expressions 覆盖几乎所有类型，该特性 spec 标注"to be deprecated"）
  - RUNTIME: 条件分支执行验证

### 8.6 Loop Statements
- **定义：** 循环语句的公共规则（标签、label 作用域）
- 测试点：
  - PASS: 标签标记循环
  - FAIL: label 未使用、label 在 lambda 中使用
  - RUNTIME: label 跳转验证

### 8.7 while/do Statements
- **定义：** `while (expr) stmt` / `do stmt while (expr)`，条件必须为 boolean 或 Extended Conditional Expressions 类型（STATEMENTS.md L210）
- 测试点：
  - PASS: while 循环、do-while 循环、空循环体、Extended Conditional Expressions（int/string 条件）
  - FAIL: 暂无（Extended Conditional Expressions 覆盖几乎所有类型）
  - RUNTIME: 循环次数的正确性

### 8.8 for Statements
- **定义：** `for (init; cond; update) stmt`，条件必须为 boolean 或 Extended Conditional Expressions 类型（STATEMENTS.md L227）
- 测试点：
  - PASS: 多种声明/条件形式、forInit 声明新变量、Extended Conditional Expressions（非 boolean 条件）
  - FAIL: forInit 变量越作用域
  - RUNTIME: 循环计数器、forInit 作用域

### 8.9 for-of Statements
- **定义：** `for (variable of iterable) stmt`
- 测试点：
  - PASS: 数组迭代、字符串迭代、let/const 声明、外部变量
  - FAIL: 非 iterable 类型、类型不匹配、const 修改
  - RUNTIME: 迭代次数、元素值验证

### 8.10 break Statements
- **定义：** `break [identifier]` 跳出循环/switch
- 测试点：
  - PASS: break 跳出循环、break 跳出 switch、带 label break
  - FAIL: break 在循环外、break 标签不存在、lambda 内 break label
  - RUNTIME: break 实际跳出

### 8.11 continue Statements
- **定义：** `continue [identifier]` 跳到下一次迭代
- 测试点：
  - PASS: continue 跳过当前迭代、带 label continue
  - FAIL: continue 在循环外、continue 标签不存在、lambda 内 continue label
  - RUNTIME: continue 跳过验证

### 8.12 return Statements
- **定义：** `return [expression]` 返回值/终止函数
- 测试点：
  - PASS: 有值 return、无值 return（void）、void 函数无 return、构造器 return
  - FAIL: 顶层 return、类型不匹配、return 非 void 函数无值
  - RUNTIME: 返回值正确性

### 8.13 switch Statements
- **定义：** `switch (expr) { case ... }`
- 测试点：
  - PASS: switch 字符串/整数/类/null、带 break fall-through
  - FAIL: 不兼容 case 类型
  - RUNTIME: switch 匹配正确性、default 子句

### 8.14 throw Statements
- **定义：** `throw expression`，类型必须 assignable 到 Error
- 测试点：
  - PASS: throw Error 子类、throw 自定义 Error
  - FAIL: throw null、throw undefined、throw 非 Error
  - RUNTIME: throw 可被 try-catch 捕获

### 8.15 try Statements
- **定义：** `try block [catch] [finally]`，至少需要 catch 或 finally
- 测试点：
  - PASS: try-catch、try-finally、try-catch-finally
  - FAIL: try 无 catch 无 finally
  - RUNTIME: try 正常完成、异常时 catch 执行

### 8.15.1 catch Clause
- **定义：** `catch (e) { handler }`，e 类型为 Error
- 测试点：
  - PASS: catch Error、catch 中 instanceof 判断
  - FAIL: N/A
  - RUNTIME: catch 捕获特定异常

### 8.15.2 finally Clause
- **定义：** `finally { ... }` 无论是否异常都执行
- 测试点：
  - PASS: finally 执行、return 前 finally 执行
  - FAIL: N/A
  - RUNTIME: finally 执行保证

### 8.15.3 try Statement Execution
- **定义：** try 语句的完整执行流程（正常/异常/try 块内异常传播）
- 测试点：
  - PASS: try 正常→跳过 catch、catch 重新 throw
  - FAIL: N/A
  - RUNTIME: 异常传播路径验证

---

## 分类说明

- **compile-pass** — .ets 文件必须编译成功
- **compile-fail** — .ets 文件必须产生编译时错误（Syntax error 或 Semantic error）
- **runtime** — .ets 文件编译后通过 ark VM 实际运行 + assert 断言验证

## 文件命名规范

`STM_08_XX_YYY_{CATEGORY}_{DESCRIPTION}.ets`

| 字段 | 含义 |
|------|------|
| `STM_` | 08_Statements 前缀 |
| `08` | 主章节号 |
| `XX` | 子章节号（01~15 或 15_1/15_2/15_3） |
| `YYY` | 连续编号（001 起） |
| `CATEGORY` | PASS / FAIL / RUNTIME |
| `DESCRIPTION` | 大写下划线描述 |

## 编号规则

- 每个子章节内连续递增（001 起）
- 顺序：PASS → FAIL → RUNTIME
- PASS 001~  →  FAIL 接续  →  RUNTIME 接续

## 需要特别注意的 ArkTS 约束

- ❌ 禁止嵌套函数 → 提到顶层
- ❌ 禁止局部类 → 提到顶层  
- ❌ 禁止局部 type alias → 提到顶层
- ❌ `int`/`double`/`char`/`byte` 等是关键字，不能做变量名
- ❌ `pop()` 返回 `T | undefined`
- ❌ stdlib 已含 `Box` 等常见类名
- ❌ 不支持数字/布尔字面量类型（仅支持字符串字面量）
- ⚠️ 非 boolean 条件在 if/while/for 中 → 当前版本因 Extended Conditional Expressions 允许通过（STATEMENTS.md L139/L210/L227），但 spec 标注 "to be deprecated"
- ❌ break/continue 在循环外 → compile-time error
- ❌ throw 非 Error 类型 → compile-time error
- ⚠️ try 必须至少有 catch 或 finally（STATEMENTS.md L507-510）
- ⚠️ catch 语法为 `catch(e)` 无类型标注（STATEMENTS.md L502），`catch(e: Error)` 已过时（ESE33781）
- ✅ 整数除法 int/int = int（截断）
- ✅ 类型收窄用 `if (x !== null)` 或 `if (x instanceof T)`
