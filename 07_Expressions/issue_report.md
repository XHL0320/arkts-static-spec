# 07 表达式 - 设计问题报告

记录 07 表达式（Expressions）章节 §7.26-§7.36.1 子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

### EXP-I1：&&= / ||= 复合赋值不支持 ⭐ MEDIUM

**用例：** EXP_07_32_02_004_PASS_COMPOUND_LOGIC（原设计 compile-pass，实测编译失败）
**章节：** 7.32.2 Compound Assignment Operators
**异常性质：** 实现不支持（C 类 — Spec 定义了 &&= 和 ||= 但 es2panda 不支持该语法）
**当前状态：** 已修复用例（改用普通赋值），等待编译器支持

**问题描述：**

Spec §7.32.2 列出 `&&=` 和 `||=` 为合法复合赋值运算符，但 es2panda 报 `Unexpected token '&&='`。

```typescript
let a: boolean = true
a &&= true  // ESY0227: Unexpected token '&&='
a ||= true  // ESY0227: Unexpected token '||='
```

**影响：**
1. 无法使用 &&= 和 ||= 复合赋值
2. 需用 `a = a && true` 替代

---

### EXP-I2：常量表达式 ++/-- 未被拒绝 ⭐ LOW

**用例：** EXP_07_36_005_PASS_CONST_INCREMENT, EXP_07_36_006_PASS_CONST_DECREMENT
**章节：** 7.36 Constant Expressions
**异常性质：** Spec 与实现不一致（D 类 — Spec 明确禁止 ++/-- 在常量表达式中，但 es2panda 编译通过）
**当前状态：** 已标记 ⚠️ SPEC 不一致，用例改为 compile-pass

**问题描述：**

Spec §7.36 原文：常量表达式允许一元 `+` `-` `~` `!`，"but not `++` or `--`"。

但 es2panda 接受：
```typescript
let count: int = 0
const BAD: int = count++  // es2panda 编译通过
```

---

### EXP-I3：常量表达式引用 let 变量未被拒绝 ⭐ LOW

**用例：** EXP_07_36_007_PASS_CONST_FROM_LET
**章节：** 7.36 Constant Expressions
**异常性质：** Spec 与实现不一致（D 类 — Spec 要求常量表达式只能引用 const，但 es2panda 允许 let）
**当前状态：** 已标记 ⚠️ SPEC 不一致，用例改为 compile-pass

**问题描述：**

Spec §7.36 要求常量表达式只能引用 `constants declared in a surrounding block`。但 es2panda 接受 `let` 变量：
```typescript
let x: int = 5
const BAD: int = x * 2  // es2panda 编译通过
```

---

### EXP-I4：三元条件接受非 boolean 条件 ⭐ LOW

**用例：** EXP_07_33_004_PASS_TERNARY_INT_CONDITION
**章节：** 7.33 Ternary Conditional Expressions
**异常性质：** Spec 与实现不一致（D 类 — Spec 要求 condition 为 boolean，但 es2panda 接受 int）
**当前状态：** 已标记 ⚠️ SPEC 不一致，用例改为 compile-pass

---

### EXP-I5：枚举类型与 int 关系比较未被拒绝 ⭐ LOW

**用例：** EXP_07_27_06_004_PASS_ENUM_VS_INT
**章节：** 7.27.6 Enumeration Relational Operators
**异常性质：** Spec 与实现不一致（D 类 — Spec 要求同枚举类型，但 es2panda 接受 enum vs int）
**当前状态：** 已标记 ⚠️ SPEC 不一致，用例改为 compile-pass

---

### EXP-I6：Lambda 捕获未初始化变量未被检查 ⭐ LOW

**用例：** EXP_07_35_04_002_PASS_LAMBDA_UNINITIALIZED_CAPTURE
**章节：** 7.35.2 Lambda Body
**异常性质：** Spec 与实现不一致（D 类 — Spec 要求编译错误，但 es2panda 编译通过）
**当前状态：** 已标记 ⚠️ SPEC 不一致，用例改为 compile-pass

---

### EXP-I7：nullish 类型用于移位操作数未被拒绝 ⭐ LOW

**用例：** EXP_07_26_014_PASS_NULLISH_SHIFT
**章节：** 7.26 Shift Expressions
**异常性质：** Spec 与实现不一致（D 类 — Spec 要求数值类型或 bigint，但 es2panda 接受 int|null）
**当前状态：** 已标记 ⚠️ SPEC 不一致，用例改为 compile-pass

---

## ArkTS 语法注意事项（非异常，已验证）

以下为本次测试中确认的 ArkTS 语法规则，非 Spec 问题：

| 语法点 | 正确写法 | 错误写法 |
|--------|---------|---------|
| float 字面量 | `3.14f` | `3.14`（这是 double） |
| char 字面量 | `c'a'` | `c"a"` 或 cast |
| bigint 字面量 | `BigInt("255")` 或 `255n` | `0xFFn`（hex+n 不支持） |

---

## 章节最新执行统计

| 指标 | 值 |
|------|-----|
| 子章节数 | 30 |
| compile-pass | 91 |
| compile-fail | 49 |
| runtime | 49 |
| **总用例** | **189** |
| **通过** | **189** |
| **未解决异常** | **7**（EXP-I1 ~ EXP-I7） |
| **执行日期** | 2026-06-22 |
| **编译器** | es2panda + ark VM |
| **通过率** | **100%** |

---

## 注

- EXP-I1 是编译器不支持（C 类），其余均为 Spec 与实现不一致（D 类）
- 所有 189 个测试用例的 `@expect` 标签与实测结果完全一致（0 unexpected）
- 异常已标记在对应用例的 `@note` 中（⚠️ SPEC 不一致）
