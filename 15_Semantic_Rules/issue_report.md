# 15 Semantic Rules Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| SEM-U-01 | SEM_15_08_003_FAIL_TYPEOF_GAP | typeof smart cast 未实现 | compile-time error | compile-error ✅（ESE0318） | 待实现 |
| D-15.8-01 | SEM_15_08_028_FAIL_function_declared_base_init_derived_member | Base 变量由 Derived 初始化后访问 Derived 独有成员被接受 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.8-02 | SEM_15_08_029_FAIL_function_declared_base_init_derived_assign | Base 变量由 Derived 初始化后赋值给 Derived 被接受 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.8-03 | SEM_15_08_030_FAIL_function_declared_base_from_derived_var_member | Base 变量来自 Derived 变量后访问 Derived 独有成员被接受 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.8-04 | SEM_15_08_035_FAIL_function_declared_base_after_call_member | Base 变量经函数调用后仍可访问 Derived 成员 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.8-05 | SEM_15_08_038_FAIL_SMART_FUNC_function_base_member_without_narrow | 函数内 Base 变量初始化为 Derived 后访问派生成员被接受 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.11-01 | SEM_15_11_060_FAIL_ARCHIVE_static_method_not_inherited_for_overload | 静态方法被继承到子类重载集 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-15.11-02 | SEM_15_11_025_RT_receiver_declared_base_function_scope | Base 声明变量重载按 runtime 类型而非声明类型解析 | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.11-03 | SEM_15_11_027_RT_receiver_declared_base_direct_new_function | 同上—direct new function | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.11-04 | SEM_15_11_029_RT_receiver_declared_base_from_return_function | 同上—from return function | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.11-05 | SEM_15_11_031_RT_receiver_declared_base_local_copy_global | 同上—local copy global | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.11-06 | SEM_15_11_033_RT_receiver_declared_base_after_side_effect_call | 同上—after side effect call | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.11-07 | SEM_15_11_040_RT_SMART_FUNC_overload_declared_base_function | 同上—SMART_FUNC | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |

### 异常详情

**SEM-U-01** — typeof smart cast 未实现（编译器已主动拒绝）

`typeof x === "boolean"` 收窄后编译器未将 x 从 `int|boolean` 收窄为 `boolean`。编译器当前明确拒绝此模式（ESE0318）。

- 复现用例 ID：SEM_15_08_003_FAIL_TYPEOF_GAP
- 章节：15.8.1 Type Expression
- 分类：C 类（编译器功能缺失）
- 当前状态：编译器拒绝 typeof 收窄（ESE0318），测试通过。功能未实现，等待编译器支持 typeof 类型收窄后改 compile-pass

跨语言对比：

| 语言 | typeof 等效 | Smart Cast |
|------|------------|-----------|
| ArkTS | `typeof x === "boolean"` | ❌ 未实现 |
| Java | `x instanceof String` | ✅ 编译期收窄 |
| Swift | `x is String` | ✅ 编译期收窄 |
| TypeScript | `typeof x === "boolean"` | ✅ 编译期收窄 |

---

**D-15.8-01 ~ D-15.8-05** — Base 声明变量用 Derived 初始化后，编译器允许访问派生成员（流敏感收窄过宽松）

5 个用例均验证：函数内 `let b: Base = new Derived()` 后，编译器自动收窄 b 为 Derived，允许 `b.onlyDerived()`。Spec 要求无显式 `instanceof` 收窄不可访问派生成员。

- 复现章节：15.8 Smart Casts
- 分类：D 类（Spec 与实现不一致，编译器流分析过于激进）

---

**D-15.11-01** — 静态方法被继承到子类重载集

`OverloadFail026Derived.select(26)` 编译器自动查找基类静态方法，但 Spec 要求静态重载集只包含类自身直接定义的方法。

- 复现用例 ID：SEM_15_11_060_FAIL_ARCHIVE_static_method_not_inherited_for_overload
- 章节：15.11 Overload Resolution
- 分类：D 类（Spec 与实现不一致）
- 文件注释标注 `KNOWN_ISSUE`

---

**D-15.11-02 ~ D-15.11-07** — Base 声明变量重载按实际类型而非声明类型解析

6 个 runtime 用例均验证同一模式：`let b: Base = new Derived(); b.pick(9)` — 按 Spec 应基于声明类型 `Base` 选择 `pickNumber` (返回 "base-number")，但运行时按实际类型 `Derived` 选择 `pickInt` (返回 "derived-int")。

- 复现章节：15.11 Overload Resolution
- 分类：C 类（运行时行为与 Spec 不一致，需确定 Spec 意图）
- 关联外部问题：AI-ARKTS-001（同一类 overload resolution 偏差，用例在外部 SEMANTICS 目录）、AI-ARKTS-017

---

### 历史已解决异常

| 问题 | 修复/处理 | 日期 |
|------|---------|------|
| FixedArray 不变性（D-15.2.7-01） | 确认 FixedArray 设计为协变，用例改 PASS | 2026-06-22 |
| int/number 子类型（D-15.2.3-01） | 确认 int→number 隐式拓宽符合 Spec，用例改 PASS | 2026-06-22 |
| union 子类型（旧 SEM-GAP-02） | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| FixedArray<Object>→<string> | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| Promise 类型擦除 | 编译器正确拒绝 ESE461884 | 2026-06-22 |

---

## 章节最新执行统计

| 子章节 | 用例总数 | 通过 | 失败/GAP | 最近执行 |
|-------|:-------:|:----:|:--------:|---------|
| 15.1 Semantic Essentials | 70 | 70 | 0 | 2026-06-22 |
| 15.2 Subtyping | 74 | 74 | 0 | 2026-06-22 |
| 15.3 Type Identity | 23 | 23 | 0 | 2026-06-22 |
| 15.4 Assignability | 28 | 28 | 0 | 2026-06-22 |
| 15.5 Variance | 22 | 22 | 0 | 2026-06-22 |
| 15.6 Call Arguments | 30 | 30 | 0 | 2026-06-22 |
| 15.7 Type Inference | 38 | 38 | 0 | 2026-06-22 |
| 15.8 Smart Casts | 65 | 60 | 5 | 2026-06-22 |
| 15.9 Overriding | 34 | 34 | 0 | 2026-06-22 |
| 15.10 Overloading | 63 | 63 | 0 | 2026-06-22 |
| 15.11 Overload Resolution | 126 | 119 | 7 | 2026-06-22 |
| 15.12 Type Erasure | 35 | 35 | 0 | 2026-06-22 |
| 15.13 Static Initialization | 25 | 25 | 0 | 2026-06-22 |
| 15.14 Compatibility | 30 | 30 | 0 | 2026-06-22 |

**累计 663 个测试用例，651 通过，13 GAP（SEM-U-01, D-15.8-01~05, D-15.11-01~07）**
