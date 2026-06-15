# 2.3 White Spaces - 测试设计思维导图

## 概述
ArkTS 定义 6 种白空白符作为词法输入元素：
- Space (U+0020)
- Horizontal tabulation (U+0009)
- Vertical tabulation (U+000B)
- Form feed (U+000C)
- No-break space (U+00A0)
- Zero-width no-break space (U+FEFF)

White spaces 用于分隔 Token，被语法分析忽略，**不能出现在单个 Token 内部**，但**可以出现在注释中**。

## 全覆盖测试矩阵

### 维度1：6种空白符独立测试

| 空白符 | Unicode | 名称 | 测试用例 |
|--------|---------|------|----------|
| Space | U+0020 | 空格 | 001 |
| Tab | U+0009 | 水平制表符 | 002 |
| VT | U+000B | 垂直制表符 | 003 |
| FF | U+000C | 换页符 | 004 |
| NBSP | U+00A0 | 不间断空格 | 005 |
| ZWNBSP | U+FEFF | 零宽不间断空格(BOM) | 006 |

### 维度2：白空白符使用场景

#### 2.1 正向场景（compile-pass）

##### A. 单个空白符分隔 Token
- **A1** Space 分隔 keyword 和 identifier
- **A2** Tab 分隔 keyword 和 identifier
- **A3** VT 分隔 keyword 和 identifier
- **A4** FF 分隔 keyword 和 identifier
- **A5** NBSP 分隔 keyword 和 identifier
- **A6** ZWNBSP 分隔 keyword 和 identifier

##### B. 多种空白符组合分隔 Token
- **B1** Space + Tab 混合
- **B2** 所有6种空白符混合
- **B3** 重复多个相同空白符

##### C. 白空白符在不同位置
- **C1** 在 keyword 之前（行首缩进）
- **C2** 在标识符之间
- **C3** 在运算符两侧
- **C4** 在分号之前
- **C5** 在大括号 `{` `}` 周围
- **C6** 在数组字面量元素间
- **C7** 在函数参数间

##### D. 白空白符在注释中（spec 显式允许）
- **D1** 单行注释内含 Tab
- **D2** 单行注释内含 NBSP
- **D3** 多行注释内含 VT、FF
- **D4** 多行注释内含 ZWNBSP

##### E. 白空白符在字符串/模板字符串中（属于 Token 内容，与分隔符无关）
- **E1** 字符串字面量内含 Tab/Space（合法字符串内容）
- **E2** 模板字符串内含各种空白

##### F. 行首缩进
- **F1** 仅 Space 缩进
- **F2** 仅 Tab 缩进
- **F3** Space + Tab 混合缩进

##### G. ZWNBSP / BOM 特殊场景
- **G1** 文件开头 BOM
- **G2** 文件中间 ZWNBSP 作为分隔符
- **G3** ZWNBSP 在多个 Token 之间

#### 2.2 反向场景（compile-fail）

##### H. 白空白符出现在 Token 内部
- **H1** 标识符中间含 Space
- **H2** 标识符中间含 Tab
- **H3** 数字字面量中含 Space
- **H4** 数字字面量中含 NBSP
- **H5** 关键字中含 Space（如 `cl ass`）
- **H6** 多字符运算符中含 Space（如 `= =`、`! ==`、`= >`）
- **H7** 字符字面量中 c'A' 之间含 Space

#### 2.3 运行时场景（runtime）

##### I. 各种空白风格不影响运行结果
- **I1** Space-only 风格运算结果
- **I2** Tab-indented 风格运算结果
- **I3** 6种混合空白风格运算结果
- **I4** 仅 NBSP 分隔的代码运算结果
- **I5** 行首缩进风格不影响语义
- **I6** 表达式内多空白不影响计算结果
- **I7** ZWNBSP 不影响字符串内容长度

## 用例编号规划（共约 38 个）

### compile-pass（21个，001~021）
- 001~006 六种空白符独立分隔 Token
- 007~009 多空白符组合
- 010~016 白空白符在不同位置（C1~C7）
- 017~018 白空白符在注释中（D1~D4合并）
- 019 字符串/模板字符串内空白
- 020 行首缩进
- 021 ZWNBSP 多场景

### compile-fail（10个，022~031）
- 022 标识符中含 Space
- 023 标识符中含 Tab
- 024 数字字面量中含 Space
- 025 数字字面量中含 NBSP
- 026 关键字中含 Space
- 027 `==` 拆为 `= =`
- 028 `!==` 拆为 `! ==`
- 029 `=>` 拆为 `= >`
- 030 char字面量内 c 与 ' 间含 Space
- 031 字符串前缀与引号间含 Space

### runtime（7个，032~038）
- 032 Space-only 运算结果
- 033 Tab-indented 运算结果
- 034 6种空白混合运算结果
- 035 NBSP 分隔代码运算结果
- 036 行首缩进风格
- 037 表达式内多空白
- 038 ZWNBSP 不影响字符串长度

## 分类说明
- **compile-pass**：合法空白符使用必须编译通过
- **compile-fail**：空白符在 Token 内部必须编译失败
- **runtime**：空白符变化不影响运行时语义

## 文件命名规范
- 前缀：LEX_02_03 表示 Chapter 2 Section 3
- 示例：`LEX_02_03_001_PASS_SPACE_SEPARATOR.ets`
- 示例：`LEX_02_03_022_FAIL_SPACE_IN_IDENTIFIER.ets`
