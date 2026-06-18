# 8.3 块语句 测试设计思维导图

## 1. 规格定义
- Block 是由 {} 包裹的语句序列
- 语法规则: block: '{' statement* '}'
- 语句按照文本顺序依次执行
- 执行遇到 throw error 或 return 时停止
- 若 block 为 void 函数/方法体，可不含 return 语句（隐式返回）
- 块内的类型声明不作为语句执行

## 2. 测试点分类

### 2.1 编译通过 (compile-pass)
- **基本块语句** - 多个语句按顺序执行
  - 赋值语句
  - 表达式语句
  - 变量声明
  - 函数调用
  - if/for/while 等控制流语句
  
- **嵌套块语句** - 块中嵌套块
  - 两层嵌套
  - 多层嵌套
  - 空块嵌套
  
- **void 函数体隐式返回**
  - void 函数无 return 语句
  - void 函数仅有 return; 无返回值
  
- **块中包含类型声明**
  - 块内 interface 声明（编译时不执行）
  - 块内 type alias 声明
  
- **空块**
  - {}
  - 块内仅有注释

### 2.2 编译失败 (compile-fail)
- **块内嵌套函数声明**
  - function foo() { function bar() {} } 不应通过
  
- **块内声明类**
  - { class Foo {} } 不应通过
  
- **块内声明类型别名**
  - { type MyType = int } 不应通过

### 2.3 运行时 (runtime)
- **块语句执行顺序**
  - 多个赋值语句按文本顺序执行
  - 前后变量值可验证
  
- **抛出异常时停止执行**
  - 块中 throw 后语句不执行
  - try-catch 包装验证

## 3. 边界值和异常场景
- 空块 `{}`
- 块中仅有注释 `{ /* comment */ }`
- 块中仅有类型声明（不作为语句执行）
- 深层嵌套块（>3层）
- 块中混合多种语句类型
- 块中 return 提前终止
- 块中 throw 提前终止

## 4. 文件命名规范
- 前缀: STM_08_03_
- 编译通过: STM_08_03_001_PASS_xxx.ets ~ STM_08_03_005_PASS_xxx.ets
- 编译失败: STM_08_03_006_FAIL_xxx.ets ~ STM_08_03_008_FAIL_xxx.ets
- 运行时:   STM_08_03_009_RUNTIME_xxx.ets ~ STM_08_03_010_RUNTIME_xxx.ets
- 文件路径:
  - compile-pass/: /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements/ets_cases/8.3_Block/compile-pass/
  - compile-fail/: /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements/ets_cases/8.3_Block/compile-fail/
  - runtime/:   /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements/ets_cases/8.3_Block/runtime/

## 5. 用例列表

| 编号 | 文件名 | 分类 | 测试内容 |
|------|--------|------|----------|
| 001 | STM_08_03_001_PASS_basic_block.ets | compile-pass | 基本块语句，多语句按顺序执行 |
| 002 | STM_08_03_002_PASS_nested_blocks.ets | compile-pass | 嵌套块语句 |
| 003 | STM_08_03_003_PASS_void_function_body.ets | compile-pass | void 函数体隐式返回 |
| 004 | STM_08_03_004_PASS_block_type_declarations.ets | compile-pass | 块内包含类型声明 |
| 005 | STM_08_03_005_PASS_empty_block.ets | compile-pass | 空块/注释块 |
| 006 | STM_08_03_006_FAIL_nested_function_in_block.ets | compile-fail | 块内声明嵌套函数 |
| 007 | STM_08_03_007_FAIL_local_class_in_block.ets | compile-fail | 块内声明局部类 |
| 008 | STM_08_03_008_FAIL_local_type_alias_in_block.ets | compile-fail | 块内声明类型别名 |
| 009 | STM_08_03_009_RUNTIME_block_execution_order.ets | runtime | 块语句执行顺序验证 |
| 010 | STM_08_03_010_RUNTIME_block_throw_error.ets | runtime | 块中抛出异常停止执行 |
