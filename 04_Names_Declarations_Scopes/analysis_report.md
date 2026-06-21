# Chapter 04 Names, Declarations, Scopes - Spec/Compiler Gap Analysis

## 已确认的 Spec-Compiler 一致区域（无 gap）

| 子章节 | 覆盖范围 | 用例数 | 结论 |
|--------|---------|--------|------|
| 4.1 Names | 简单名/限定名/标识符规则 | 15 | compiler 行为与 spec 完全一致 |
| 4.2 Declarations | 声明可区分性/重载签名/预定义类型冲突 | 13 | compiler 行为与 spec 完全一致 |
| 4.2.1 Declaration Distinguishable by Signatures | 类方法重载/签名可区分性 | 3 | compiler 行为与 spec 完全一致 |
| 4.3 Scopes | 模块/类/块作用域/覆盖/类型参数作用域 | 18 | compiler 行为与 spec 完全一致 |
| 4.4 Accessible | 类型/函数/变量/模块名可访问性 | 14 | compiler 行为与 spec 完全一致 |
| 4.5 Type Declarations | 递归类别名/泛型别名约束 | 18 | compiler 行为与 spec 完全一致 |
| 4.5.1 Type Alias Declaration | 数组/函数/联合类别名声明 | 7 | compiler 行为与 spec 完全一致 |
| 4.6.1 Variable Declarations | 变量声明/类型注解/多变量 | 9 | compiler 行为与 spec 完全一致 |
| 4.6.2 Constant Declarations | 常量声明/类型注解/init 检查 | 6 | compiler 行为与 spec 完全一致 |
| 4.6.3 Validity of Initializer | 前向引用/后向引用 | 3 | compiler 行为与 spec 完全一致 |
| 4.6.4 Assignability with Initializer | 初始化赋值兼容性 | 3 | compiler 行为与 spec 完全一致 |
| 4.6.5 Type Inference from Initializer | 字面量提升/三元推断/字面量保留 | 7 | compiler 行为与 spec 完全一致 |
| 4.7 Function Declarations | 顶层函数/native 函数声明 | 5 | compiler 行为与 spec 完全一致 |
| 4.7.1 Signatures | 函数签名/泛型/无参 | 5 | compiler 行为与 spec 完全一致 |
| 4.7.2 Parameter List | 必需参数/可选参数位置 | 3 | compiler 行为与 spec 完全一致 |
| 4.7.3 Readonly Parameters | 只读参数读/赋值限制 | 4 | compiler 行为与 spec 完全一致 |
| 4.7.4 Optional Parameters | 可选参数默认值/?语法 | 4 | compiler 行为与 spec 完全一致 |
| 4.7.5 Rest Parameter | rest 数组/元组/泛型 | 9 | compiler 行为与 spec 完全一致 |
| 4.7.6 Shadowing by Parameter | 参数覆盖/局部同名限制 | 3 | compiler 行为与 spec 完全一致 |
| 4.7.7 Return Type | void/undefined/never 返回类型 | 9 | compiler 行为与 spec 完全一致 |

## 🔴 关键发现

### 1. Spec 未完整列举的保留名（§4.2 行 179-191）

**问题描述：** Spec 正文中仅列出 `number`、`String`、`Record`、`Object`、`Array` 作为预定义类型名冲突的示例。但编译器额外保留了 `int`、`Box`、`string` 等名称。

**严重性：** MEDIUM

**证据：**
- `let int: number = 1;` → 编译器报 Semantic error（NAM_04_01_015）
- `class Box<T> {}` → 编译器报 `Class 'Box' is already defined`（NAM_04_03_006 修复前）

**建议：** Spec 应完整列举所有保留名，或引用独立的保留名清单文档。

### 2. `int` 作为隐式推断类型未被正式定义

**问题描述：** Spec §4.6.5 在示例注释中广泛使用 `int` 作为类型名（如 `// Type of 'b' is int`），但 Spec 正文从未正式定义 `int` 为关键字或基本类型，也未在 §4.2 的冲突示例中列出 `int`。

**严重性：** LOW

**建议：** Spec 应在类型章节明确定义 `int`、`double`、`char`、`byte` 等基础类型及其与 `number` 的关系。
