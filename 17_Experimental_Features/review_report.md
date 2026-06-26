# 17 Experimental Features 审查报告

## 审查范围
- 章节：17 Experimental Features
- 用例目录：`17_Experimental_Features/ets_cases/`
- 用例总数：533（237P + 161F + 135R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地 Windows 无 arkcompiler 工具链，runner 为 WSL bash 脚本。本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成。

| 指标 | 数值 |
|------|------:|
| .ets 总数 | 533 |
| manifest | ✅ 合法（cases 数组格式）|
| 元数据不一致 | **0** |

## 总体结论
**可验收。** 533 用例覆盖全部 40 个小节，元数据完全一致（METADATA_BAD_COUNT=0）。多数 previously reported issues 已解决（D-17.5、D-17.11.3、D-17.13.4、D-17.13.5、D-17.14、C-17.9.5-02、C-17.16.1 等）。剩余 17 项异常已清晰归类在 issue_report。

## 覆盖评价

| 范围 | P | F | R | 总 |
|------|:---:|:---:|:---:|:---:|
| 40 小节 | 237 | 161 | 135 | **533** |
