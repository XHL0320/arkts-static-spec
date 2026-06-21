# Chapter 05 Generics - Spec/Compiler Gap Analysis

## 摘要

经过 78 个测试用例（46 compile-pass + 22 compile-fail + 8 runtime + 2 GAP）的真实执行验证。发现 2 个编译器与规范差距（嵌套变体检查，GEN-U-01），记入 issue_report.md。

## 发现汇总

| # | 严重性 | 位置 | 说明 | 用例 |
|---|--------|------|------|------|
| 1 | **HIGH** | 5.1.3 嵌套回调变体检查 | 编译器未递归检查回调函数类型内部的变体违规 | GEN-U-01 |
| 2 | **MEDIUM** | 5.1.3 Type Alias Variance | 类型别名上的 `out`/`in` 修饰语义不明确 | GEN_05_02_026 |
| 3 | **LOW** | 5.1.1 keyof 约束错误信息 | 仅显示约束的第一个 key 而非完整展开 | GEN_05_01_023 |
| 4 | **LOW** | 5.2.2 内部类型名泄露 | 错误信息使用了 `Double` 而非 `number` | GEN_05_03_022 |
| 5 | **LOW** | 5.2.3 推断失败冗余错误 | 真正错误前有一条误导性的"无匹配签名"错误 | GEN_05_03_023 |

## 各子章节验证结果

### 5.1 Type Parameters — 11/11 ✅

泛型基本声明和循环依赖检测与 spec 一致。

### 5.1.1 Type Parameter Constraint — 11/11 ✅

约束检查（类/联合/字面量/keyof/依赖参数）全部正确。

### 5.1.2 Type Parameter Default — 7/7 ✅

默认值排序和前向引用规则正确。

### 5.1.3 Type Parameter Variance — 16/16 ⚠️ (2 GAP)

Variance 位置检查：
- `out` 在 in/invariant 位置 → 编译错误 ✅
- `in` 在 out/invariant 位置 → 编译错误 ✅
- 函数类型参数不允许 variance → 编译错误 ✅
- 嵌套回调变体检查（编译器当前不递归检查）→ **GAP ❌**

### 5.1.4 Wildcard Type — 10/10 ✅

通配符子类型和写入保护规则全部正确。

### 5.2.1 Type Arguments — 7/7 ✅

类型参数实例化规则正确。

### 5.2.2 Explicit Generic Instantiations — 9/9 ✅

显式实例化、参数数量和约束校验正确。

### 5.2.3 Implicit Generic Instantiations — 7/7 ✅

隐式类型推断和方法默认类型参数来自类参数规则正确。
