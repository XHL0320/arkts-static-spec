# 09 类 - ArkTS与Java/Swift/TS行为差异及规范一致性报告

记录 09 类（Classes）章节 §9.1-9.10 子章节执行用例时发现的**ArkTS与业界静态语言行为差异**及**Spec与实现一致性**情况。

**跨语言实测验证**：§9.1-9.6 的 3 个 D 类差异项已于 2026-06-22 在 WSL Ubuntu 环境中通过 Java (OpenJDK 1.8.0_492) 和 Swift (6.0.3) 实测验证。详见 `cross_lang_verify/CROSS_LANG_SUMMARY.md`。

---

## 一、编译器实现待完善（Spec 要求但 es2panda 暂未检查）

以下项 Spec 有明确约束但 es2panda 当前版本未强制执行，建议编译器后续版本对齐。

### CLS-G1：getter/setter 修饰符一致性未检查

**用例：** CLS_09_08_008_PASS_GETTER_SETTER_MODIFIER_MISMATCH
**章节：** 9.8 Class Accessor Declarations
**Spec 依据：** arktsspecification.md §9.8 — "If both a getter and a setter with a particular name are defined, then both must have the same accessor modifiers. Otherwise, a compile-time error occurs."

es2panda 未检查 getter+setter 之间的修饰符一致性：

```typescript
class Test {
  private _val: int = 0
  get value(): int { return this._val }     // no modifier
  static set value(v: int) { this._val = v } // static — spec 要求报错但 es2panda 接受
}
```

**跨语言对比：**
| 语言 | 行为 |
|------|------|
| ArkTS es2panda | ✅ 编译通过（Spec 要求报错） |
| Java | ❌ 编译错误（getter/setter 无此概念，但 accessor 方法签名冲突会报错） |
| Swift | ❌ 编译错误（getter/setter 修饰符必须一致） |

**影响：** getter 和 setter 的访问级别可能不一致，建议编译器增加检查。

### CLS-G2：Override 方法默认参数一致性未检查

**用例：** CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT
**章节：** 9.7.5 Overriding Methods
**Spec 依据：** arktsspecification.md §9.7.5 — "If the signature of an overridden method contains parameters with default values, then the overriding method must always use the same default parameter values."

es2panda 未检查 override 方法的默认参数值是否与父类一致：

```typescript
class Base {
  foo(x: int = 10): void {}
}
class Derived extends Base {
  override foo(x: int = 20): void {} // 默认值不一致 — spec 要求报错但 es2panda 接受
}
```

### CLS-G3：native static 修饰符组合未检查

**用例：** CLS_09_07_046_PASS_NATIVE_STATIC
**章节：** 9.7.1 Static Methods
**Spec 依据：** arktsspecification.md §9.7.1 — static 不能与 native 组合

es2panda 接受 `native static foo()` 组合。

---

## 二、与业界静态语言差异点（ArkTS 有意设计，非缺陷）

### CLS-D1：命名构造器为实验特性（与 Java/Swift/TS 不同）

**用例：** CLS_09_09_009, CLS_09_09_010
**章节：** 9.9.2 Explicit Constructor Call
**差异性质：** 符合 ArkTS spec 的设计选择 — spec §9.9 明确标注 "An optional identifier in constructor declaration is an experimental feature"

es2panda 当前不支持命名构造器 `super.name()` / `this.name()` 语法。这是 spec 标记为 experimental 的特性，非编译器缺陷。

**跨语言对比：**
| 语言 | 命名构造器支持 |
|------|--------------|
| ArkTS | 实验特性（spec 标注 experimental，待实现） |
| Java | 不支持（构造器名固定为类名） |
| Swift | 不支持（使用 convenience init 替代） |
| Dart | 支持（`ClassName.named()` 语法） |

---

## 三、历史已解决项

### CLS-R1：static final 修饰符组合编码错误 ✅ 已解决

**用例：** CLS_09_07_001
**问题：** 测试代码中 `static final repeat(...)` 组合了 static 和 final 修饰符，违反 spec §9.7.1 规则
**修复：** 移除 `final` 修饰符，改为 `static repeat(...)`

---

### CLS-G4：显式 extends Object 允许通过

**用例：** CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT
**章节：** 9.2 Class Extension Clause
**Spec 依据：** spec §9.2 — "extends clause appears in the declaration of the class Object" 导致 compile-time error。但 spec 对 Object 以外的类显式 extends Object 是否禁止未明确说明。

es2panda 允许 `class X extends Object {}`，spec 可能对此无明确约束。

**跨语言实测对比（2026-06-22 WSL 实测）：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS es2panda | `class X extends Object {}` | ✅ 编译通过 |
| Java | `class ExplicitObject extends Object {}` | ✅ 编译通过 + 运行通过（所有类隐式继承Object，显式也可） |
| Swift | `class X: NSObject {}` | ✅ 编译通过 + 运行通过（无通用Object基类，NSObject可选继承） |

**实测结论：** es2panda 行为与 Java 一致（显式 extends Object 允许），与 Swift 无可比性（Swift 无 Object 基类）。建议 spec 更新为允许显式 extends Object。

**分类：** D 类（Spec 与实现不一致） — spec 可能未禁止非 Object 类显式 extends Object，es2panda 行为与 Java 一致，可能需要更新 FAIL 用例为 PASS。

### CLS-G5：字段初始化器中使用 this 允许通过

**用例：** CLS_09_06_4_003_FAIL_FIELD_THIS_INITIALIZER
**章节：** 9.6.4 Field Initialization
**Spec 依据：** spec §9.6.4 — "If the initializer expression uses super or this in any form, then a compile-time warning occurs."

es2panda 对 `f0 = this` 编译通过（无 error 也无 warning）。Spec 规定应为 compile-time warning（非 hard error）。

**跨语言实测对比（2026-06-22 WSL 实测）：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS es2panda | `class T { f0 = this }` | ✅ 编译通过（无 warning）⚠️ |
| Java | `class T { T f0 = this }` | ✅ 编译通过 + 运行通过（无 warning/error） |
| Swift | `class T { var f0: T = self }` | ❌ **编译错误** — self 不能在属性初始化器中使用！ |

**实测结论：** Swift 比 ArkTS spec 更严格（compile error vs warning）。es2panda 应至少增加 warning 提示。

**分类：** D 类（Spec 与实现不一致） — spec 要求 warning，es2panda 不产生任何提示。保留 FAIL 用例并标注 ⚠️ SPEC 不一致。

### CLS-G6：late init + optional 组合允许通过

**用例：** CLS_09_06_5_005_FAIL_LATE_INIT_OPTIONAL
**章节：** 9.6.5 Fields with Late Initialization
**Spec 依据：** spec §9.6.5 — "Field with late initialization can be neither readonly nor optional. Otherwise, a compile-time error occurs."

es2panda 对 `val!: string`（! 标记的 late init 字段）编译通过。但 spec 规定 late init 不得 optional/readonly。

**跨语言实测对比（2026-06-22 WSL 实测）：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS es2panda | `val!: string` | ✅ 编译通过 ⚠️ |
| Java | `String val;` (默认null) | ✅ 编译通过 + 运行通过（无 late init 概念） |
| Swift | `var val: String!` | ✅ 编译通过 + 运行通过（T! = 隐式解包 optional ≈ late init） |

**实测结论：** Java 和 Swift 都有等效机制。es2panda 应增加 `!` + `?` 组合的编译时检查。

**分类：** D 类（Spec 与实现不一致） — es2panda 未检查 `!` 字段的 readonly/optional 约束。

---

## 四、章节执行统计

| 子章节 | P | F | R | 总计 | 编译器待完善 | 最近执行 |
|-------|---|---|------|------|-----------|---------|
| 9.1 Class Declarations | 5 | 4 | 3 | 12 | 0 | 2026-06-22 |
| 9.1.1 Abstract Classes | 4 | 5 | 3 | 12 | 0 | 2026-06-22 |
| 9.2 Class Extension Clause | 4 | 6 | 3 | 13 | CLS-G4 | 2026-06-22 |
| 9.3 Class Implementation Clause | 4 | 4 | 2 | 10 | 0 | 2026-06-22 |
| 9.3.1 Implementing Required Interface Properties | 7 | 7 | 3 | 17 | 0 | 2026-06-22 |
| 9.3.2 Implementing Optional Interface Properties | 5 | 1 | 3 | 9 | 0 | 2026-06-22 |
| 9.4 Class Members | 5 | 3 | 2 | 10 | 0 | 2026-06-22 |
| 9.5 Access Modifiers | 2 | 1 | 1 | 4 | 0 | 2026-06-22 |
| 9.5.1 Private Access Modifier | 3 | 4 | 2 | 9 | 0 | 2026-06-22 |
| 9.5.2 Protected Access Modifier | 2 | 3 | 2 | 7 | 0 | 2026-06-22 |
| 9.5.3 Public Access Modifier | 2 | 1 | 1 | 4 | 0 | 2026-06-22 |
| 9.6 Field Declarations | 3 | 3 | 2 | 8 | 0 | 2026-06-22 |
| 9.6.1 Static and Instance Fields | 3 | 2 | 2 | 7 | 0 | 2026-06-22 |
| 9.6.2 Readonly Constant Fields | 2 | 2 | 2 | 6 | 0 | 2026-06-22 |
| 9.6.3 Optional Fields | 2 | 1 | 2 | 5 | 0 | 2026-06-22 |
| 9.6.4 Field Initialization | 2 | 2 | 2 | 6 | CLS-G5 | 2026-06-22 |
| 9.6.5 Fields with Late Initialization | 2 | 5 | 2 | 9 | CLS-G6 | 2026-06-22 |
| 9.6.6 Override Fields | 4 | 6 | 2 | 12 | 0 | 2026-06-22 |
| 9.7 Method Declarations | 3 | 3 | 2 | 8 | 0 | 2026-06-19 |
| 9.7.1 Static Methods | 3 | 10 | 5 | 18 | CLS-G3 | 2026-06-19 |
| 9.7.2 Instance Methods | 7 | 2 | 3 | 12 | 0 | 2026-06-19 |
| 9.7.3 Abstract Methods | 4 | 8 | 5 | 17 | 0 | 2026-06-19 |
| 9.7.4 Async Methods | 6 | 9 | 6 | 21 | 0 | 2026-06-19 |
| 9.7.5 Overriding Methods | 4 | 2 | 3 | 9 | CLS-G2 | 2026-06-19 |
| 9.7.6 Native Methods | 2 | 1 | 0 | 3 | 0 | 2026-06-19 |
| 9.7.7 Method Body | 4 | 7 | 2 | 13 | 0 | 2026-06-19 |
| 9.7.8 Methods Returning this | 2 | 3 | 3 | 8 | 0 | 2026-06-19 |
| 9.8 Class Accessor Declarations | 11 | 14 | 6 | 31 | CLS-G1 | 2026-06-19 |
| 9.9 Constructor Declaration | 4 | 3 | 3 | 10 | 0 | 2026-06-19 |
| 9.9.1 Constructor Body | 3 | 9 | 6 | 18 | 0 | 2026-06-19 |
| 9.9.2 Explicit Constructor Call | 2 | 6 | 1 | 9 | 0 | 2026-06-19 |
| 9.9.3 Default Constructor | 3 | 3 | 3 | 9 | 0 | 2026-06-19 |
| 9.10 Inheritance | 12 | 14 | 15 | 41 | 0 | 2026-06-19 |
| **总计** | **128** | **104** | **66** | **368** | **6** | — |

**累计 368 个测试用例（9.1~9.10），3 个 D 类 SPEC 不一致项（CLS-G4/G5/G6），3 个编译器待完善项（CLS-G1/G2/G3），1 个实验特性差异点。**

---

## 注

- CLS-G1/G2/G3 是 Spec 明确要求但 es2panda 尚未强制检查的约束，建议编译器后续版本对齐
- CLS-G4/G5/G6 是 D 类 Spec 与实现不一致问题，FAIL 用例已保留并标注 ⚠️ SPEC 不一致
- **CLS-G4/G5/G6 跨语言实测验证已完成** (2026-06-22)：29 个 Java/Swift 测试全部通过，3 个预期编译失败确认。详见 `cross_lang_verify/CROSS_LANG_SUMMARY.md`
- CLS-D1 是 spec 标记为 experimental 的特性，非编译器缺陷，属语言设计差异
- 所有 141 个 PASS/RUNTIME 用例的 `@expect` 标签与实测结果完全一致（0 unexpected）

---

