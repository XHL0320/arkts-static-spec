# 8.1 正常完成与异常完成语句执行 

## 一、章节定义
- 正常完成：语句执行其预期动作，没有抛出错误
- 异常完成：语句执行导致错误被抛出
- 本小节为概念性/定义性内容，通过其他小节的行为隐式测试

## 二、概念分解

### 2.1 正常完成 (Normal Completion)
- 赋值语句 (x = expr)
- 表达式语句 (x + y;)
- 块语句 { stmt1; stmt2; }
- 条件语句 (if/else)
- 循环语句 (for/while/do-while)
- 跳转语句 (return/break/continue) — 跳转语句本身正常完成
- try-catch 未抛出异常时
- 空语句 (;)

### 2.2 异常完成 (Abrupt Completion)
- throw 语句抛出 Error
- 未捕获的异常传播
- 嵌套异常传播
- finally 块中的异常覆盖

## 三、测试设计总览

### 3.1 compile-pass 测试 (3-4个文件)
- 验证各类语句正常完成
- 验证 try-catch 正常处理异常完成
- 验证嵌套控制流中的正常/异常完成
- 验证 break/continue/return 的正常完成语义

### 3.2 compile-fail 测试 (2-4个文件)
- 抛出非 Error 类型的值 (不符合 ArkTS 约束)
- break 语句在循环/switch 外部使用
- continue 语句在循环外部使用
- return 语句在函数体外使用

### 3.3 runtime 测试 (1-3个文件)
- 验证正常完成的语句按顺序执行并产生预期结果
- 验证 throw 导致异常完成并被 catch 捕获
- 验证嵌套异常传播行为

## 四、边界值与异常场景

### 4.1 边界值
- 空块 { }
- 空语句 ;
- 嵌套层次较深的语句
- 循环 0 次或 1 次后 break

### 4.2 异常场景
- 抛出非 Error 类型 -> 编译错误
- break/continue 在作用域外 -> 编译错误
- finally 中再次抛出异常
- 未捕获的异常传播

## 五、文件命名规范
- 前缀: STM_08_01
- 序号: 001~999
- 分类标识: PASS / FAIL / RUNTIME
- 描述: 简短英文描述
- 示例: STM_08_01_001_PASS_normal_completion.ets
