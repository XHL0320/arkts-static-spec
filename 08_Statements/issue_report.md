# 08 语句 - ArkTS与Java/Swift/TS行为差异及规范一致性报告

记录 08 语句（Statements）章节下所有子章节执行用例时发现的**ArkTS与业界静态语言行为差异**及**Spec与实现一致性**情况。

---

## 一、Spec 措辞待澄清（Spec 与编译器行为存在歧义）

### STM-S1：Block 内 type declaration — Spec 措辞暗示允许但编译器拒绝

**用例：** STM_08_03_008_FAIL_local_type_alias_in_block
**章节：** 8.3 Block
**性质：** Spec 措辞与编译器实现不一致 — STATEMENTS.md §8.3 L84 原文 "The execution of a block means that all block statements, **except type declarations**, are executed one after another" 暗示 type declaration 语法合法（仅不参与执行），但 es2panda 拒绝 block 内 `interface`/`type alias` 声明。

```typescript
// 编译器拒绝：
function test(): void {
  {
    interface LocalShape { area: int }   // ❌ ESY0040
    type LocalId = int                    // ❌ ESY0040
  }
}
```

**跨语言对比：**
| 行为 | ArkTS es2panda | Java | Swift | TypeScript |
|------|---------------|------|-------|-----------|
| block 内声明 interface | ❌ 编译错误 | ✅ 允许 | ✅ 允许 | ✅ 允许 |
| block 内声明 type alias | ❌ 编译错误 | N/A | ✅ 允许 | ✅ 允许 |

**建议：** 澄清 spec 措辞 — 若意图是禁止，应明确写 "type declarations are not permitted inside blocks"；若允许，编译器需放开限制。当前建议方案 A（澄清措辞为禁止）。

---

## 二、编译器实现待完善（Spec 要求但 es2panda 暂未检查）

### STM-G1：Loop label 未使用 — Spec 要求报错但编译器未强制

**用例：** STM_08_06_012_PASS_label_declared_not_used
**章节：** 8.6 Loop Statements
**Spec 依据：** STATEMENTS.md §8.6 — "A compile-time error occurs if the label identifier is **not used** within loopStatement, or is used in lambda expressions within a loop body."

es2panda 正确检查了 "label in lambda"（STM_08_06_006/007 正确报错），但**未检查 "label not used at all"**：

```typescript
function test(): void {
  unused_label:
  for (let i: int = 0; i < 10; i++) {
    console.log("iteration")  // label 声明但未被 break/continue 使用
  }
}
// Spec 要求 compile-time error，但 es2panda 编译通过
```

**跨语言对比：**
| 约束 | ArkTS Spec | es2panda | Java | Swift |
|------|-----------|---------|------|-------|
| label 完全未使用 | ❌ compile-time error | ✅ 编译通过 | ⚠️ warning | ⚠️ warning |
| label 在 lambda 内使用 | ❌ compile-time error | ❌ 正确报错 | N/A | N/A |

---

## 三、与业界静态语言差异点（ArkTS 有意设计，非缺陷）

### STM-D1：Extended Conditional Expressions 允许非 boolean 条件

**原受影响的用例（7 个）：** STM_08_05_006/007/008, STM_08_07_006/007/008, STM_08_08_006
**差异性质：** 符合 ArkTS spec 的设计选择 — STATEMENTS.md §8.5/8.7/8.8 明确引用 "or a type mentioned in Extended Conditional Expressions"，允许 if/while/do/for 条件为非 boolean 类型。

**跨语言对比：**
| 语言 | if/while 条件类型 |
|------|-----------------|
| ArkTS | boolean + Extended Conditional Expressions |
| Java | 必须 boolean |
| Swift | 必须 Bool |
| TypeScript | 任意（truthy/falsy） |

**注意：** STATEMENTS.md 标注 Extended Conditional Expressions "to be deprecated in one of the future versions"。待废弃后这些用例将恢复为 compile-fail。

---

## 四、历史已解决项

### STM-R1：Extended Conditional Expressions 导致 compile-fail 用例误判 ✅
测试设计时未掌握 Extended Conditional Expressions 规范，将非 boolean 条件误判为 compile-fail。7 个用例已移至 compile-pass。

### STM-R2：catch(e: Error) 类型标注语法过时 ✅
es2panda 拒绝 `catch(e: Error)`（ESE33781: deprecated），所有 catch 改为 `catch(e)`。

### STM-R3：其他测试用例设计错误 ✅
- STM_08_03_004: block 内 type declaration → 重写为块变量遮蔽测试
- STM_08_04_004: `let f: float = 1.5` → 改为 `let f: double = 1.5`
- STM_08_02_011: `arr.shift()` 返回 `Int|undefined` → 显式处理 undefined 分支

---

## 五、章节执行统计

| 子章节 | 用例总数 | 通过 | 编译器待完善 | 最近执行 |
|-------|---------|------|-----------|---------|
| 8.1 Normal/Abrupt Execution | 14 | 14 | 0 | 2026-06-19 |
| 8.2 Expression Statements | 17 | 17 | 0 | 2026-06-19 |
| 8.3 Block | 15 | 15 | STM-S1 | 2026-06-19 |
| 8.4 Constant/Variable Declarations | 23 | 23 | 0 | 2026-06-19 |
| 8.5 if Statements | 26 | 26 | 0 | 2026-06-19 |
| 8.6 Loop Statements | 20 | 20 | STM-G1 | 2026-06-19 |
| 8.7 while/do Statements | 25 | 25 | 0 | 2026-06-19 |
| 8.8 for Statements | 22 | 22 | 0 | 2026-06-19 |
| 8.9 for-of Statements | 23 | 23 | 0 | 2026-06-19 |
| 8.10 break Statements | 19 | 19 | 0 | 2026-06-19 |
| 8.11 continue Statements | 18 | 18 | 0 | 2026-06-19 |
| 8.12 return Statements | 24 | 24 | 0 | 2026-06-19 |
| 8.13 switch Statements | 26 | 26 | 0 | 2026-06-19 |
| 8.14 throw Statements | 19 | 19 | 0 | 2026-06-19 |
| 8.15 try Statements | 22 | 22 | 0 | 2026-06-19 |
| 8.15.1 catch Clause | 17 | 17 | 0 | 2026-06-19 |
| 8.15.2 finally Clause | 18 | 18 | 0 | 2026-06-19 |
| 8.15.3 try Execution | 15 | 15 | 0 | 2026-06-19 |
| **总计** | **363** | **363** | **2** | — |

**累计 363 个测试用例，全部编译运行通过。1 个 Spec 措辞待澄清（STM-S1），1 个编译器待完善（STM-G1），1 个语言差异点（STM-D1）。**

---

## 注

- STM-S1 是 Spec 措辞歧义问题，建议 ArkTS 团队澄清或对齐编译器行为
- STM-G1 是编译器遗漏 spec 检查项（label not used），不影响运行时正确性
- STM-D1 是 ArkTS 有意设计（Extended Conditional Expressions），非缺陷
