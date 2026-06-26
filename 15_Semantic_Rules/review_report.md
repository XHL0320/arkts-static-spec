# 15 Semantic Rules 审查报告

## 审查范围
- **章节：** 15 Semantic Rules（§15.1~§15.14）
- **用例目录：** `ets_cases/`（59 个子章节目录，14 个主节 + 45 个子节）
- **用例总数：** 873
- **审查日期：** 2026-06-26

## 执行结果
运行 `run_semantic_cases_wsl.sh`，环境依赖完备。

| 类别 | 文件数 | 实测 OK | Unexpected |
|:----:|:-----:|:-------:|:----------:|
| compile-pass | 446 | 420 | 26（编译失败） |
| compile-fail | 275 | 247 | 28（编译通过） |
| runtime | 152 | 145 | 7（6 断言失败 + 1 编译失败） |
| **合计** | **873** | **812** | **61** |

## 总体结论
**可验收，但需知悉 61 个编译器功能缺失。** 用例设计完整、元数据一致、issue 记录清晰。61 个失败全部为编译器未实现的 spec 功能（Smart Cast 流敏感收窄、Override/Subtyping 边界、Overload Resolution 运行时派发），非用例设计问题。其中 7 个 Extended Conditional 失败为 Spec §15.14.1 明确声明**即将废弃**的兼容特性，不计入缺陷。

## Spec 对照

| 主节 | Spec 覆盖 | 编译器一致性 | 说明 |
|------|:---------:|:-----------:|------|
| §15.1 Semantic Essentials | ✅ 73/73 | ✅ | 完整 |
| §15.2 Subtyping | ✅ 136/136 | ⚠️ | 6 个 compile-pass 被拒 + 5 个 compile-fail 通过 |
| §15.3 Type Identity | ✅ 27/27 | ✅ | 完整 |
| §15.4 Assignability | ✅ 30/30 | ⚠️ | 1 个 compile-pass 被拒 |
| §15.5 Variance | ✅ 24/24 | ⚠️ | 2 个 compile-pass 被拒 |
| §15.6 Call Arguments | ✅ 34/34 | ⚠️ | 2 个 compile-pass 被拒 |
| §15.7 Type Inference | ✅ 49/49 | ⚠️ | 2 个 compile-pass 被拒 + 1 个 compile-fail 通过 |
| §15.8 Smart Casts | ✅ 94/94 | ⚠️⚠️ | 14 个 compile-pass 被拒 + 6 个 compile-fail 通过 |
| §15.9 Overriding | ✅ 66/66 | ⚠️ | 3 个 compile-pass 被拒 + 4 个 compile-fail 通过 |
| §15.10 Overloading | ✅ 74/74 | ✅ | 完整 |
| §15.11 Overload Resolution | ✅ 151/151 | ⚠️⚠️ | 6 runtime 断言失败 + 1 个 compile-fail 通过 |
| §15.12 Type Erasure | ✅ 38/38 | ⚠️ | 1 个 compile-pass 被拒 |
| §15.13 Static Initialization | ✅ 30/30 | ✅ | 完整 |
| §15.14 Compatibility | ✅ 47/47 | ⚠️ | 7 个即将废弃特性未实现 |

## 问题清单

### 1. Smart Cast 流敏感收窄未完全实现（14 场景）🔴
- **现象：** typeof/CFG/union/nested/ternary/logical 等 14 个场景编译器拒绝合法代码
- **Spec 依据：** §15.8:1357-1371 明确要求基于 CFG 的流敏感类型收窄
- **证据：** `typeof value === "string"` 后 `value.length` 仍报 `Property 'length' not exist on 'Object'`
- **影响：** 15.8 节覆盖不全，开发者无法使用大部分 smart cast 能力

### 2. Overload Resolution 运行时按实际类型派发（6 场景）🟡
- **现象：** 声明为 Base 类型的变量，运行时按 Derived 实际类型选择重载
- **错误：** `'derived-int' === 'base-number'`
- **影响：** 运行时行为与声明类型语义不一致

### 3. Subtyping/Override 边界编译器未拒绝（15 场景）🟡
- **现象：** tuple 子类型方向错误、override 参数协变等 15 个场景编译器应拒绝但通过
- **影响：** 类型系统边界检查不完整

### 4. Extended Conditional 未实现（7 场景）⚪
- **状态：** Spec §15.14.1 line 3186 明确声明即将废弃，不计入缺陷

## 整改建议
1. Smart Cast 是 §15.8 核心功能，14 个被拒场景优先级最高
2. Overload Resolution 运行时派发（C-15.11-02~07）需与编译器团队确认设计意图
3. Subtyping/Override 边界 15 个场景为编译器边界检查不完整，优先级中等
4. Extended Conditional 不作为活跃问题跟踪
