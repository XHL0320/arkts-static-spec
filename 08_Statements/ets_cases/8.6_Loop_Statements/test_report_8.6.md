# 8.6 循环语句 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `08_Statements/run_statements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 7 | 7 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **20** | **20** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（8/8 通过）
验证 while、do-while、for、for-of 四种循环的基本语法编译，labeled loop 配合 break/continue 的合法跨层跳转，循环内嵌套条件语句与变量声明，以及嵌套循环中的标签作用域隔离。所有用例编译通过。

### compile-fail（7/7 通过）
验证 lambda 表达式内禁止引用外层循环标签（continue/break），引用未声明标签的编译时错误检测，以及标签作用域与 switch/if 语句边界的语义约束。编译器全部正确拒绝。

### runtime（5/5 — ark VM 真实执行 + assert）
验证 while/do-while 的迭代计数、continue、break 行为；for/for-of 的求和、边界条件（空数组、空 init/update）；labeled loop 的 break/continue 跨层跳转语义；嵌套循环中标签精确控制外层/内层退出；以及循环体中途修改迭代变量的正确性。全部通过 throw-on-mismatch 断言校验。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.6_Loop_Statements" bash run_statements_cases_wsl.sh
```
