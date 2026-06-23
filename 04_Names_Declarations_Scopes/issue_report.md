# 04 Names Declarations Scopes Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| D-4.01-01 | NAM_04_01_105_FAIL_type_keyword | Spec 未完整列举保留名 | compile-time error | 编译器保留额外名称 | D类-Spec不一致 |
| D-4.06-01 | NAM_04_06_05_101_FAIL_const_object_literal_infer | `int` 作为隐式推断类型未正式定义 | Spec 明确定义 | Spec 注释使用但未定义 | D类-Spec不一致 |

---

### 异常详情

**D-4.01-01** ⭐⭐ MEDIUM — Spec 未完整列举的保留名（§4.2 行 179-191）

- **问题描述：** Spec 正文中仅列出 `number`、`String`、`Record`、`Object`、`Array` 作为预定义类型名冲突的示例。但编译器额外保留了 `int`、`Box`、`string` 等名称。
- **Spec 依据：** §4.2 Names - 应完整列举所有保留名
- **复现用例 ID：** NAM_04_01_105_FAIL_type_keyword
- **实测结果：**
  ```typescript
  let int: number = 1;  // ❌ Semantic error（编译器保留 int 为关键字）
  ```
- **跨语言对比：**

| 语言 | 保留名处理 | 行为 |
|------|-----------|------|
| ArkTS | Spec 未完整列举 | 编译器保留额外名称（如 `int`、`Box`） |
| Java | JLS 明确定义所有保留名 | 完整列举 |
| Swift | Swift Programming Language 明确定义 | 完整列举 |
| TypeScript | TypeScript Spec 明确定义 | 完整列举 |

- **建议：** Spec 应完整列举所有保留名，或引用独立的保留名清单文档。
- **分类：** D 类（Spec 与实现不一致 - Spec 文档不完整）

---

**D-4.06-01** ⭐ LOW — `int` 作为隐式推断类型未被正式定义

- **问题描述：** Spec §4.6.5 在示例注释中广泛使用 `int` 作为类型名（如 `// Type of 'b' is int`），但 Spec 正文从未正式定义 `int` 为关键字或基本类型，也未在 §4.2 的冲突示例中列出 `int`。
- **Spec 依据：** §4.6.5 Variable Declarations - 应使用正式定义的类型
- **复现用例 ID：** NAM_04_06_05_101_FAIL_const_object_literal_infer
- **跨语言对比：**

| 语言 | 类型系统 | int 地位 |
|------|---------|---------|
| ArkTS | `int` 在 Spec 注释中使用但未正式定义 | 编译器实际支持，但 Spec 未明确定义 |
| Java | `int` 是 JLS 明确定义的基本类型 | 一等公民 |
| Swift | `Int` 是标准库结构体 | 一等公民 |
| TypeScript | `number` 是唯一数值类型，无 `int` | 不支持 |

- **建议：** Spec 应在类型章节明确定义 `int`、`double`、`char`、`byte` 等基础类型及其与 `number` 的关系。
- **分类：** D 类（Spec 与实现不一致 - Spec 文档不完整）

---

---

## 章节最新执行统计

| 子章节 | 总数 | 通过 | 失败 |
|-------|:---:|:----:|:----:|
| 4.1 Names | 16 | 16 | 0 |
| 4.2 Declarations | 13 | 13 | 0 |
| 4.2.1 Distinguishable Signatures | 3 | 3 | 0 |
| 4.3 Scopes | 19 | 19 | 0 |
| 4.4 Accessible | 16 | 16 | 0 |
| 4.5 Type Declarations | 24 | 24 | 0 |
| 4.5.1 Type Alias Declaration | 11 | 11 | 0 |
| 4.6.1 Variable Declarations | 9 | 9 | 0 |
| 4.6.2 Constant Declarations | 7 | 7 | 0 |
| 4.6.3 Validity of Initializer | 4 | 4 | 0 |
| 4.6.4 Assignability with Init | 3 | 3 | 0 |
| 4.6.5 Type Inference from Init | 9 | 9 | 0 |
| 4.7 Function Declarations | 5 | 5 | 0 |
| 4.7.1 Signatures | 5 | 5 | 0 |
| 4.7.2 Parameter List | 3 | 3 | 0 |
| 4.7.3 Readonly Parameters | 5 | 5 | 0 |
| 4.7.4 Optional Parameters | 5 | 5 | 0 |
| 4.7.5 Rest Parameter | 15 | 15 | 0 |
| 4.7.6 Shadowing by Parameter | 5 | 5 | 0 |
| 4.7.7 Return Type | 14 | 14 | 0 |
| **总计** | **191** | **191** | **0** |

---

### 说明

1. **D 类异常**：Spec 与实现不一致，指 Spec 要求的行为与编译器实际行为不符
2. **ID 格式**：`D-<章节号>-<序号>`（如 D-4.01-01 表示章节 4.01 的第 1 个 D 类异常）
3. **严重性标记**：
   - ⭐⭐⭐ HIGH：严重影响语言规范一致性
   - ⭐⭐ MEDIUM：影响部分场景，有绕过方案
   - ⭐ LOW：影响边缘场景，绕过容易
4. **跨语言对比**：每个异常必须提供 ArkTS + Java + Swift 的对比分析
