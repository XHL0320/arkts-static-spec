# 5.3 Generic Instantiations - 设计问题报告

## 已验证的一致性（无 gap）

| 验证项 | 用例 | 结果 |
|--------|------|------|
| 类型参数各种形式 | GEN_05_03_001~005 | compiler 行为与 spec 一致 |
| 显式实例化（类/方法/函数/类型别名） | GEN_05_03_006~009 | compiler 行为与 spec 一致 |
| 部分实例化产生新泛型 | GEN_05_03_010 | compiler 行为与 spec 一致 |
| 隐式推断 | GEN_05_03_011~012 | compiler 行为与 spec 一致 |
| 方法默认类型来自类参数 | GEN_05_03_013 | compiler 行为与 spec 一致 |
| 非泛型不能有类型参数 | GEN_05_03_020 | ESE0169 正确报告 |
| 参数数量不匹配 | GEN_05_03_021 | ESE0171 正确报告 |
| 约束不满足 | GEN_05_03_022 | ESE0228 正确报告 |
| 无法推断 | GEN_05_03_023 | ESE8745 正确报告 |

## 🔴 发现

### 1. 内部类型名 `Double` 暴露给用户（LOW）

**问题描述：** `GEN_05_03_022` 的错误信息为 `Type argument 'Double' should be a subtype of 'Base' constraint`，其中 `Double` 是编译器内部对 `number` 类型的表示名。

**严重性：** LOW

**建议：** 错误信息中应使用用户可见的类型名 `number` 而非内部名 `Double`。

### 2. 推断失败错误信息冗余（LOW）

**问题描述：** `GEN_05_03_023` 的 `bar(1)` 调用产生两条错误信息：
1. `ESE0127: No matching call signature for bar(Int)` 
2. `ESE8745: Type parameter 'T' can not be inferred for the call to 'bar'`

其中 ESE0127 是冗余的——真正原因是无法推断 `T`，而非签名不匹配。

**严重性：** LOW
