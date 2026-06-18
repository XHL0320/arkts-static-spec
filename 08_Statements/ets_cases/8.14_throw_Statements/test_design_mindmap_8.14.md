# 8.14 throw 语句测试设计思维导图

## 1. 规范定义
- throwStatement: 'throw' expression
- 表达式类型必须可赋值给 Error 类型（否则编译时报错）
- null 和 undefined 不能抛出
- 可在代码任意位置抛出错误
- 若无 try 捕获 -> UncaughtExceptionError

## 2. 测试点分类

### 2.1 编译通过 (compile-pass)
- **直接抛出 Error 实例**: throw new Error("msg")
- **通过变量抛出 Error**: let e: Error = new Error("msg"); throw e
- **抛出 RangeError 子类**: throw new RangeError("msg")
- **抛出自定义 Error 子类**: class MyError extends Error { ... }; throw new MyError()
- **在 try 块中正常抛出**: 抛出语句在 try 代码块内，语法通过

### 2.2 编译失败 (compile-fail)
- **抛出 string 类型**: throw "string"  -> 类型不兼容 Error
- **抛出 null**: throw null  -> null 不允许抛出
- **抛出 undefined**: throw undefined  -> undefined 不允许抛出
- **抛出 number 类型**: throw 42  -> 类型不兼容 Error
- **抛出 boolean**: throw true  -> 类型不兼容 Error

### 2.3 运行时 (runtime)
- **try-catch 捕获异常**: 验证 throw 能被外层 try-catch 正确捕获
- **rethrow 重新抛出**: catch 块中重新抛出异常，由外层捕获
- **多层嵌套 try-catch**: 异常由最近的匹配 catch 捕获
- **异常传播路径**: 内层函数抛出的异常被外层函数捕获

## 3. 边界值与异常场景
- 空 Error 对象: throw new Error()
- 带消息的 Error: throw new Error("detailed message")
- 抛出后立即被 catch 捕获
- catch 块中重新抛出 (rethrow)

## 4. 文件命名规范
- 前缀: STM_08_14
- 编译通过: STM_08_14_001_PASS_xxx.ets  ~  STM_08_14_004_PASS_xxx.ets
- 编译失败: STM_08_14_005_FAIL_xxx.ets  ~  STM_08_14_007_FAIL_xxx.ets
- 运行时:   STM_08_14_008_RUNTIME_xxx.ets  ~  STM_08_14_009_RUNTIME_xxx.ets

## 5. 关键约束
- 所有函数必须顶级定义，不允许嵌套函数
- 自定义类必须顶级定义，不允许局部类
- 编译通过文件使用 function testXxx(): void
- 运行时文件必须使用 function main(): void
- 运行时断言使用 if(cond) throw new Error("msg") 模式
