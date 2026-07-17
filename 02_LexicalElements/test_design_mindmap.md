# 02 Lexical Elements Test Design Mindmap

## 覆盖汇总

- 总用例数：720（348P + 118F + 196R）
- 覆盖章节：2.1 ~ 2.11 全部词法元素规则
- 测试类别：compile-pass / compile-fail / runtime

## Subtopics

### 2.1 Use of Unicode Characters（46）
- BMP/SMP/代理对/孤立代理/组合/转义
- char 字面量与字符操作
- Unicode 转义标识符

### 2.2 Lexical Input Elements（34）
- 空白符/行终止符/Token/注释 4 种元素
- 最长匹配原则
- Token 序列化与空白分隔

### 2.3 White Spaces（47）
- 6 种空白符：SP/HT/VT/FF/NBSP/ZWNBSP
- Ogham 空格、空白区间
- 空白作为 token 分隔

### 2.4 Line Separators（41）
- 4 种行终止符：LF/CR/LS/PS
- CRLF 序列 / 行终止符的位置
- 结构化的行终止符使用

### 2.5 Tokens（48）
- 4 类 Token 声明与使用
- 最长 token 匹配
- 非法 token 形式

### 2.6 Identifiers（49）
- Unicode 类别（ID_Start/ID_Continue）
- 下划线/美元/数字开头
- ZWJ/ZWNJ 在标识符中
- 转义标识符
- 大小写敏感性

### 2.7 Keywords（94）
- 硬关键字 30+ 全部覆盖
- 类型关键字及别名（int/long/float/double/byte…）
- 软关键字（catch/namespace/get/set/type/declare…）
- 未来保留字（var/yield/struct…）
- 关键字作为标识符应失败

### 2.8 Operators and Punctuators（39）
- 算术/关系/逻辑/位运算符
- 复合赋值（+= /= %= …, ??= 当前未实现）
- 三元/箭头/展开/可选链
- 运算符作为 token 分隔

### 2.9 Literals（container）
- 父容器节，无直接用例

### 2.9.1 Numeric Literals（40）
- 整数/浮点/bigint/boolean/string/null/undefined 字面量
- 进制前缀、下划线分隔
- 类型推断规则

### 2.9.2 Integer Literals（30）
- decimal/hex/octal/binary 整数字面量
- int/long 类型推断边界
- 下划线位置合法性

### 2.9.3 Floating Point Literals（29）
- decimal/hex/exponent/suffix float/double
- NaN/Infinity 字面量
- hex float、下划线

### 2.9.4 Bigint Literals（24）
- bigint 字面量 n 后缀
- 进制 bigint、下划线
- 运行时大整数操作

### 2.9.5 Boolean Literals（23）
- true/false 字面量
- boolean 上下文中的使用

### 2.9.6 String Literals（31）
- 单引号/双引号字符串
- 转义序列（\\n \\t \\x \\u \\u{}）
- 字符串中的行终止符

### 2.9.7 Multiline String Literal（16）
- 反引号多行字符串
- 转义反引号、换行保留
- 行续接

### 2.9.8 Undefined Literal（20）
- undefined 字面量
- void/undefined 相关操作
- 类型上下文中的 undefined

### 2.9.9 Null Literal（21）
- null 字面量
- null 相关的比较与赋值
- 类型上下文中的 null

### 2.10 Comments（19）
- // 行注释 / /* */ 多行注释
- 注释嵌套失败
- 注释混合使用

### 2.11 Semicolons（11）
- 显式分号 / 分号分隔
- 隐含分号（ASI）
- 行终止符与分号交互

## 当前未解决问题

详见 `issue_report.md`，主要包括：
- Unicode 转义标识符编译失败（ISSUE-001）
- 孤立代理/代理组合未报错（ISSUE-002/003/004）
- char 字面量内含真实 LF（ISSUE-007）
- CRLF spec 未显式定义（ISSUE-008）
- `??=` 空值合并赋值未实现（ISSUE-009）
- 6 项 spec 待澄清项（CONFIRM-002/004/009/010/011/025）
