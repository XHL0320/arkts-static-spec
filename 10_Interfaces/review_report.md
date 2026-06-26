# 10 Interfaces 审查报告

## 审查范围
- **章节：** 10 Interfaces（§10.1~§10.6）
- **用例目录：** `ets_cases/`（8 个子章节目录）
- **用例总数：** 59
- **审查日期：** 2026-06-26

## 执行结果
运行 `run_interfaces_cases_wsl.sh`，环境依赖完备。

| 类别 | 文件数 | 实测 OK | Unexpected |
|:----:|:-----:|:-------:|:----------:|
| compile-pass | 32 | 32 ✅ | 0 |
| compile-fail | 17 | 16 ✅ | 1（编译未报错，已知 GAP ISS-10-02） |
| runtime | 10 | 10 ✅ | 0 |
| **合计** | **59** | **58** | **1** |

> 首次跑测 3 个 runtime 误报为 exit code 1，原因是 runner 脚本 `$?` 在 else 分支中被 `[` 命令覆盖。已修复 runner，二次跑测全部通过。

## 元数据一致性（59/59 .ets 文件）
| 检查项 | 结果 |
|--------|:----:|
| `@id` 与文件名一致 | ✅ 全部匹配 |
| `@expect` 与父目录一致 | ✅ 全部匹配 |
| `@section` 与章节目录一致 | ✅ 全部匹配 |

## 总体结论
**有条件验收。** 用例设计和元数据质量良好，59 个用例覆盖完整，issue 记录清晰。run-pass **58/59**，仅有 1 个已知 GAP（ISS-10-02：compile-fail 编译器未拒绝）。

## 问题清单

### P1 🔴 — test_report_10.6.md 总数错误
- **位置：** `ets_cases/10.6_Interface_Inheritance/test_report_10.6.md`
- **现象：** Total Cases 写为 **7**，但实际文件数为 **10**（pass 5 + fail 4 + runtime 1 = 10）
- **影响：** 数据不一致，影响交付件可信度
- **建议：** 将 Total Cases: 7 改为 10

### P2 🟡 — test_case_catalog.md 统计表行名重复
- **位置：** `test_case_catalog.md:184-186`
- **现象：** 10.4.1 和 10.4.2 的行名全部写为 "10.4 Interface Properties"（重复 3 行）
- **建议：** 修正为正确的节名：
  - 10.4 Interface Properties → 4 合计
  - 10.4.1 Required Interface Properties → 8 合计
  - 10.4.2 Optional Interface Properties → 6 合计

### P3 🟡 — test_case_catalog.md 统计表列数不匹配
- **位置：** `test_case_catalog.md:179-188`
- **现象：** 表头有 6 列，但数据行有 8-9 列（多余数值列）
- **建议：** 修复表格格式，使列数与表头一致

### P4 🟡 — test_design_mindmap.md 10.6 compile-fail 缺少 2 条目
- **位置：** `test_design_mindmap.md:90-92`
- **现象：** 10.6 的 compile-fail 只列出 2 条（Inherited Getter Only Write / Setter Only Read），缺少：
  - Multi Inherit Setter Only Read
  - Multi Inherit Getter Only Write
- **建议：** 补全缺失的 2 条 mindmap 条目

### P5 ⚪ — test_design_mindmap_10.6.md 内容不完整
- **位置：** `ets_cases/10.6_Interface_Inheritance/test_design_mindmap_10.6.md`
- **现象：** 仅覆盖 compile-pass，缺少 compile-fail 和 runtime 分支
- **建议：** 补充完整（或与根目录 mindmap 对齐）

## 覆盖评价

| Spec 小节 | 覆盖情况 | 说明 |
|-----------|---------|------|
| §10.1 Interface Declarations | 7/7 ✅ | 完整覆盖 |
| §10.2 Superinterfaces & Subinterfaces | 8/8 ✅ | 完整覆盖 |
| §10.3 Interface Members | 6/6 ⚠️ | 1 个 GAP（ISS-10-02：Object 方法冲突检测未实现） |
| §10.4 Interface Properties | 4/4 ✅ | 完整覆盖 |
| §10.4.1 Required Interface Properties | 8/8 ✅ | 完整覆盖 |
| §10.4.2 Optional Interface Properties | 6/6 ✅ | 完整覆盖 |
| §10.5 Interface Method Declarations | 10/10 ✅ | 完整覆盖 |
| §10.6 Interface Inheritance | 10/10 ✅ | 完整覆盖 |

## 已知 GAP
- **ISS-10-02（C-10.03-01）** — Spec §10.3 要求接口中 Object 公有方法名冲突应报错，编译器未实现。已记录在 `issue_report.md`，分类清晰，有跨语言对比。

## 整改建议
1. 修复 `test_report_10.6.md` 中的总数 7→10（P1）
2. 修复 `test_case_catalog.md` 统计表的行名和列数（P2, P3）
3. 补全 `test_design_mindmap.md` 中 10.6 compile-fail 缺失条目（P4）
4. 补充 `test_design_mindmap_10.6.md` 中缺失的 compile-fail/runtime 分支（P5）
