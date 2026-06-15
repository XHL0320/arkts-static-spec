# 3.6.4 Type boolean - ArkTS vs Java vs Swift

**测试基础：** 15 个用例

## 一、跨语言对比

### 1.1 boolean 类型

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 类型名 | boolean / Boolean | boolean / Boolean | Bool |
| 字面量 | true / false | true / false | true / false |
| 是引用类型 | ✅（Object 子类）| ❌（原始类型）| ❌（struct） |
| `new boolean()` | ✅ → false | ❌（用 Boolean.valueOf） | ✅ Bool() → false |

### 1.2 运算符

| 运算符 | ArkTS | Java | Swift |
|------|-------|------|-------|
| `==` `!=` | ✅ | ✅ | ✅ |
| `!` | ✅ | ✅ | ✅ |
| `&` `\|` `^`（按位）| ✅ | ✅ | ❌（仅 && \|\|）|
| `&&` `\|\|`（短路）| ✅ | ✅ | ✅ |
| 三元 `?:` | ✅ | ✅ | ✅ |
| `+` 字符串拼接 | ✅ | ✅ | ❌（用 \\(b)）|

### 1.3 与数值类型隔离

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| boolean → 数值 | ❌ | ❌ | ❌ |
| 数值 → boolean | ❌ | ❌ | ❌ |

---

## 二、核心结论

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 运算符完整度 | ⭐⭐⭐⭐⭐（含 & \| ^）| ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
| Object 子类型 | ⭐⭐⭐⭐⭐（直接）| ⭐⭐⭐⭐（装箱）| ⭐⭐⭐⭐ |
| 类型隔离 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

### 关键启示

1. **ArkTS = Java**：boolean 作为 Object 子类型，运算符完整
2. **Swift 限制更多**：无 `& | ^` 按位逻辑（仅短路 && ||）
3. **三语言一致**：boolean ↔ 数值完全隔离

---

## 三、对应规范

| 语言 | 规范 |
|------|------|
| ArkTS | §3.6.4 Type boolean |
| Java | JLS §4.2.5 |
| Swift | TSPL: Bool |
