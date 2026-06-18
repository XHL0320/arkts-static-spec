# 8.2 表达式语句  测试设计思维导图

## 1. 章节定义
- 任何表达式都可以作为语句使用
- 语法: expressionStatement → expression ;
- 表达式执行的结果被丢弃
- 示例: 赋值表达式、自增/自减表达式、函数/方法调用作为语句

## 2. 测试分类

### 2.1 编译通过 (compile-pass)
- **赋值表达式语句**
  - 简单赋值: x = 10;
  - 解构赋值: [a, b] = [1, 2];
  - 条件赋值: x = cond ? 1 : 0;

- **自增/自减表达式语句**
  - 前缀自增: ++x;
  - 后缀自增: x++;
  - 前缀自减: --x;
  - 后缀自减: x--;

- **复合赋值表达式语句**
  - 算术复合赋值: +=, -=, *=, /=, %=
  - 位运算复合赋值: &=, |=, ^=, <<=, >>=, >>>=

- **函数/方法调用语句**
  - 普通函数调用: foo();
  - 带参数调用: bar(a, b);
  - 方法链调用: obj.method1().method2();

- **其他表达式语句**
  - 数组/对象属性访问
  - 类型转换表达式
  - 三元条件表达式
  - 模板字符串表达式

### 2.2 编译失败 (compile-fail)
- **无效/不支持的运算符**
  - delete 运算符 (ArkTS 不支持)
  - void 运算符 (某些上下文中不支持)

- **语义错误的表达式**
  - 访问不存在的变量
  - super 关键字在非法上下文中使用
  - 类型完全不兼容的二元运算

- **语法错误的表达式**
  - 缺失操作数
  - 括号不匹配

### 2.3 运行时 (runtime)
- **赋值语句的副作用验证**
  - 简单赋值后变量的值
  - 复合赋值后变量的值

- **自增/自减的副作用验证**
  - 前缀自增前后变量值变化
  - 后缀自增前后变量值变化

- **函数调用的副作用验证**
  - 全局变量修改
  - 数组/对象属性修改

- **表达式结果丢弃验证**
  - 纯表达式语句不影响后续执行流程

## 3. 边界值与异常场景
- 空表达式语句 (空语句 ;)
- 复杂嵌套表达式作为语句
- 链式赋值语句: x = y = z = 10;
- 逗号表达式: (x++, y++);

## 4. 文件命名规范
- 前缀: STM_08_02_
- 编译通过: STM_08_02_NNN_PASS_DESCRIPTION.ets
- 编译失败: STM_08_02_NNN_FAIL_DESCRIPTION.ets
- 运行时: STM_08_02_NNN_RUNTIME_DESCRIPTION.ets
- NNN 从 001 开始顺序编号

## 5. 测试文件清单

| 编号 | 文件名 | 类型 | 描述 |
|------|--------|------|------|
| 001 | STM_08_02_001_PASS_assignment_expression.ets | pass | 赋值表达式作为语句 |
| 002 | STM_08_02_002_PASS_increment_decrement.ets | pass | 自增自减表达式 |
| 003 | STM_08_02_003_PASS_function_call.ets | pass | 函数调用表达式 |
| 004 | STM_08_02_004_PASS_compound_assignment.ets | pass | 复合赋值表达式 |
| 005 | STM_08_02_005_PASS_expression_sequence.ets | pass | 多种表达式语句组合 |
| 006 | STM_08_02_006_FAIL_delete_operator.ets | fail | delete 运算符不支持 |
| 007 | STM_08_02_007_FAIL_super_illegal.ets | fail | super 在非法上下文中 |
| 008 | STM_08_02_008_FAIL_undefined_variable.ets | fail | 访问未定义变量 |
| 009 | STM_08_02_009_RUNTIME_assignment.ets | runtime | 赋值语句副作用验证 |
| 010 | STM_08_02_010_RUNTIME_increment.ets | runtime | 自增自减副作用验证 |
| 011 | STM_08_02_011_RUNTIME_call.ets | runtime | 函数调用副作用验证 |
