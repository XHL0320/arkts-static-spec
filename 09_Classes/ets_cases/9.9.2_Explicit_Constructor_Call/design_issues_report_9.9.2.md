# 9.9.2 显式构造器调用 - 设计问题报告

**测试用例：** 9

## 一、本章节首次发现的设计问题

### 问题 I3：命名构造器为实验特性，尚无稳定支持 ⭐ LOW

**用例：** CLS_09_09_009_FAIL_SUPER_NAMED_CALL、CLS_09_09_010_FAIL_THIS_NAMED_CALL

**描述：**

specc 9.9.2 中提及 `super.name(args)` 和 `this.name(args)` 形式的命名构造器调用，但命名构造器（named constructor）在 ArkTS 中尚处于实验阶段，当前 es2panda 编译器不支持命名构造器的声明与调用。

**实测行为：**

尝试调用父类命名构造器（`super.init(x)`）和委托同类命名构造器（`this.init(0, 0)`）时，编译器均按预期拒绝编译，报告命名构造器相关错误：

```typescript
// 009: 调用父类命名构造器 — 编译失败
class Base {
  value: int
  constructor init(x: int) { this.value = x }
}
class Derived extends Base {
  constructor fromBase(x: int) {
    super.init(x)   // ❌ 编译失败：命名构造器不支持
  }
}

// 010: 同类命名构造器委托 — 编译失败
class Data {
  x: int; y: int
  constructor init(x: int, y: int) { this.x = x; this.y = y }
  constructor origin() {
    this.init(0, 0)   // ❌ 编译失败：命名构造器不支持
  }
}
```

**异常性质：** C 类（实验特性尚未稳定化）

**影响：** 使用命名构造器的代码无法通过编译，开发者只能使用无命名的主构造器（`constructor()`）和次级构造器委托 `this(args)`。此外，由于 spec 描述了命名构造器的语义但编译器不支持，存在 spec 与实现之间的阶段性差距。

**建议：**
1. 明确在 spec 中标注命名构造器为实验特性，并说明暂不支持
2. 若计划未来支持，建议给出路线图时间节点
3. 当前阶段建议测试用例保持 compile-fail 预期，待特性稳定后改为 compile-pass

---

## 二、本章节验证 spec 一致性

| 验证点 | 用例 | 状态 |
|-------|------|------|
| `super(args)` 调用父类有参构造器 | 006 | ✅ |
| `this(args)` 委托同类主构造器 | 008 | ✅ |
| 构造器参数中引用 `this` 拒绝 | 007 | ✅ |
| `super.name(args)` 命名构造器调用（实验特性） | 009 | ✅ compile-fail（预期行为） |
| `this.name(args)` 命名构造器委托（实验特性） | 010 | ✅ compile-fail（预期行为） |
| 显式构造器调用用作表达式拒绝 | 011 | ✅ |
| 构造器参数中引用实例方法拒绝 | 012, 024 | ✅ |
| 继承链 `super()` 调用及字段初始化（运行时） | 047 | ✅ |

---

## 三、严重性等级总览

| 严重性 | 数量 | 问题列表 |
|-------|------|---------|
| HIGH | 0 | - |
| MEDIUM | 0 | - |
| LOW | 1 | 问题 I3：命名构造器为实验特性，尚无稳定支持 |

---

## 四、累积发现汇总（09_Classes 章节）

| 严重性 | 总数 |
|-------|------|
| HIGH | 0 |
| MEDIUM | 0 |
| LOW | 1 |
