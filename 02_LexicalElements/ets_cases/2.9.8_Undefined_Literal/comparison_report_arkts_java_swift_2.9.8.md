# 2.9.8 Undefined Literal - ArkTS/Java/Swift 对比报告

## 概述
本报告对比 ArkTS、Java、Swift 三种语言在 undefined literal 测试中的行为差异。

---

## 语言差异对比

| 特性 | ArkTS | Java | Swift |
|------|-------|------|-------|
| undefined 值 | `undefined` | `null` | `nil` |
| undefined 类型 | `undefined`、`void` | `null` 引用类型 | `Optional<T>` |
| typeof 运算 | 支持 | 不支持（使用 `instanceof`） | 不支持（使用模式匹配） |
| null 比较 | `=== null` | `== null` | `== nil` |

---

## 测试用例对比

### 001: 基本 undefined
| 语言 | 代码 | 结果 |
|------|------|------|
| ArkTS | `let x: undefined = undefined` | ✅ |
| Java | `Object x = null` | ✅ |
| Swift | `var x: Int? = nil` | ✅ |

### 006: undefined 值验证
| 语言 | 代码 | 结果 |
|------|------|------|
| ArkTS | `if (x !== undefined)` | ✅ |
| Java | `if (x == null)` | ✅ |
| Swift | `if (x == nil)` | ✅ |

### 007: undefined 比较验证
| 语言 | 代码 | 结果 |
|------|------|------|
| ArkTS | `if (x1 === x2)` | ✅ |
| Java | `if (x2 == x3)` | ✅ |
| Swift | `if (x2 == x3)` | ✅ |

### 008: undefined 类型检查
| 语言 | 代码 | 结果 |
|------|------|------|
| ArkTS | `if (typeof x !== "undefined")` | ✅ |
| Java | `if (x == null)` | ✅ |
| Swift | `if (x == nil)` | ✅ |

---

## 关键结论

1. **概念映射**：Java 的 `null` 和 Swift 的 `nil` 在概念上对应 ArkTS 的 `undefined`
2. **类型系统**：ArkTS 的 `undefined` 和 `void` 类型在 Java/Swift 中通过 `null`/`nil` 模拟
3. **比较语法**：ArkTS 使用 `===`，Java 使用 `==`，Swift 使用 `==`
4. **类型检查**：ArkTS 支持 `typeof`，Java 使用 `instanceof`，Swift 使用模式匹配

---

**最后更新：** 2026-06-21
