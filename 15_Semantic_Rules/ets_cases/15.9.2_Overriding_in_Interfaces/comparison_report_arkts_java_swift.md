# 15.9.2 Overriding in Interfaces - ArkTS/Java/Swift/TypeScript 跨语言对比报告

## 1. 概述
本节对比 ArkTS 与 Java、Swift、TypeScript 在接口覆写方面的行为差异。

## 2. 对比表格
| 方面 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|------------|
| 接口方法实现 | 必须实现所有方法 | 必须实现所有方法（除非是抽象类） | 必须实现所有协议方法 | 必须实现所有方法 |
| 缺少实现 | ❌ 编译拒绝 | ❌ 编译错误 | ❌ 编译错误 | ❌ 编译错误 |
| 运行时派发 | ✅ 多态派发 | ✅ 多态派发 | ✅ 多态派发 | ✅ 多态派发 |

## 3. 测试用例对比
| 用例编号 | 类型 | ArkTS | Java | Swift | TypeScript |
|---------|------|-------|------|-------|------------|
| SEM_15_09_02_001_PASS_INTERFACE_IMPL | compile-pass | ✅ | ✅ | ✅ | ✅ |
| SEM_15_09_02_100_FAIL_MISSING_IMPL | compile-fail | ✅ | ✅ | ✅ | ✅ |
| SEM_15_09_02_200_RUNTIME_INTERFACE_OVERRIDE | runtime | ✅ | ✅ | ✅ | ✅ |

## 4. 结论
ArkTS 在接口覆写方面的行为与 Java、Swift、TypeScript 一致，符合主流编程语言的设计理念。
