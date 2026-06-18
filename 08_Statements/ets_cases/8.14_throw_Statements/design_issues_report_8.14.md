# 8.14 throw 语句 - ArkTS 设计问题发现报告

**报告日期：** 2026-06-18
**测试用例数：** 9（4 compile-pass + 3 compile-fail + 2 runtime）
**目的：** 通过用例执行（编译期 + 运行时）+ 跨语言对比，识别 ArkTS throw 语句作为静态语言的设计问题。

---

## 一、新发现的设计问题（基于规范分析）

本批次未发现设计问题。所有行为均与 ArkTS 规范 8.14 一致。

---

## 二、已验证 ArkTS 行为（与规范一致）

| 用例 ID | 行为描述 | 状态 |
|-------|------|------|
| STM_08_14_001 | 直接抛出 Error 实例 `throw new Error()` | ✅ 一致 |
| STM_08_14_002 | 通过 Error 类型变量抛出 `throw e` | ✅ 一致 |
| STM_08_14_003 | 抛出自定义 Error 子类（编译通过） | ✅ 一致 |
| STM_08_14_004 | 抛出标准 Error 子类 RangeError | ✅ 一致 |
| STM_08_14_005 | 抛出 string 类型（编译拒绝） | ✅ 一致 |
| STM_08_14_006 | 抛出 null（编译拒绝） | ✅ 一致 |
| STM_08_14_007 | 抛出 undefined（编译拒绝） | ✅ 一致 |
| STM_08_14_008 | try-catch 正常捕获 throw | ✅ 一致 |
| STM_08_14_009 | catch 中 rethrow 重新传播 | ✅ 一致 |

---

## 三、严重性等级总览

| 严重性 | 数量 | 涉及用例 |
|-------|------|---------|
| ⭐ HIGH | 0 | - |
| ⭐ MEDIUM | 0 | - |
| ⭐ LOW | 0 | - |
| 设计观察（非问题） | 2 | A, B |

---

## 四、跨语言对比结论

### 观察 A：严格限定 throw 类型为 Error 及其子类

ArkTS 要求 `throw` 表达式类型必须可赋值给 `Error`，这与 Java 和 Swift 有显著差异：

| 语言 | throw 类型约束 | 备注 |
|------|---------------|------|
| **ArkTS** | 仅允许 `Error` 及其子类 | 明确禁止 `null` 和 `undefined` |
| **Java** | 仅允许 `Throwable` 及其子类（`Exception`, `Error`, `RuntimeException` 等） | 不允许 `throw` 任意对象 |
| **Swift** | 任何符合 `Error` 协议的类型均可抛出 | 通常为 `enum` 或 `struct` |

**评价：** 这是合理的安全设计，缩小了 throw 的表达范围，但增强了类型安全性。与 Java 的受检异常设计不同，ArkTS 不区分受检/非受检异常。

### 观察 B：null 和 undefined 的显式拒绝

ArkTS 在规范中明确禁止 `throw null` 和 `throw undefined`，并产生编译时错误。

| 语言 | `throw null` / `throw undefined` | 检测时机 |
|------|----------------------------------|----------|
| **ArkTS** | ❌ 编译拒绝 | 编译期 |
| **Java** | `throw null` 允许（运行时抛 `NullPointerException`） | 运行时 |
| **Swift** | ❌ 不允许 `throw nil`（`Error` 协议要求具体值） | 编译期 |

**评价：** ArkTS 在编译期就拦截了 `null`/`undefined` 抛出，优于 Java 的运行时才暴露问题。

---

## 五、改进方向建议

| 维度 | 评价 |
|------|------|
| 与规范一致性 | 完全一致（首次 100% 通过） |
| 设计严密性 | 良好 — 编译期拦截 null/undefined 抛出 |
| Java/Swift 对比 | ArkTS 约束介于 Java（Throwable 层级）与 Swift（Error 协议）之间 |

### 短期建议
- 无需改动。当前行为与规范完全一致。

### 中期建议
- 可考虑补充更多 Error 子类（如 `TypeError`、`SyntaxError` 等）的覆盖测试，验证子类继承链上的 throw 行为是否始终受编译期约束。

### 长期建议
- 关注 ArkTS 未来是否会引入类似 Java 受检异常的机制（checked exceptions），如需引入则应在规范中明确 throw 表达式的类型传播规则。
