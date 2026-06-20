# 5.2 Variance and Wildcard - 设计问题报告

## 已验证的一致性（无 gap）

| 验证项 | 用例 | 结果 |
|--------|------|------|
| out 在返回值/readonly字段/构造函数 | GEN_05_02_001~002,006 | compiler 行为与 spec 一致 |
| in 在方法参数 | GEN_05_02_003 | compiler 行为与 spec 一致 |
| 无变体任意位置 | GEN_05_02_004 | compiler 行为与 spec 一致 |
| 变体交错 | GEN_05_02_005 | compiler 行为与 spec 一致 |
| out 在 in-position | GEN_05_02_010 | ESE0333 正确报告 |
| out 在 invariant 字段 | GEN_05_02_011 | ESE0331 正确报告 |
| in 在 out-position | GEN_05_02_012 | ESE0332 正确报告 |
| in 在 invariant 字段 | GEN_05_02_013 | ESE0331 正确报告 |
| 函数 variance 禁止 | GEN_05_02_014 | ESY0098 正确报告 |

## 发现

### 1. 类型别名 variance 语义不明确（MEDIUM）

**问题描述：** `type Wrapper<out T> = T;` 被编译器接受（GEN_05_02_026）。由于类型别名对类型透明，`out T` 在别名定义中的语义不明确——`T` 在别名右侧出现在所有位置（既是 in 也是 out），此时 `out` 修饰符没有实际约束效果。

**严重性：** MEDIUM

**跨语言对比：**
- **Swift：** 不允许对 typealias 使用 variance 修饰符
- **Java：** 无类型别名概念
