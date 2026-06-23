# 15 Semantic Rules Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| SEM-U-01 | SEM_15_08_01_100_FAIL_TYPEOF_GAP | typeof smart cast 未实现 | compile-time error | compile-error ✅（ESE0318） | 待实现 |
| D-15.8-01 | SEM_15_08_00_109_FAIL_function_declared_base_init_derived_member | Base 变量由 Derived 初始化后访问 Derived 独有成员被接受 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.8-02 | SEM_15_08_00_110_FAIL_function_declared_base_init_derived_assign | Base 变量由 Derived 初始化后赋值给 Derived 被接受 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.8-03 | SEM_15_08_00_111_FAIL_function_declared_base_from_derived_var_member | Base 变量来自 Derived 变量后访问 Derived 独有成员被接受 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.8-04 | SEM_15_08_00_114_FAIL_function_declared_base_after_call_member | Base 变量经函数调用后仍可访问 Derived 成员 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.8-05 | SEM_15_08_00_116_FAIL_SMART_FUNC_function_base_member_without_narrow | 函数内 Base 变量初始化为 Derived 后访问派生成员被接受 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.11-01 | SEM_15_11_00_113_FAIL_ARCHIVE_static_method_not_inherited_for_overload | 静态方法被继承到子类重载集 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-15.11-02 | SEM_15_11_00_218_RUNTIME_receiver_declared_base_function_scope | Base 声明变量重载按 runtime 类型而非声明类型解析 | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.11-03 | SEM_15_11_00_220_RUNTIME_receiver_declared_base_direct_new_function | 同上—direct new function | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.11-04 | SEM_15_11_00_222_RUNTIME_receiver_declared_base_from_return_function | 同上—from return function | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.11-05 | SEM_15_11_00_224_RUNTIME_receiver_declared_base_local_copy_global | 同上—local copy global | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.11-06 | SEM_15_11_00_226_RUNTIME_receiver_declared_base_after_side_effect_call | 同上—after side effect call | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.11-07 | SEM_15_11_00_231_RUNTIME_SMART_FUNC_overload_declared_base_function | 同上—SMART_FUNC | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| D-15.2-01 | SEM_15_02_00_010_PASS_GEN_variance_covariant | 泛型协变赋值被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.2-02 | SEM_15_02_00_012_PASS_LIT_string_literal_to_string | 字符串字面量→string 赋值被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.2-03 | SEM_15_02_00_015_PASS_UNION_member_to_union | union→member 赋值被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.2-04 | SEM_15_02_00_018_PASS_FUNC_parameter_contravariance | 函数参数逆变被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.2-05 | SEM_15_02_08_001_PASS_PLACEHOLDER | 交叉类型占位 compile-pass 编译失败 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.2-06 | SEM_15_02_04_101_FAIL_tuple_shorter_to_longer | 元组子类型过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.2-07 | SEM_15_02_05_101_FAIL_two_union_subtype_gap | union 子类型过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.2-08 | SEM_15_02_05_103_FAIL_union_int_to_number | union 子类型过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.2-09 | SEM_15_02_05_106_FAIL_union_larger_to_smaller | union 子类型过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.2-10 | SEM_15_02_07_101_FAIL_fixed_array_wrong_direction | 定长数组子类型过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.7-01 | SEM_15_07_02_102_FAIL_unexpressible_smart_return | 返回类型推断过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.9-01 | SEM_15_09_00_003_PASS_CLASS_method_parameter_contravariance | 重写参数逆变被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.9-02 | SEM_15_09_00_009_PASS_INTERFACE_default_method_override | 接口默认方法重写被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.9-03 | SEM_15_09_00_013_PASS_INTERFACE_override_compatible | 接口兼容重写被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.9-04 | SEM_15_09_00_108_FAIL_CLASS_parameter_covariance | 参数协变应报错但通过 | compile-time error | 编译通过 | D类-过宽松 |
| COM-15.14-01 | SEM_15_14_003_PASS_CONDITIONAL_AND | 条件与扩展语义被拒绝 | compile-pass | 编译失败 | C类-特性未实现 |
| COM-15.14-02 | SEM_15_14_013_PASS_TYPEOF_truthiness | typeof 真值检查被拒绝 | compile-pass | 编译失败 | C类-特性未实现 |
| COM-15.14-03 | SEM_15_14_014_PASS_INSTANCEOF_truthiness | instanceof 真值检查被拒绝 | compile-pass | 编译失败 | C类-特性未实现 |
| COM-15.14-04 | SEM_15_14_022_PASS_COMPREHENSIVE_3 | 综合扩展条件表达式被拒绝 | compile-pass | 编译失败 | C类-特性未实现 |
| COM-15.14-05~06 | SEM_15_14_023~024_PASS_COMPREHENSIVE_narrowing | 综合扩展条件表达式（合并为 2 个） | compile-pass | 编译失败 | C类-特性未实现 |

### 异常详情

**SEM-U-01** — typeof smart cast 未实现（编译器已主动拒绝）

`typeof x === "boolean"` 收窄后编译器未将 x 从 `int|boolean` 收窄为 `boolean`。编译器当前明确拒绝此模式（ESE0318）。

- 复现用例 ID：SEM_15_08_01_100_FAIL_TYPEOF_GAP
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

- 复现用例 ID：SEM_15_11_00_113_FAIL_ARCHIVE_static_method_not_inherited_for_overload
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

**D-15.2-01 ~ D-15.2-05** — 子类型 compile-pass 编译失败回归（新增测试）

5 个新增 compile-pass 用例因编译器拒绝合法代码而失败，涉及泛型协变、字符串字面量子类型、union→member 赋值、函数参数逆变等场景。

| ID | Case | Symptom |
|---|------|--------|
| D-15.2-01 | SEM_15_02_00_010_PASS_GEN_variance_covariant | 泛型协变赋值被拒绝 |
| D-15.2-02 | SEM_15_02_00_012_PASS_LIT_string_literal_to_string | 字符串字面量→string 赋值被拒绝 |
| D-15.2-03 | SEM_15_02_00_015_PASS_UNION_member_to_union | union member 赋值被拒绝 |
| D-15.2-04 | SEM_15_02_00_018_PASS_FUNC_parameter_contravariance | 函数参数逆变被拒绝 |
| D-15.2-05 | SEM_15_02_08_001_PASS_PLACEHOLDER | 交叉类型占位 compile-pass 编译失败 |

---

**D-15.2-06 ~ D-15.2-10** — 子类型 compile-fail 过宽松（编译器接受非法代码）

5 个 compile-fail 用例被编译器接受，涉及元组/union/定长数组错误方向子类型。

| ID | Case |
|---|------|
| D-15.2-06 | SEM_15_02_04_101_FAIL_tuple_shorter_to_longer |
| D-15.2-07 | SEM_15_02_05_101_FAIL_two_union_subtype_gap |
| D-15.2-08 | SEM_15_02_05_103_FAIL_union_int_to_number |
| D-15.2-09 | SEM_15_02_05_106_FAIL_union_larger_to_smaller |
| D-15.2-10 | SEM_15_02_07_101_FAIL_fixed_array_wrong_direction |

---

**D-15.7-01** — 返回类型推断过宽松

`SEM_15_07_02_102_FAIL_unexpressible_smart_return` — 函数推断出不可表达类型应拒绝，但编译通过。

---

**D-15.9-01 ~ D-15.9-04** — 重写 compile-pass 编译失败回归

新增用例因编译器拒绝合法重写而失败。

| ID | Case |
|---|------|
| D-15.9-01 | SEM_15_09_00_003_PASS_CLASS_method_parameter_contravariance |
| D-15.9-02 | SEM_15_09_00_009_PASS_INTERFACE_default_method_override |
| D-15.9-03 | SEM_15_09_00_013_PASS_INTERFACE_override_compatible |
| D-15.9-04 | SEM_15_09_00_108_FAIL_CLASS_parameter_covariance |

---

**COM-15.14-01** — 扩展条件表达式（Extended Conditional Expressions）编译器未实现（集体失败批次）

该批次涉及 **30 个 compile-pass 测试集体编译失败**，对应 Spec 15.14.1 Extended Conditional Expressions。这些测试验证 ArkTS 为兼容 TypeScript 而引入的**真值判断（truthiness）扩展语义**，但编译器当前**未实现该特性**。

**Spec 背景**：15.14 Compatibility Features 定义了一组可选的 TS 兼容特性（Spec 明确标注 *"to be deprecated in one of the future versions of ArkTS"*），核心是允许非 boolean 类型在条件上下文中按 truthy/falsy 规则隐式判定：

| 值 | truthy |
|---|--------|
| `0`, `NaN`, `""`, `null`, `undefined`, `false` | falsy ❌ |
| 非空字符串、非零数字、对象、`true` | truthy ✅ |

受影响语法结构：三元表达式、`&&`/`||`、`if`/`while`/`for`/`do`、逻辑非 `!`。

**失败模式分类**（共 8 个 FAIL，其中 6 个属此批次）：

| 模式 | 用例数 | 示例 |
|------|--------|------|
| 条件与/或返回操作数 | 2 | `let r: number\|boolean = 10 && "truthy"` → 编译器要求 boolean 操作数 |
| 非 boolean 三元条件 | 1 | `let r: string = value ? "truthy" : "falsy"` → 编译器要求 boolean 条件 |
| typeof/instanceof 真值检查 | 2 | `if (typeof x === "string")` → 编译器拒绝 typeof 表达式 |
| COMPREHENSIVE 综合测试（合并） | 2 | 覆盖 truthiness + 三元 + `&&`/`||` + 条件语句各种组合 |

**关键用例列表**：

| ID | Case |
|---|------|
| COM-15.14-01 | SEM_15_14_003_PASS_CONDITIONAL_AND |
| COM-15.14-02 | SEM_15_14_013_PASS_TYPEOF_truthiness |
| COM-15.14-03 | SEM_15_14_014_PASS_INSTANCEOF_truthiness |
| COM-15.14-04 | SEM_15_14_022_PASS_COMPREHENSIVE_3 |
| COM-15.14-05~06 | SEM_15_14_023~024_PASS_COMPREHENSIVE_narrowing（2 个合并用例） |

- 章节：15.14 Compatibility Features（父章节 `15.14_Compatibility_Features`）
- 分类：C 类（编译器功能缺失 — 可选兼容特性未实现）
- 当前状态：编译器拒绝所有扩展条件表达式（要求标准 boolean 条件），测试标记为 FAIL。等待编译器实现 Extended Conditional Expressions 后自动转为 PASS
- 关联文件：`ets_cases/15.14_Compatibility_Features/compile-pass/` 下 6 个相关用例（COM-15.14-01~04 独立 + 05~06 合并）
- Spec 原文：`spec_original.md` 第 3160 行起

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
| 15.1 Semantic Essentials | 73 | 73 | 0 | 2026-06-23 |
| 15.2 Subtyping | 133 | 123 | 10 | 2026-06-23 |
| 15.3 Type Identity | 27 | 27 | 0 | 2026-06-23 |
| 15.4 Assignability | 30 | 29 | 1 | 2026-06-23 |
| 15.5 Variance | 24 | 22 | 2 | 2026-06-23 |
| 15.6 Call Arguments | 34 | 32 | 2 | 2026-06-23 |
| 15.7 Type Inference | 49 | 46 | 3 | 2026-06-23 |
| 15.8 Smart Casts | 94 | 74 | 20 | 2026-06-23 |
| 15.9 Overriding | 66 | 59 | 7 | 2026-06-23 |
| 15.10 Overloading | 74 | 74 | 0 | 2026-06-23 |
| 15.11 Overload Resolution | 151 | 143 | 8 | 2026-06-23 |
| 15.12 Type Erasure | 38 | 37 | 1 | 2026-06-23 |
| 15.13 Static Initialization | 30 | 30 | 0 | 2026-06-23 |
| 15.14 Compatibility | 47 | 41 | 6 | 2026-06-23 |

**累计 870 个测试用例，810 通过，60 失败（包含已知 GAP + 新增兼容性特性失败批次）**
