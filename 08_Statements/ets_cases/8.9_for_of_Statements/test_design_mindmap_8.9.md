# 8.9 for-of 语句 测试设计思维导图

## 一、规格定义（Section 8.9）
- **语法**: `forOfStatement: 'for' '(' forVariable 'of' expression ')' statement`
- **核心要求**: expression 必须是可迭代类型（iterable type），否则编译时错误
- **可迭代类型**: Array\<T\>, FixedArray\<T\>, string, 实现 Iterable 接口的类/接口

## 二、变量声明规则
### 2.1 循环内声明（let / const）
- `let`: 可在循环体内修改 forVariable
- `const`: 禁止在循环体内对 forVariable 赋值，否则编译时错误
- 类型推断规则:
  - Array\<T\> → T
  - FixedArray\<T\> → T
  - string → string
  - 实现 Iterable\<T\> 的类型 → T

### 2.2 外部声明变量
- 变量在循环外声明，for-of 中直接引用
- 迭代元素类型必须可赋值给变量类型，否则编译时错误

## 三、测试点分类

### 1) 编译通过 (compile-pass) — 5 个文件
| 编号 | 测试点 | 说明 |
|------|--------|------|
| 001 | Array\<T\> for-of 基本迭代 | 遍历 Array\<int\>，类型推断为 int |
| 002 | string for-of | 遍历字符串，元素类型推断为 string |
| 003 | let 修饰符 | let 声明变量可在循环体中修改 |
| 004 | 外部声明变量 | 变量定义在循环外部，用于 for-of |
| 005 | FixedArray\<T\> for-of | 遍历 FixedArray\<int\>，类型推断为 int |

### 2) 编译失败 (compile-fail) — 4 个文件
| 编号 | 测试点 | 预期错误 |
|------|--------|----------|
| 006 | 非可迭代类型（int 字面量） | int 不是可迭代类型 |
| 007 | 外部变量类型不匹配 | string 元素不能赋值给 int 变量 |
| 008 | const 变量赋值 | const 变量禁止修改 |
| 009 | 未实现 Iterable 的自定义类 | 类未实现 Iterable，不可迭代 |

### 3) 运行时 (runtime) — 3 个文件
| 编号 | 测试点 | 验证内容 |
|------|--------|----------|
| 010 | Array\<int\> 迭代 | 元素和与迭代次数正确 |
| 011 | string 迭代 | 字符拼接与迭代次数正确 |
| 012 | 外部变量迭代 | 外部变量正确接收每个元素值 |

## 四、边界与异常场景
- 空数组/空字符串迭代 → 循环体不执行
- const 变量在循环体中被赋值 → 编译时错误
- 非可迭代对象 → 编译时错误
- 联合类型的可迭代类型 → 可迭代

## 五、文件命名规范
- 前缀: `STM_08_09_`
- 编译通过: `STM_08_09_XXX_PASS_描述.ets` (001-005)
- 编译失败: `STM_08_09_XXX_FAIL_描述.ets` (006-009)
- 运行时: `STM_08_09_XXX_RUNTIME_描述.ets` (010-012)
- 全局编号统一递增，不按类别分组
