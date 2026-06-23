# 16 Concurrency Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| CONC-U | CCY_16_04_02_003/004 | `launch<T>(async () => { await ...; return ...; })` 编译器崩溃 | compile-pass | es2panda CRASH（段错误） | 待修复 |
| D-16.4.2-01 | GAP-16.4.2-001 | `launch async { }` 推断形式不支持 | compile-pass | 编译报错（需要显式类型参数+括号） | D类-Spec不一致 |
| D-16.4.2-02 | GAP-16.4.2-002 | `launch { }` 无括号块形式不支持 | compile-pass | 编译报错（需要括号） | D类-Spec不一致 |
| D-16.6.1 | CCY_16_06_01_090_FAIL | launch domain/group/ID 参数未实现 | compile-pass | 编译报错（仅接受 lambda 参数） | D类-Spec不一致 |

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

### D-16.4.2-01 — `launch async { }` 推断形式不支持

**文件：** `Java_D164201.java` / `Swift_D164201.swift`

**编译验证命令：**
```bash
# Java
javac Java_D164201.java && java Java_D164201
# Swift
swiftc -parse-as-library Swift_D164201.swift -o /tmp/sw_d164201 && /tmp/sw_d164201
```

**编译验证输出：**
```text
# Java
D-16.4.2-01 OK: 42
# Swift
D-16.4.2-01 OK: 42
```

**🔴 跨语言对比：**

| 行为 | ArkTS 规范 | ArkTS 编译器 | Java | Swift |
|------|:---------:|:-----------:|:----:|:-----:|
| `launch async { await g() }` | `compile-pass` | ❌ 编译报错（需显式类型+括号） | N/A（无等价语法） | ✅ `Task { await g() }` |
| `launch<T>(async () => { await g() })` | `compile-pass` | ✅ 显式形式正常 | ✅ 必须显式形式 | ✅ 两种形式均可 |

**对比结论：**
- Java: 无语言级 launch/async 语法，所有异步操作需显式 `CompletableFuture.supplyAsync`
- Swift: `Task { }` 原生支持推断形式，与 ArkTS Spec 描述一致
- **ArkTS 编译器：SPEC 允许推断形式，编译器不支持（D 类 Spec 不一致）**

---

### D-16.4.2-02 — `launch { }` 无括号块形式不支持

**文件：** `Java_D164202.java` / `Swift_D164202.swift`

**编译验证命令：**
```bash
# Java
javac Java_D164202.java && java Java_D164202
# Swift
swiftc -parse-as-library Swift_D164202.swift -o /tmp/sw_d164202 && /tmp/sw_d164202
```

**编译验证输出：**
```text
# Java
hello!
D-16.4.2-02 OK
# Swift
D-16.4.2-02 OK
```

**🔴 跨语言对比：**

| 行为 | ArkTS 规范 | ArkTS 编译器 | Java | Swift |
|------|:---------:|:-----------:|:----:|:-----:|
| `launch { console.log(...) }` | `compile-pass` | ❌ 编译报错（需括号） | N/A（无等价语法） | ✅ `Task { print(...) }` |
| `launch<void>(() => { ... })` | `compile-pass` | ✅ 括号形式正常 | ✅ `executor.submit(() -> {})` | ✅ `Task { }` 和 `Task { }` 均可 |

**对比结论：**
- Java: `ExecutorService.submit(() -> { ... })` 需要括号
- Swift: `Task { print("hello!") }` 原生支持无括号块形式
- **ArkTS 编译器：SPEC 允许无括号块形式，编译器不支持（D 类 Spec 不一致）**

---

### D-16.6.1 — launch domain/group/ID 参数未实现

**文件：** `Java_D1661.java` / `Swift_D1661.swift`

**编译验证命令：**
```bash
# Java
javac Java_D1661.java && java Java_D1661
# Swift
swiftc -parse-as-library Swift_D1661.swift -o /tmp/sw_d1661 && /tmp/sw_d1661
```

**编译验证输出：**
```text
# Java
D-16.6.1 Domain OK: 42
# Swift
D-16.6.1 Domain OK
```

**🔴 跨语言对比：**

| 行为 | ArkTS 规范 | ArkTS 编译器 | Java | Swift |
|------|:---------:|:-----------:|:----:|:-----:|
| 指定目标 worker 线程 | `compile-pass` | ❌ 编译报错（仅接受 lambda） | ✅ `newSingleThreadExecutor(r -> ...)` | ✅ `@MainActor` / actor |
| domain 参数 | `compile-pass` | ❌ 不支持 | ✅ `ThreadFactory` 命名 | ✅ `Task(executorPreference:)` |
| group/ID 参数 | `compile-pass` | ❌ 不支持 | ✅ `ThreadPoolExecutor` | ✅ `actor` 隔离 |

**对比结论：**
- Java: 通过 `Executors.newSingleThreadExecutor(r -> { Thread t = new Thread(r, "domain-main"); return t; })` 精确控制目标线程
- Swift: 通过 `@MainActor` 注解指定 main domain，通过 `actor` 提供专属 worker 语义
- **ArkTS 编译器：SPEC 要求 launch 支持 domain/group/ID 参数，当前仅接受 lambda（D 类 Spec 不一致）**

---

## 验证汇总

| Issue | Java | Swift | 结果文件 |
|-------|:----:|:-----:|---------|
| CONC-U | ✅ `Java_CONCU.java` | ✅ `Swift_CONCU.swift` | `cross_lang_verify/` |
| D-16.4.2-01 | ✅ `Java_D164201.java` | ✅ `Swift_D164201.swift` | `cross_lang_verify/` |
| D-16.4.2-02 | ✅ `Java_D164202.java` | ✅ `Swift_D164202.swift` | `cross_lang_verify/` |
| D-16.6.1 | ✅ `Java_D1661.java` | ✅ `Swift_D1661.swift` | `cross_lang_verify/` |

所有 Java/Swift 文件均已编译通过并运行成功，输出预期 OK 结果。跨语言比对确认 ArkTS 编译器行为与 SPEC 不一致或存在编译器 CRASH。
