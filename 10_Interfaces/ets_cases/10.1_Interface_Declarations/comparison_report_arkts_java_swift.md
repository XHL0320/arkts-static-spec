# 10.1 Interface Declarations - 跨语言对比报告 ArkTS / Java / Swift

## 概览

Interface Declarations（接口声明）定义了接口的语法和泛型接口。三语言均支持接口/协议概念。

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 关键字 | `interface` | `interface` | `protocol` |
| 泛型接口 | ✅ | ✅ | ✅ `associatedtype` |
| 实例变量 | ❌ 不允许 | ❌ 不允许 | ✅ 可定义属性 |
| 多继承 | ✅ `extends` | ✅ `extends` | ✅ `:` |

## 核心结论

三语言接口概念高度一致。Swift 用 `protocol` 替代 `interface`，语义类似。
