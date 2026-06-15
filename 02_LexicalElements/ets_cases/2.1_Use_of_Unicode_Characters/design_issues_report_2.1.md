# 2.1 Use of Unicode Characters - ArkTS 设计问题发现报告

**报告日期：** 2026-06-15
**测试用例数：** 30（compile-pass: 16, compile-fail: 6, runtime: 8）
**目的：** 通过用例执行（编译期 + 运行时）+ 跨语言对比，识别 ArkTS 在 Unicode 字符使用方面的设计问题。

---

## 一、发现的设计问题

### 问题 A：字符串允许孤立代理对，与 Unicode 规范不一致 ⭐⭐⭐ HIGH

**用例：** LEX_02_01_012_PASS_LONE_HIGH_SURROGATE, LEX_02_01_013_PASS_LONE_LOW_SURROGATE, LEX_02_01_014_PASS_HIGH_SURROGATE_NO_LOW

**预期行为：** Unicode 规范（UAX #16）定义 U+D800~U+DFFF 为代理区码点，只能成对使用表示补充平面字符。孤立代理不应出现在合规的 UTF-16 文本中。

**实际行为（编译通过）：**
```typescript
let s1: string = "\uD800"     // ✅ 编译通过：仅高代理
let s2: string = "\uDC00"     // ✅ 编译通过：仅低代理
let s3: string = "\uD800A"    // ✅ 编译通过：高代理后跟非低代理
```

**对比：**
| 语言 | 孤立代理行为 |
|------|------------|
| ArkTS | ✅ 允许（编译通过） |
| Java | ✅ 允许（UTF-16 不校验） |
| Swift | ❌ 编译错误或运行时替换 |
| Rust | ❌ 编译错误（严格 UTF-8） |

**评价：** 这是安全性隐患。孤立代理可能导致字符串操作（indexOf/substring/split）产生意外结果，也可能在跨语言序列化时引发编解码异常。

**建议：** 编译器对字符串字面量中的孤立代理发出警告（WARNING），或在严格模式下拒绝。

---

### 问题 B：char 关系运算符实际可用，与 spec 文档矛盾 ⭐⭐ MEDIUM

**用例：** LEX_02_01_018_PASS_CHAR_RELATIONAL_OP

**Spec 描述（experimental.md）：** "char 不支持关系运算符：不能使用 <、>、<=、>="

**实际行为（编译通过）：**
```typescript
let a: char = c'A'
let b: char = c'B'
let result: boolean = a < b    // ✅ 编译通过，运行时结果为 true
```

**对比：**
| 语言 | char 关系运算 |
|------|-------------|
| ArkTS Spec | ❌ 不支持 |
| ArkTS 编译器 | ✅ 实际支持 |
| Java | ✅ 支持（char 是整数类型） |
| Swift | ❌ Character 不支持直接比较 |

**评价：** Spec 与实现不一致。如果编译器实际支持，应更新 Spec；如果不希望支持，应修复编译器。

**建议：** 统一 Spec 和实现。建议保留 char 关系运算（与 Java 一致，实用性高），更新 Spec 文档。

---

### 问题 C：char 与 number 可直接比较，与 spec 文档矛盾 ⭐⭐ MEDIUM

**用例：** LEX_02_01_019_PASS_CHAR_COMPARE_NUMBER

**Spec 描述（experimental.md）：** "不能比较 char 与 number"

**实际行为（编译通过）：**
```typescript
let ch: char = c'A'
let n: number = 65
let result: boolean = ch == n   // ✅ 编译通过
```

**对比：**
| 语言 | char == number |
|------|---------------|
| ArkTS Spec | ❌ 不支持 |
| ArkTS 编译器 | ✅ 实际支持 |
| Java | ✅ 支持（char widening 到 int） |
| Swift | ❌ 类型不匹配 |

**评价：** 同问题 B，Spec 与实现不一致。

**建议：** 统一 Spec 和实现。建议禁止 char 与 number 直接比较（更安全），或在 Spec 中明确允许。

---

### 问题 D：char 不支持补充平面字符字面量 ⭐ MEDIUM

**用例：** LEX_02_01_008_PASS_CHAR_SUPPLEMENTARY（已修改为 BMP 测试）

**Spec 描述（experimental.md）：** "char 为 32 位 Unicode code points，值域 U+0000 到 U+10FFFF"

**实际行为（编译失败）：**
```typescript
let emoji: char = c'\u{1F600}'   // ❌ Syntax error ESY0261: Unsupported character literal
```

**对比：**
| 语言 | 补充平面字符支持 |
|------|---------------|
| ArkTS Spec | ✅ 声明支持（U+10FFFF） |
| ArkTS 编译器 | ❌ 仅支持 BMP（U+0000~U+FFFF） |
| Java | ❌ char 仅 16 位（用代理对处理） |
| Swift | ✅ Character 支持完整 Unicode |

**评价：** Spec 声称 char 是 32 位，但编译器仅支持 BMP 范围的 char 字面量。这是 Spec 与实现的严重不一致。

**建议：** 要么实现补充平面 char 支持，要么将 Spec 中 char 的范围缩小到 BMP。

---

### 问题 E：Unicode 转义标识符与直接字符标识符等价，可能导致意外冲突 ⭐ LOW

**用例：** LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER（已修复）

**实际行为：**
```typescript
let \u0041val: number = 1
let Aval: number = 2     // ❌ ESE0351: Variable 'Aval' has already been declared
```

**评价：** 这是正确行为（Unicode 转义等价于直接字符），但可能让开发者意外。这属于语言设计取舍，不是 bug。

---

## 二、已验证 ArkTS 行为（与规范一致）

| 行为 | 用例编号 | 状态 |
|------|---------|------|
| BMP Unicode 字符可作为标识符 | 001 | ✅ |
| $和_可作为标识符开头 | 002 | ✅ |
| ZWJ/ZWNJ 可在标识符中使用 | 002 | ✅ |
| \uHHHH 转义可定义标识符 | 003 | ✅ |
| BMP 字符串声明和操作 | 004 | ✅ |
| 补充平面 \u{} 转义在字符串中 | 005 | ✅ |
| 代理对等价于 \u{} 转义 | 006 | ✅ |
| char c'...' 语法 | 007 | ✅ |
| char 等值比较 == === | 009 | ✅ |
| Unicode 类名/接口名/枚举/函数 | 010, 011 | ✅ |
| 无效 Unicode 转义编译失败 | 015, 016 | ✅ |
| char 使用普通字符串编译失败 | 017 | ✅ |
| 数字开头标识符编译失败 | 020 | ✅ |
| 关键字作标识符编译失败 | 021 | ✅ |
| 代理在标识符中编译失败 | 022 | ✅ |
| string.length 返回 UTF-16 代码单元数 | 025 | ✅ |
| for-of 按 code point 迭代字符串 | 027 | ✅ |

---

## 三、严重性等级总览

| 严重性 | 数量 | 问题列表 |
|-------|------|---------|
| ⭐⭐⭐ HIGH | 1 | 问题 A 孤立代理对 |
| ⭐⭐ MEDIUM | 3 | 问题 B char 关系运算、问题 C char-number 比较、问题 D char 补充平面 |
| ⭐ LOW | 1 | 问题 E Unicode 转义等价冲突 |

---

## 四、Spec 与实现不一致汇总

| Spec 声明 | 编译器实际行为 | 严重性 |
|-----------|--------------|--------|
| char 不支持关系运算符 | 支持 < > <= >= | ⭐⭐ MEDIUM |
| char 不能与 number 比较 | 可以比较 | ⭐⭐ MEDIUM |
| char 范围 U+0000~U+10FFFF | 仅支持 BMP 字面量 | ⭐⭐ MEDIUM |
| （未提及孤立代理限制） | 允许孤立代理在字符串中 | ⭐⭐⭐ HIGH |

---

## 五、改进方向建议

### 短期（修复 Spec 与实现不一致）
1. 更新 Spec：明确 char 是否支持关系运算符和与 number 比较
2. 更新 Spec：明确 char 的实际有效范围（BMP 或完整 Unicode）
3. 在 Spec 中增加对字符串中孤立代理的说明

### 中期（编译器改进）
4. 对字符串字面量中的孤立代理增加编译器警告
5. 实现补充平面 char 字面量支持，或明确标注为"未来特性"

### 长期（语言演进）
6. 考虑引入严格 Unicode 合规模式（拒绝孤立代理）
7. 参考 Swift/Rust 的字符串模型，提供更安全的 Unicode 字符串 API

---

## 六、用例索引

| 用例 ID | 发现的问题 |
|---------|-----------|
| LEX_02_01_012 | 问题 A: 孤立高代理编译通过 |
| LEX_02_01_013 | 问题 A: 孤立低代理编译通过 |
| LEX_02_01_014 | 问题 A: 高代理后非低代理编译通过 |
| LEX_02_01_018 | 问题 B: char 关系运算编译通过（与 spec 矛盾） |
| LEX_02_01_019 | 问题 C: char 与 number 比较编译通过（与 spec 矛盾） |
| LEX_02_01_008 | 问题 D: char 补充平面字面量编译失败（与 spec 矛盾） |
| LEX_02_01_003 | 问题 E: Unicode 转义与直接字符等价（行为正确） |
