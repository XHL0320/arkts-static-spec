# Chapter 05 Generics - Spec/Compiler Gap Analysis

## 摘要

经过 72 个测试用例（33 compile-pass + 33 compile-fail + 6 runtime）的真实执行验证，发现 2 个编译器行为与 Spec 文本不一致的 GAP（见 issue_report.md）。其余 compile-fail 用例的错误码/错误信息均与 Spec 语义一致。

但发现了以下设计/实现层面的问题：

## 发现汇总

| # | 严重性 | 位置 | 说明 | 用例 |
|---|--------|------|------|------|
| 1 | **MEDIUM** | 5.1.3 Type Alias Variance | 类型别名上的 `out`/`in` 修饰语义不明确，编译器静默接受 | 补充验证 |
| 2 | **LOW** | 5.1.1 keyof 约束错误信息 | 仅显示约束的第一个 key 而非完整展开 | GEN_05_01_023 |
| 3 | **LOW** | 5.2.2 内部类型名泄露 | 错误信息使用了 `Double` 而非 `number` | GEN_05_03_022 |
| 4 | **LOW** | 5.2.3 推断失败冗余错误 | 真正错误前有一条误导性的"无匹配签名"错误 | GEN_05_03_023 |
| 5 | **FIXED** | 5.2.3 测试用例缺陷 | GEN_05_03_024 使用 `unknown`（特性不支持）而非 `Object` | GEN_05_03_024 |

## 各子章节验证结果

### 5.1 Type Parameters — 29/29 ✅

全部泛型参数功能与 spec 一致，包括：
- 约束检查（类/联合/字面量/keyof）
- 循环依赖检测（自/互/联合互）
- 默认值排序和前向引用规则

### 5.2 Variance and Wildcard — 22/22 ✅ (含 2 GAP)

Variance 位置检查完备：
- `out` 在 in/invariant 位置 → 编译错误 ✅
- `in` 在 out/invariant 位置 → 编译错误 ✅
- 函数类型参数不允许 variance → 编译错误 ✅

### 5.3 Generic Instantiations — 21/21 ✅

实例化规则正确，包括：
- 显式/隐式实例化
- 参数数量和约束校验
- 隐式类型推断
- 方法默认类型参数来自类参数
