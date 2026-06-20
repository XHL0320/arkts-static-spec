# 10.4 Interface Properties - 跨语言对比报告 ArkTS / Java / Swift

## 概览

Interface Properties（接口属性）定义 required/optional、readonly/readwrite、getter/setter 属性。ArkTS 的接口属性系统最为丰富。

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 接口属性 | ✅ | ❌（仅方法） | ✅ protocol 属性 |
| required readonly | ✅ | ❌ | ✅ `{ get }` |
| required readwrite | ✅ | ❌ | ✅ `{ get set }` |
| getter-only | ✅ | ❌ | ✅ |
| setter-only | ✅ | ❌ | ✅ |
| 可选属性 `?` | ✅ | ❌ | ✅ Optional 属性 |

## 核心结论

Java 接口不支持属性声明（只能用 getter/setter 方法模拟）。ArkTS 和 Swift 均原生支持接口属性。

## ArkTS 设计建议

接口属性系统是 ArkTS 相对 Java 的重要优势，保持当前设计。
