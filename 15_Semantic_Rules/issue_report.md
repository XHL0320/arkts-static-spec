# 15 Semantic Rules Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| D-15.2-01 | SEM_15_02_00_010_PASS_GEN_variance_covariant | 泛型协变赋值被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.2-02 | SEM_15_02_00_012_PASS_LIT_string_literal_to_string | 字符串字面量→string 赋值被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.2-03 | SEM_15_02_00_015_PASS_UNION_member_to_union | union member 赋值被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.2-04 | SEM_15_02_00_018_PASS_FUNC_parameter_contravariance | 函数参数逆变被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.2-05 | SEM_15_02_08_001_PASS_PLACEHOLDER | 交叉类型占位 compile-pass 编译失败 | compile-pass | 编译失败 | D类-编译回归 |
| — | SEM_15_04_00_004_PASS_IMPLICIT_CONVERSION_assignability | 隐式转换可赋值性被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| — | SEM_15_05_00_001_PASS_GENERIC_invariance | 泛型不变性被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| — | SEM_15_05_00_003_PASS_FUNCTION_variance | 函数变型被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| — | SEM_15_06_00_002_PASS_SPREAD_expression | Spread 表达式被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| — | SEM_15_06_00_004_PASS_REST_parameter | Rest 参数被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| — | SEM_15_07_00_001_PASS_CONSTANT_expression | 常量表达式被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| — | SEM_15_07_00_003_PASS_RETURN_type_inference | 返回类型推断被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.9-01 | SEM_15_09_00_003_PASS_CLASS_method_parameter_contravariance | 重写参数逆变被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.9-02 | SEM_15_09_00_009_PASS_INTERFACE_default_method_override | 接口默认方法重写被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.9-03 | SEM_15_09_00_013_PASS_INTERFACE_override_compatible | 接口兼容重写被拒绝 | compile-pass | 编译失败 | D类-编译回归 |
| D-15.2-06 | SEM_15_02_04_101_FAIL_tuple_shorter_to_longer | 元组子类型过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.2-07 | SEM_15_02_05_101_FAIL_two_union_subtype_gap | union 子类型过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.2-08 | SEM_15_02_05_103_FAIL_union_int_to_number | union 子类型过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.2-09 | SEM_15_02_05_106_FAIL_union_larger_to_smaller | union 子类型过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.2-10 | SEM_15_02_07_101_FAIL_fixed_array_wrong_direction | 定长数组子类型过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.7-01 | SEM_15_07_02_102_FAIL_unexpressible_smart_return | 返回类型推断过宽松 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.9-04 | SEM_15_09_00_108_FAIL_CLASS_parameter_covariance | 参数协变应报错但通过 | compile-time error | 编译通过 | D类-过宽松 |
| — | SEM_15_09_00_109_FAIL_CLASS_return_contravariance | 返回逆变应报错但通过 | compile-time error | 编译通过 | D类-过宽松 |
| — | SEM_15_09_01_103_FAIL_multiple_override_same | 多重重写应报错但通过 | compile-time error | 编译通过 | D类-过宽松 |
| — | SEM_15_09_02_102_FAIL_effective_signature_conflict | 签名冲突应报错但通过 | compile-time error | 编译通过 | D类-过宽松 |
| D-15.8-01~05 | SEM_15_08_00_109/110/111/114/116 | Base→Derived 自动收窄 | compile-time error | 编译通过 | D类-待确认 |
| — | SEM_15_08_00_118_FAIL_INSTANCEOF_invalid_access | instanceof 无效访问通过 | compile-time error | 编译通过 | D类-待确认 |
| D-15.11-01 | SEM_15_11_00_113_FAIL_ARCHIVE_static_method_not_inherited_for_overload | 静态方法被继承到子类重载集 | compile-time error | 编译通过 | D类-待确认 |
| SEM-U-01 | SEM_15_08_01_100_FAIL_TYPEOF_GAP | typeof smart cast 未实现（ESE0318） | compile-time error | compile-error ✅ | C类-未实现 |
| — | SEM_15_08_00_004/005/008/014/016/017/018/019/020/022/024/025/027/028 | Smart Cast 流敏感收窄 14 场景未实现 | compile-pass | 编译失败 | C类-未实现 |
| — | SEM_15_11_07_001_PASS_OVERLOAD_WARNING | 重载警告 W2323 未实现 | compile-pass | 编译失败 | C类-未实现 |
| COM-15.14-01~06 | SEM_15_14_003/013/014/022/023/024 | Extended Conditional 6 场景未实现 | compile-pass | 编译失败 | C类-未实现 |
| — | SEM_15_14_00_204_RUNTIME_nan_false | NaN 真值判断编译失败 | runtime | 编译失败 | C类-未实现 |
| D-15.11-02~07 | SEM_15_11_00_218/220/222/224/226/231 | Overload 按实际类型而非声明类型派发 | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |

### 异常详情

**D-15.2-01 ~ D-15.2-05** MEDIUM — 子类型 compile-pass 编译失败回归

5 个 compile-pass 用例因编译器拒绝合法代码而失败，涉及泛型协变、字符串字面量子类型、union→member 赋值、函数参数逆变、交叉类型占位等。cross_lang_verify 已验证 Java/Swift 均接受此类代码。
- 分类：D 类（Spec 与实现不一致）
- 涉及章节：15.2

**D-15.9-01 ~ D-15.9-03** MEDIUM — 重写 compile-pass 编译失败回归

重写参数逆变、接口默认方法重写、接口兼容重写被编译器拒绝。cross_lang_verify 已验证 Java/Swift 均接受等价重写。
- 分类：D 类（Spec 与实现不一致）
- 涉及章节：15.9

**其他编译回归（SEM_15_04_00_004 / SEM_15_05_00_001+003 / SEM_15_06_00_002+004 / SEM_15_07_00_001+003）** MEDIUM — 跨章节编译回归

隐式转换可赋值性、泛型不变性、函数变型、Spread/Rest 表达式、常量表达式/返回类型推断被编译器拒绝。
- 分类：D 类（Spec 与实现不一致）
- 涉及章节：15.4/15.5/15.6/15.7

**D-15.2-06 ~ D-15.2-10** MEDIUM — 子类型检查过宽松

元组/union/定长数组错误方向子类型被编译器接受。
- 分类：D 类（Spec 与实现不一致）
- 涉及章节：15.2.4/15.2.5/15.2.7

**D-15.7-01** LOW — 返回类型推断过宽松

`SEM_15_07_02_102` 函数推断出不可表达类型应拒绝，但编译通过。
- 分类：D 类（Spec 与实现不一致）
- 涉及章节：15.7.2

**D-15.9-04 等（SEM_15_09_00_108/109, SEM_15_09_01_103, SEM_15_09_02_102）** MEDIUM — 重写检查过宽松

参数协变、返回逆变、多重重写、签名冲突应报错但通过。
- 分类：D 类（Spec 与实现不一致）
- 涉及章节：15.9

**D-15.8-01~05** MEDIUM — Base→Derived 自动收窄（待确认）

函数内 `let b: Base = new Derived()` 后编译器自动收窄 b 为 Derived，允许访问派生成员。需回溯 spec 原文确认流敏感赋值收窄是否为有意设计。
- 跨语言对比：

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let b: Base = new Derived(); b.onlyDerived()` | ✅ 编译通过（自动收窄） |
| Java | `((Dog) a).onlyDerived()` | ❌ 需显式 cast |
| Swift | `if let d = a as? Dog { d.onlyDerived() }` | ❌ 需可选绑定 |

- 分类：D 类（待确认）
- 涉及章节：15.8

**D-15.11-01** MEDIUM — 静态方法被继承到子类重载集（待确认）

`OverloadFail026Derived.select(26)` 编译器自动查找基类静态方法。需确认 ArkTS spec 对静态重载集继承的明确规则。
- 跨语言对比：

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `Derived.select(26)` 调用基类静态方法 | ✅ 编译通过（与当前 spec 理解矛盾） |
| Java | `Derived.select(26)` 调用基类静态方法 | ✅ 继承至子类重载集 |

- 分类：D 类（待确认）
- 涉及章节：15.11

**SEM-U-01** MEDIUM — typeof smart cast 未实现

`typeof x === "boolean"` 收窄后编译器未将 x 从 `int|boolean` 收窄为 `boolean`。编译器明确拒绝此模式（ESE0318）。等待编译器支持 typeof 类型收窄后改 compile-pass。
- 跨语言对比：

| 语言 | typeof 等效 | Smart Cast |
|------|------------|-----------|
| ArkTS | `typeof x === "boolean"` | ❌ 未实现 |
| Java | `x instanceof String` | ✅ 编译期收窄 |
| Swift | `x is String` | ✅ 编译期收窄 |
| TypeScript | `typeof x === "boolean"` | ✅ 编译期收窄 |

- 分类：C 类（编译器功能缺失）
- 涉及章节：15.8.1

**Smart Cast 流敏感收窄未完全实现（14 场景）** MEDIUM

typeof/CFG/union/nested/ternary/logical/switch/for/while/backedge/must-alias/intersection-diff/type-expr-simplify 等场景的流敏感收窄编译器未实现。
- 分类：C 类（编译器功能缺失）
- 涉及章节：15.8

**D-15.11-02~07** MEDIUM — Overload Resolution 运行时按实际类型派发

`let b: Base = new Derived(); b.pick(9)` — 运行时按实际类型 `Derived` 选择 `pickInt` 而非声明类型 `Base` 的 `pickNumber`。关联外部问题 AI-ARKTS-001。
- 分类：C 类（运行时偏差）
- 涉及章节：15.11

**COM-15.14-01~06** MEDIUM — Extended Conditional Expressions 未实现

编译器拒绝 truthiness 扩展语义（`&&`/`||` 返回操作数、非 boolean 三元条件、typeof/instanceof 真值检查等）。Spec 15.14.1 定义为可选 TS 兼容特性。Spec 原文：`spec_original.md` 第 3160 行起。
- 跨语言对比：

| 语言 | `0 && "x"` | 三元非 boolean 条件 |
|------|-----------|-------------------|
| ArkTS | `let r = 0 && "x"` → `number\|string` | ❌ 编译器拒绝（未实现） |
| Java | `boolean r = true && false` | ❌ 必须 boolean |
| Swift | `let r = true && false` | ❌ 必须 Bool |

- 分类：C 类（编译器功能缺失）
- 涉及章节：15.14

---

### 历史已解决异常

| 问题 | 修复/处理 | 日期 |
|------|---------|------|
| FixedArray 不变性（D-15.2.7-01） | 确认 FixedArray 设计为协变，用例改 PASS | 2026-06-22 |
| int/number 子类型（D-15.2.3-01） | 确认 int→number 隐式拓宽符合 Spec，用例改 PASS | 2026-06-22 |
| union 子类型（旧 SEM-GAP-02） | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| FixedArray<Object>→<string> | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| Promise 类型擦除 | 编译器正确拒绝 ESE461884 | 2026-06-22 |

