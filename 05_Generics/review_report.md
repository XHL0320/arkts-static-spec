# 05 Generics 审查报告

## 审查范围
- **章节：** 05 Generics（§5.1~§5.2）
- **用例目录：** `ets_cases/`（8 个子章节目录）
- **用例总数：** 82
- **审查日期：** 2026-06-26

## 执行结果
运行 `run_generics_cases_wsl.sh`，环境依赖完备。

通过 `SECTIONS` 环境变量指定全部 8 个子节，涵盖嵌套的 5.2.x 目录。

| 类别 | 文件数 | 实测 OK |
|:----:|:-----:|:-------:|
| compile-pass | 40 | 40 ✅ |
| compile-fail | 30 | 30 ✅ |
| runtime | 12 | 12 ✅ |
| **合计** | **82** | **82 ✅** |

## 元数据一致性（82/82 .ets 文件）
| 检查项 | 结果 |
|--------|:----:|
| `@id` 与文件名一致 | ✅ 全部匹配 |
| `@expect` 与父目录一致 | ✅ 全部匹配 |
| `@section` 与章节目录一致 | ✅ 全部匹配 |

## 总体结论
**有条件验收。** 82 个用例元数据 100% 一致，issue_report 无异常。但 manifest、catalog、section report 和 root mindmap 存在 5 处数据不一致，需修复。

## 问题清单

### P1 🔴 — test_manifest.json `total_cases` 应为 82（当前 80）
- **现象：** 遗漏 `GEN_05_01_03_200_RUNTIME_COVARIANT_OUT` 和 `GEN_05_01_04_200_RUNTIME_WILDCARD`
- **影响：** 总数少计 2，影响交付件可信度

### P2 🔴 — test_manifest.json 5.1_Type_Parameters 统计数据错误
- **位置：** `test_manifest.json:9-11`
- **现象：** `runtime:3` 应为 `2`；`total:46` 应为 `11`
- **建议：** 修正 runtime 和 total 字段

### P3 🟡 — test_case_catalog.md 5.1.3 缺 runtime 条目
- **位置：** `test_case_catalog.md:49`
- **现象：** 标注 "(16 cases)" 但实际有 17 个文件（缺 `GEN_05_01_03_200_RUNTIME_COVARIANT_OUT`）
- **建议：** 补 runtime 行，总数改为 17

### P4 🟡 — test_case_catalog.md 5.1.4 缺 runtime 条目
- **位置：** `test_case_catalog.md:70`
- **现象：** 标注 "(10 cases)" 但实际有 11 个文件（缺 `GEN_05_01_04_200_RUNTIME_WILDCARD`）
- **建议：** 补 runtime 行，总数改为 11

### P5 🟡 — test_report_5.1.3.md Total Cases 写 16 应为 17
- **位置：** `ets_cases/5.1.3_Type_Parameter_Variance/test_report_5.1.3.md:5`
- **现象：** 概述写 "Total Cases: 16"，但实际 10+6+1=17；备注说 "No runtime cases" 与事实不符
- **建议：** 修正为 17，删除 "No runtime cases" 备注

### P6 🟡 — test_report_5.1.4.md Total Cases 写 10 应为 11
- **位置：** `ets_cases/5.1.4_Wildcard_Type/test_report_5.1.4.md:5`
- **现象：** 概述写 "Total Cases: 10"，但实际 2+8+1=11
- **建议：** 修正为 11

### P7 ⚪ — test_design_mindmap.md 5.1.3 缺 runtime 分支
- **位置：** `test_design_mindmap.md:48-68`
- **现象：** root mindmap 的 5.1.3 节缺少 Runtime 分支
- **建议：** 补 runtime 条目

### P8 ⚪ — test_design_mindmap.md 5.1.4 Runtime 指向错误
- **位置：** `test_design_mindmap.md:82-83`
- **现象：** "Runtime → instanceof wildcard" 指向的是 compile-pass 用例 `_002_PASS_INSTANCEOF_WILDCARD`，非 runtime 用例
- **建议：** 改为指向 `_200_RUNTIME_WILDCARD`，或移至 PASS 分支

## 覆盖评价

| Spec 小节 | 实际文件数 | 覆盖情况 |
|-----------|:---------:|---------|
| §5.1 Type Parameters | 11 | ✅ |
| §5.1.1 Type Parameter Constraint | 12 | ✅ |
| §5.1.2 Type Parameter Default | 8 | ✅ |
| §5.1.3 Type Parameter Variance | 17 | ✅ |
| §5.1.4 Wildcard Type | 11 | ✅ |
| §5.2.1 Type Arguments | 7 | ✅ |
| §5.2.2 Explicit Generic Instantiations | 9 | ✅ |
| §5.2.3 Implicit Generic Instantiations | 7 | ✅ |

## 整改建议
1. 修正 `test_manifest.json` 的 `total_cases` 和 5.1 统计数据（P1, P2）
2. 补全 `test_case_catalog.md` 中 5.1.3 和 5.1.4 的 runtime 行（P3, P4）
3. 修正 `test_report_5.1.3.md` 和 `test_report_5.1.4.md` 的总数（P5, P6）
4. 修正 `test_design_mindmap.md` 的 5.1.3/5.1.4 问题（P7, P8）
