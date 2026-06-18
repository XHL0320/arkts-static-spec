# 8.13 switch 语句 - 测试执行报告

**测试日期：** 2026-06-18
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 11 | 11 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 10 | 10 | 0 | 100% |
| **总计** | **25** | **25** | **0** | **100%** |

> 注：本批次在初版 11 个用例（5 compile-pass / 3 compile-fail / 3 runtime）基础上扩展至 25 个，新增覆盖了 char switch、boolean 扩展匹配、对象实例 switch、enum switch、null case 匹配、深层 fall-through、重复 case 值语义等场景，所有新增用例均一次通过。

---

## 详细执行结果

### compile-pass（11/11 通过）
验证 int、string、boolean、char 类型 switch 表达式的基本语法与 case 匹配、fall-through 连续 case 语义、带标签的 break 跳出外层嵌套 switch/loop、对象实例 switch、以及 char case 用于 int switch 表达式的兼容性。

### compile-fail（4/4 通过）
验证 es2panda 正确拒绝以下编译期错误：string case 用于 int switch、int case 用于 string switch、boolean case 用于 number switch、以及重复 default 标签。

### runtime（10/10 — ark VM 真实执行 + assert）
覆盖 int switch case 匹配与 default 兜底、fall-through 无 break 流入下一个 case、深层多层 fall-through、带标签的 break outer 跳出外层 switch 而普通 break 仅退出内层、null 值在 case 中的匹配行为、重复 case 值的执行语义、对象实例 switch、string 多值匹配、以及 enum 类型 switch 表达式。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.13_switch_Statements" bash run_statements_cases_wsl.sh
```
