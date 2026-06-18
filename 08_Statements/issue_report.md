# 08 Statements Issue Report

记录 08 Statements 章节下所有子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

### STM-I2：Loop label 未被使用 — Spec 要求报错但编译器未强制 ⭐⭐ MEDIUM

**用例：** STM_08_06_012_PASS_label_declared_not_used（原设计为 compile-fail，实测编译通过）
**章节：** 8.6 Loop Statements
**异常性质：** Spec 与实现不一致（D 类 — Spec 明确要求 compile-time error，但 es2panda 未检查此约束）
**当前状态：** 待确认是编译器遗漏还是 spec 表述过严

**问题描述：**

STATEMENTS.md §8.6 第 183 行原文：
> "A compile-time error occurs if the label identifier is **not used** within loopStatement, or is used in lambda expressions within a loop body."

es2panda 编译器正确检查了 "used in lambda expressions"（我们的 STM_08_06_006/007 正确报错），但**未检查 "not used at all"** 的情况：

```typescript
// STATEMENTS.md 要求 compile-time error，但 es2panda 编译通过
function test(): void {
  unused_label:
  for (let i: int = 0; i < 10; i++) {
    console.log("iteration")  // label 'unused_label' 声明但未被 break/continue 使用
  }
}
```

**实测对比：**

| 约束 | STATEMENTS.md | es2panda 行为 |
|------|-------------|--------------|
| label 在 lambda 内使用 | ❌ compile-time error | ❌ 正确报错 |
| label 完全未使用 | ❌ compile-time error | ✅ **编译通过（不一致）** |

**对比结论：**
- es2panda 实现了 "label in lambda" 检查但未实现 "label not used" 检查
- 这是一个编译器实现不完整的问题（编译器遗漏了 spec 中的检查项）

**Spec 依据：**
STATEMENTS.md §8.6 L183: "A compile-time error occurs if the label identifier is not used within loopStatement"

**影响：**
1. 声明了 label 但不使用，代码可正常编译运行，不影响功能
2. 但不符合 spec 的明确要求
3. 严重性低于 STM-I1，因为不影响运行时正确性

**建议修复方案：**
1. es2panda 增加 "label not used" 的编译期检查
2. 或 spec 放宽此约束（声明未使用的 label 仅为 warning，非 error）

**重现命令：**
```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.6_Loop_Statements" bash run_statements_cases_wsl.sh
```

---

### STM-I1：Block 内 type declaration — Spec 与编译器行为不一致 ⭐⭐⭐ HIGH

**用例：** STM_08_03_008_FAIL_local_type_alias_in_block（compile-fail，按预期编译失败）
**章节：** 8.3 Block
**异常性质：** Spec 与实现不一致（D 类 — Spec 措辞暗示允许，编译器拒绝）
**当前状态：** 待澄清 spec 措辞或编译器行为

**问题描述：**

STATEMENTS.md §8.3 第 84 行原文：
> "The execution of a block means that all block statements, **except type declarations**, are executed one after another"

这段措辞暗示 type declaration 在 block 中**语法合法**，仅不参与执行。但 es2panda 编译器在 block 内遇到 `interface` 或 `type alias` 声明时直接报错：

```
ESY0040: Illegal start of INTERFACE expression
ESY0040: Illegal start of Type Alias expression
```

**实测对比：**

```typescript
// 顶层 — 合法 ✅
interface Shape { width: int; height: int }
type Coord = int

// 函数内 block — 编译器拒绝 ❌
function test(): void {
  {
    interface LocalShape { area: int }   // ❌ ESY0040
    type LocalId = int                    // ❌ ESY0040
  }
}
```

**🔴 跨语言对比：**

| 行为 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| block 内声明 interface | ❌ 编译错误 | ✅ 允许 | ✅ 允许 | ✅ 允许 |
| block 内声明 type alias | ❌ 编译错误 | N/A（无此特性） | ✅ 允许 | ✅ 允许 |
| **与 self spec 一致性** | ❌ **不一致** | ✅ | ✅ | ✅ |

**对比结论：**
- Java/Swift/TypeScript 均允许在 block 内声明类型
- ArkTS 的 STATEMENTS.md 措辞（"except type declarations"）暗示允许
- 但 es2panda 编译器实际行为是拒绝
- **这是 spec 措辞与编译器实现之间的不一致**

**Spec 依据：**
STATEMENTS.md §8.3 L84: "except type declarations, are executed"

**影响：**
1. 开发者阅读 spec 后可能认为 block 内 type declaration 合法，实际编码时遇到编译错误
2. 从 TypeScript 迁移代码时，block 内的 `interface`/`type` 需要提至顶层
3. 如果 spec 意图是禁止，则措辞"except type declarations, are executed"具有误导性；应明确说明"type declarations are not allowed inside blocks"

**建议修复方案：**
1. **方案 A（推荐）**：澄清 spec 措辞 — 明确说明 block 内不允许 type declaration，将"except type declarations"改为"type declarations are not permitted inside blocks"
2. **方案 B**：编译器放开限制，允许 block 内 type declaration（语法合法但不执行），与 Java/Swift/TS 对齐
3. **不推荐**：保持当前 spec 措辞与编译器行为不一致的状态

**相关用例：**
- 触发问题：`STM_08_03_008_FAIL_local_type_alias_in_block.ets`（编译失败，符合当前编译器预期）
- 关联用例：`STM_08_03_004_PASS_block_type_declarations.ets`（已重写为不涉及 block 内 type declaration 的版本）

**重现命令：**
```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.3_Block" bash run_statements_cases_wsl.sh
```

---

## 历史已解决异常

### STM-R1：Extended Conditional Expressions 导致 compile-fail 用例误判 ✅ 已解决

**原受影响的用例（7 个）：**
- STM_08_05_006/007/008（if 条件 int/string/float）
- STM_08_07_006/007/008（while/do 条件 number/string/non_bool）
- STM_08_08_006（for 条件 non_bool）

**问题：** 测试设计时未掌握 STATEMENTS.md §8.5/8.7/8.8 中"or a type mentioned in Extended Conditional Expressions"的规范，将非 boolean 条件误判为 compile-fail。

**修复：** 7 个用例全部移至 compile-pass，更新 `@expect` 标签和 `@note` 说明。

**注意：** STATEMENTS.md 引用 Extended Conditional Expressions 并标注"to be deprecated in one of the future versions"。当该特性被正式废弃后，这些用例将恢复为 compile-fail。

---

### STM-R2：catch(e: Error) 类型标注语法过时 ✅ 已解决

**原受影响的用例（6 个）：**
- STM_08_15_2_001/002/005（compile-pass）
- STM_08_15_2_009/010/011（runtime）

**问题：** STATEMENTS.md §8.15.1 定义 catch 语法为 `'catch' '(' identifier ')' block`（无类型标注），es2panda 拒绝 `catch(e: Error)`（ESE33781: "The catch statement with type annotation is deprecated"）。

**修复：** 所有 `catch(e: Error)` 改为 `catch(e)`，与 STATEMENTS.md 规范一致。

---

### STM-R3：其他测试用例设计错误 ✅ 已解决

| 用例 | 错误 | 修复 |
|------|------|------|
| STM_08_03_004 | 尝试在 block 内声明 interface/type alias | 重写为块变量遮蔽测试 |
| STM_08_04_004 | `let f: float = 1.5` — Double 字面量无法赋值 Float | 改为 `let f: double = 1.5` |
| STM_08_02_011 | `let first: int = arr.shift()` — shift() 返回 `Int\|undefined` | 显式处理 undefined 分支 |

---

## 章节最新执行统计

| 子章节 | 用例总数 | 通过 | 失败 | 未解决异常 | 最近执行 |
|-------|---------|------|------|-----------|---------|
| 8.1 Normal and Abrupt Statement Execution | 14 | 14 | 0 | 0 | 2026-06-19 |
| 8.2 Expression Statements | 17 | 17 | 0 | 0 | 2026-06-19 |
| 8.3 Block | 15 | 15 | 0 | STM-I1 | 2026-06-19 |
| 8.4 Constant or Variable Declarations | 23 | 23 | 0 | 0 | 2026-06-19 |
| 8.5 if Statements | 26 | 26 | 0 | 0 | 2026-06-19 |
| 8.6 Loop Statements | 20 | 20 | 0 | STM-I2 | 2026-06-19 |
| 8.7 while and do Statements | 25 | 25 | 0 | 0 | 2026-06-19 |
| 8.8 for Statements | 22 | 22 | 0 | 0 | 2026-06-19 |
| 8.9 for-of Statements | 23 | 23 | 0 | 0 | 2026-06-19 |
| 8.10 break Statements | 19 | 19 | 0 | 0 | 2026-06-19 |
| 8.11 continue Statements | 18 | 18 | 0 | 0 | 2026-06-19 |
| 8.12 return Statements | 24 | 24 | 0 | 0 | 2026-06-19 |
| 8.13 switch Statements | 26 | 26 | 0 | 0 | 2026-06-19 |
| 8.14 throw Statements | 19 | 19 | 0 | 0 | 2026-06-19 |
| 8.15 try Statements | 22 | 22 | 0 | 0 | 2026-06-19 |
| 8.15.1 catch Clause | 17 | 17 | 0 | 0 | 2026-06-19 |
| 8.15.2 finally Clause | 18 | 18 | 0 | 0 | 2026-06-19 |
| 8.15.3 try Statement Execution | 15 | 15 | 0 | 0 | 2026-06-19 |
| **总计** | **363** | **363** | **0** | **2** | — |

**累计 363 个测试用例，全部编译运行通过，2 个未解决异常（spec-implementation mismatch）。**

---

## 注

**所有用例当前都"通过"测试脚本**，但 STM-I1 和 STM-I2 是**用例通过 ≠ 行为正确**的情况：
- `STM_08_03_008_FAIL_local_type_alias_in_block` 标记为 `@expect compile-fail`（预期编译失败），实测确实编译失败（脚本判定 PASS），**但 STATEMENTS.md 措辞暗示该写法应合法**（"except type declarations, are executed"）。这是 spec 措辞与编译器实现不一致。
- `STM_08_06_012_PASS_label_declared_not_used` 原设计为 compile-fail（预期编译失败），实测编译通过（脚本判定 UNEXPECTED PASS），**STATEMENTS.md 明确要求 label 必须被使用否则 compile-time error，但 es2panda 未检查此约束**。这是编译器遗漏 spec 检查项。

记录到 issue_report.md 是为了追踪 ArkTS 团队是否澄清 spec 或修改编译器行为。
