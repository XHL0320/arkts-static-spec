# 04 Names Declarations Scopes 审查报告

## 审查范围
- **章节：** 04 Names, Declarations, Scopes（§4.1~§4.7.7）
- **用例目录：** `ets_cases/`（20 个子章节目录）
- **用例总数：** 191
- **审查日期：** 2026-06-26

## 执行结果
运行 `run_names_cases_wsl.sh`，全部 191 用例通过。

| 类别 | 文件数 | 实测 OK |
|:----:|:-----:|:-------:|
| compile-pass | 91 | 91 ✅ |
| compile-fail | 71 | 71 ✅ |
| runtime | 29 | 29 ✅ |
| **合计** | **191** | **191 ✅** |

## 元数据一致性
所有 `@id` 与文件名匹配，`@expect` 与父目录匹配，`@section` 与章节目录匹配 ✅

## 总体结论
**有条件验收。** 跑测 191/191 全部通过，无执行异常。但 3 个子节的 manifest/catalog/report 存在**统计数据与实际文件不一致**的问题（pass/fail/runtime 分布错位），需修复。

## 问题清单

### P1 🔴 — 4.3_Scopes 统计数据与实际不符
| 来源 | pass | fail | runtime | 合计 |
|------|:---:|:----:|:-------:|:----:|
| 实际文件 | **14** | 5 | **0** | 19 |
| manifest | 12 | 5 | 2 | 19 |
| catalog | 12 | 5 | 2 | 19 |
| test_report_4.3.md | 12 | 5 | 2 | 19 |

- compile-pass 有 14 文件（含 013, 014）但文档只记 12
- runtime 目录为空，但文档仍记 2 个不存在的用例（200, 201）

### P2 🔴 — 4.5.1_Type_Alias_Declaration 统计数据与实际不符
| 来源 | pass | fail | runtime | 合计 |
|------|:---:|:----:|:-------:|:----:|
| 实际文件 | **8** | 1 | **2** | 11 |
| manifest | 7 | 1 | 3 | 11 |
| catalog | 7 | 1 | 3 | 11 |

- compile-pass 有 8 文件（含 008）但文档只记 7
- runtime 缺少 `NAM_04_05_01_201_RUNTIME_alias_func_type.ets`（文件不存在），但文档仍计 3

### P3 🔴 — 4.7.5_Rest_Parameter 统计数据与实际不符
| 来源 | pass | fail | runtime | 合计 |
|------|:---:|:----:|:-------:|:----:|
| 实际文件 | **5** | 6 | **4** | 15 |
| manifest | 4 | 6 | 5 | 15 |
| catalog | 4 | 6 | 5 | 15 |

- compile-pass 有 5 文件（含 005）但文档只记 4
- runtime 缺少 `NAM_04_07_05_203_RUNTIME_tuple_rest_ok.ets`（文件不存在），但文档仍计 5

## 整改建议
1. 更新 `test_manifest.json` 中 4.3/4.5.1/4.7.5 的 pass/fail/runtime 字段
2. 更新 `test_case_catalog.md` 对应表格：补全缺失条目、删除不存在的文件引用
3. 更新 `ets_cases/*/test_report_*.md` 中的统计数字
4. 确认缺失的 runtime 文件（201/203/200/201）是否需要补回，或确认已废弃后同步清除文档引用
