# 08 Statements Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

> 最后编译验证：2026-06-25，es2panda `--extension=ets`（Linux native），557 个用例全量实测。
>
> **实测统计**：compile-pass 222/222 通过；compile-fail 154 按预期失败 + 1 异常通过（C-8.06-01）；runtime 180/180 编译通过。异常合计 2 项（含 1 项编译器崩溃）。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C-8.06-01 | STM_08_06_012_FAIL_label_declared_not_used | 未使用 loop label 未被检查 | compile-time error（spec §8.6） | 编译通过 (EXIT=0) | C类-编译器未实现 |
| C-8.06-02 | STM_08_06_015_FAIL_LabeledDoWhileAndForOf_compiler_bug | labeled do-while/for-of 触发编译器崩溃 | spec §8.6 允许，应正常编译 | es2panda SIGABRT (EXIT=134, core dump) | C类-编译器崩溃 |
| D-8.03-01 | STM_08_03_008_FAIL_local_type_alias_in_block | Block 内 type declaration 规则不清晰 | Spec 明确允许或明确禁止 | spec 措辞暗示合法但不执行，es2panda 拒绝 block 内 interface/type alias (ESY0040) | D类-Spec不一致 |
| D-8.05-01 | STM_08_05_006/007/008, STM_08_07_006/007/008, STM_08_08_006 等 | Extended Conditional Expressions 允许非 boolean 条件 | 未来废弃后恢复 compile-time error | 当前 int/string/float/Object/array/null 等非 boolean 条件编译通过 | D类-Spec待废弃特性 |

### 异常详情

**C-8.06-01** ⭐⭐ MEDIUM — Loop label 未使用未被检查

- Spec §8.6 明确要求：`A compile-time error occurs if the label identifier is not used within loopStatement`。
- 实际：
  ```typescript
  unused_label:
  for (let i: int = 0; i < 10; i++) { console.log("iteration") }
  ```
  编译通过 (EXIT=0)。
- 复现用例：`ets_cases/8.6_Loop_Statements/compile-fail/STM_08_06_012_FAIL_label_declared_not_used.ets`（已按 spec 标为 compile-fail，运行时表现为 unexpected pass）。
- es2panda 已正确检查 label 在 lambda 内使用的非法场景，但未检查 label 完全未使用场景。
- 跨语言：Java/Swift 通常仅 warning；ArkTS Spec 要求 compile-time error。
- 分类：C 类（编译器未实现 Spec 检查）

**C-8.06-02** ⭐⭐⭐ HIGH — labeled do-while / for-of 触发编译器崩溃（🆕 新发现）

- Spec §8.6 loopStatement 语法 `(identifier ':')?` 前缀适用于 `whileStatement | doStatement | forStatement | forOfStatement` 全部四种循环，labeled do-while/for-of 是合法语法。
- 实际：es2panda 编译含 labeled do-while 或 labeled for-of 的代码时 **SIGABRT 崩溃 (EXIT=134, core dump)**，而非正常编译或正常报错。
- 复现用例：`ets_cases/8.6_Loop_Statements/compile-fail/STM_08_06_015_FAIL_LabeledDoWhileAndForOf_compiler_bug.ets`。
- 影响范围：do-while 与 for-of 的 label 用法（for/while 的 label 用法正常）。
- 分类：C 类（编译器崩溃，严重性 HIGH）

**D-8.03-01** ⭐⭐ MEDIUM — Block 内 type declaration 规则不清晰

- Spec §8.3 写明：block 执行时，除 type declarations 外的 block statements 按文本顺序执行。该措辞容易理解为 block 中 type declaration 语法合法、只是不参与运行时执行。
- 实际：es2panda 拒绝 block 内 `interface` / `type alias` 声明 (ESY0040)。
- 复现用例：`ets_cases/8.3_Block/compile-fail/STM_08_03_008_FAIL_local_type_alias_in_block.ets`。
- 跨语言：Java/Swift/TypeScript 均允许局部类型/局部声明相关能力（机制不同）。
- 建议：若 ArkTS 设计禁止局部 type declaration，应在 Spec 明确写明 `type declarations are not permitted inside blocks`。
- 分类：D 类（Spec 文档与实现行为不一致/措辞歧义）

**D-8.05-01** ⭐ LOW — Extended Conditional Expressions 允许非 boolean 条件

- Spec §8.5 / §8.7 / §8.8 当前允许 condition 为 boolean 或 Extended Conditional Expressions（§15.14.1）中提到的类型。§15.14.1 truthiness 表格覆盖 string/boolean/char/enum/number/整数/bigint/null/undefined/union，以及 **"Any other nonNullish type"（Object/array 等，恒为 true）**。
- 因此 int/string/float/char/bigint/enum/null/undefined/Object/array 等非 boolean 条件当前均可编译通过。
- Spec 同时标注该特性 "to be deprecated in one of the future versions"；废弃后相关用例应调整为 compile-fail。
- 涉及用例（已修正 @design/@note 准确标注为 Extended Conditional 行为）：`STM_08_05_006/007/008/027/028/030/033`、`STM_08_07_006/007/008/026~031`、`STM_08_08_006/023~026` 等。
- 跨语言：Java/Swift 均要求 boolean/Bool；TypeScript 允许 truthy/falsy。
- 分类：D 类（Spec 待废弃特性/跨语言差异，当前不作为执行失败）

---

## 数据质量修复记录（2026-06-25）

本次审查发现并修复了历史数据质量问题（非 spec 差异，已修正）：

1. **42 个 @id 笔误**：用例文件名标记与 @id 标记不一致（多因"设计为 FAIL 但实际 PASS 后改标，@id 残留"）。已统一将 @id 对齐为文件名。
2. **17 个 @design/@note 与 spec 矛盾**：一批用例 @design 自述"应产生编译错误"，但 spec §15.14.1（Extended Conditional）/§8.2（自动补分号）/字符串拼接规则等实际允许，且 @note 曾错误归因到 Extended Conditional。已按准确 spec 依据重写。
3. **manifest 严重不完整**：原仅 118 条 id（实际 557），且含错误条目（如 `STM_08_08_006_FAIL_...` 标 compile-fail，实际为 PASS 在 compile-pass）。已从 557 个实际 .ets 重建为合法完整索引（222 cp / 155 cf / 180 rt）。
4. **catalog 通过率虚假**：原写"100% 通过 (557/557)"，与实际存在 C-8.06-01 异常通过矛盾。已按真实编译数据修正。
