# 16 Concurrency Issue Report — Java & Swift 跨语言实测报告

## 环境

| 语言 | 环境 | 状态 |
|------|------|------|
| Java | OpenJDK 1.8.0_492 | ✅ 实测 |
| Swift | Swift 6.0.3 | ✅ 实测 |

---

## CONC-U: launch + async + await 编译器段错误

**ArkTS 问题：** `launch<T>(async () => { await ...; return ...; })` 导致 es2panda 段错误。

### Java 实测

**文件：** `Java_CONCU.java`

**命令：**
```bash
javac Java_CONCU.java && java Java_CONCU
```

**输出：**
```text
CONC-U OK: 42
```

**结论：** Java 使用 `CompletableFuture.supplyAsync(() -> { g().get(); return 42; })` 可正常实现该模式。Java 通过 `get()` 阻塞等待（非挂起）来模拟 await，编译器无异常。

### Swift 实测

**文件：** `Swift_CONCU.swift`

**命令：**
```bash
swiftc -parse-as-library Swift_CONCU.swift -o /tmp/swift_concu && /tmp/swift_concu
```

**输出：**
```text
CONC-U OK: 42
```

**结论：** Swift 使用 `Task { () -> Int in await g(); return 42 }` 原生实现该模式。`Task { }` 等同于 ArkTS 的 `launch async { }`，编译器正常通过。

---

## D-16.4.2-01: launch async { } 推断形式不支持

**ArkTS 问题：** Spec §16.4.2 允许 `launch async { await g() }` 推断形式，但 es2panda 不支持（需显式类型+括号）。

### Java 实测

**文件：** `Java_D164201.java`

**命令：**
```bash
javac Java_D164201.java && java Java_D164201
```

**输出：**
```text
D-16.4.2-01 OK: 42
```

**结论：** Java 无语言级 launch/async 语法，所有异步操作通过 `CompletableFuture.supplyAsync()` 显式创建，不存在推断形式。

### Swift 实测

**文件：** `Swift_D164201.swift`

**命令：**
```bash
swiftc -parse-as-library Swift_D164201.swift -o /tmp/swift_d164201 && /tmp/swift_d164201
```

**输出：**
```text
D-16.4.2-01 OK: 42
```

**结论：** Swift 原生支持 `Task { await g() }` 推断形式，与 ArkTS Spec 描述完全一致。

---

## D-16.4.2-02: launch { } 无括号块形式不支持

**ArkTS 问题：** Spec §16.4.2 允许 `launch { console.log("hello!") }` 块形式，但 es2panda 不支持（需要括号）。

### Java 实测

**文件：** `Java_D164202.java`

**命令：**
```bash
javac Java_D164202.java && java Java_D164202
```

**输出：**
```text
hello!
D-16.4.2-02 OK
```

**结论：** Java 使用 `ExecutorService.submit(() -> { ... })` 实现，无块形式语法。

### Swift 实测

**文件：** `Swift_D164202.swift`

**命令：**
```bash
swiftc -parse-as-library Swift_D164202.swift -o /tmp/swift_d164202 && /tmp/swift_d164202
```

**输出：**
```text
D-16.4.2-02 OK
```

**结论：** Swift 原生支持 `Task { print("hello!") }` 无括号块形式，与 ArkTS Spec 描述一致。

---

## D-16.5.3: AsyncRWLock 未实现

**ArkTS 问题：** Spec §16.5.3 定义 AsyncRWLock，但 stdlib 未提供。

### Java 实测

**文件：** `Java_D1653.java`

**命令：**
```bash
javac Java_D1653.java && java Java_D1653
```

**输出：**
```text
D-16.5.3 AsyncRWLock OK: 42
```

**结论：** Java 通过 `ReentrantReadWriteLock` 提供完整的读写锁 API，支持 `readLock().lock()` / `writeLock().lock()` 分离。

### Swift 实测

**文件：** `Swift_D1653.swift`

**命令：**
```bash
swiftc -parse-as-library Swift_D1653.swift -o /tmp/swift_d1653 && /tmp/swift_d1653
```

**输出：**
```text
D-16.5.3 AsyncRWLock OK: 42
```

**结论：** Swift 通过 `actor` 提供内置读写隔离，无需显式读写锁 API。

---

## D-16.5.4: AsyncCondVar 未实现

**ArkTS 问题：** Spec §16.5.4 定义 AsyncCondVar，但 stdlib 未提供。

### Java 实测

**文件：** `Java_D1654.java`

**命令：**
```bash
javac Java_D1654.java && java Java_D1654
```

**输出：**
```text
notifier: signal
waiter: notified
D-16.5.4 AsyncCondVar OK
```

**结论：** Java 通过 `Condition` + `ReentrantLock` 实现完整的条件变量等待/通知模式。`cond.await()` 等价 ArkTS `cv.wait(m)`，`cond.signal()` 等价 `cv.notifyOne(m)`。

### Swift 实测

**文件：** `Swift_D1654.swift`

**命令：**
```bash
swiftc -parse-as-library Swift_D1654.swift -o /tmp/swift_d1654 && /tmp/swift_d1654
```

**输出：**
```text
notifier: signal
waiter: notified
D-16.5.4 AsyncCondVar OK
```

**结论：** Swift 通过 `NSCondition` 实现条件变量，语义与 ArkTS AsyncCondVar 一致。

---

## D-16.6.1: launch domain/group/ID 参数未实现

**ArkTS 问题：** Spec §16.6.1 要求 launch 支持 domain/group/ID 参数指定目标 worker 线程，但实现仅接受 lambda。

### Java 实测

**文件：** `Java_D1661.java`

**命令：**
```bash
javac Java_D1661.java && java Java_D1661
```

**输出：**
```text
D-16.6.1 Domain OK: 42
```

**结论：** Java 通过 `Executors.newSingleThreadExecutor(r -> { Thread t = new Thread(r, "domain-main"); return t; })` 精确控制任务运行的目标线程，等价于 ArkTS 的 domain 概念。

### Swift 实测

**文件：** `Swift_D1661.swift`

**命令：**
```bash
swiftc -parse-as-library Swift_D1661.swift -o /tmp/swift_d1661 && /tmp/swift_d1661
```

**输出：**
```text
D-16.6.1 Domain OK
```

**结论：** Swift 通过 `@MainActor` 注解指定 main domain，通过 `actor` 隔离提供专属 worker 语义。

---

## 三语言对比汇总

| Issue | ArkTS | Java | Swift |
|-------|-------|------|-------|
| CONC-U: launch + async + await | 💥 **Compiler CRASH** | ✅ CompletableFuture.supplyAsync | ✅ Task { await ... } |
| D-16.4.2-01: launch async {} 推断 | ❌ 不支持（需显式类型+括号） | N/A（无等价语法） | ✅ Task { } 原生支持 |
| D-16.4.2-02: launch {} 块形式 | ❌ 不支持（需括号） | N/A（无等价语法） | ✅ Task { } 原生支持 |
| D-16.5.3: AsyncRWLock | ❌ stdlib 未实现 | ✅ ReentrantReadWriteLock | ✅ actor 隔离 |
| D-16.5.4: AsyncCondVar | ❌ stdlib 未实现 | ✅ Condition + Lock | ✅ NSCondition |
| D-16.6.1: launch domain/group/ID | ❌ 仅接受 lambda | ✅ ExecutorService | ✅ @MainActor / actor |

## 实测结论

所有 6 个 Java 和 6 个 Swift 跨语言验证文件均已编译通过并运行成功，输出预期结果。Java/Swift 对 ArkTS issue_report.md 中记录的每个异常用例都有可用的等价实现，验证了 ArkTS Spec 定义的语义是合理的、可实现的。
