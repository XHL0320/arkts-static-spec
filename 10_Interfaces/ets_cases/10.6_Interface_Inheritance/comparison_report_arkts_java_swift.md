# 10.6 Interface Inheritance - 跨语言对比报告 ArkTS / Java / Swift

## 概览

Interface Inheritance（接口继承）涵盖通过继承链访问成员、菱形继承和类同时继承+实现。三语言行为一致。

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 接口继承链方法访问 | ✅ | ✅ | ✅ |
| 菱形继承 | ✅ 无歧义 | ✅ 无歧义 | ✅ 无歧义 |
| 继承属性访问限制 | ✅ getter-only/setter-only | ❌ 无接口属性 | ✅ |
| 类 extends + implements | ✅ | ✅ | ✅（继承 + protocol）|

## 核心结论

三语言的接口继承行为高度一致。ArkTS 额外检查继承属性的访问权限（getter-only/setter-only），Java 无此必要（无接口属性）。
