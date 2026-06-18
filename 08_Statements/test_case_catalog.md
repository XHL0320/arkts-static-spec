# 08 语句 测试用例目录

**规范来源：** `/home/nnd/projects/arkts/docs/STATEMENTS.md` (585 行)
**测试编译器：** es2panda + ark VM (arkcompiler/runtime_core/static_core/out/)
**最后执行：** 2026-06-19 | **363/363 通过**

---

## 用例统计

| 子章节 | compile-pass | compile-fail | runtime | 小计 |
|-------|-------------|-------------|---------|------|
| 8.1 正常与突然语句执行 | 6 | 3 | 5 | 14 |
| 8.2 表达式语句 | 8 | 4 | 5 | 17 |
| 8.3 块语句 | 6 | 4 | 5 | 15 |
| 8.4 常量或变量声明 | 10 | 8 | 5 | 23 |
| 8.5 if 语句 | 16 | 2 | 8 | 26 |
| 8.6 循环语句 | 8 | 7 | 5 | 20 |
| 8.7 while 与 do 语句 | 16 | 2 | 7 | 25 |
| 8.8 for 语句 | 13 | 3 | 6 | 22 |
| 8.9 for-of 语句 | 10 | 6 | 7 | 23 |
| 8.10 break 语句 | 7 | 6 | 6 | 19 |
| 8.11 continue 语句 | 6 | 7 | 5 | 18 |
| 8.12 return 语句 | 10 | 6 | 8 | 24 |
| 8.13 switch 语句 | 12 | 4 | 10 | 26 |
| 8.14 throw 语句 | 7 | 6 | 6 | 19 |
| 8.15 try 语句 | 7 | 6 | 9 | 22 |
| 8.15.1 catch 子句 | 7 | 4 | 6 | 17 |
| 8.15.2 finally 子句 | 8 | 3 | 7 | 18 |
| 8.15.3 try 语句执行 | 4 | 3 | 8 | 15 |
| **总计** | **161** | **84** | **118** | **363** |

---

## 覆盖维度总览

| 维度 | 覆盖情况 |
|------|---------|
| **Extended Conditional Expressions** | int/string/float/char/bigint/enum/null/undefined 全覆盖 (8.5/8.7/8.8) |
| **dangling else** | ✅ (8.5) |
| **block scope / shadowing** | 3+ 级多层遮蔽 (8.3/8.4) |
| **label 循环** | 声明/使用/lambda禁止/多级嵌套 (8.6) |
| **while/do-while** | 条件/空体/嵌套/continue跳转/break (8.7) |
| **for 循环** | expressionSequence/空部分/递减/复杂条件 (8.8) |
| **for-of** | 数组/字符串/FixedArray/ResizableArray/const/let/break/continue (8.9) |
| **break/continue** | 3+层嵌套/labeled/unlabeled/顶层禁止 (8.10/8.11) |
| **return** | void/constructor/lambda/子类/union type (8.12) |
| **switch** | int/string/boolean/char/enum/null case/fall-through/labeled break (8.13) |
| **throw** | Error/子类/null禁止/undefined禁止/嵌套传播 (8.14) |
| **try-catch-finally** | 全组合/错误传播/多级无catch/finally异常覆盖 (8.15-8.15.3) |
| **catch** | instanceof多子类/错误转译/rethrow (8.15.1) |
| **finally** | throw/return覆盖/break/continue (8.15.2) |
| **try 执行** | 正常/突然/传播/多级 (8.15.3) |

## 发现的设计问题

| ID | 问题 | 严重性 | 章节 |
|----|------|--------|------|
| STM-I1 | Block 内 type declaration — spec 措辞 vs 编译器行为不一致 | HIGH | 8.3 |
| STM-I2 | Loop label 未被使用 — spec 要求报错但 es2panda 未检查 | MEDIUM | 8.6 |

## 发现的 ArkTS 语言特性

- **逗号表达式仅限 for 循环** (ESY133681) — 8.2/8.11
- **Error.code 是 stdlib accessor** 不可重写 — 8.14
- **catch 无类型标注** `catch(e)` — STATEMENTS.md §8.15.1 原文定义
- **case null 需要函数返回 T|null** — 直接 new X() 导致类型窄化 — 8.13
- **char 在 switch 中与 int 可比** — Extended Conditional 影响 — 8.13
- **const 数组引用不可变但元素可修改** — 8.4

## 运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/08_Statements
bash run_statements_cases_wsl.sh
```
