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
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **11** | **11** | **0** | **100%** |



---

## 详细执行结果

### compile-pass（5/5 通过）
验证 int、string、boolean 类型 switch 表达式的基本语法，case 匹配与 break 退出，fall-through 语义，以及带标签的 break 跳出外层嵌套 switch。

### compile-fail（3/3 通过）
验证 case 表达式类型必须可赋值给 switch 表达式类型：string case 用于 int switch、int case 用于 string switch、boolean case 用于 number switch 均被 es2panda 正确拒绝。

### runtime（3/3 — ark VM 真实执行 + assert）
验证 int switch 的 case 匹配与 default 兜底、fall-through 无 break 时流入下一个 case 及 default 行为、带标签的 break outer 跳出外层 switch 而普通 break 仅退出内层 switch。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.13_switch_Statements" bash run_statements_cases_wsl.sh
```
