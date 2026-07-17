# 09 Classes Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

> 最后编译验证：2026-07-17，es2panda (`--extension=ets`)，154 compile-fail + 131 compile-pass = 285 例全部实测。
>
> 2026-06-26 补充复核：对 9.7–9.10 四节 90 用例（含 runtime 编译）全量实测，es2panda `--extension=ets`（Linux native）。其中 C-9.08-01 用例已从 compile-pass 归位 compile-fail 作负向看护；其余 issue（9.1–9.6、9.7.x、9.9.x 子节）不在本次复核范围，保留 2026-06-23 结论。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C-9.07-01 | CLS_09_07_015 | override 方法默认参数值不一致未检查 | compile-time error | 编译通过 (EXIT=0) | C类-待重新评估 |
| C-9.04-01 | CLS_09_04_010 | TS 风格方法重载声明（无 body 签名）不支持 | compile-pass（用例预期） | 编译失败 ESE0017 | C类-用例设计问题 |
| D-9.02-01 | CLS_09_02_009 | 显式 extends Object 行为与 spec/用例预期不一致 | compile-time error | 编译通过 (EXIT=0) | D类-Spec不一致 |
| D-9.06-02 | CLS_09_06_5_005 | late init + optional 组合未检查 | compile-time error | 编译通过 (EXIT=0) | D类-Spec不一致 |
| D-9.09-01 | CLS_09_09_009 / CLS_09_09_010 | 命名构造器实验特性不支持 | experimental feature | 编译失败 ESE0087（正确拒绝） | D类-实验特性差异 |

### 异常详情

**~~C-9.08-01~~** ✅ 已移除 — getter/setter 修饰符一致性（PDF原文§9.8无此规则）

- PDF原文§9.8 **无getter+setter修饰符一致性规则**，此规则来自markdown版本新增，不在PDF原文中。
- **结论：** 不应作为编译器bug。用例CLS_09_08_008已从compile-fail移回compile-pass。
- 分类：已移除（误报，规则不来自PDF原文）

**C-9.07-01** ⭐⭐ MEDIUM — override 方法默认参数值不一致未检查 ⚠️ 待重新评估

- PDF原文§9.7.5说"aligned with OverrideCompatible Signatures"，不是"same default parameter values"，且无"compile-time error occurs"语句。
- 实际：编译器接受不同的默认参数值 (EXIT=0)。
- 用例路径：`ets_cases/9.7.5_Overriding_Methods/compile-pass/CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT.ets`
- 分类：C 类（待确认 — 需核查OverrideCompatible Signatures是否包含默认参数一致性）

**~~C-9.07-02~~** ✅ 已移除 — native + static 修饰符组合（PDF原文§9.7.1/§17.10不禁止）

- PDF原文§9.7.1/§17.10 **都不禁止native+static组合**。此前记录基于对markdown版本的误读。
- **结论：** 不应作为编译器bug。native+static组合是允许的。用例CLS_09_07_046保持compile-pass。
- 分类：已移除（误报，规则不来自PDF原文）

**C-9.04-01** ⭐⭐ MEDIUM — TS 风格方法重载声明导致编译失败

- 用例 `CLS_09_04_010_PASS_METHOD_OVERLOAD` 使用 TS 风格重载（多个无 body 签名 + 一个实现）：
  ```typescript
  class Overload010 {
    foo(x: number): number      // ← ESE0017: Only abstract or native methods can't have body
    foo(x: string): string
    foo(x: number | string): number | string { ... }
  }
  ```
- 实际：编译失败，`Semantic error ESE0017` (EXIT=1)。
- 用例路径：`ets_cases/9.4_Class_Members/compile-pass/CLS_09_04_010_PASS_METHOD_OVERLOAD.ets`
- ArkTS 方法重载需使用 §17.9 实验特性 `overload` 关键字显式声明，不支持 TS 风格的多签名语法。
- 建议：将用例从 compile-pass 移至 compile-fail，或改用 `overload` 关键字重写为实验特性用例。
- 分类：C 类（用例设计未对齐 ArkTS 语法规则）

**D-9.02-01** ⭐ LOW — 显式 extends Object 行为与 spec/用例预期不一致

- 用例 `CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT` 期望显式 `extends Object` 编译失败。
- 实际：`class ExplicitObject extends Object {}` 编译通过 (EXIT=0)。
- 用例路径：`ets_cases/9.2_Class_Extension_Clause/compile-fail/CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT.ets`
- Java 允许显式 extends Object；Swift 无通用 Object 基类可直接对比。
- 建议：若设计允许，应将用例改为 PASS 并更新 spec/说明；若禁止，应补充编译器检查。
- 分类：D 类（Spec/用例预期与实现不一致）

**D-9.06-02** ⭐⭐ MEDIUM — late init + optional 组合未检查 🔄 升级为C类

- PDF原文§9.6.5确认"compile-time error occurs if Is an optional field"。
- 实际：`val!: string` 编译通过 (EXIT=0) — 但**用例代码有bug**：`val!: string`没有optional标记(?)，不是 `!?` 组合。需先重写为`val!?: string`才能正确触发检查。
- 用例路径：`ets_cases/9.6.5_Fields_with_Late_Initialization/compile-fail/CLS_09_06_5_005_FAIL_LATE_INIT_OPTIONAL.ets`
- Swift 有隐式解包 optional 机制，Java 无 late init 等价语法。
- 建议：先修正用例代码（`val!: string`→`val!?: string`），再验证编译器是否拒绝。
- 分类：C 类（PDF原文确认有compile-time error规则，但用例代码需先修正）

**D-9.06-03** ⭐ LOW — super 在字段初始化器中使用无 warning ✅ 编译器已修复

- Spec §9.6.4 规定字段 initializer expression 使用 `this` 或 `super` 时应产生 compile-time warning。
- 实际（当前编译器）：`super.method()` 已产生 Warning W0010（✅），**编译器已修复**。
- 用例路径：`ets_cases/9.6.4_Field_Initialization/compile-pass/CLS_09_06_4_006_PASS_SUPER_IN_INITIALIZER.ets`
- **已解决：** 编译器现在对super也产生W0010。@expect已从compile-fail改为compile-pass，用例移至compile-pass目录。
- 分类：✅ 已解决

**D-9.09-01** ⭐ LOW — 命名构造器实验特性未实现

- Spec 标注 constructor optional identifier 为 experimental feature（§9.9.2）。
- 实际：`super.init(x)` / `this.init(0, 0)` 编译失败，报 `Semantic error ESE0087: Property 'init' does not exist` (EXIT=1)。
- 用例路径：
  - `ets_cases/9.9.2_Explicit_Constructor_Call/compile-fail/CLS_09_09_009_FAIL_SUPER_NAMED_CALL.ets`
  - `ets_cases/9.9.2_Explicit_Constructor_Call/compile-fail/CLS_09_09_010_FAIL_THIS_NAMED_CALL.ets`
- 两个用例均为 compile-fail 预期，实际 EXIT=1，**用例预期与实际行为一致**。
- Java/Swift 均无等价命名构造器语法；Dart 有类似 named constructor。
- 建议：明确该实验特性的支持状态；若计划不支持，可更新用例注释说明。
- 分类：D 类（实验特性差异，用例行为正确）

---

## 已解决问题

**~~D-9.06-01~~** ✅ 已修复 — `this` 在字段初始化器中使用现在产生 Warning

- 现状：编译器输出 `Warning W0010`，EXIT=0。完全符合 Spec。
- 用例 `CLS_09_06_4_003_FAIL_FIELD_THIS_INITIALIZER` 已从 compile-fail 移至 compile-pass，@expect 已修正。

**~~D-9.06-03~~** ✅ 已修复 — `super` 在字段初始化器中使用现在产生 Warning

- 现状：编译器现在对 `super` 也产生 Warning W0010，EXIT=0。
- 用例 `CLS_09_06_4_006_FAIL_SUPER_IN_INITIALIZER` 已从 compile-fail 移至 compile-pass，@expect 已修正。

**~~C-9.08-01~~** ✅ 已移除 — getter/setter 修饰符一致性（PDF原文§9.8无此规则）

- 规则来自 markdown 版本新增，不在 PDF 原文中。从 issue_report 移除。

**~~C-9.07-02~~** ✅ 已移除 — native+static 组合（PDF原文不禁止）

- PDF原文§9.7.1/§17.10 都不禁止 native+static。从 issue_report 移除。
