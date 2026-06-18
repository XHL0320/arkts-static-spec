# 8.15.2 finally 子句 测试设计思维导图

## 1. 规范定义
- **8.15.2 finally Clause**
- finallyClause: 'finally' 后跟 block
- 无论正常完成还是异常完成，最终块始终执行
- 即使 try 或 catch 中有 return 或抛出新错误，finally 仍执行
- 适用于资源管理（关闭文件、刷新缓冲区）

## 2. 测试点分类

### 2.1 编译通过 (compile-pass)
- **基本 try-catch-finally 正常流程**
  - try 块正常执行完成
  - finally 块在 try 之后执行
  - 验证 finally 确实执行
- **catch 异常后 finally 执行**
  - try 块抛出异常
  - catch 块捕获处理
  - finally 块仍然执行
- **return 后 finally 执行**
  - try 块中包含 return 语句
  - finally 在 return 之前执行
  - 验证 finally 的优先级
- **无 catch 的 try-finally**
  - 只有 try 和 finally，没有 catch
  - try 正常完成
  - finally 执行
- **嵌套 try-catch-finally**
  - 外层 try 包含内层 try-catch-finally
  - 验证多层嵌套场景

### 2.2 编译失败 (compile-fail)
- **finally 中使用保留关键字作为变量名**
  - 使用 string、int 等关键字名
- **finally 块中定义局部类**
  - 违反 ArkTS 无局部类约束
- **finally 块中嵌套函数**
  - 违反 ArkTS 无嵌套函数约束

### 2.3 运行时验证 (runtime)
- **finally 始终执行验证**
  - try 正常完成 -> finally 执行
  - try 异常完成 -> catch + finally 执行
- **finally 在 return 之后仍执行**
  - try 或 catch 中有 return 语句
  - finally 在方法返回前执行
- **finally 在抛出新错误后仍执行**
  - catch 块中抛出新错误
  - finally 在新错误抛出前执行

## 3. 边界值及异常场景
- finally 块为空
- finally 块嵌套多层
- try 和 catch 都包含 return
- try 不抛异常但 finally 抛出异常
- finally 中使用 break/continue（需在循环内有意义）

## 4. 文件命名规范
- STM_08_15_2_001_PASS_basic_finally.ets — 基本 finally 使用（编译通过）
- STM_08_15_2_002_PASS_finally_after_catch.ets — catch 后 finally 执行（编译通过）
- STM_08_15_2_003_PASS_finally_after_return.ets — return 后 finally 执行（编译通过）
- STM_08_15_2_004_PASS_finally_no_catch.ets — 无 catch 的 try-finally（编译通过）
- STM_08_15_2_005_PASS_finally_nested.ets — 嵌套 finally（编译通过）
- STM_08_15_2_006_FAIL_finally_reserved_word.ets — 保留关键字作变量名（编译失败）
- STM_08_15_2_007_FAIL_finally_local_class.ets — 局部类（编译失败）
- STM_08_15_2_008_FAIL_finally_nested_func.ets — 嵌套函数（编译失败）
- STM_08_15_2_009_RUNTIME_finally_executes.ets — finally 执行验证（运行时）
- STM_08_15_2_010_RUNTIME_finally_with_return.ets — return 时 finally 执行（运行时）
- STM_08_15_2_011_RUNTIME_finally_with_error.ets — 异常时 finally 执行（运行时）

## 5. 断言策略
- 编译通过：使用 console.log 输出，无语法错误
- 编译失败：使用保留关键字、局部类、嵌套函数等触发编译错误
- 运行时：使用 if(actual != expected) throw new Error("msg") 断言
- 每条测试用例末尾使用 console.log("verified") 标记测试通过
