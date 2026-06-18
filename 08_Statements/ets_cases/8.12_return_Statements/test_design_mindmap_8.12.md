# 8.12 return语句 测试设计思维导图

## 1. 规格定义
- returnStatement: 'return' expression?
- 无表达式时，语义等价于 return undefined
- 无表达式return的合法位置：
  - 构造函数体（constructor body）
  - void/undefined 返回值函数/方法/lambda体
  - Promise<void> async函数体
  - 否则编译错误（compile-time error）
- 返回表达式类型必须可赋值给函数返回类型
  - 否则编译错误（compile-time error）

## 2. 测试维度

### 2.1 编译通过（compile-pass）
- void函数中无表达式return
- void函数中 return undefined
- 构造函数中无表达式return
- 匹配类型的return表达式（int, string, boolean, number等）
- 多个return路径（条件分支return）
- 早期return（提前退出）
- undefined显式return在void函数中
- 正常return表达式函数调用结果

### 2.2 编译失败（compile-fail）
- 构造函数中 return undefined（规范明确禁止）
- 非void/non-undefined函数中无表达式return
- 返回表达式类型不可赋值给函数返回类型
  - int函数返回string
  - string函数返回int
  - boolean函数返回number
- void函数中返回非undefined/非void表达式

### 2.3 运行时验证（runtime）
- return表达式正确返回并赋值给调用者
- 多条return路径的正确条件分支
- return语句后的控制流（return后代码不执行）

## 3. 边界值与特殊场景

### 3.1 类型边界
- int -> number（可赋值）
- string literal -> string（可赋值）
- null -> 非null类型（不可赋值，需考虑null类型限制）
- undefined -> void（可赋值）
- undefined -> 非void/非undefined（不可赋值）

### 3.2 函数体边界
- 仅有return语句的函数体
- return后仍有代码（unreachable code）
- 条件return（if/else分支各自return）
- 嵌套if中的return

### 3.3 异常场景
- 缺少return语句（非void函数缺少return）
- 部分路径有return，部分路径无return
- return语句后还有不可达代码

## 4. 文件命名规范
- 前缀: STM_08_12
- 编译通过: STM_08_12_001_PASS_描述.ets 至 STM_08_12_005_PASS_描述.ets
- 编译失败: STM_08_12_006_FAIL_描述.ets 至 STM_08_12_008_FAIL_描述.ets
- 运行时:  STM_08_12_009_RUNTIME_描述.ets 至 STM_08_12_011_RUNTIME_描述.ets
- 编号顺序连续，跨类别递增

## 5. 测试要点总结

| ID | 类别 | 测试点 | 预期 |
|----|------|--------|------|
| 001 | pass | void函数无表达式return | 编译通过 |
| 002 | pass | void函数return undefined | 编译通过 |
| 003 | pass | return表达式匹配函数类型 | 编译通过 |
| 004 | pass | 构造函数无表达式return | 编译通过 |
| 005 | pass | 多return路径 | 编译通过 |
| 006 | fail | 构造函数return undefined | 编译错误 |
| 007 | fail | 非void函数return无表达式 | 编译错误 |
| 008 | fail | return类型不匹配 | 编译错误 |
| 009 | runtime | return返回值正确性 | 运行时通过 |
| 010 | runtime | return控制流（提前返回） | 运行时通过 |
| 011 | runtime | 多路径条件return | 运行时通过 |
