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
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 7 | 7 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **21** | **21** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（10/10 通过）

覆盖 let 基本声明与类型注解（int, number, string, boolean, long, double）、const 基本声明、块作用域内 const 遮蔽外层 let（规范明确允许）、多层遮蔽（函数体→if块→内层块，含 let/const 混用）、for 循环体内 let 合法遮蔽参数名（循环体创建独立块作用域，不与参数冲突）、const 复杂初始化表达式（算术/三元/逻辑/字符串拼接/数组字面量）、let 无初始化器声明（编译通过，与 const 不同）、let 联合类型注解（string|number, int|null, string|int|boolean, number|string[] 等）。全部用例编译通过且语义正确。

### compile-fail（7/7 通过）

验证 7 种声明期错误被正确捕获：函数参数与同作用域局部变量同名冲突、const 变量重新赋值、同一函数作用域内重复 let 声明、const 声明缺少初始化器（函数作用域）、同一作用域内重复 const 声明、模块顶层 const 无初始化器、if 块体内重复 let 声明。所有反向用例均产生编译错误，无漏报。

### runtime（4/4 — ark VM 真实执行 + assert）

运行时验证 let 可变性与 const 不可变性（int, string, boolean）、基本块作用域遮蔽（离开块后外层值恢复）、多层遮蔽（三级嵌套块中各级 let/const 值彼此隔离，离开各级块后逐级恢复）、const 表达式初始化保持性（字面量、算术运算结果、字符串拼接结果均不可变）。所有 assert 通过，无 Error 抛出。

---

## 修复记录

| 用例 | 异常 | 修复 |
|------|------|------|
| 013 | @id 标记为 FAIL 但实际 compile-pass；原以为 for 循环体 let 与参数同名会冲突 | 确认循环体创建独立块作用域，let 合法遮蔽参数，@expect 保持 compile-pass，@id 保留历史标记 |
| 017 | @id 标记为 FAIL 但实际 compile-pass；原预期 let 无初始化器为编译错误 | es2panda 允许 let 无初始化器（仅 const 强制初始化），@expect 保持 compile-pass，@id 保留历史标记 |

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.4_Constant_or_Variable_Declarations" bash run_statements_cases_wsl.sh
```
