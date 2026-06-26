# 04 Names Declarations Scopes 审查报告

## 审查范围
- **章节：** 04 Names, Declarations, Scopes（§4.1~§4.7.7）
- **用例目录：** `ets_cases/`（20 个子章节目录）
- **用例总数：** 191
- **审查日期：** 2026-06-26

## 执行结果
运行 `run_names_cases_wsl.sh`，环境依赖完备。

| 类别 | 文件数 | 实测 OK | Unexpected |
|:----:|:-----:|:-------:|:----------:|
| compile-pass | 91 | 91 | 0 |
| compile-fail | 71 | 71 | 0 |
| runtime | 29 | 29 | 0 |
| **合计** | **191** | **191** | **0** |

## 总体结论
**可验收。** 191 用例全部通过，无执行异常，元数据一致。已修复之前发现的 4.3/4.5.1/4.7.5 统计数据不一致问题。

## Spec 对照

| 主节 | Spec 覆盖 | 编译器一致性 | 说明 |
|------|:---------:|:-----------:|------|
| §4.1 Names | 16/16 | ✅ | 完整 |
| §4.2 Declarations | 13/13 | ✅ | 完整 |
| §4.2.1 Distinguishable Signatures | 3/3 | ✅ | 完整 |
| §4.3 Scopes | 19/19 | ✅ | 完整 |
| §4.4 Accessible | 16/16 | ✅ | 完整 |
| §4.5 Type Declarations | 24/24 | ✅ | 完整 |
| §4.5.1 Type Alias | 11/11 | ✅ | 完整 |
| §4.6.1 Variable Declarations | 9/9 | ✅ | 完整 |
| §4.6.2 Constant Declarations | 7/7 | ✅ | 完整 |
| §4.6.3 Validity of Initializer | 4/4 | ✅ | 完整 |
| §4.6.4 Assignability with Init | 3/3 | ✅ | 完整 |
| §4.6.5 Type Inference from Init | 9/9 | ✅ | 完整 |
| §4.7 Function Declarations | 5/5 | ✅ | 完整 |
| §4.7.1 Signatures | 5/5 | ✅ | 完整 |
| §4.7.2 Parameter List | 3/3 | ✅ | 完整 |
| §4.7.3 Readonly Parameters | 5/5 | ✅ | 完整 |
| §4.7.4 Optional Parameters | 5/5 | ✅ | 完整 |
| §4.7.5 Rest Parameter | 15/15 | ✅ | 完整 |
| §4.7.6 Shadowing by Parameter | 5/5 | ✅ | 完整 |
| §4.7.7 Return Type | 14/14 | ✅ | 完整 |

## 修复记录
- 4.3_Scopes: pass 12→14, runtime 2→0（manifest/catalog/report）
- 4.5.1_Type_Alias: pass 7→8, runtime 3→2
- 4.7.5_Rest_Parameter: pass 4→5, runtime 5→4
