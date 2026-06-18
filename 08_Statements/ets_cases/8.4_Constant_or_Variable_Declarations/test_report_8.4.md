# 8.4 常量或变量声明 - 测试执行报告

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
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **10** | **10** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（5/5 通过）
覆盖 let 基本声明与类型注解（int, number, string, boolean, long, double）、const 基本声明、块作用域内 const 遮蔽外层 let（规范明确允许）、const 配合数组等复杂类型。所有用例编译通过且语义正确。

### compile-fail（3/3 通过）
验证三种声明期错误被正确捕获：函数参数与同作用域局部变量同名冲突、const 变量重新赋值、同一块作用域内重复 let 声明。

### runtime（2/2 — ark VM 真实执行 + assert）
运行时验证 let 可变性与 const 不可变性、块作用域遮蔽后内外层变量值彼此隔离。所有 assert 通过，无 Error 抛出。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.4_Constant_or_Variable_Declarations" bash run_statements_cases_wsl.sh
```
