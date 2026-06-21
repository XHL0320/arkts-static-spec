# 04 Names Declarations Scopes - Issue Report

记录 04 Names Declarations Scopes 章节下所有子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

无。无确认的规范-实现 GAP。

---

## 历史已解决异常

| 问题 | 修复 | 日期 |
|------|------|------|
| NAM_04_02_017 空文件 | 已补充 `declare function + let` 同名冲突测试代码 | 2026-06-21 |

---

## 章节最新执行统计

| 子章节 | 用例总数 | 通过 | 失败 | 最近执行 |
|-------|:-------:|:----:|:----:|---------|
| 4.1 Names | 15 | 15 | 0 | 2026-06-21 |
| 4.2 Declarations | 13 | 13 | 0 | 2026-06-21 |
| 4.2.1 Declaration Distinguishable by Signatures | 3 | 3 | 0 | 2026-06-21 |
| 4.3 Scopes | 18 | 18 | 0 | 2026-06-21 |
| 4.4 Accessible | 14 | 14 | 0 | 2026-06-21 |
| 4.5 Type Declarations | 20 | 20 | 0 | 2026-06-21 |
| 4.5.1 Type Alias Declaration | 11 | 11 | 0 | 2026-06-21 |
| 4.6.1 Variable Declarations | 9 | 9 | 0 | 2026-06-21 |
| 4.6.2 Constant Declarations | 7 | 7 | 0 | 2026-06-21 |
| 4.6.3 Validity of Initializer | 4 | 4 | 0 | 2026-06-21 |
| 4.6.4 Assignability with Initializer | 3 | 3 | 0 | 2026-06-21 |
| 4.6.5 Type Inference from Initializer | 9 | 9 | 0 | 2026-06-21 |
| 4.7 Function Declarations | 5 | 5 | 0 | 2026-06-21 |
| 4.7.1 Signatures | 5 | 5 | 0 | 2026-06-21 |
| 4.7.2 Parameter List | 3 | 3 | 0 | 2026-06-21 |
| 4.7.3 Readonly Parameters | 5 | 5 | 0 | 2026-06-21 |
| 4.7.4 Optional Parameters | 5 | 5 | 0 | 2026-06-21 |
| 4.7.5 Rest Parameter | 15 | 15 | 0 | 2026-06-21 |
| 4.7.6 Shadowing by Parameter | 5 | 5 | 0 | 2026-06-21 |
| 4.7.7 Return Type | 14 | 14 | 0 | 2026-06-21 |

**累计 183 个测试用例，183 通过，0 失败 ✅**

---

## 注

### 已知基础设施限制（已全部修复）

以下失败此前为测试框架环境限制，现已在该环境中验证通过：

| 用例 | 原失败原因 | 状态 |
|------|---------|:----:|
| NAM_04_01_020 | runtime entrypoint 找不到类 | ✅ 已修复 |
| NAM_04_07_027 | runtime ETSGLOBAL 入口问题 | ✅ 已修复 |

### Spec 文档问题（非执行异常）

#### 1. Spec 未完整列举的保留名（§4.2 行 179-191）

**问题描述：** Spec 正文中仅列出 `number`、`String`、`Record`、`Object`、`Array` 作为预定义类型名冲突的示例。但编译器额外保留了 `int`、`Box`、`string` 等名称。

**严重性：** MEDIUM

**证据：**
- `let int: number = 1;` → 编译器报 Semantic error（NAM_04_01_015）
- `class Box<T> {}` → 编译器报 `Class 'Box' is already defined`（NAM_04_03_006 修复前）

**建议：** Spec 应完整列举所有保留名，或引用独立的保留名清单文档。

#### 2. `int` 作为隐式推断类型未被正式定义

**问题描述：** Spec §4.6.5 在示例注释中广泛使用 `int` 作为类型名（如 `// Type of 'b' is int`），但 Spec 正文从未正式定义 `int` 为关键字或基本类型，也未在 §4.2 的冲突示例中列出 `int`。

**严重性：** LOW

**建议：** Spec 应在类型章节明确定义 `int`、`double`、`char`、`byte` 等基础类型及其与 `number` 的关系。
