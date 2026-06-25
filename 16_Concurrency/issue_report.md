# 16 Concurrency Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| CONC-U | CCY_16_04_02_003/004 | `launch<T>(async () => { await ...; return ...; })` 编译器崩溃 | compile-pass | es2panda CRASH（段错误） | C类-编译器崩溃 |

---

### CONC-U — launch + async lambda + await 编译器段错误

**文件：** `Java_CONCU.java` / `Swift_CONCU.swift`

**编译验证命令：**
```bash
# Java
javac Java_CONCU.java && java Java_CONCU
# Swift
swiftc -parse-as-library Swift_CONCU.swift -o /tmp/sw_concu && /tmp/sw_concu
```

**编译验证输出：**
```text
# Java
CONC-U OK: 42
# Swift
CONC-U OK: 42
```

**🔴 跨语言对比：**

| 行为 | ArkTS 规范 | ArkTS 编译器 | Java | Swift |
|------|:---------:|:-----------:|:----:|:-----:|
| launch + async + await | `compile-pass` | 💥 **CRASH（段错误）** | ✅ `CompletableFuture.supplyAsync` | ✅ `Task { await g() }` |
| 同步 lambda | `compile-pass` | ✅ `launch(() => val)` | ✅ `supplyAsync(() -> val)` | ✅ `Task { val }` |
| async lambda 无 await | `compile-pass` | ✅ `launch(async () => val)` | ✅ `supplyAsync(() -> val)` | ✅ `Task { val }` |

**对比结论：**
- Java: `CompletableFuture.supplyAsync(() -> { return 42; })` 编译通过，运行正常
- Swift: `Task { () -> Int in await g(); return 42 }` 编译通过，运行正常
- **ArkTS 编译器：SPEC 要求编译通过，实际触发段错误（C 类编译器 CRASH）**

---

### 说明

1. **C 类异常**：编译器实现 bug / 编译器崩溃，指编译器未实现 Spec 要求的功能或触发段错误
2. **D 类异常**：Spec 待废弃特性/跨语言差异，当前不作为执行失败。D 类问题记录在 `design_issues_report_XX.md` 中，不在此文件追踪
3. **跨语言对比**：每个异常必须提供 ArkTS + Java + Swift 的对比分析
