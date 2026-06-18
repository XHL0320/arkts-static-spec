# 8.8 for 语句 - ArkTS 设计问题发现报告

**报告日期：** 2026-06-18
**测试用例数：** 9（5 compile-pass + 2 compile-fail + 2 runtime）
**目的：** 通过用例执行（编译期 + 真实运行时）+ 跨语言对比，识别 ArkTS for 语句设计

---

## 一、本章节首次发现的设计问题

No design issues identified. All behavior matches ArkTS spec 8.8.

---

## 二、本章节验证的 spec 一致性

| 验证点 | 用例 | 状态 |
|-------|------|------|
| 基础 for 循环：forInit 声明新变量 + 显式类型 | 001, 008 | OK |
| forInit 类型推导（let i = 0） | 002 | OK |
| 使用已存在变量作为循环索引（forInit 为空） | 003, 009 | OK |
| forInit 和 forUpdate 均为空 | 004 | OK |
| forContinue 为空（无终止条件，靠 break 退出） | 005 | OK |
| forContinue 非 boolean 类型编译拒绝 | 006 | OK |
| forInit 声明的变量循环外不可访问 | 007 | OK |

---

## 三、值得关注的设计观察

### 观察 A：forContinue 非 boolean 类型编译拒绝的严格性

**spec §8.8 规则：** "forContinue expression type must be boolean (or Extended Conditional Expressions). Otherwise compile-time error."

**用例：** STM_08_08_006_FAIL_NON_BOOLEAN_CONDITION

```typescript
for (let i = 0; i; i++) {   // i 为 int 而非 boolean
    sum = sum + i
}
```

**对比：**
| 语言 | 非 boolean 条件行为 |
|------|-------------------|
| ArkTS | **编译错误** |
| Java | 编译错误（`cannot convert from int to boolean`）|
| Swift | 编译错误（`Type 'Int' cannot be used as a boolean`）|

**评价：** 三者行为一致，均为编译时错误，无类型隐式转换为 boolean。

### 观察 B：循环作用域的明确性

**spec §8.8 规则：** "Variable declared in forInit has loop scope."

**用例：** STM_08_08_007_FAIL_VAR_OUT_OF_SCOPE

```typescript
for (let loopIdx: int = 0; loopIdx < 5; loopIdx++) { }
let after: int = loopIdx;   // 编译错误：loopIdx 不在作用域内
```

**对比：**
| 语言 | forInit 变量作用域 |
|------|------------------|
| ArkTS | 仅限于 for 循环体 |
| Java | 仅限于 for 循环体 |
| Swift | 仅限于 for 循环体（Swift `for-in` 中的循环变量）|

**评价：** 三者行为一致，for 循环中声明的变量均在循环体结束后离开作用域。

---

## 四、本章节累积重现的已知问题

**无重现。** 8.8 章节首次执行 100% 通过，未触发已知设计问题。

---

## 五、严重性等级总览

| 严重性 | 数量 | 问题列表 |
|-------|------|---------|
| HIGH | 0 | - |
| MEDIUM | 0 | - |
| LOW | 0 | - |
| 设计观察（非问题）| 2 | A、B |

---

## 六、8.8 章节核心结论

| 维度 | 评价 |
|------|------|
| 与 spec 一致性 | 一致（首次 100% 通过）|
| 设计严密性 | 与 Java/Swift 一致，无缺口 |
| for 循环设计 | 标准 C 风格三部分循环，行为可预测 |

---

## 七、累积发现汇总（含已完成的 Statements 章节）

| 严重性 | 总数 | 来源章节 |
|-------|------|---------|
| HIGH | 0 | - |
| MEDIUM | 0 | - |
| LOW | 0 | - |
| 设计观察 | 2 | 8.8 |

---

## 八、改进建议

No design issues identified. All behavior matches ArkTS spec 8.8.
