# 10.5 Interface Method Declarations - 跨语言对比报告 ArkTS / Java / Swift

## 概览

Interface Method Declarations（接口方法声明）定义接口中的抽象方法声明。三语言语义高度一致。

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 抽象方法声明 | ✅ 隐式 abstract | ✅ 隐式 abstract | ✅ protocol 要求 |
| 方法参数 | ✅ | ✅ | ✅ |
| 返回类型 | ✅ | ✅ | ✅ |
| void 方法 | ✅ | ✅ | ✅ |
| 缺失实现检测 | ✅ 编译错误 | ✅ 编译错误 | ✅ 编译错误 |
| 多接口实现 | ✅ | ✅ | ✅ |

## 核心结论

三语言的接口方法声明方式基本一致。
