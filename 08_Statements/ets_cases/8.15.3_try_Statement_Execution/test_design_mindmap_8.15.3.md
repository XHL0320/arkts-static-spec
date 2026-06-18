# 8.15.3 try 语句执行 测试设计思维导图

## 1. 章节定义 (Section Definition)
- 章节号: 8.15.3 try_Statement_Execution
- 核心内容: try 语句的执行规则 (Execution Rules)
- 四种执行规则定义 try 语句在正常和异常情况下的完成状态

## 2. 执行规则细分 (Execution Rules Enumeration)

### 2.1 规则1 (Rule 1): try 块正常完成
- try 块体中的语句序列正常完成（无异常抛出）
- catch 子句不会执行
- try 语句整体正常完成
- 若存在 finally 子句，finally 在 try 完成后执行

### 2.2 规则2 (Rule 2): try 块抛出异常且 catch 捕获
- try 块体中的语句抛出了异常 x
- catch 子句被执行来捕获异常 x
- 如果 catch 块体正常完成 -> 整个 try 语句正常完成
- 如果 catch 块体异常完成 -> 整个 try 语句异常完成

### 2.3 规则3 (Rule 3): try 块抛出异常但无 catch 子句
- try 块体抛出异常 x
- 没有 catch 子句来捕获 x
- 异常 x 传播到外围作用域或调用者（caller）作用域
- 持续传播直到找到匹配的 catch 子句

### 2.4 规则4 (Rule 4): finally 子句异常完成
- 如果 finally 子句执行时异常完成
- 则整个 try 语句也异常完成
- 即使 catch 子句已经正常处理了原始异常
- finally 中的异常会覆盖原始异常

## 3. 测试点分类 (Test Points)

### 3.1 编译通过 (compile-pass) — 4 files
- 001_PASS_try_block_normal_completion: 规则1 — try 块正常完成，try-finally 结构
- 002_PASS_try_catch_error_handled: 规则2 — catch 捕获异常，catch 体正常完成
- 003_PASS_error_propagated_no_catch: 规则3 — 无 catch，异常传播，try-finally 结构
- 004_PASS_finally_abrupt_completion: 规则4 — finally 异常完成，throw in finally

### 3.2 编译失败 (compile-fail) — 3 files
- 005_FAIL_try_no_catch_no_finally: try 块没有 catch 也没有 finally（违反语法要求）
- 006_FAIL_try_catch_local_class: catch 块内定义局部类（违反 ArkTS 约束）
- 007_FAIL_try_finally_nested_function: finally 块内定义嵌套函数（违反 ArkTS 约束）

### 3.3 运行时 (runtime) — 3 files
- 008_RUNTIME_try_normal_completion: 规则1 — try 块正常完成，不执行 catch
- 009_RUNTIME_try_catch_normal_completion: 规则2 — 异常被捕获，catch 正常完成，整个 try 正常
- 010_RUNTIME_error_propagated_and_finally_abrupt: 规则3+4 — 无 catch 时异常传播 + finally 异常完成

## 4. 边界值与异常场景 (Boundary & Exception)

### 4.1 边界值
- try 块中抛出 Error 基类对象
- try 块中抛出自定义错误类型
- catch 块正常完成（无 return/throw）
- finally 块正常完成（无 return/throw）
- finally 块异常完成（包含 throw）

### 4.2 异常场景
- 规则1: try 块无异常时 catch 不执行，finally 执行
- 规则2: catch 体正常完成 vs catch 体异常完成
- 规则3: 异常跨函数传播（try-finally 函数到调用者 catch）
- 规则4: finally 中抛出新异常覆盖 catch 处理的原始异常
- 多层嵌套 try 语句的异常传播

## 5. 文件命名规范 (File Naming Convention)
- 前缀: STM_08_15_3_
- 编号: 三位数字 (001, 002, ..., 010)
- 后缀: PASS / FAIL / RUNTIME
- 描述: 简短英文描述
- 格式: STM_08_15_3_XXX_{PASS|FAIL|RUNTIME}_description.ets

## 6. 文件清单 (File Inventory)
- STM_08_15_3_001_PASS_try_block_normal_completion.ets (compile-pass)
- STM_08_15_3_002_PASS_try_catch_error_handled.ets (compile-pass)
- STM_08_15_3_003_PASS_error_propagated_no_catch.ets (compile-pass)
- STM_08_15_3_004_PASS_finally_abrupt_completion.ets (compile-pass)
- STM_08_15_3_005_FAIL_try_no_catch_no_finally.ets (compile-fail)
- STM_08_15_3_006_FAIL_try_catch_local_class.ets (compile-fail)
- STM_08_15_3_007_FAIL_try_finally_nested_function.ets (compile-fail)
- STM_08_15_3_008_RUNTIME_try_normal_completion.ets (runtime)
- STM_08_15_3_009_RUNTIME_try_catch_normal_completion.ets (runtime)
- STM_08_15_3_010_RUNTIME_error_propagated_and_finally_abrupt.ets (runtime)
