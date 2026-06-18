# 8.13 switch 语句 测试设计思维导图

## 一、规范定义
- switchStatement: (identifier ':')? 'switch' '(' expression ')' switchBlock
- Switch expression can be of ANY type
- Optional identifier allows break to transfer control out of nested switch/loop
- Compile-time error if case expression type not assignable to switch expression type
- First match transfers control to that caseClause
- If no break, execution falls through to next caseClause
- If no match and defaultClause present -> execute defaultClause

## 二、测试分类

### 1. 编译通过测试 (compile-pass)
#### 1.1 基本int类型switch (STM_08_13_001_PASS_basic_int_switch)
- 测试点: int类型switch表达式，case匹配与break退出
- 覆盖: 基本switch语法、case匹配、break终止

#### 1.2 Fall-through穿透 (STM_08_13_002_PASS_fall_through)
- 测试点: case无break时穿透执行后续case语句
- 覆盖: fall-through机制、无break时顺序执行

#### 1.3 string类型switch (STM_08_13_003_PASS_string_switch)
- 测试点: string类型作为switch表达式
- 覆盖: 任意类型switch表达式支持、字符串case匹配

#### 1.4 boolean类型switch (STM_08_13_004_PASS_boolean_switch)
- 测试点: boolean类型作为switch表达式
- 覆盖: 布尔类型switch、true/false case标签

#### 1.5 带标签的switch (STM_08_13_005_PASS_labeled_break_switch)
- 测试点: 外层标签 + 嵌套switch中break outer跳出外层
- 覆盖: 带可选标识符的switch、标签化break

### 2. 编译失败测试 (compile-fail)
#### 2.1 case类型不匹配 - string on int (STM_08_13_006_FAIL_string_case_on_int_switch)
- 错误: string类型字面量不能赋值给int类型switch表达式
- 规范依据: Compile-time error if case expression type not assignable to switch expression type

#### 2.2 case类型不匹配 - int on string (STM_08_13_007_FAIL_int_case_on_string_switch)
- 错误: int类型字面量不能赋值给string类型switch表达式
- 规范依据: 同上

#### 2.3 case类型不匹配 - boolean on number (STM_08_13_008_FAIL_boolean_case_on_number_switch)
- 错误: boolean类型字面量不能赋值给number类型switch表达式
- 规范依据: 同上

### 3. 运行时测试 (runtime)
#### 3.1 基本匹配执行 (STM_08_13_009_RUNTIME_basic_switch)
- 测试: case正确匹配并执行对应分支、未匹配时执行default
- 验证: 结果字符串符合预期

#### 3.2 Fall-through与default子句 (STM_08_13_010_RUNTIME_fall_through_and_default)
- 测试: fall-through穿透累积字符串、default在未匹配时执行、匹配时跳过default
- 验证: 多层行为同时验证

#### 3.3 带标签break (STM_08_13_011_RUNTIME_labeled_break_switch)
- 测试: break outer跳出外层switch、普通break仅退出内层switch
- 验证: 标签化与普通break对比验证

## 三、边界值与异常场景

### 边界值
- switch表达式为int边界值（-2147483648, 2147483647）
- 空switch block（无case无default）
- 仅有default无case
- 多层嵌套switch
- 连续fall-through跨越多个case

### 异常场景（应产生编译错误）
- case表达式类型不可赋值给switch表达式类型
- 使用不支持的类型字面量作为case标签

### 异常场景（运行时无错误但有明确行为）
- switch表达式未匹配任何case且无default -> 无操作跳过switch
- fall-through到default

## 四、命名约定
- 前缀: STM_08_13_
- 编译通过: YYY_PASS_DESCRIPTION.ets
- 编译失败: YYY_FAIL_DESCRIPTION.ets
- 运行时: YYY_RUNTIME_DESCRIPTION.ets
- 编号YYY从001开始，跨类别顺序编号
