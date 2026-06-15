# 2.6 Identifiers - 测试设计思维导图

## 概述
Identifier 是一或多个合法 Unicode 字符的序列。规则基于 Unicode 标准的字符属性。

**Spec 文法：**
- **IdentifierStart**: UnicodeIDStart | `$` | `_` | `\` UnicodeEscapeSequence
- **IdentifierPart**: UnicodeIDContinue | `$` | ZWNJ | ZWJ | `\` UnicodeEscapeSequence
- **UnicodeIDStart**: Letter | `$` | `\` UnicodeEscapeSequence
- **Letter**: 5 种 Unicode 类别（Lu, Ll, Lt, Lm, Lo）
- **UnicodeIDContinue**: UnicodeIDStart | UnicodeDigit (Nd) | ZWJ (U+200C) | ZWNJ (U+200D)
- **UnicodeEscapeSequence**: `\uHHHH` 或 `\u{HHHH...}`

## 全覆盖测试矩阵

### 维度 1：IdentifierStart（首字符）

#### A. 5 种 Unicode Letter 类别（UnicodeIDStart）
- **A1** Lu (Uppercase Letter)：`A`、`B`、`Z`（001）
- **A2** Ll (Lowercase Letter)：`a`、`b`、`z`（002）
- **A3** Lt (Titlecase Letter)：`ǅ` (U+01C5)、`ǈ` (U+01C8)（003）
- **A4** Lm (Modifier Letter)：`ʰ` (U+02B0)（004）
- **A5** Lo (Other Letter)：中文/日文/韩文/阿拉伯/希伯来（005）

#### B. 特殊起始字符
- **B1** `$` 起始（006）
- **B2** `_` 起始（007）

#### C. Unicode 转义起始
- **C1** `\uHHHH` 转义起始：`\u0041`（008）
- **C2** `\u{HHHH...}` 扩展转义起始：`\u{41}`（009）

### 维度 2：IdentifierPart（后续字符）

#### D. UnicodeIDContinue
- **D1** Nd (Decimal Digit)：`v0`、`v9`（010）
- **D2** ZWJ (U+200D)（011）
- **D3** ZWNJ (U+200C)（012）

#### E. 后续字符的转义
- **E1** `\uHHHH` 转义在中间（013）
- **E2** `\u{...}` 扩展转义在中间（014）

#### F. 组合场景
- **F1** Letter + Digit + Letter（015）
- **F2** Letter + ZWJ + Letter（016）
- **F3** 含混合 Unicode 类别的标识符（017）

### 维度 3：标识符在不同声明中

#### G. 各种声明位置
- **G1** 类名（018）
- **G2** 接口名（019）
- **G3** 函数名 + 参数名（020）
- **G4** 字段名 + 方法名（021）
- **G5** 枚举名 + 枚举成员名（022）
- **G6** 命名空间名（023）

### 维度 4：反向场景（compile-fail）

#### H. 非法首字符
- **H1** 数字开头：`1var`（024）
- **H2** 运算符字符开头：`-foo`（025）
- **H3** Unicode 数字字符（Nd）开头（026）

#### I. 非法字符在标识符中
- **I1** 标识符含空格（027）
- **I2** 标识符含连字符 `-`（028）
- **I3** 标识符含点 `.`（029）

#### J. 关键字冲突
- **J1** 硬关键字作标识符：`class`（030）
- **J2** 类型关键字作标识符：`int`（031）

#### K. 转义序列错误
- **K1** 标识符首字符 `\u`+ 数字字符（解码后非 ID_Start）（032）
- **K2** 标识符 `\u` 转义为非法字符（如孤立代理）（033）
- **K3** 标识符空 `\u{}` （034）

### 维度 5：运行时（runtime）

#### L. 标识符运行时正确性
- **L1** Unicode 转义标识符与直接字符等价（035）
- **L2** Unicode 标识符的运行时值访问（036）
- **L3** ZWJ/ZWNJ 标识符的运行时（037）
- **L4** 多语言标识符在运行时正常（038）
- **L5** 含数字的标识符运行结果（039）

## 用例编号规划

### compile-pass（23 个，001~023）

### compile-fail（11 个，024~034）

### runtime（5 个，035~039）

## 文件命名规范
- 前缀：LEX_02_06
- 示例：`LEX_02_06_001_PASS_LU_LETTER_START.ets`
