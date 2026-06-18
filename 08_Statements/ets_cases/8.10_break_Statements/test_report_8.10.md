# 8.10 break 语句 - 测试执行报告

**测试日期：** 2026-06-18
**编译器：** es2panda
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 6 | 6 | 0 | 100% |
| **总计** | **19** | **19** | **0** | **100%** |

**🎯 一次通过率：100%**（首次执行无任何用例失败）

---

## 详细执行结果

### compile-pass（7/7 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | PASS_break_basic_while | 无标签 break 在 while 中跳出 | PASS |
| 002 | PASS_break_labelled | 带标签 break 跳出外层标记循环 | PASS |
| 003 | PASS_break_for_loop | 无标签 break 在 for 循环中 | PASS |
| 004 | PASS_break_for_of | 无标签 break 在 for-of 中 | PASS |
| 005 | PASS_break_switch | break 在 switch 中防止 fallthrough | PASS |
| 006 | PASS_break_deep_nested_unlabeled | 深层嵌套中无标签 break 跳出最内层 | PASS |
| 007 | PASS_break_deep_nested_labeled | 深层嵌套中带标签 break 跳出指定外层 | PASS |

验证无标签 break 在 while/for/for-of/switch 及深层嵌套中的编译，以及带标签 break 跳出外层/深层嵌套外层循环的编译。es2panda 全部正确接受。

### compile-fail（6/6 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 008 | FAIL_break_outside_loop | break 在非循环/switch 上下文（if 块内） | PASS |
| 009 | FAIL_break_label_not_found | 标签未找到（标签不存在于外层） | PASS |
| 010 | FAIL_break_label_non_loop | 标签指向非循环/switch 的标记块语句 | PASS |
| 011 | FAIL_break_at_top_level | break 在顶层（不在任何循环/switch 内） | PASS |
| 012 | FAIL_break_label_not_found_deep | 深层嵌套中标签不存在 | PASS |
| 013 | FAIL_break_deep_nested_outside | 深层嵌套中 break 出现在非循环上下文 | PASS |

验证 break 在非循环/switch 上下文、标签未匹配、标签指向非循环语句、顶层 break、深层嵌套中标签未找到及非循环上下文等场景。es2panda 全部正确产生编译错误。

### runtime（6/6 — ark VM 真实执行 + assert）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 014 | RUNTIME_break_while_control | 无标签 break 在 while 中控制流跳出 | PASS |
| 015 | RUNTIME_break_labelled_outer | 带标签 break 跳出外层标记循环 | PASS |
| 016 | RUNTIME_break_switch_control | break 在 switch 中防止 fallthrough | PASS |
| 017 | RUNTIME_break_deep_nested_unlabeled | 深层嵌套中无标签 break 跳出最内层 | PASS |
| 018 | RUNTIME_break_deep_nested_labeled_outer | 深层嵌套中带标签 break 跳出最外层 | PASS |
| 019 | RUNTIME_break_deep_nested_labeled_mid | 深层嵌套中带标签 break 跳出中间层 | PASS |

验证无标签 break 在 while/switch/深层嵌套中的控制流跳出、带标签 break 跳出外层/中层标记循环的运行时行为，全部断言通过。

---

## 执行过程异常

**首次运行无失败用例，无需修复。**

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.10_break_Statements" bash run_statements_cases_wsl.sh
```
