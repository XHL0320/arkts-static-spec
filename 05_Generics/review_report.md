# 05 Generics 审查报告

## 审查范围
- **章节：** 05 Generics（§5.1~§5.2）
- **用例目录：** `ets_cases/`（8 个子章节目录）
- **用例总数：** 82
- **审查日期：** 2026-06-26

## 执行结果
运行 `run_generics_cases_wsl.sh`，环境依赖完备。

| 类别 | 文件数 | 实测 OK | Unexpected |
|:----:|:-----:|:-------:|:----------:|
| compile-pass | 40 | 40 | 0 |
| compile-fail | 30 | 30 | 0 |
| runtime | 12 | 12 | 0 |
| **合计** | **82** | **82** | **0** |

## 总体结论
**可验收。** 82 用例全部通过，元数据 100% 一致，issue_report 无异常。

## Spec 对照

| 主节 | Spec 覆盖 | 编译器一致性 | 说明 |
|------|:---------:|:-----------:|------|
| §5.1 Type Parameters | 11/11 | ✅ | 完整 |
| §5.1.1 Type Parameter Constraint | 12/12 | ✅ | 完整 |
| §5.1.2 Type Parameter Default | 8/8 | ✅ | 完整 |
| §5.1.3 Type Parameter Variance | 17/17 | ✅ | 完整 |
| §5.1.4 Wildcard Type | 11/11 | ✅ | 完整 |
| §5.2.1 Type Arguments | 7/7 | ✅ | 完整 |
| §5.2.2 Explicit Generic Instantiations | 9/9 | ✅ | 完整 |
| §5.2.3 Implicit Generic Instantiations | 7/7 | ✅ | 完整 |

## 修复记录
- test_manifest.json: total_cases 80→82
- 5.1_Type_Parameters: runtime 3→2, total 46→11
- catalog: 5.1.3 runtime 行补全（16→17 cases）
- catalog: 5.1.4 runtime 行补全（10→11 cases）
- test_report_5.1.3.md: Total 16→17, 删除 "No runtime cases" 备注
- test_report_5.1.4.md: Total 10→11
- mindmap: 5.1.3 补 runtime 分支，5.1.4 修正 Runtime 指向
