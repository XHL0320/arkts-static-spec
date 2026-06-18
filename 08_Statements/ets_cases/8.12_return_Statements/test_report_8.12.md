# 8.12 return 语句 - 测试执行报告

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
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 8 | 8 | 0 | 100% |
| **总计** | **24** | **24** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（10/10 通过）

验证 void 函数中无表达式 return（001）、void 函数中 `return undefined`（002）、返回值类型匹配的表达式 return（003）、构造函数中无表达式 return（004）、条件分支多路径 return（005）、lambda 表达式中的 return（006）、子类类型可赋值给基类返回类型（007）、联合返回类型函数中的 return（008）、构造函数无表达式 return 变体（015）、函数内 lambda 中的 return（016）均通过编译。

### compile-fail（6/6 通过）

验证构造函数中 `return undefined` 被正确拒绝（006）、非 void 函数中无表达式 return 被正确拒绝（007）、返回值类型不匹配（int 函数返回 string）被正确拒绝（008）、顶层 return 被正确拒绝（009）、lambda 中返回类型不匹配被正确拒绝（010）、void 函数中使用带表达式 return 被正确拒绝（017）。

### runtime（8/8 — ark VM 真实执行 + assert）

验证 return 表达式产生正确值（009）、return 导致提前退出控制流（010）、条件多路径 return 行为正确（011）、lambda 中 return 的返回值（012）、子类可赋值给基类返回类型的运行时行为（013）、联合返回类型的运行时行为（014）、多控制流路径中的 return（018）、嵌套 if-else 中的 return（019），均通过 throw-on-mismatch 断言。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.12_return_Statements" bash run_statements_cases_wsl.sh
```
