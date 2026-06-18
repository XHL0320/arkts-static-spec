# 8.15 try 语句 测试设计思维导图

## 1. 章节定义 (Section Definition)
- tryStatement: 'try' block catchClause? finallyClause?
- 语法规则: try 块后可选 catch 子句, 可选 finally 子句
- 必须包含: finally 子句 或 catch 子句 或两者都有
- 否则产生编译时错误

## 2. 行为语义 (Behavior Semantics)
- try 块正常完成 -> catch 子句不执行 (如果存在)
- try 块抛出错误 -> 控制权转移到 catch 子句 (如果存在)
- finally 子句始终执行 (无论是否抛出错误)
- catch 子句捕获异常后可重新抛出

## 3. 子类型枚举 (Sub-type Enumeration)

### 3.1 try-catch
- 基本 try-catch 结构
- try 块不抛异常时 catch 不执行
- try 块抛异常时 catch 执行
- 捕获后重新抛出

### 3.2 try-finally
- 基本 try-finally 结构
- finally 块在 try 完成后执行
- finally 块在异常传播前执行

### 3.3 try-catch-finally
- 完整的三元结构
- catch 和 finally 协作

### 3.4 嵌套 try 语句
- try 块内嵌套 try-catch
- catch 块内嵌套 try-finally
- finally 块内嵌套 try-catch-finally

## 4. 测试点分类 (Test Points)

### 4.1 编译通过 (compile-pass)
- 001: try-catch 基本结构
- 002: try-finally 基本结构
- 003: try-catch-finally 完整结构
- 004: 嵌套 try-catch 语句
- 005: try-catch 中包含 return 语句

### 4.2 编译失败 (compile-fail)
- 006: try 块没有 catch 也没有 finally (违反 MUST contain)
- 007: try 块内定义局部类 (违反 ArkTS 约束)
- 008: finally 块内定义局部类型别名 (违反 ArkTS 约束)
- 009: catch 块内定义嵌套函数 (违反 ArkTS 约束)

### 4.3 运行时 (runtime)
- 010: try-catch 不抛异常 -> catch 子句不执行
- 011: try-catch 抛异常 -> catch 子句捕获并处理
- 012: try-finally finally 块始终执行 (验证 finally 执行保证)

## 5. 边界值与异常场景 (Boundary & Exception)

### 5.1 边界值
- catch 子句捕获 Error 基类
- catch 子句捕获自定义错误类型
- 空 try 块 (仅有注释或无语句)
- 空 catch 块
- 空 finally 块

### 5.2 异常场景
- try 块中抛出多种不同类型的错误
- finally 块中抛出错误 (覆盖 try 块异常)
- catch 块中抛出错误后 finally 是否执行
- return 与 finally 的交互 (finally 在 return 前执行)

## 6. 文件命名规范 (File Naming Convention)
- 前缀: STM_08_15_
- 编号: 三位数字 (001, 002, ...)
- 后缀: PASS / FAIL / RUNTIME
- 描述: 简短英文描述
- 格式: STM_08_15_XXX_{PASS|FAIL|RUNTIME}_description.ets

## 7. 文件清单 (File Inventory)
- STM_08_15_001_PASS_try_catch.ets (compile-pass)
- STM_08_15_002_PASS_try_finally.ets (compile-pass)
- STM_08_15_003_PASS_try_catch_finally.ets (compile-pass)
- STM_08_15_004_PASS_try_nested.ets (compile-pass)
- STM_08_15_005_PASS_try_catch_return.ets (compile-pass)
- STM_08_15_006_FAIL_try_no_catch_no_finally.ets (compile-fail)
- STM_08_15_007_FAIL_try_catch_local_class.ets (compile-fail)
- STM_08_15_008_FAIL_try_finally_local_type_alias.ets (compile-fail)
- STM_08_15_009_FAIL_try_catch_nested_function.ets (compile-fail)
- STM_08_15_010_RUNTIME_try_catch_no_error.ets (runtime)
- STM_08_15_011_RUNTIME_try_catch_error.ets (runtime)
- STM_08_15_012_RUNTIME_try_finally_always.ets (runtime)
