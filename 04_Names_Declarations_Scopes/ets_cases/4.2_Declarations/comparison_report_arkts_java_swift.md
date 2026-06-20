# 4.2 Declarations - 跨语言对比报告 ArkTS / Java / Swift

## 概览

Declarations（声明）定义了实体在作用域中的命名规则，包括声明的可区分性、重载规则和冲突检测。ArkTS 在重载安全性上更为严格。

## 章节对应关系

| ArkTS (§4.2) | Java (JLS §6.3, §8.4, §9.4) | Swift (Declarations) |
|------|------|-------|
| 声明可区分性 | §6.3 Scope of Declarations | Namespacing |
| 函数重载 | §8.4 Method Declarations | Function Declarations |
| 类型擦除检测 | §4.6 Type Erasure | N/A (generics 不同) |
| 声明冲突 | §6.3, §8.4 | N/A |

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 声明可区分 | 名称+签名 | 名称+签名 | 名称+签名 |
| 方法重载 | ✅ | ✅ | ❌（使用外部参数名）|
| 类型擦除检测 | ✅ | ❌ | N/A |
| 预定义类型保护 | ✅ | partial | N/A |
| 顶层函数 vs 方法 | 均可 | 仅方法 | 均可 |

## 用例 1:1 对照

### 类型擦除冲突
| ArkTS | Java | Swift |
|-------|------|-------|
| `function f(x: number): void;` | `void f(int x) {}` | N/A |
| `function f(x: string): void;` | `void f(String x) {}` | |
| 签名不同 ✅ | 签名不同 ✅ | |
| | | |
| `function f(x: number[]): void;` | `void f(List<Integer> x) {}` | N/A |
| `function f(x: string[]): void;` | `void f(List<String> x) {}` | |
| ArkTS: 可区分 ✅ | Java: 擦除后相同 ❌ | |

## 综合评分

| 维度 | ArkTS | Java | Swift |
|------|:----:|:----:|:-----:|
| 重载安全性 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| 声明清晰度 | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 类型擦除保护 | ⭐⭐⭐⭐⭐ | ⭐⭐ | N/A |
| 设计一致性 | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐ |

## 核心结论

ArkTS 在类型擦除检测上领先 Java，能捕获 Java 在泛型擦除后才暴露的重载冲突。Swift 用外部参数名区分函数，无需传统重载。

## ArkTS 设计建议

保持现有类型擦除检测机制。如未来引入泛型，需注意擦除后的签名冲突问题。
