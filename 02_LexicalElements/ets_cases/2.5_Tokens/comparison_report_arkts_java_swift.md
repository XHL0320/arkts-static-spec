# 2.5 Tokens - ArkTS vs Java vs Swift vs TypeScript 对比报告

**生成日期：** 2026-06-15
**规范来源：** ArkTS Static Spec §2.5, Java JLS SE21 §3.5, Swift Language Reference (Lexical Structure), ECMAScript 2023 §12
**测试基础：** 35 个用例（26 compile-pass + 4 compile-fail + 5 runtime 真实执行）

---

## 一、Token 分类对比

### 4 类 Token 设计

| 类别 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| Identifiers | ✅ | ✅ | ✅ | ✅ |
| Keywords | ✅ (Hard + Type + Soft) | ✅ (50+ reserved) | ✅ (Reserved + Contextual) | ✅ |
| Operators | ✅ | ✅ | ✅ (含自定义运算符) | ✅ |
| Punctuators | ✅ | ✅ (Separators + Operators 合并) | ✅ | ✅ |
| Literals | ✅ | ✅ | ✅ | ✅ |

**评价：** 4 语言 Token 分类基本一致，分类逻辑相似。

---

## 二、最长匹配原则对比

| 维度 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| 最长匹配规则 | ✅ spec 显式声明 | ✅ JLS §3.2 | ✅ | ✅ ECMA-262 |
| `===` Token | ✅ (用例 020) | ❌ (无) | ✅ | ✅ |
| `>>>` 无符号右移 | ✅ (用例 021) | ✅ | ❌ (无) | ✅ |
| `??` 空值合并 | ✅ (用例 022) | ❌ (无) | ✅ | ✅ |
| `?.` 可选链 | ✅ (用例 022) | ❌ (无) | ✅ | ✅ |
| `=>` 箭头函数 | ✅ (用例 023) | ✅ (lambda) | ❌ (用 `->`) | ✅ |
| `++` / `--` | ✅ (用例 024) | ✅ | ❌ (Swift 5.1 移除) | ✅ |

**关键观察：**
- ArkTS 与 TypeScript Token 集合最接近
- ArkTS 比 Java 更丰富（含 `===` `??` `?.`）
- Swift 移除了 `++`/`--`，要求使用 `+= 1`

---

## 三、关键字数量对比

| 语言 | 硬关键字 | 软关键字/上下文 | 类型关键字 | 总计 |
|------|---------|--------------|----------|------|
| ArkTS | 47 | 10+ | 17+ | ~75 |
| Java | 51 | 0 | 8 (含 char) | 59 |
| Swift | ~50 | 30+ | N/A | ~80 |
| TypeScript | ~40 | 30+ | 含全部内置类型 | ~70 |

**评价：** ArkTS 关键字数量适中，类型关键字（int/char/byte 等）数量比 TS/Java 都多。

---

## 四、字面量 Token 对比

### 整数字面量

| 进制 | 前缀 | ArkTS | Java | Swift | TypeScript |
|------|------|-------|------|-------|-----------|
| 十进制 | (无) | `42` ✅ | ✅ | ✅ | ✅ |
| 十六进制 | `0x` | `0xFF` ✅ | ✅ | ✅ | ✅ |
| 八进制 | `0o` | `0o77` ✅ | `0` (Java 用前导 0) | `0o` ✅ | ✅ |
| 二进制 | `0b` | `0b101` ✅ | ✅ (Java 7+) | ✅ | ✅ |
| 数字分隔 | `_` | `1_000` ✅ | ✅ | `1_000` ✅ | ✅ |

### 字符串字面量

| 类型 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| 双引号 `"..."` | ✅ | ✅ | ✅ | ✅ |
| 单引号 `'...'` | ✅ | ❌ (Java 用于 char) | ❌ | ✅ |
| 模板 ` `...` ` | ✅ | ❌ | ❌ (用 `\(...)` 内插) | ✅ |
| 多行字符串 | ✅ (模板) | ✅ (`"""`) | ✅ (`"""`) | ✅ (模板) |

---

## 五、Token 边界与分隔对比

### 用例 ①：Token 紧凑连接（用例 025）

**ArkTS:** ✅ `a+b*(c-d)/e%f`
**Java:** ✅ 行为相同
**Swift:** ✅
**TypeScript:** ✅

### 用例 ②：数字后接字母（用例 027）

**ArkTS:** ❌ `123abc` 编译失败
**Java:** ❌ `123abc` 编译失败
**Swift:** ❌
**TypeScript:** ❌

### 用例 ③：`@` 字符（用例 028）

**ArkTS:** ❌ `let x = @` 编译失败（@ 仅用于装饰器/注解）
**Java:** ❌ 同
**Swift:** `@` 用于属性包装器
**TypeScript:** `@` 用于装饰器

---

## 六、综合评分

| 维度 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| Token 分类清晰度 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| 运算符 Token 丰富度 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ (自定义) | ⭐⭐⭐⭐⭐ |
| 字面量类型完整度 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| 最长匹配规则严格度 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| TypeScript 兼容性 | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐ | ⭐⭐⭐⭐⭐ |

---

## 七、核心结论

| 角度 | 结论 |
|------|------|
| **Token 分类** | 四语言一致采用 4 大类划分 |
| **最长匹配** | 四语言完全相同 |
| **运算符丰富度** | ArkTS ≈ TypeScript ≈ Swift > Java |
| **字面量进制支持** | ArkTS = Swift > TypeScript > Java |
| **关键字数量** | 适中，比 Java 略多（多类型关键字）|

### 关键启示

1. **ArkTS 继承 TS 优势**：保留 `===` `??` `?.` 等 TS 特性 Token
2. **比 Java 更现代**：含 Java 不支持的 `??` `?.` 等
3. **比 Swift 更兼容**：保留 `++` `--`（Swift 已移除）
4. **类型关键字独有**：`int` `byte` `char` 等是 ArkTS/Java 关键字，TS 中是普通标识符

### ArkTS 设计建议

1. **保持 TS 兼容性**：继续支持 `===` `??` `?.` `=>` 等 ECMAScript Token
2. **明确 spec 中字符列表**：在 §2.5 显式列出所有 Operator 和 Punctuator Token
3. **注解语法**：`@` 字符的合法使用场景应在 spec 中明确说明（参考 §18 Annotations）

---

## 八、对应规范文档

| 语言 | 规范来源 |
|------|---------|
| ArkTS | ArkTS Static Language Specification, §2.5 Tokens |
| Java | Java Language Specification SE21, §3.5 Input Elements and Tokens |
| Swift | The Swift Programming Language (Swift 5.x), Lexical Structure |
| TypeScript | ECMAScript 2023 Language Specification, §12 ECMAScript Language: Lexical Grammar |
