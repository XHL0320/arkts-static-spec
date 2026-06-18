# 8.15.2 finally 子句 - ArkTS 设计问题发现报告

**报告日期：** 2026-06-18
**测试用例数：** 11（5 个编译通过 + 3 个编译失败 + 3 个运行时）
**目的：** 通过用例执行（编译期 + 运行时）+ 跨语言对比，识别 ArkTS finally 子句的设计问题。

---

## 一、新发现的设计问题（基于规范分析）

本节未发现任何设计问题。所有行为均符合 ArkTS 规范 8.15.2。

8.15.2 节的全部用例首次执行即 100% 通过，无编译器异常，无违反直觉的语义行为。所有测试点（基础 finally、catch 后的 finally、return 后的 finally、无 catch 的 try-finally、嵌套 finally；以及针对保留字/局部类/嵌套函数的负面测试；以及运行时对执行保证的验证）均表现出与规范一致的行为。

---

## 二、已验证 ArkTS 行为（与规范一致）

| 验证点 | 涉及用例 | 状态 |
|-----------------------------------------------------------|------------------|--------|
| 基础 try-catch-finally 结构 | 001, 009 | ✅ |
| finally 在 catch 之后执行 | 002, 009 | ✅ |
| finally 在 return 之前执行 | 003, 010 | ✅ |
| 无 catch 的 try-finally | 004 | ✅ |
| 嵌套 try-catch-finally | 005 | ✅ |
| finally 块中使用保留字被拒绝 | 006 | ✅ |
| finally 块中定义局部类被拒绝 | 007 | ✅ |
| finally 块中定义嵌套函数被拒绝 | 008 | ✅ |
| finally 始终执行（正常、异常、return 路径） | 009, 010, 011 | ✅ |
| catch 重新抛出异常时 finally 仍执行 | 011 | ✅ |

---

## 三、严重性等级总览

| 严重性 | 数量 | 涉及问题 |
|--------|------|----------|
| ⭐ HIGH（高） | 0 | - |
| ⭐ MEDIUM（中） | 0 | - |
| ⭐ LOW（低） | 0 | - |
| 设计观察（非问题） | 3 | A, B, C |

---

## 四、跨语言对比结论

### 观察 A：finally 语义与 Java 完全一致——无意外

ArkTS finally 子句的语义（无论正常完成还是异常中断都始终执行；即使在 try/catch 中有 return 或抛出新错误也会执行）与 Java JLS SE21 第 14.20.2 节完全相同。这是一个经过充分理解且久经考验的设计，不存在任何歧义。

**对比：**

| 语言 | finally 语义 |
|------|-------------|
| ArkTS | `finally` 块始终执行，无论正常还是异常完成 |
| Java | `finally` 块在 try 块退出时始终执行 |
| Swift | `defer` 在作用域退出时执行；**并非**与 try 结构绑定 |

**评价：** ArkTS 忠实地遵循 Java 模型。无设计顾虑。

### 观察 B：ArkTS 未提供 try-with-resources（Java）或 defer（Swift）

Java 提供 `try-with-resources`（JLS SE21 第 14.20.3 节）用于自动资源管理，Swift 提供 `defer` 用于基于作用域的清理。ArkTS 的 finally 需要手动进行资源清理。

**评价：** 这是一种有意识的简化。ArkTS 面向资源受限的环境（OpenHarmony），在 finally 中手动清理资源已足够。规范明确指出推荐使用 finally 进行资源管理（第 8.15.2 节中的"关闭文件、刷新缓冲区"）。

### 观察 C：finally 与 return 结合使用——标准语义保持不变

测试用例 `STM_08_15_2_003_PASS_finally_after_return` 和 `STM_08_15_2_010_RUNTIME_finally_with_return` 表明，当 try 块中存在 `return` 语句时，finally 块会在返回值被计算之前执行（更准确地说，返回值被保存，finally 运行，然后返回保存的值）。测试确认：
- `testReturnInTry()` 返回 `1`（在 finally 设置 `localFlag = 2` 之前保存的值）
- `testReturnInCatch()` 返回 `10`（在 finally 设置 `localFlag = 20` 之前保存的值）

**评价：** 这与 Java 语义完全一致。无意外。

---

## 五、改进方向建议

### 短期
- 当前设计无需改进。

### 中期
- 无。finally 子句的设计已稳定且被充分理解。

### 长期
- 如果资源管理模式在 ArkTS 中变得普遍，可考虑添加 `using` 或 `try-with-resources` 结构以实现自动清理（类似于 Java JLS 第 14.20.3 节），但这需要评估对语言极简主义哲学的影响。

---

## 六、8.15.2 节核心结论

| 维度 | 评估 |
|---------------------------|------------------------------------------------------------------|
| 规范一致性 | 100%（所有用例首次执行即通过） |
| 设计严谨性 | 优秀——忠实地遵循 Java finally 语义 |
| 可预测性 | 无意外——finally 行为符合开发者预期 |
| 资源管理 | 手动（无 try-with-resources），但对目标平台已足够 |
| 与 Java/Swift 的对比 | ArkTS = Java > Swift（finally 比 defer 更直观） |
