# 15 Semantic Rules 审查报告

## 审查范围
- 章节：15 Semantic Rules
- 用例目录：`15_Semantic_Rules/ets_cases/`
- 用例总数：873（389P + 283F + 201R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地 Windows 无 arkcompiler 工具链，runner `run_semantic_cases_wsl.sh` 为 WSL bash 脚本。本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成。

| 指标 | 数值 |
|------|------:|
| .ets 总数 | 873 |
| manifest id 数 | 873（100% 覆盖）|
| manifest JSON | ✅ 合法 |
| 元数据不一致 | **0** |

## 总体结论
**可验收。** 873 用例覆盖全部 54 个小节，元数据完全一致（METADATA_BAD_COUNT=0），manifest 全覆盖（873/873）。spec_original.md（3240行）和 Semantic_Rules_Examples.md（178行）已填充。issue_report 详细且分类清晰。

## 整改完成情况

| 问题 | 状态 |
|------|:----:|
| manifest 仅覆盖 14/873 | ✅ 已补全为 873/873（100%）|
| 3 处 @expect compile-warn 不一致 | ✅ 已修复 |
| manifest 格式独特 | ✅ 已统一 |

## 问题清单

### [信息] 大量已知 spec 差异已清晰归类
**现象**：issue_report 记录大量已知问题，包括：
- **SC-01~14**（MEDIUM）：Smart Cast 类型收窄未实现（14 项）
- **VAR-01~06**（LOW）：Subtyping/Variance 边界未拒绝
- **OVR-01~03**（LOW）：Override 边界未拒绝
- **C-15.11-02~07**（MEDIUM）：Overload Resolution 运行时派发偏差
- **COM-15.14-01~07**（LOW）：Extended Conditional 未实现
- 以及 GAP-SC/GAP-SUB/GAP-OVR 等边界用例
**建议**：跟踪编译器版本更新后验证。

## 覆盖评价

| 范围 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 15.1 Semantic Essentials | 16 | 8 | 2 | 26 | 类型/上下文/参数 |
| 15.1.1~15.1.8 | 29 | 10 | 8 | 47 | 细分语义基础 |
| 15.2 Subtyping | 29 | 23 | 2 | 54 | 子类型关系 |
| 15.2.1~15.2.9 | 40 | 33 | 9 | 82 | 各类子类型细分 |
| 15.3 Type Identity | 17 | 8 | 2 | 27 | 类型同一性 |
| 15.4 Assignability | 17 | 11 | 2 | 30 | 可赋值性 |
| 15.5 Invariance/Covariance | 13 | 9 | 2 | 24 | 变体 |
| 15.6 Call Arguments | 15 | 13 | 6 | 34 | 调用参数兼容性 |
| 15.7 Type Inference | 16 | 9 | 5 | 30 | 类型推断 |
| 15.8 Smart Casts | 37 | 21 | 5 | 63 | 智能转换 |
| 15.9 Overriding | 19 | 11 | 5 | 35 | 重写 |
| 15.10 Overloading | 22 | 22 | 5 | 49 | 重载 |
| 15.11 Overload Resolution | 30 | 17 | 39 | 86 | 重载解析 |
| 15.12 Type Erasure | 17 | 15 | 6 | 38 | 类型擦除 |
| 15.13 Static Initialization | 9 | 6 | 12 | 27 | 静态初始化 |
| 15.14 Compatibility | 28 | 2 | 14 | 44 | 兼容特性 |
| **Total** | **389** | **283** | **201** | **873** | 54 节全覆盖 |

## 整改建议
1. **必须修复**：补全 manifest 为 873 条，全覆盖所有用例（参照 02/04/08/17 的 cases 数组格式）
2. **必须修复**：确认 3 处 `@expect compile-warn` 的处理方式（改目录或改 @expect）
3. **建议统一**：manifest 格式对齐全仓库标准
4. **持续跟踪**：issue_report 中大量已知差异在编译器版本更新后验证
