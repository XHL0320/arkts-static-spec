# 3.6.3 Floating-Point Types and Operations - ArkTS 设计问题发现报告

**报告日期：** 2026-06-11
**测试用例数：** 20

---

## 一、本章节首次发现的设计问题

**无新发现的设计问题。**

3.6.3 用例首次执行 100% 通过，IEEE 754 行为完全合规。

---

## 二、本章节验证的 spec 一致性

| 验证点 | 用例 | 状态 |
|-------|------|------|
| 浮点类型声明 | 001 | ✅ |
| 关系/相等比较 | 002 | ✅ |
| 一元运算 | 003 | ✅ |
| 算术运算与推升 | 004, 018 | ✅ |
| `**` 幂运算 → double | 005 | ✅ |
| 自增自减 | 006 | ✅ |
| 三元 ?: | 007 | ✅ |
| 字符串拼接 | 008, 020 | ✅ |
| 浮点 → 整数（toInt）| 009, 015 | ✅ |
| 整数 → 浮点 widening | 010 | ✅ |
| 浮点 ↔ boolean 隔离 | 011 | ✅ |
| 字面量超范围拒绝 | 012 | ✅ |
| NaN 性质 | 013 | ✅ |
| Infinity 性质 | 014 | ✅ |
| round-toward-zero | 015 | ✅ |
| 上溢 → ±Inf | 016 | ✅ |
| gradual underflow | 017 | ✅ |
| 类型推升 double 优先 | 018 | ✅ |
| 浮点除零 → ±Inf/NaN | 019 | ✅ |
| 字符串拼接 decimal | 020 | ✅ |

---

## 三、值得关注的设计观察

### 观察 A：`**` 浮点幂运算总是返回 double ⭐ DESIGN

**spec §3.6.3：** "operation implementation for an exponentiation operator with numeric operands always uses the 64-bit floating-point arithmetic. ... The result of the numeric operator is a value of type double."

**评价：** 与 §3.6.2 整数 `**` 返回 bigint 形成对照，二者都设计为避免精度损失。
- 整数 `**` → bigint（避免溢出）
- 浮点 `**` → double（保留精度）

**对比：** Java/Swift 无 `**` 运算符。

### 观察 B：浮点除零不抛异常（与整数不同）

**spec §3.6.3：** "Operators on floating-point numbers ... behave in compliance with the IEEE 754 Standard"

**对比：**
| 类型 | a / 0 | a % 0 |
|------|------|------|
| 整数 (3.6.2) | throw ArithmeticError | throw ArithmeticError |
| 浮点 (3.6.3) | ±Inf 或 NaN | NaN |

---

## 四、本章节累积重现的已知问题

| 问题 | 来源 | 重现用例 |
|------|------|---------|
| `as` 弃用于数值转换（问题 Q）| 3.6.2 | TYP_03_06_03_009 用例使用 `.toInt()` 而非 `as int` |

---

## 五、严重性等级总览

| 严重性 | 数量 | 问题列表 |
|-------|------|---------|
| ⭐⭐⭐ HIGH | 0 | - |
| ⭐⭐ MEDIUM | 0 | - |
| ⭐ LOW | 0 | - |
| 设计观察 | 2 | A、B |

---

## 六、3.6.3 章节核心结论

| 维度 | 评价 |
|------|------|
| IEEE 754 合规 | ⭐⭐⭐⭐⭐ |
| 与 spec 一致性 | ⭐⭐⭐⭐⭐（首次 100%）|
| 运算符完整度 | ⭐⭐⭐⭐⭐（含 `**`）|
| 类型推升合理性 | ⭐⭐⭐⭐⭐ |

3.6.3 是 ArkTS 浮点设计的稳健章节，IEEE 754 完全合规。
