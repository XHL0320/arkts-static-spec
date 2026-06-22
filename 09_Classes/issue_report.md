# 09 类 - ArkTS与Java/Swift/TS行为差异及规范一致性报告

记录 09 类（Classes）章节 §9.7-9.10 子章节执行用例时发现的**ArkTS与业界静态语言行为差异**及**Spec与实现一致性**情况。

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

## 四、章节执行统计

| 子章节 | P | F | R | 总计 | 编译器待完善 | 最近执行 |
|-------|---|---|------|------|-----------|---------|
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
| **总计** | **70** | **94** | **63** | **227** | **3** | — |

**累计 227 个测试用例（70P+94F+63R），全部编译运行通过，3 个编译器实现待完善项，1 个实验特性差异点。**

---

## 注

- CLS-G1/G2/G3 是 Spec 明确要求但 es2panda 尚未强制检查的约束，建议编译器后续版本对齐
- CLS-D1 是 spec 标记为 experimental 的特性，非编译器缺陷，属语言设计差异
- 所有 227 个测试用例的 `@expect` 标签与实测结果完全一致（0 unexpected）
