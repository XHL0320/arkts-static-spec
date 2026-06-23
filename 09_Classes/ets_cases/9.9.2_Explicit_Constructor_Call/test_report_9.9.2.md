# 9.9.2 显式构造器调用 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `09_Classes/run_classes_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **9** | **9** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（2/2 通过）

两个正向用例均编译成功，覆盖9.9.2节规定的两种合法显式构造器调用形式：

- **CLS_09_09_006_PASS_SUPER_CALL**：派生类构造器通过 `super(n)` 显式调用父类有参构造器，编译器正确处理 `super(args)` 形式的父类构造器调用，生成合法字节码。
- **CLS_09_09_008_PASS_THIS_CALL**：同一类中次级构造器通过 `this(0, 0)` 委托给主构造器（primary constructor），编译器正确处理 `this(args)` 形式的同类构造器委托。

### compile-fail（6/6 通过）

六个反向用例均按预期被编译器拦截，证明 es2panda 正确实施了9.9.2节的约束规则：

- **CLS_09_09_007_FAIL_SUPER_ARG_THIS**：`super(this.x)` 在构造器调用参数中引用了 `this`，违反 spec "arguments cannot refer to this or super" 规则，编译失败。
- **CLS_09_09_009_FAIL_SUPER_NAMED_CALL**：尝试通过 `super.init(x)` 调用父类命名构造器。命名构造器为实验特性，当前 es2panda 尚不支持，编译失败。
- **CLS_09_09_010_FAIL_THIS_NAMED_CALL**：尝试通过 `this.init(0, 0)` 委托到同类命名构造器。同为实验特性，编译失败。
- **CLS_09_09_011_FAIL_CALL_AS_EXPRESSION**：`let v = super(x)` 将 super() 调用赋值给变量，违反了 "Explicit constructor call is used as expression" 规则，编译失败。
- **CLS_09_09_012_FAIL_ARG_INSTANCE_METHOD**：`super(this.getValue())` 在构造器调用参数中引用了实例方法 `getValue()`，违反 "arguments cannot refer to instance method" 规则，编译失败。
- **CLS_09_09_024_FAIL_SUPER_ARG_INSTANCE_METHOD**：与上述用例等价（`super(this.getVal())`），验证不同方法名同样被拦截，编译失败。

### runtime（1/1 — ark VM 真实执行 + assert）

- **CLS_09_09_047_RUNTIME_SUPER_CALL_CHAIN**：定义一个基类 `B047`（带字段 `val` 和构造器 `constructor(v: int)`）和派生类 `D047`（带额外字段 `extra`，构造器通过 `super(v)` 调用基类构造器后初始化 `this.extra`）。`main()` 函数中执行 `new D047(10, "x")` 后对 `d.val != 10` 和 `d.extra != "x"` 进行 assert 校验，两者均通过。验证了继承链中 `super()` 调用及子类字段初始化在 ark VM 上正确执行。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.9.2_Explicit_Constructor_Call" bash run_classes_cases_wsl.sh
```
