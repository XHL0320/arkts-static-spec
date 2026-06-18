# 8.15 try 语句 - 测试执行报告

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
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |



---

## 详细执行结果

### compile-pass（5/5 通过）
验证 try-catch、try-finally、try-catch-finally 三种语法变体，以及嵌套 try 语句和 try/catch/finally 中 return 语句的编译通过。

### compile-fail（4/4 通过）
验证编译器正确拒绝：缺少 catch/finally 子句的 try、catch 块中声明局部类、finally 块中定义局部类型别名、catch 块中定义嵌套函数。

### runtime（3/3 — ark VM 真实执行 + assert）
验证 try-catch 无异常时 catch 不执行、try-catch 有异常时 catch 捕获并处理、try-finally 中 finally 始终执行（无论是否抛出异常）。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
SECTIONS="8.15_try_Statements" bash run_statements_cases_wsl.sh
```
