# 2.2 Lexical Input Elements - ArkTS 设计问题发现报告

**报告日期：** 2026-06-15
**测试用例数：** 23（compile-pass: 10, compile-fail: 6, runtime: 7）
**目的：** 通过词法输入元素测试识别 ArkTS 静态编译器的设计问题。

---

## 一、设计问题

### 问题 A：注释是否可作为Token分隔符 ⭐ MEDIUM

**spec 描述：** 词法输入元素分为 White Spaces、Line Separators、Tokens、Comments 四类，Comments 与 White Spaces 均为非 Token 元素。

**测试场景：** 注释替代空白符分隔两个 Token

```typescript
let a/*comment*/: number = 1
```

**实际行为：** 待编译验证。若编译器将注释视为与空白等价的分隔符，则通过；否则报错。

**对比：**
| 语言 | 注释作分隔符 |
|------|------------|
| ArkTS | 待验证 |
| Java | ✅ |
| Swift | ✅ |
| TypeScript | ✅ |

---

### 问题 B：ASR（自动分号插入）与行终止符 ⭐ HIGH

**spec 描述：** 行终止符是独立的词法输入元素，与语句分隔密切相关。

**关键场景：**
```typescript
let a: number = 1
let b: number = 2
```
vs
```typescript
let a: number = 1; let b: number = 2
```

**疑问：** ArkTS 是否完全禁止 ASI，还是像 JavaScript 一样在某些场景自动插入分号？

**对比：**
| 语言 | ASI 行为 |
|------|---------|
| ArkTS | ⚠️ spec 未明确 |
| JavaScript | 有 ASI |
| TypeScript | 有 ASI |
| Java | 无 ASI，必须分号 |
| Swift | 无 ASI，必须换行或分号 |

---

### 问题 C：多行注释嵌套 ⭐ LOW

**spec 描述：** 未明确说明是否支持嵌套多行注释。

**测试场景：**
```typescript
/* outer /* inner */ still comment */
```

**对比：**
| 语言 | 嵌套多行注释 |
|------|------------|
| ArkTS | 待验证 |
| Java | ❌ |
| Swift | ❌ |
| C/C++ | ❌（标准） |
| Haskell | ✅ |

---

### 问题 D：空文件/仅含注释文件的编译行为 ⭐ LOW

**场景：** 文件仅含空白、换行和注释，无任何可执行Token。

**对比：**
| 语言 | 空文件行为 |
|------|----------|
| ArkTS | 待验证 |
| Java | ✅ 编译通过（.class 为空） |
| TypeScript | ✅ 编译通过 |
| C | ❌ 链接错误（无 main） |

---

## 二、已验证 ArkTS 行为

| 行为 | 用例编号 | 状态 |
|------|---------|------|
| 空白符分隔Token | 003 | 待验证 |
| 运算符间空白可选 | 004 | 待验证 |
| 换行分隔语句 | 005 | 待验证 |
| 单行注释 | 007 | 待验证 |
| 多行注释 | 008 | 待验证 |
| 连续Token无分隔 | 010 | 待验证 |
| 无空白标识符合并报错 | 011 | 待验证 |
| 字符串未转义换行报错 | 013 | 待验证 |
| 未闭合注释报错 | 014 | 待验证 |

---

## 三、严重性等级总览

| 严重性 | 数量 | 问题列表 |
|-------|------|---------|
| ⭐⭐⭐ HIGH | 1 | 问题 B: ASI 与行终止符 |
| ⭐⭐ MEDIUM | 1 | 问题 A: 注释作分隔符 |
| ⭐ LOW | 2 | 问题 C: 嵌套注释、问题 D: 空文件 |
