# 15.9.1 Overriding in Classes - ArkTS/Java/Swift/TypeScript 跨语言对比报告

## 1. 概述
本节对比 ArkTS 与 Java、Swift、TypeScript 在类方法覆写方面的行为差异。

## 2. 对比表格
| 方面 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|------------|
| override 关键字 | 必须使用 override | 使用 @Override 注解（可选） | 必须使用 override | 不需要 |
| 返回值协变 | ✅ 允许 | ✅ 允许 | ✅ 允许 | ✅ 结构化类型，自动兼容 |
| 返回值不匹配 | ❌ 编译拒绝 | ❌ 编译错误 | ❌ 编译错误 | ✅ 允许（结构化类型） |
| 运行时派发 | ✅ 多态派发 | ✅ 多态派发 | ✅ 多态派发 | ✅ 多态派发 |

## 3. 测试用例对比
| 用例编号 | 类型 | ArkTS | Java | Swift | TypeScript |
|---------|------|-------|------|-------|------------|
| SEM_15_09_01_001_PASS_CLASS_OVERRIDE | compile-pass | ✅ | ✅ | ✅ | ✅ |
| SEM_15_09_01_100_FAIL_OVERRIDE_SIGNATURE | compile-fail | ✅ | ✅ | ✅ | ❌ |
| SEM_15_09_01_200_RUNTIME_OVERRIDE | runtime | ✅ | ✅ | ✅ | ✅ |

## 4. 结论
ArkTS 在类方法覆写方面的行为与 Java、Swift 一致，但比 TypeScript 更严格（TypeScript 使用结构化类型，不需要显式声明 override）。
