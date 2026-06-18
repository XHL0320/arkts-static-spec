# 8.7 while 语句和 do 语句 测试设计思维导图

## 1. 规格定义 (Section 8.7)
- whileStatement: `'while' '(' expression ')' statement`
- doStatement: `'do' statement 'while' '(' expression ')' ';'`
- while 语义: 先判断条件表达式, 条件为 true 时执行循环体, 再重复判断
- do 语义: 先执行循环体, 再判断条件表达式, 条件为 true 则重复执行
- 条件表达式类型必须为 boolean 或 Extended Conditional Expressions 类型, 否则编译时报错

## 2. 子类型枚举

### 2.1 while 语句
- 条件为布尔字面量 true 的 while 循环
- 条件为布尔字面量 false 的 while 循环 (循环体不执行)
- 条件为布尔变量的 while 循环
- 条件为比较表达式 (<, >, ===, !==, <=, >=) 的 while 循环
- 条件为逻辑表达式 (&&, ||, !) 的 while 循环
- 带 break 语句的 while 循环
- 带 continue 语句的 while 循环
- 空循环体的 while 循环
- 嵌套 while 循环

### 2.2 do 语句
- 条件为布尔字面量 true 的 do-while 循环
- 条件为布尔字面量 false 的 do-while 循环 (仍执行一次循环体)
- 条件为布尔变量的 do-while 循环
- 条件为比较表达式的 do-while 循环
- 条件为逻辑表达式的 do-while 循环
- 带 break 语句的 do-while 循环
- 带 continue 语句的 do-while 循环
- 空循环体的 do-while 循环

### 2.3 混合嵌套
- while 嵌套 do-while
- do-while 嵌套 while
- 多层嵌套循环中的 break 行为

## 3. 测试点分类

### 3.1 编译通过 (compile-pass)
| 编号 | 测试点 | 说明 |
|------|--------|------|
| 001 | 基本 while 循环 | 布尔变量条件, while 合法声明 |
| 002 | while 空循环体 | 循环体为空, 合法语法 |
| 003 | 基本 do-while 循环 | 布尔表达式条件, do 合法声明 |
| 004 | do-while 空循环体 | 循环体为空, 合法语法 |
| 005 | while 和 do-while 嵌套 | 互相嵌套, 多层循环 |

### 3.2 编译失败 (compile-fail)
| 编号 | 测试点 | 说明 |
|------|--------|------|
| 006 | while 条件为数字字面量 | 非 boolean 类型, 编译错误 |
| 007 | do-while 条件为字符串字面量 | 非 boolean 类型, 编译错误 |
| 008 | while 条件为数字变量 | 非 boolean 类型, 编译错误 |

### 3.3 运行时 (runtime)
| 编号 | 测试点 | 说明 |
|------|--------|------|
| 009 | while(false) 循环体不执行 | 验证 while 先判断后执行 |
| 010 | do-while(false) 至少执行一次 | 验证 do-while 先执行后判断 |
| 011 | while vs do-while 行为对比 | 相同条件下执行次数的差异 |

## 4. 边界值与异常场景
- 条件为布尔字面量 `true` -- 无限循环 (需 break 退出)
- 条件为布尔字面量 `false` -- 循环体跳过
- 条件为布尔变量 `let flag: boolean = true; while (flag)`
- 条件为比较表达式 `i < 10`, `i !== 0`
- 条件为逻辑表达式 `a && b`, `!done`
- 条件为函数返回值 `while (getCondition())`
- 非 boolean 类型条件: number, string, null, undefined -> 编译错误
- 循环体为 block 语句 `{ }`
- 循环体为单语句 (无 block)
- 循环体为 `;` (空语句)
- break 跳出当前循环
- continue 跳过当前迭代后续语句
- 嵌套循环中 break 只跳出最内层

## 5. 文件命名规约
- 目录: `8.7_while_Statements_and_do_Statements/`
  - `compile-pass/` -- 编译通过测试
  - `compile-fail/` -- 编译失败测试
  - `runtime/` -- 运行时测试
- 文件名: `STM_08_07_<编号>_<类别>_<描述>.ets`
- 编号规则: 001 开始, 跨所有类别顺序递增
  - 001-005: PASS
  - 006-008: FAIL
  - 009-011: RUNTIME

## 6. 注释格式
```arkts
/**
 * @id STM_08_07_<编号>_<类别>_<描述>
 * @expect compile-pass | compile-fail | runtime
 * @section 8.7
 * @design <中文测试设计说明>
 * @note <测试要点注释>
 */
```

## 7. 关键约束
- 所有函数必须为顶层函数, 不可嵌套
- 编译通过测试: function testXxx(): void { ... }
- 编译失败测试: function testXxx(): void { ... }
- 运行时测试: function main(): void { ... }, 使用 if + throw new Error 断言
- 运行时测试结尾: console.log("verified")
- 不可使用局部类、局部类型别名
- int/number/string/boolean 为类型关键字
