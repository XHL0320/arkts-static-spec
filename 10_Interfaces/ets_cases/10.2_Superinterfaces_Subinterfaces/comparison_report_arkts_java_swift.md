# 10.2 Superinterfaces and Subinterfaces - 跨语言对比报告 ArkTS / Java / Swift

## 概览

Superinterfaces/Subinterfaces 定义接口继承关系。三语言支持单继承和多继承，限制类似。

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 接口继承 | `extends` | `extends` | `:` |
| 多继承 | ✅ | ✅ | ✅ |
| 循环继承检测 | ✅ 编译错误 | ✅ 编译错误 | ✅ 编译错误 |
| 自继承检测 | ✅ 编译错误 | ✅ 编译错误 | ✅ 编译错误 |

## 核心结论

三语言行为一致。ArkTS 遵循 Java 风格的 `extends` 关键字。
