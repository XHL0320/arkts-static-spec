# 7.29.2 Boolean Logical Operators — ArkTS 与 Java/Swift/TS 行为差异及规范一致性报告

## 设计问题及差异清单

### ID-01: Swift 缺少非短路 boolean 逻辑运算符 ⭐

| 字段 | 值 |
|------|-----|
| **复现用例** | 跨语言对比验证 |
| **差异类型** | 符合 ArkTS spec 的语言设计差异 |

**描述**：Swift 对 boolean 只提供短路逻辑运算符 `&&`（AND）、`||`（OR），无 `^` 运算符。ArkTS 和 Java 均提供非短路 `&`、`^`、`|` 运算符。当操作数无副作用时结果相同，有副作用时行为不同。

**跨语言对比**：

| 语言 | boolean & (AND) | boolean ^ (XOR) | boolean \| (OR) |
|------|:---------------:|:----------------:|:---------------:|
| ArkTS | `true & false` → `false`（非短路） | `true ^ false` → `true`（非短路） | `true \| false` → `true`（非短路） |
| Java | `true & false` → `false`（非短路） | `true ^ false` → `true`（非短路） | `true \| false` → `true`（非短路） |
| Swift | `true && false` → `false`（短路） | `true != false` → `true` | `true \|\| false` → `true`（短路） |

**分类**：符合 ArkTS spec 的语言设计差异

---

本子章节未发现 D 类异常（规范与实现不一致）。全部 6 个测试用例通过，规范与实现完全一致。

| 分类 | 数量 | 状态 |
|:----:|:----:|:----:|
| **D 类**（Spec 与实现不一致） | **0** | 无异常 |
| **跨语言设计差异** | **1** | Swift 缺少非短路 boolean 逻辑运算符 |
| **compile-pass** | **3/3** | ✅ 全部通过 |
| **compile-fail** | **2/2** | ✅ 全部通过 |
| **runtime** | **1/1** | ✅ 24 断言全部通过 |
| **Java** | **24/24** | ✅ |
| **Swift** | **24/24** | ✅ |
