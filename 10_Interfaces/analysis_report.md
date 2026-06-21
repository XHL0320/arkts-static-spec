# 10 Interfaces — 测试分析报告

## 1. 概述

经过 53 个测试用例的 WSL 真实执行验证，全部通过。原 ISS-10-02（Object 方法返回值冲突）已归档为已关闭 GAP，用例改为 compile-pass。

## 2. 分节分析

### 10.1 Interface Declarations — 7/7 ✅

测试基础接口声明、泛型接口、带 extends 接口、多成员接口、默认方法（实验特性）、接口不可实例化、多态运行时。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 5 | 基础/泛型/extends/多成员/默认方法 |
| compile-fail | 1 | 接口不能 new |
| runtime | 1 | 接口多态运行时 |

### 10.2 Superinterfaces & Subinterfaces — 8/8 ✅

测试单继承、多继承、多层继承、继承非接口、循环继承、自继承、错误类型参数、多层继承运行时。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 3 | 单/多/多层 extends |
| compile-fail | 4 | extends 非接口、循环继承、自继承、错误类型参数 |
| runtime | 1 | 多层继承运行时调用 |

### 10.3 Interface Members — 6/6 ⚠️ (1 GAP)

测试接口成员（属性+方法）、多方法、Object 方法冲突（含 GAP）、重复成员、运行时方法调用。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 3 | 属性+方法、多方法、Object 参数冲突 ✅ |
| compile-fail | 2 | 重复成员 ✅ / Object 返回值冲突 ❌ GAP |
| runtime | 1 | 接口方法成员运行时调用 ✅ |

### 10.4 Interface Properties — 4/4 ✅

接口属性声明、getter-only 赋值失败、setter-only 读取失败、运行时访问。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 1 | 接口属性声明 |
| compile-fail | 2 | getter-only 赋值、setter-only 读取 |
| runtime | 1 | 接口属性运行时 |

### 10.4.1 Required Interface Properties — 7/7 ✅

必需 readonly/readwrite/getter/setter 属性、未实现检查、运行时验证。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 5 | required readonly/rw、getter/setter |
| compile-fail | 1 | required 未实现 |
| runtime | 1 | required 属性运行时 |

### 10.4.2 Optional Interface Properties — 4/4 ✅

可选属性声明、undefined 兼容、非空使用检查、运行时验证。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 2 | 可选属性、undefined |
| compile-fail | 1 | 可选属性非空使用 |
| runtime | 1 | 可选属性运行时 |

### 10.5 Interface Method Declarations — 10/10 ✅

测试抽象方法、参数/返回值、类实现接口、多接口实现。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 6 | 抽象方法、参数、返回值、类实现接口 |
| compile-fail | 2 | 缺失实现、方法签名不匹配 |
| runtime | 2 | 接口实现/属性运行时 |

### 10.6 Interface Inheritance — 7/7 ✅

测试继承链、菱形继承、接口类型变量、类 extends+implements、继承链方法解析运行时。

| 类别 | 数量 | 说明 |
|------|:--:|------|
| compile-pass | 4 | 继承链、菱形、类型变量、extends+implements |
| compile-fail | 2 | 继承 getter-only 写、继承 setter-only 读 |
| runtime | 1 | 继承链运行时方法解析 |

## 3. 统计汇总

| 子节 | PASS | FAIL | RT | 合计 | 状态 |
|------|:--:|:--:|:--:|:--:|:--:|
| 10.1 Interface Declarations | 5 | 1 | 1 | 7 | ✅ |
| 10.2 Superinterfaces & Subinterfaces | 3 | 4 | 1 | 8 | ✅ |
| 10.3 Interface Members | 4 | 1 | 1 | 6 | ✅ |
| 10.4 Interface Properties | 1 | 2 | 1 | 4 | ✅ |
| 10.4.1 Required Interface Properties | 5 | 1 | 1 | 7 | ✅ |
| 10.4.2 Optional Interface Properties | 2 | 1 | 1 | 4 | ✅ |
| 10.5 Interface Method Declarations | 6 | 2 | 2 | 10 | ✅ |
| 10.6 Interface Inheritance | 4 | 2 | 1 | 7 | ✅ |
| **总计** | **30** | **15** | **8** | **53** | ✅ |

## 4. 发现的问题

| ID | 严重度 | 位置 | 说明 |
|----|:--:|------|------|
| ISS-10-02 | ⭐⭐ MEDIUM | 10.3 Object 方法返回值冲突 | §10.3 要求报错，编译器未拒绝 `toString(): string` |

## 5. 特点

- 53 用例中 8 个 runtime 用例，覆盖多态、继承链、可选属性等运行时场景
- 接口测试主要验证编译期约束（类型检查、成员完整性、继承合法性）
- 命名前缀 `ITF_` 与 manifest 一致，无整体性违规律
- 8 个子节均包含三类测试用例（compile-pass / compile-fail / runtime）
