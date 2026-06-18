# 8.15.1 catch 子句 测试设计思维导图

## 1. 章节定义
- **规范**: 8.15.1 catch Clause
- **描述**: catch 子句由两部分组成：catch 标识符 + 处理程序块
- **类型**: catch 块内标识符类型为 Error
- **功能**: 提供对抛出的 Error 对象的访问
- **行为**: 在运行时处理所有错误
- **类型区分**: 使用 instanceof 区分特定错误类型

## 2. 测试点分类

### 2.1 编译通过 (compile-pass)
- **基本 try-catch 结构**
  - try 块后跟 catch 块
  - catch 块参数为 Error 类型
  - catch 块内访问 error 对象
- **try-catch-finally 结构**
  - try 块 + catch 块 + finally 块
  - catch 块执行后 finally 执行
- **catch 块内类型检查**
  - instanceof Error
  - instanceof RangeError
  - instanceof TypeError
  - instanceof ReferenceError
- **catch 块内重新抛出**
  - 直接重新抛出 catch 变量
  - 选择性重新抛出（满足条件时）
- **catch 块内错误处理**
  - 访问 error.message
  - 访问 error.name
  - 访问 error.stack
- **try-catch 作为表达式**
  - 函数体内使用 try-catch
  - try-catch 后正常返回
- **嵌套 try-catch**
  - 外层 try-catch 内层 try-catch
  - 内层 catch 捕获后继续执行

### 2.2 编译失败 (compile-fail)
- **catch 参数类型错误**
  - catch (e: string) - 非 Error 类型
  - catch (e: number) - 非 Error 类型
  - catch (e: boolean) - 非 Error 类型
  - catch (e: Object) - 非 Error 类型
- **catch 参数使用错误**
  - 将 catch 变量赋值给非 Error 类型
  - 将 catch 变量当作非 Error 类型使用（未做类型收窄）
- **非法语法**
  - catch 后缺少参数
  - catch 后缺少块
  - 多个同类型 catch 块

### 2.3 运行时测试 (runtime)
- **基本异常捕获**
  - throw new Error("msg") 被 catch 捕获
  - catch 块正确执行
- **instanceof 类型区分**
  - 抛出 Error 子类实例
  - instanceof 判断正确执行对应逻辑
  - 最终输出验证
- **错误对象属性**
  - error.message 值正确
  - error.name 值正确
- **重新抛出**
  - catch 块内重新抛出，被外层捕获
  - 选择性重新抛出
- **多种异常类型处理**
  - Error 基类捕获
  - RangeError 特定处理
  - TypeError 特定处理
- **finally 执行保证**
  - catch 执行后 finally 执行
  - catch 不执行时 finally 仍执行
  - 重新抛出后 finally 仍执行

## 3. 边界值和异常场景
- **未抛出异常时**: catch 块不执行
- **抛出非 Error 对象**: 规范要求 catch 类型为 Error
- **空 catch 块**: catch 后直接跟块但不处理
- **catch 后不重新抛出**: 程序继续正常执行
- **嵌套错误**: 内层 catch 重新抛出的错误被外层捕获
- **catch 变量作用域**: 仅在 catch 块内有效

## 4. 文件命名规范
- **前缀**: STM_08_15_1
- **分类后缀**: PASS / FAIL / RUNTIME
- **格式**: STM_08_15_1_XXX_YYY_DESCRIPTION.ets
- **编号规则**: 从 001 开始跨分类连续编号

## 5. 文件清单

### 编译通过 (PASS)
| 编号 | 文件名 | 描述 |
|------|--------|------|
| 001 | STM_08_15_1_001_PASS_basic_catch.ets | 基本 try-catch 结构 |
| 002 | STM_08_15_1_002_PASS_catch_instanceof.ets | catch 内 instanceof 类型收窄 |
| 003 | STM_08_15_1_003_PASS_catch_finally.ets | try-catch-finally 完整结构 |
| 004 | STM_08_15_1_004_PASS_catch_rethrow.ets | catch 内重新抛出 |
| 005 | STM_08_15_1_005_PASS_nested_try_catch.ets | 嵌套 try-catch |

### 编译失败 (FAIL)
| 编号 | 文件名 | 描述 |
|------|--------|------|
| 006 | STM_08_15_1_006_FAIL_wrong_type_string.ets | catch 参数类型为 string |
| 007 | STM_08_15_1_007_FAIL_wrong_type_number.ets | catch 参数类型为 number |
| 008 | STM_08_15_1_008_FAIL_catch_no_param.ets | catch 缺少参数 |

### 运行时 (RUNTIME)
| 编号 | 文件名 | 描述 |
|------|--------|------|
| 009 | STM_08_15_1_009_RUNTIME_basic_catch.ets | 基本异常捕获验证 |
| 010 | STM_08_15_1_010_RUNTIME_instanceof.ets | instanceof 类型区分验证 |
| 011 | STM_08_15_1_011_RUNTIME_rethrow.ets | 重新抛出验证 |
