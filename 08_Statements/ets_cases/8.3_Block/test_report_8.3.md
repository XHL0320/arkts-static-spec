# 8.3 块语句 - 测试执行报告

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
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **15** | **15** | **0** | **100%** |

**最终通过率：100%**

---

## 详细执行结果

### compile-pass（6/6 通过）

- 001 基本块内多语句顺序执行
- 002 嵌套块变量遮蔽
- 003 void 函数体作为块语句
- 004 块内 let/const 变量声明与遮蔽
- 005 空块 `{}`
- 011 块后重新声明 var 变量（块作用域不泄漏）

### compile-fail（4/4 通过）

- 006 嵌套函数声明（ArkTS 禁止）
- 007 局部类声明
- 008 局部 type alias 声明
- 012 访问块内变量超出作用域（块外引用 let/const）

### runtime（5/5 — ark VM 真实执行 + assert）

- 009 块内多语句按文本顺序执行 + 变量作用域隔离
- 010 块内 throw 导致块提前退出
- 013 多层嵌套块变量遮蔽
- 014 throw 退出嵌套块
- 015 嵌套块内 return 提前退出函数

**修复历史：** 初版报告统计 5+3+2=10 用例。v2 扩展为 6+4+5=15 用例，新增 compile-pass 011（var 重声明），compile-fail 012（作用域违规访问），runtime 013-015（多层遮蔽、嵌套 throw、嵌套 return）。全部通过。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.3_Block" bash run_statements_cases_wsl.sh
```
