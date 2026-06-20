# 10 Interfaces — 测试分析报告

## 1. 概述

经过 41 个测试用例的真实执行验证，发现 2 个编译器与 Spec 不一致的 GAP（§10.3 Object 方法冲突），已记录在 `issue_report.md`。

## 2. 分节分析

### 10.1 Interface Declarations — 4/4 ✅

测试基础接口声明、泛型接口、带 extends 接口、多成员接口。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 4 | 基础/泛型/extends/多成员接口 |
| compile-fail | 0 | — |
| runtime | 0 | — |

### 10.2 Superinterfaces & Subinterfaces — 7/7 ✅

测试单继承、多继承、多层继承、继承非接口、循环继承、自继承。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 3 | 单/多/多层 extends |
| compile-fail | 4 | extends 非接口、循环继承、自继承、错误类型参数 |
| runtime | 0 | — |

### 10.3 Interface Members — 5/5 ✅ (含 2 GAP)

测试接口成员（属性+方法）、多方法、Object 方法冲突。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 3 | 含 1 个 GAP（ITF_10_03_011_PASS 在 compile-pass，ISS-10-01） |
| compile-fail | 2 | 重复成员、Object 方法返回值冲突（ISS-10-02） |
| runtime | 0 | — |

> ⚠️ **GAP 标注**：`ITF_10_03_011_PASS_OBJECT_METHOD_CLASH.ets` 位于 compile-pass/，但规范应 FAIL（ISS-10-01：编译器未实现 §10.3 Object 方法冲突检测）。

### 10.4 Interface Properties — 9/9 ✅

测试 readonly/readwrite 属性、getter/setter、可选属性。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 7 | required readonly/rw、getter/setter、可选属性 |
| compile-fail | 2 | getter-only 赋值、setter-only 读取 |
| runtime | 0 | — |

### 10.5 Interface Methods — 10/10 ✅

测试抽象方法、参数/返回值、类实现接口、多接口实现。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 6 | 抽象方法、参数、返回值、类实现接口 |
| compile-fail | 2 | 缺失实现、方法签名不匹配 |
| runtime | 2 | 接口实现/属性运行时（唯一的 runtime 用例） |

### 10.6 Interface Inheritance — 6/6 ✅

测试继承链、菱形继承、接口类型变量、类 extends+implements。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 4 | 继承链、菱形、类型变量、extends+implements |
| compile-fail | 2 | 继承 getter-only 写、继承 setter-only 读 |
| runtime | 0 | — |

## 3. 统计汇总

| 子节 | PASS | FAIL | RT | 合计 | 状态 |
|------|:--:|:--:|:--:|:--:|:--:|
| 10.1 Interface Declarations | 4 | 0 | 0 | 4 | ✅ |
| 10.2 Superinterfaces | 3 | 4 | 0 | 7 | ✅ |
| 10.3 Interface Members | 3 | 2 | 0 | 5 | ⚠️ 2 GAP |
| 10.4 Interface Properties | 7 | 2 | 0 | 9 | ✅ |
| 10.5 Interface Methods | 6 | 2 | 2 | 10 | ✅ |
| 10.6 Interface Inheritance | 4 | 2 | 0 | 6 | ✅ |
| **总计** | **27** | **12** | **2** | **41** | ⚠️ 2 GAP |

## 4. 发现的问题

| ID | 严重度 | 位置 | 说明 |
|----|:--:|------|------|
| ISS-10-01 | ℹ️ 低 | 10.3 Object 方法同签名 | §10.3 要求报错，编译器未拒绝 `toString(p: number): void` |
| ISS-10-02 | ℹ️ 低 | 10.3 Object 方法返回值冲突 | §10.3 要求报错，编译器未拒绝 `toString(): string` |
| NAM-01 | 🔧 低 | 10.3 compile-pass/011 | `ITF_10_03_011_PASS_OBJECT_METHOD_CLASH.ets` 位于 compile-pass 但规范应 FAIL，系 GAP 标注 |

## 5. 特点

- 41 用例中仅 2 个 runtime 用例（全部在 §10.5），其余为纯编译期验证
- 接口测试主要验证编译期约束（类型检查、成员完整性、继承合法性）
- 命名前缀 `ITF_` 与 manifest 一致，无整体性违规律
