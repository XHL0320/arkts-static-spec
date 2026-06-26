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
| compile-pass | 32 | 32 | 0 |
| compile-fail | 17 | 16 | 1（ISS-10-02: Object 方法冲突） |
| runtime | 10 | 10 | 0 |
| **合计** | **59** | **58** | **1** |

> runner 脚本 `$?` bug 已修复（之前误报 3 个 runtime 失败）。

## 总体结论
**可验收。** 59 用例 58 pass，仅 1 个已知 GAP（ISS-10-02: Object 方法冲突编译器未检测），元数据 100% 一致。

## Spec 对照

| 主节 | Spec 覆盖 | 编译器一致性 | 说明 |
|------|:---------:|:-----------:|------|
| §10.1 Interface Declarations | 7/7 | ✅ | 完整 |
| §10.2 Superinterfaces | 8/8 | ✅ | 完整 |
| §10.3 Interface Members | 6/6 | ⚠️ | ISS-10-02: Object 方法冲突未检测 |
| §10.4 Interface Properties | 4/4 | ✅ | 完整 |
| §10.4.1 Required Properties | 8/8 | ✅ | 完整 |
| §10.4.2 Optional Properties | 6/6 | ✅ | 完整 |
| §10.5 Method Declarations | 10/10 | ✅ | 完整 |
| §10.6 Interface Inheritance | 10/10 | ✅ | 完整 |

## 已知 GAP
- **ISS-10-02（C-10.03-01）** — §10.3 要求接口中与 Object 公有方法同名的声明应报编译错误，编译器未实现。已记录在 `issue_report.md`。

## 修复记录
- runner: 修复 `$?` 在 else 分支中被覆盖的 bug
- test_report_10.6.md: Total 7→10
- test_case_catalog.md: 统计表行名/列数修正
- test_design_mindmap.md: 10.6 compile-fail 补全 2 条目
- test_design_mindmap_10.6.md: 补 compile-fail/runtime 分支
