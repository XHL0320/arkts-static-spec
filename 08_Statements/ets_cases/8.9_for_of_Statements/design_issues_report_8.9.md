# 8.9 for-of 语句 - ArkTS 设计问题发现报告

**报告日期：** 2026-06-18
**测试用例数：** 12（5 个编译通过 + 4 个编译失败 + 3 个运行时）
**目的：** 通过用例执行（编译期 + 运行时）+ 跨语言对比，识别 ArkTS for-of 语句的设计问题。

---

## 一、新发现的设计问题（基于规范分析）

**未发现设计问题。** 所有行为均符合 ArkTS 规范第 8.9 节。

12 个测试用例全部首次执行通过，无编译器异常或反直觉的语义行为。for-of 语句设计与 Java、Swift 中成熟的模式保持一致。

### 设计观察（非问题）

#### 观察 A：for-of 中 const 阻止重新赋值 —— 与 Swift 类似，比 Java 更严格 ⭐

**规范行为：** `for (const x of arr)` 在循环体内禁止 `x = value`（编译时错误）。这与 Swift 的默认行为一致，Swift 中循环变量隐式为 `let` 常量。而 Java 的增强 for 循环变量始终可修改。

**用例（STM_08_09_008）：**
```arkts
for (const x of [1, 2, 3]) {
    x = 42;  // compile-time error
}
```

**Swift 等价写法：**
```swift
for x in [1, 2, 3] {
    x = 42  // compile-time error: x is a let constant
}
```

**Java 等价写法：**
```java
// Must explicitly use a mutable variable, or create a copy inside the body
for (int x : new int[]{1, 2, 3}) {
    x = 42;  // allowed, but only affects local copy
}
```

**评价：** 这是一个正面的设计选择。阻止意外重新赋值循环变量符合现代最佳实践（防御性编程）。`let` 替代方案在需要修改时提供了灵活性。

#### 观察 B：外部变量模式比 Swift 的 inout 式捕获更受限

**规范行为：** 可以在 forVariable 位置使用外部声明的变量，但元素类型必须可赋值给该变量类型。这是一个严格的编译时检查。

**用例（STM_08_09_004）：**
```arkts
let elem: int = 0;
for (elem of arr) {  // arr: Array<int>, int assignable to int: OK
    // elem updated each iteration
}
```

**Java 等价写法：**
```java
int elem = 0;
for (int x : arr) {
    elem = x;  // must manually assign
}
```

**Swift 等价写法：**
```swift
var elem: Int = 0
for x in arr {
    elem = x  // must manually assign
}
```

**评价：** ArkTS 的外部变量模式比 Java/Swift 更直接 —— 它在每次迭代时将循环变量直接赋值给外部变量，省去了手动重新赋值的步骤。这是一个无歧义的便利特性。

#### 观察 C：for-of 不支持解构模式

**规范限制：** ArkTS 的 for-of 仅支持单个变量（`forVariable`），不支持解构模式。Swift 支持 `for (key, value) in dictionary`，Java 在增强 for 循环中也支持类型模式（通过 record/固定大小数组，可以遍历条目）。

**评价：** 这仅仅是因为 ArkTS 的范围限制 —— 解构是一个独立的语言特性。单变量 for-of 对 ArkTS 支持的迭代类型（Array\<T\>、FixedArray\<T\>、string、Iterable\<T\>）来说已经足够。这不是设计问题，而是符合 ArkTS 保持特性最小化设计哲学的范围限制。

---

## 二、已验证 ArkTS 行为（与规范一致）

| 验证点 | 用例 | 状态 |
|--------|------|------|
| for-of 遍历 Array\<T\>，类型推断为 T | 001、010 | ✅ 确认 |
| for-of 遍历 string，类型推断为 string | 002、011 | ✅ 确认 |
| for-of 遍历 FixedArray\<T\>，类型推断为 T | 005 | ✅ 确认 |
| let 声明的变量在循环体内可修改 | 003 | ✅ 确认 |
| 外部声明变量且类型可赋值 | 004、012 | ✅ 确认 |
| 不可迭代类型被拒绝（编译时错误） | 006 | ✅ 确认 |
| 不可迭代的自定义类被拒绝（编译时错误） | 009 | ✅ 确认 |
| 元素类型与外部变量类型不匹配被拒绝 | 007 | ✅ 确认 |
| const 变量在循环体内赋值被拒绝 | 008 | ✅ 确认 |

---

## 三、严重性等级总览

| 严重性 | 数量 | 涉及问题 |
|--------|------|----------|
| ⭐ HIGH | 0 | - |
| ⭐ MEDIUM | 0 | - |
| ⭐ LOW | 0 | - |
| 设计观察（非问题） | 3 | A、B、C |

---

## 四、跨语言对比结论

| 维度 | 评价 |
|------|------|
| 规范一致性 | 完美（100% 首次通过） |
| 设计合理性 | 设计良好，与现代语言一致 |
| 跨语言对比 | ArkTS = Swift > Java（const 安全性方面） |
| 类型安全 | 强 —— 不可迭代类型在编译时被拒绝 |

**已知问题复现：** 无。第 8.9 节用例 100% 首次执行通过，未触发任何问题。

---

## 五、改进方向建议

无。ArkTS 第 8.9 节 for-of 语句设计扎实 —— 提供了清晰的语义、强类型安全和合理的默认行为（const 作为安全默认，需要修改时使用 let）。不建议任何更改。
