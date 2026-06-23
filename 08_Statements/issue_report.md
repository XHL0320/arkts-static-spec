# 08 Statements Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| D-8.03-01 | STM_08_03_008_FAIL_local_type_alias_in_block | Block 内 type declaration 规则不清晰 | Spec 明确允许或明确禁止 | 文本暗示不执行 type declaration，但 es2panda 拒绝 block 内 interface/type alias | D类-Spec不一致 |
| C-8.06-01 | STM_08_06_012_PASS_label_declared_not_used | 未使用 loop label 未被检查 | compile-time error | 编译通过 | C类-编译器未实现 |
| D-8.05-01 | STM_08_05_006/007/008, STM_08_07_006/007/008, STM_08_08_006 | Extended Conditional Expressions 允许非 boolean 条件 | 后续废弃后应恢复 compile-time error | 当前 int/string/float 等非 boolean 条件编译通过 | D类-Spec待废弃特性 |

### 异常详情

**D-8.03-01** ⭐⭐ MEDIUM — Block 内 type declaration 规则不清晰

- Spec §8.3 写明：block 执行时，除 type declarations 外的 block statements 按文本顺序执行。
- 该措辞容易理解为 block 中 type declaration 语法合法，只是不参与运行时执行。
- 实际：es2panda 拒绝 block 内 `interface` / `type alias` 声明。
- Java/Swift/TypeScript 均允许局部类型/局部声明相关能力（机制不同）。
- 建议：若 ArkTS 设计禁止局部 type declaration，应在 Spec 明确写明 `type declarations are not permitted inside blocks`。
- 分类：D 类（Spec 文档与实现行为不一致/措辞歧义）

**C-8.06-01** ⭐⭐ MEDIUM — Loop label 未使用未被检查

- Spec §8.6 明确要求：如果 label identifier 未在 loopStatement 中使用，应产生 compile-time error。
- 实际：
  ```typescript
  unused_label:
  for (let i: int = 0; i < 10; i++) {
    console.log("iteration")
  }
  ```
  编译通过。
- es2panda 已正确检查 label 在 lambda 内使用的非法场景，但未检查 label 完全未使用场景。
- Java/Swift 通常仅 warning；ArkTS Spec 要求 compile-time error。
- 分类：C 类（编译器未实现 Spec 检查）

**D-8.05-01** ⭐ LOW — Extended Conditional Expressions 允许非 boolean 条件

- Spec §8.5 / §8.7 / §8.8 当前允许 condition 为 boolean 或 Extended Conditional Expressions 中提到的类型。
- 因此 int/string/float/char/bigint/enum/null/undefined 等非 boolean 条件当前可编译通过。
- Spec 同时标注该特性未来可能废弃；废弃后相关 PASS 用例应调整为 compile-fail。
- Java/Swift 均要求 boolean/Bool；TypeScript 允许 truthy/falsy。
- 分类：D 类（Spec 待废弃特性/跨语言差异，当前不作为执行失败）
