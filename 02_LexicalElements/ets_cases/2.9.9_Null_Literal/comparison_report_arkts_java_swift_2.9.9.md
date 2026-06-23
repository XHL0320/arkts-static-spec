# 2.9.9 Null Literal - ArkTS/Java/Swift 对比报告

## 概述
本报告对比 ArkTS、Java、Swift 三种语言在 null literal 测试中的行为差异。

---

## 语言差异对比

| 特性 | ArkTS | Java | Swift |
|------|-------|------|-------|
| null 值 | `null` | `null` | `nil` |
| null 类型 | `null`、`T \| null` | `null` 引用类型 | `Optional<T>` |
| typeof 运算 | 支持 | 不支持（使用 `instanceof`） | 不支持（使用模式匹配） |
| null 比较 | `=== null` | `== null` | `== nil` |

---

## 测试用例对比

### 001: 基本 null
| 语言 | 代码 | 结果 |
|------|------|------|
| ArkTS | `let x: null = null` | ✅ |
| Java | `Object x = null` | ✅ |
| Swift | `var x: Int? = nil` | ✅ |

### 006: null 值验证
| 语言 | 代码 | 结果 |
|------|------|------|
| ArkTS | `if (x !== null)` | ✅ |
| Java | `if (x == null)` | ✅ |
| Swift | `if (x == nil)` | ✅ |

### 007: null 比较验证
| 语言 | 代码 | 结果 |
|------|------|------|
| ArkTS | `if (x1 === x2)` | ✅ |
| Java | `if (x4 == x5)` | ✅ |
| Swift | `if (x3 == x4)` | ✅ |

### 008: null 类型检查
| 语言 | 代码 | 结果 |
|------|------|------|
| ArkTS | `if (typeof x !== "object")` | ✅ |
| Java | `if (x == null)` | ✅ |
| Swift | `if (x == nil)` | ✅ |

---

## 关键结论

1. **概念映射**：Java 的 `null` 和 Swift 的 `nil` 在概念上对应 ArkTS 的 `null`
2. **类型系统**：ArkTS 的 `null` 和 `T | null` 类型在 Java/Swift 中通过 `null`/`nil` 模拟
3. **比较语法**：ArkTS 使用 `===`，Java 使用 `==`，Swift 使用 `==`
4. **类型检查**：ArkTS 支持 `typeof`，Java 使用 `instanceof`，Swift 使用模式匹配

---

**最后更新：** 2026-06-21
