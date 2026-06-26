# 7.19 Ensure-Not-Nullish Expression - 测试设计思维导图

## 概述

*Ensure-not-nullish expression* 是后缀运算符 `!` 表达式，用于检查空值类型表达式是否为 nullish value（`null` 或 `undefined`）。

**核心规则：**
- `expr!` 检查 `expr` 是否为 nullish value
- 若非 null/undefined → 返回 `expr` 原值，类型为 `expr` 的非空类型变体
- 若为 null/undefined → 抛出 `NullPointerError`
- 若编译期已知始终非 nullish → **编译期警告**，运算符忽略
- 若编译期已知始终为 nullish → **编译期警告**，`NullPointerError` 始终在运行时抛出
- 若非空值类型应用 `!` → 运算符无效果（no effect）

## 三级测试点设计

### compile-pass（验证编译通过 + 语义正确）

| # | 测试点 | 说明 |
|---|--------|------|
| 001 | 非空值基本用法 | `let x: int = 5` → `x!` 返回值 5，编译通过 |
| 002 | 空值类型变量 + 运行时非空值 | `let x: int \| undefined = 5` → `x!` 编译通过 |
| 003 | 空值类型变量 + instanceof 窄化后 `!` | `let x: Object \| undefined = ...` → 窄化后 `x!` 编译通过 |
| 004 | 字段访问 + `!` | `obj!.field` 编译通过 |
| 005 | 方法调用 + `!` | `obj!.method()` 编译通过 |
| 006 | 链式 `!!`（双重） | `x!!` → 先 Ensure-not-nullish，再应用一次（无效果）编译通过 |
| 007 | 非空值类型的 `!`（应产生编译期警告但仍通过） | 如 `let x: int = 5; x!` 警告但编译通过 |
| 008 | `!` 在表达式中（赋值、函数参数等） | `let y: int = x! + 1` 编译通过 |

### compile-fail（验证编译时错误）

| # | 测试点 | 说明 |
|---|--------|------|
| 021 | `!` 应用到 `void` 表达式 | 函数返回 `void`，对其结果应用 `!` 编译时错误 |
| 022 | `!` 应用到无法推导类型的表达式 | 编译时错误场景 |

*注：spec 规定 `!` 在非空值类型上仅产生编译期警告，因此 compile-fail 用例较少。*

### runtime（验证运行时实际行为 - 真实执行）

| # | 测试点 | 预期行为 |
|---|--------|---------|
| 031 | 运行时非空值 | `let x: int \| undefined = 5; x!` → 返回值 5 |
| 032 | 运行时 `undefined` → 抛 NullPointerError | `let x: int \| undefined = undefined; x!` → 运行时抛 `NullPointerError` |
| 033 | 运行时 `null` → 抛 NullPointerError | `let x: int \| null = null; x!` → 运行时抛 `NullPointerError` |
| 034 | `!` 字段访问 运行时非空 | `obj!.field` 正常返回字段值 |
| 035 | `!` 字段访问 运行时空值 → 抛 NullPointerError | `(undefined as C \| undefined)!.field` → 抛 NullPointerError |
| 036 | 类型窄化验证 | 类型从 `T | undefined` 窄化为 `T` 后使用 |

## 文件命名规范

`EXP_07_19_YYY_{CATEGORY}_{DESCRIPTION}.ets`

- YYY: 001 起连续编号
- CATEGORY: PASS / FAIL / RUNTIME
- DESCRIPTION: 大写+下划线描述

## 注释模板要求

每个文件必须包含 5 个 JSDoc tag：@id, @expect, @section, @design, @note
