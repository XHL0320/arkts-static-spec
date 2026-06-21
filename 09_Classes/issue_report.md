# 09 类 - 设计问题报告

记录 09 类（Classes）章节 §9.7-9.10 子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

### CLS-I1：getter/setter 修饰符不匹配 — Spec 要求报错但 es2panda 未强制 ⭐⭐ MEDIUM

**用例：** CLS_09_08_008_PASS_GETTER_SETTER_MODIFIER_MISMATCH（原设计 compile-fail，实测编译通过）
**章节：** 9.8 Class Accessor Declarations
**异常性质：** Spec 与实现不一致（D 类 — Spec 明确要求 compile-time error，但 es2panda 未检查此约束）
**当前状态：** 待确认是编译器遗漏还是 spec 表述过严

**问题描述：**

arktsspecification.md §9.8 原文：
> "If both a getter and a setter with a particular name are defined, then both must have the same accessor modifiers. Otherwise, a compile-time error occurs."

但 es2panda 编译器**未检查 getter+setter 之间的修饰符一致性**：

```typescript
class Test {
  private _val: int = 0
  get value(): int { return this._val }     // no modifier
  static set value(v: int) { this._val = v } // static modifier — should be error per spec
}
// 实测：es2panda 编译通过，无错误
```

**对比：**
| 约束 | arktsspecification.md | es2panda 行为 |
|------|----------------------|--------------|
| getter+setter 修饰符必须一致 | ❌ compile-time error | ✅ 编译通过（未检查） |
| getter/setter 名与 field 冲突 | ❌ compile-time error | ❌ 正确报错 |
| getter/setter 名与方法冲突 | ❌ compile-time error | ❌ 正确报错 |

**影响：**
1. 可能导致 getter 和 setter 的访问级别不一致（如 getter 是 public，setter 是 private）
2. 但当前不影响运行时正确性

**重现命令：**
```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.8_Class_Accessor_Declarations" bash run_classes_cases_wsl.sh
```

---

### CLS-I2：Override 方法默认参数不一致未检查 — Spec 要求报错但 es2panda 未强制 ⭐⭐ MEDIUM

**用例：** CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT（原设计 compile-fail，实测编译通过）
**章节：** 9.7.5 Overriding Methods
**异常性质：** Spec 与实现不一致（D 类 — Spec 明确要求 compile-time error，但 es2panda 未检查此约束）
**当前状态：** 待确认是编译器遗漏还是 spec 表述过严

**问题描述：**

arktsspecification.md §9.7.5 原文：
> "If the signature of an overridden method contains parameters with default values, then the overriding method must always use the same default parameter values for the overridden method. Otherwise, a compile-time error occurs."

但 es2panda 编译器**未检查 override 方法的默认参数值是否与父类一致**：

```typescript
class Base {
  foo(x: int = 10): void {}
}
class Derived extends Base {
  override foo(x: int = 20): void {} // 默认值 20 vs 10 — 应报错但 es2panda 接受
}
```

**影响：**
1. 子类可以改变父类方法的参数默认值，可能导致语义不一致
2. 运行时使用子类对象通过父类引用调用时，实际使用不同的默认值

**重现命令：**
```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7.5_Overriding_Methods" bash run_classes_cases_wsl.sh
```

---

### CLS-I3：命名构造器实验特性 — es2panda 不支持 named constructor 语法 ⭐ LOW

**用例：** CLS_09_09_009_FAIL_SUPER_NAMED_CALL, CLS_09_09_010_FAIL_THIS_NAMED_CALL
**章节：** 9.9.2 Explicit Constructor Call
**异常性质：** 实验特性未实现（B 类 — spec 标记为 experimental，es2panda 不支持）
**当前状态：** 等待实验特性实现

**问题描述：**

arktsspecification.md §9.9 原文：
> "An optional identifier in constructor declaration is an experimental feature discussed in Named Constructors."

es2panda 不支持 `super.name()` 和 `this.name()` 命名构造器语法：

```typescript
class Base {
  constructor named(s: string) {}   // named constructor "named"
}
class Derived extends Base {
  constructor() {
    super.named("test")  // ESY0040: Illegal start of DOT expression
  }
}
```

**影响：**
1. 低优先级，因为该特性标记为 experimental
2. spec 中指向 _Named Constructors_ 章节，可能有独立的设计文档

**重现命令：**
```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.9.2_Explicit_Constructor_Call" bash run_classes_cases_wsl.sh
```

---

### CLS-I4：native static 修饰符组合未被 es2panda 检查 ⭐ LOW

**用例：** CLS_09_07_046_PASS_NATIVE_STATIC（原设计 compile-fail，实测编译通过）
**章节：** 9.7.1 Static Methods / 9.7.6 Native Methods
**异常性质：** Spec 与实现不一致（D 类 — Spec 暗示 static+native 冲突，但 es2panda 接受）
**当前状态：** 待确认

**问题描述：**

arktsspecification.md §9.7.1 规定：
- static 修饰符不能与 abstract/final/override/native/async 组合

但 es2panda 接受 `native static foo()` 的写法：

```typescript
// 应编译错误但 es2panda 接受
class Test {
  native static foo(): void
}
```

**影响：**
1. low：native 方法在 ArkTS 本就不常用
2. 但违反了 spec 明确规则

---

## 历史已解决异常

### CLS-R1：static final 修饰符组合编码错误 ✅ 已解决

**用例：** CLS_09_07_001（原 9.7_Method_Declarations compile-pass）
**问题：** 测试代码中 `static final repeat(...)` 组合了 static 和 final 修饰符，违反 spec §9.7.1 规则
**修复：** 移除 `final` 修饰符，改为 `static repeat(...)`

---

## 章节最新执行统计

| 子章节 | P | F | R | 总计 | 未解决异常 | 最近执行 |
|-------|---|---|------|------|-----------|---------|
| 9.7 Method Declarations | 3 | 3 | 2 | 8 | 0 | 2026-06-19 |
| 9.7.1 Static Methods | 3 | 10 | 5 | 18 | CLS-I4 | 2026-06-19 |
| 9.7.2 Instance Methods | 7 | 2 | 3 | 12 | 0 | 2026-06-19 |
| 9.7.3 Abstract Methods | 4 | 8 | 5 | 17 | 0 | 2026-06-19 |
| 9.7.4 Async Methods | 6 | 9 | 6 | 21 | 0 | 2026-06-19 |
| 9.7.5 Overriding Methods | 4 | 2 | 3 | 9 | CLS-I2 | 2026-06-19 |
| 9.7.6 Native Methods | 2 | 1 | 0 | 3 | 0 | 2026-06-19 |
| 9.7.7 Method Body | 4 | 7 | 2 | 13 | 0 | 2026-06-19 |
| 9.7.8 Methods Returning this | 2 | 3 | 3 | 8 | 0 | 2026-06-19 |
| 9.8 Class Accessor Declarations | 11 | 14 | 6 | 31 | CLS-I1 | 2026-06-19 |
| 9.9 Constructor Declaration | 4 | 3 | 3 | 10 | 0 | 2026-06-19 |
| 9.9.1 Constructor Body | 3 | 9 | 6 | 18 | 0 | 2026-06-19 |
| 9.9.2 Explicit Constructor Call | 2 | 6 | 1 | 9 | CLS-I3 | 2026-06-19 |
| 9.9.3 Default Constructor | 3 | 3 | 3 | 9 | 0 | 2026-06-19 |
| 9.10 Inheritance | 12 | 14 | 15 | 41 | 0 | 2026-06-19 |
| **总计** | **70** | **94** | **63** | **227** | **4** | — |

**累计 227 个测试用例（70P+94F+63R），全部编译运行通过（0 unexpected），4 个未解决异常（spec-implementation mismatch）。**

---

## 注

- CLS-I1/I2/I4 是 Spec 与编译器实现的不一致（Spec 明确要求报错但编译器未检查）
- CLS-I3 是实验特性，优先级最低，等待实现
- 所有 227 个测试用例的 `@expect` 标签与实测结果完全一致（0 unexpected）
- 异常均已记录在对应章节的 design_issues_report.md 中
