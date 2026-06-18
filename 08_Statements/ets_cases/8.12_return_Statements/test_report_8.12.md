# 8.12 return 语句 - 测试执行报告

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

验证 void 函数中无表达式 return（001）、void 函数中 `return undefined`（002）、返回值类型匹配的表达式 return（003）、构造函数中无表达式 return（004）以及条件分支多路径 return（005）均通过编译。

### compile-fail（3/3 通过）

验证构造函数中 `return undefined` 被正确拒绝（006）、非 void 函数中无表达式 return 被正确拒绝（007）、返回值类型不匹配（int 函数返回 string）被正确拒绝（008）。

### runtime（3/3 — ark VM 真实执行 + assert）

验证 return 表达式产生正确值（009）、return 导致提前退出控制流（010）、条件多路径 return 行为正确（011），均通过 throw-on-mismatch 断言。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.12_return_Statements" bash run_statements_cases_wsl.sh
```
