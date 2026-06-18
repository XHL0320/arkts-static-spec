# 8.15.1 catch 子句 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 7 | 7 |
| compile-fail | 4 | 4 |
| runtime | 6 | 6 |
| **总计** | **17** | **17** |

🎯 一次通过率 100%

---

## 详细执行结果

### compile-pass（7/7 通过）
001~005 验证 try-catch 基本结构、catch 内 instanceof 对 RangeError/TypeError 的类型收窄、try-catch-finally 完整结构、catch 块内 Error 重新抛出、Error 对象属性（message、name、stack）访问。
015 验证 catch 块 instanceof 对三个以上 Error 子类型（RangeError、TypeError、SyntaxError）的类型收窄。
016 验证 catch 捕获原始错误后抛出新的不同 Error 类型（错误转换），代码通过编译。
全部编译通过。

### compile-fail（4/4 通过）
006~008 验证 catch 参数类型注解为 string、number、boolean 三种非 Error 类型时，es2panda 均正确拒绝编译。
017 验证 catch 参数类型注解为 object（非 Error 类型）时，es2panda 正确拒绝编译。
全部符合 ArkTS 规范要求（catch 标识符类型必须为 Error 或其子类型）。

### runtime（6/6 — ark VM 真实执行 + assert）
009~011 验证基本异常捕获（throw new Error，catch 验证 error.message）、instanceof 区分 RangeError 与 TypeError 的分支路由、catch 选择性重新抛出后外层 catch 的接收。
012 验证 catch 捕获 RangeError 后转换为 TypeError 抛出，外层 catch 正确捕获转换后的错误。
013 验证 catch 内 instanceof 对多个 Error 子类（RangeError、TypeError、Error）的运行时识别。
014 验证 catch 根据 instanceof 类型收窄返回不同值（ZeroDivisor 返回 -1，其他错误返回 0），函数调用方正确接收。
全部运行时断言通过。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.15.1_catch_Clause" bash run_statements_cases_wsl.sh
```
