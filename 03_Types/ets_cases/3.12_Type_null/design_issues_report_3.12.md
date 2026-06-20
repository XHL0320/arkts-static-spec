# 3.12 Type null - 设计问题报告

**测试用例：** 27
**一次通过率：** 100%

## 一、本章节首次发现的设计问题

**无新发现。** 一次通过率 100%。

## 二、验证 spec 一致性

以下 spec 规则均通过用例验证：

- `null` 字面量是 `null` 类型的唯一值 ✅
- `null` 类型用于 TS 兼容性，推荐使用 `undefined` ✅（注：仅 spec 注释，不影响编译行为）
- `null` 在联合类型 `T | null` 中合法 ✅
- `null | undefined` 三重联合类型合法 ✅
- `null` 不兼容 `Object`（nullish 类型不可赋值给 Object）✅
- `null` 类型变量只能持有值 `null` ✅
- `null` 与 `undefined` 是不同类型 ✅
- `null` 可作为 `switch` case 匹配值 ✅
- `Any` 可接受 `null` 值 ✅
- `NonNullable<null>` = `never` ⚠️（未单独用例验证，因为 `never` 类型已在 3.10 章节覆盖）
- 函数可返回 `null` ✅
- 函数参数可接受 `T | null` ✅
- 类字段可声明为 `T | null` ✅
- 数组元素可为 `T | null` ✅

## 三、与跨语言对比发现的设计洞察

### 3.1 nullish 不兼容 Object（ArkTS 独有）

**规则：** `T | null` 不可赋值给 `Object`，这是 compile-time error。

| 语言 | `Object o = nullableRef;` | 设计 |
|------|--------------------------|------|
| ArkTS | ❌ 编译失败 | nullish 安全 |
| Java | ✅ 合法（null 是 Object 兼容的） | 无编译期保护 |
| Swift | ❌ 编译失败（需解包 Optional） | null 安全 |

**评估：** ArkTS 的设计更严格，在编译期消除了 NPE 风险。这是合理的语言设计决策，与 Swift 哲学一致。

### 3.2 `null` 类型仅持有 `null` 值

**规则：** `let x: null = 42` 是 compile-time error。

ArkTS 和 Swift 都不允许将非 null 值赋给 nullish-only 类型。Java 的引用类型隐式 nullable 没有等价概念。

### 3.3 `case null:` 在 switch 中

**规则：** ArkTS 支持 `case null:` 在 switch 语句中。

| 语言 | null/nil 在 switch 中 | 行为 |
|------|----------------------|------|
| ArkTS | `case null:` | ✅ 合法匹配 |
| Java | `switch(nullString)` | ❌ 抛 NullPointerException |
| Swift | `case nil:` | ✅ 合法匹配 |

ArkTS 与 Swift 语义一致，Java 在此处存在运行时安全风险。

## 四、严重性

| 严重性 | 数量 |
|-------|------|
| HIGH | 0 |
| MEDIUM | 0 |
| LOW | 0 |