# 8.15.1 catch 子句 - ArkTS 设计问题发现报告

**报告日期：** 2026-06-18
**测试用例数：** 11（5 compile-pass + 3 compile-fail + 3 runtime）
**目的：** 通过用例执行（编译期 + 运行时）+ 跨语言对比，识别 ArkTS catch 子句的静态语言设计问题。

---

## 一、新发现的设计问题（基于规范分析）

本章节未发现设计问题。所有行为均符合 ArkTS 规范 §8.15.1。

8.15.1 章节用例首次执行 100% 通过，未触发任何编译器异常或语义反直觉行为。所有测试点（基本 catch、instanceof 类型收窄、try-catch-finally、重新抛出、Error 属性访问）均按规范预期通过。

---

## 二、已验证 ArkTS 行为（与规范一致）

| 用例 ID | 行为描述 | 状态 |
|---------|----------|------|
| 001, 009 | 基本 try-catch 结构 | ✅ |
| 001, 009 | catch 标识符类型为 Error | ✅ |
| 002, 010 | instanceof 类型收窄 | ✅ |
| 003 | try-catch-finally 完整结构 | ✅ |
| 004, 011 | catch 块内重新抛出 | ✅ |
| 005 | Error 属性访问（message、name、stack） | ✅ |
| 006, 007, 008 | catch 参数非 Error 类型拒绝编译 | ✅ |

### 设计观察 A：ArkTS 要求 catch 参数显式类型为 Error，不允许任意类型注解

**规范 §8.15.1 原文：**
> Catch identifier type inside block is Error.

**实际行为：**
- `catch (e)` -- 类型隐式为 Error -- 编译通过
- `catch (e: string)` -- 编译失败 -- 符合预期
- `catch (e: number)` -- 编译失败 -- 符合预期
- `catch (e: boolean)` -- 编译失败 -- 符合预期

**评价：** ArkTS 强制 catch 参数为 Error 类型是一种简化设计，限制了 catch 参数只能是 Error 基类型（不能指定为 RangeError 等子类型），但通过 instanceof 运行时检查弥补。这种设计减少了类型注解的复杂度，但牺牲了编译期类型精确性。

### 设计观察 B：ArkTS 不支持多个 catch 块（multi-catch）

ArkTS 仅在单个 catch 块中使用 `instanceof` 区分错误类型，而不支持 Java 的多 catch 语法 `catch (TypeA | TypeB e)`。

**评价：** 这是有意简化。instanceof 方式提供了同样的表达能力，区别在于：
- Java 多 catch：编译期精确，每个 catch 块对应一个异常类型
- ArkTS instanceof：运行时判断，更灵活但无法在编译期保证覆盖所有分支

---

## 三、严重性等级总览

| 严重性 | 数量 | 涉及用例 |
|--------|------|----------|
| ⭐ HIGH | 0 | - |
| ⭐ MEDIUM | 0 | - |
| ⭐ LOW | 0 | - |
| 设计观察（非问题） | 2 | A、B |

---

## 四、跨语言对比结论

### catch 参数类型约束对比

| 语言 | catch 参数类型约束 |
|------|-------------------|
| ArkTS | **只能是 Error 类型** |
| Java | 可以是 `Throwable` 或其子类型（`Exception`、`RuntimeException`、自定义异常） |
| Swift | `catch` 参数可省略；可指定类型：`catch let err as MyError`，类型推导灵活 |

### 多 catch 机制对比

| 语言 | 多 catch 支持 |
|------|--------------|
| ArkTS | 不支持多 catch 块，通过 `instanceof` 运行时区分 |
| Java | 支持多 catch 语法 `catch (TypeA \| TypeB e)`，编译期精确 |
| Swift | 支持多个 catch 块，每个可匹配不同错误类型 |

### 综合维度评价

| 维度 | 评价 |
|------|------|
| 与 spec 一致性 | 100%（首次执行全部通过） |
| 设计严密性 | 良好，catch 参数类型强制 Error 符合静态类型设计 |
| 类型安全性 | 优于 Java（catch 不能声明任意 Throwable 类型），与 Swift 相当 |
| 表达能力 | 通过 instanceof 提供运行时类型区分，但无编译期多 catch |
| 与 Java/Swift 对比 | ArkTS = Swift 简化风格 > Java 传统多 catch |

---

## 五、改进方向建议

### 短期
- 当前设计无需改进的问题。

### 中期
- 可考虑引入编译期多 catch 语法（如 `catch (e: RangeError)`）以提供编译期类型精确性，但这与 ArkTS 简化设计哲学相悖。

### 长期
- 无。
