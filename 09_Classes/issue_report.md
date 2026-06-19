# 09 Classes Issue Report

记录 09 Classes 章节 §9.7-9.10 子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

### CLS-I1：getter/setter 修饰符不匹配 — Spec 要求报错但 es2panda 未强制 ⭐⭐ MEDIUM

**用例：** CLS_09_08_008（原设计 compile-fail，实测编译通过）
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

## 历史已解决异常

### CLS-R1：static final 修饰符组合编码错误 ✅ 已解决

**用例：** CLS_09_07_001_PASS_STATIC_METHOD_BASIC
**问题：** 测试代码中 `static final repeat(...)` 组合了 static 和 final 修饰符，违反 spec §9.7.1 规则
**修复：** 移除 `final` 修饰符，改为 `static repeat(...)`

---

## 章节最新执行统计

| 子章节 | 用例总数 | 通过 | 失败 | 未解决异常 | 最近执行 |
|-------|---------|------|------|-----------|---------|
| 9.7.1 Static Methods | 3 | 3 | 0 | 0 | 2026-06-19 |
| 9.7.2 Instance Methods | 1 | 1 | 0 | 0 | 2026-06-19 |
| 9.7.3 Abstract Methods | 2 | 2 | 0 | 0 | 2026-06-19 |
| 9.7.4 Async Methods | 1 | 1 | 0 | 0 | 2026-06-19 |
| 9.7.5 Overriding Methods | 2 | 2 | 0 | 0 | 2026-06-19 |
| 9.7.6 Native Methods | 1 | 1 | 0 | 0 | 2026-06-19 |
| 9.7.7 Method Body | 2 | 2 | 0 | 0 | 2026-06-19 |
| 9.7.8 Methods Returning this | 2 | 2 | 0 | 0 | 2026-06-19 |
| 9.8 Class Accessor Declarations | 11 | 11 | 0 | CLS-I1 | 2026-06-19 |
| 9.10 Inheritance | 12 | 12 | 0 | 0 | 2026-06-19 |
| **总计** | **37** | **37** | **0** | **1** | — |

**累计 37 个测试用例（§9.7-9.10），全部编译运行通过，1 个未解决异常（spec-implementation mismatch）。**
