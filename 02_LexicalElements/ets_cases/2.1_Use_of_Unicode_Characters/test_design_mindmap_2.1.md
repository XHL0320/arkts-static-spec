# 2.1 Use of Unicode Characters - 测试设计思维导图

## 概述
ArkTS 使用 Unicode 字符集作为终端符号，采用 UTF-16 编码。本节测试覆盖 Unicode 标识符、UTF-16 编码与字符串、char 类型、code point 与 character 语义差异等场景。

## 子类型覆盖

### 1. Unicode 标识符
- **BMP 字符标识符**: \u0041转义、中文、日文、韩文、希腊字母、西里尔字母
  - 正向编译: 各语种字符作为标识符声明与赋值
  - 反向编译: 数字开头的Unicode标识符、关键字作为标识符
  - 运行时: Unicode标识符的运行时值操作
- **特殊 Unicode 字符标识符**: $开头、_开头、ZWJ(U+200D)、ZWNJ(U+200C)
  - 正向编译: 特殊字符在标识符中的使用
  - 反向编译: 孤立代理在标识符转义中
  - 运行时: 特殊字符标识符的值访问
- **Unicode 转义序列标识符**: \uHHHH、\u{}转义等价性
  - 正向编译: 转义序列定义标识符、转义与直接字符等价
  - 反向编译: 无效转义在标识符中
  - 运行时: 转义标识符的值正确性

### 2. UTF-16 编码与字符串
- **BMP 字符字符串**: 基本多文种平面字符、\uHHHH转义、混合直接字符与转义
  - 正向编译: BMP字符串声明、转义、拼接
  - 反向编译: 无效\u转义、位数不足
  - 运行时: BMP字符串length、indexOf、substring
- **补充平面字符字符串**: \u{1F600}扩展转义、emoji、string.length为2
  - 正向编译: 扩展转义声明、混合BMP与补充平面
  - 反向编译: \u{}超出U+10FFFF范围、空\u{}
  - 运行时: 补充平面字符length、字符串操作
- **UTF-16 代理对**: 高代理+低代理组成有效代理对
  - 正向编译: 代理对表示与\u{}转义等价、孤立代理(编译器当前允许)
  - 反向编译: (当前编译器允许字符串中存在孤立代理，暂无编译失败场景)
  - 运行时: 代理对字符串的length与迭代

### 3. char 类型与 Unicode
- **BMP char**: c'...'语法、\uHHHH转义、\xHH转义、特殊转义序列
  - 正向编译: char字面量声明、各种转义
  - 反向编译: char使用普通字符串'A'而非c'A'
  - 运行时: char等值比较(==, ===, !=, !==)
- **补充平面 char**: 32位Unicode code point(U+0000~U+10FFFF)
  - 正向编译: char使用\u{}扩展转义
  - 反向编译: char使用关系运算符(< > <= >=)、char与number比较
  - 运行时: 补充平面char的等值比较

### 4. code point vs character 语义
- **string.length 返回 UTF-16 代码单元数**
  - 正向编译: length属性访问
  - 反向编译: (无)
  - 运行时: BMP length vs 补充平面length、混合字符length计算
- **for-of 按 code point 迭代**
  - 正向编译: for-of遍历字符串
  - 反向编译: (无)
  - 运行时: emoji按code point计数、BMP按字符计数

### 5. Unicode 在类和接口中
- **Unicode 类名/字段名/方法名**
  - 正向编译: 中文类名、方法名、字段名
  - 反向编译: (无)
  - 运行时: Unicode类成员运行时调用
- **Unicode 接口名**
  - 正向编译: 中文接口名、实现接口
  - 反向编译: (无)
  - 运行时: Unicode接口实例化

### 6. Unicode 在枚举中
- **Unicode 枚举成员名**
  - 正向编译: 中文枚举成员
  - 反向编译: (无)
  - 运行时: Unicode枚举值运行时访问

### 7. Unicode 在函数中
- **Unicode 函数名/参数名**
  - 正向编译: 中文函数名、中文参数名
  - 反向编译: (无)
  - 运行时: Unicode函数调用

## 分类说明
- **compile-pass**（.ets 文件必须编译成功）
- **compile-fail**（.ets 文件必须产生编译时错误）
- **runtime**（.ets 文件测试运行时行为）

## 文件命名规范
- `<分类>_<子类型>_<场景>.ets`
- 示例: `LEX_02_01_001_PASS_UNICODE_IDENTIFIER_BMP.ets`
- 示例: `LEX_02_01_017_FAIL_LONE_SURROGATE.ets`
- 前缀: LEX_02_01 表示 Chapter 2 Section 1
