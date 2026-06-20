# 10.3 Interface Members - 跨语言对比报告 ArkTS / Java / Swift

## 概览

Interface Members（接口成员）定义接口中允许的属性和方法声明。三语言均支持属性、方法，但对 Object 方法冲突的检测存在差异。

## 关键差异矩阵

| 维度 | ArkTS 规范 | ArkTS 编译器 | Java | Swift |
|------|:---------:|:-----------:|:----:|:-----:|
| 接口中声明与 Object 同名方法 | ❌ 编译错误 | ✅ **通过（GAP）** | ❌ 编译错误 | N/A（无 Object 基类）|
| 重复成员名 | ❌ 编译错误 | ✅ 编译错误 | ❌ 编译错误 | ❌ 编译错误 |

## 核心结论

Java 编译器拒绝接口中与 Object 方法（toString/equals等）同名的声明。ArkTS 编译器未实现此约束。

## ArkTS 设计建议

编译器应实现 §10.3 的 Object 方法名冲突检测。
