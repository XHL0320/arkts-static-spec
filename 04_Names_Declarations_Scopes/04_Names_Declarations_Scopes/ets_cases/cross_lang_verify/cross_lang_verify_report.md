# 04 Names Declarations Scopes — 跨语言编译验证报告

## 验证内容

对应 `analysis_report.md` 中发现的问题：**Spec 未完整列举的保留名**。

ArkTS 中 `let int: number = 1;` 报 Semantic error（`int` 被保留），但 Spec 仅列出 `number`、`String`、`Record`、`Object`、`Array` 作为预定义类型冲突示例。

## 编译验证结果

| 文件 | 编译 | 运行 | 说明 |
|------|:----:|:----:|------|
| `Java_ReservedNameCheck.java` | ✅ | ✅ | Java 关键字（int/byte/char/double）不可做标识符；类名（String/Object）可做标识符 |
| `Swift_ReservedNameCheck.swift` | ✅ | ✅ | Swift 类型名（Int/String/Double）可做标识符（仅警告）；关键字可用 backtick 转义 |

## 三语言保留名策略对比

| 名称 | ArkTS | Java | Swift |
|------|:----:|:----:|:-----:|
| `int` / `Int` | ❌ 保留（编译错误） | ❌ 关键字（编译错误） | ⚠️ 类型名（可做标识符，有警告） |
| `String` | ❌ 保留（编译错误） | ✅ 类名（可做标识符） | ⚠️ 类型名（可做标识符，有警告） |
| `number` | ❌ 保留（编译错误） | N/A | N/A |
| `Object` | ❌ 保留（编译错误） | ✅ 类名（可做标识符） | N/A |
| `Box` | ❌ stdlib 保留（编译错误） | ✅ 未保留 | ✅ 未保留 |
| `class`（关键字） | ❌ 关键字 | ❌ 关键字 | ✅ backtick 转义 |

## 结论

ArkTS 对 `int`/`String`/`number` 等采用统一的保留策略（编译错误），比 Java（仅关键字保留，类名不保留）和 Swift（类型名仅警告，关键字可 backtick 转义）都更严格。Spec 应完整记录所有保留名清单。
