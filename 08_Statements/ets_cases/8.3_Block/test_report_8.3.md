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
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **10** | **10** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（5/5 通过）
验证基本块语句编译通过：基本块内多语句顺序执行、嵌套块变量遮蔽、void 函数体作为块语句、块内 let/const 变量声明与遮蔽、以及空块 `{}`。

### compile-fail（3/3 通过）
验证块内非法声明被正确拒绝：嵌套函数声明（ArkTS 禁止）、局部类声明、局部 type alias 声明，均正确报编译错误。

### runtime（2/2 — ark VM 真实执行 + assert）
验证块语句运行时语义：多条语句按文本顺序执行且变量作用域隔离、块内 throw 导致块提前退出，均输出 `verified`。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.3_Block" bash run_statements_cases_wsl.sh
```
