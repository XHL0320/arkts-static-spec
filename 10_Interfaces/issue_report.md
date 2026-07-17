# 10 Interfaces Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|---|---|---|---|---|---|
| (当前无未解决异常) | | | | | |

### 用例规模与覆盖分布

| 章节 | pass | fail | runtime | 合计 |
|---:|---:|---:|---:|---:|
| 10.1 Interface Declarations | 5 | 1 | 1 | 7 |
| 10.2 Superinterfaces & Subinterfaces | 3 | 4 | 1 | 8 |
| 10.3 Interface Members | 3 | 2 | 1 | 6 |
| 10.4 Interface Properties | 1 | 2 | 1 | 4 |
| 10.4.1 Required Interface Properties | 6 | 1 | 1 | 8 |
| 10.4.2 Optional Interface Properties | 3 | 1 | 2 | 6 |
| 10.5 Interface Method Declarations | 6 | 2 | 2 | 10 |
| 10.6 Interface Inheritance | 5 | 4 | 1 | 10 |
| **合计** | **32** | **17** | **10** | **59** |

---

### 异常详情

### 历史已移除异常

**~~C-10.03-01 / D-10.03-02~~** ✅ 已移除 — Object 方法冲突（PDF原文§10.3不要求compile-time error）

- PDF原文§10.3的Object方法冲突规则含两个限定条件：(1) override-compatible signature，(2) is the interface default method。后果是"will never be invoked"（运行时注记），**不是compile-time error**。markdown版本删除了限定条件导致误读。
- 用例ITF_10_03_101已从compile-fail移至compile-pass，ITF_10_03_003的GAP标注已删除。
- **结论：** 不是编译器bug。从issue_report移除。

---

### 说明

当前 10 章所有 issue 已完成PDF原文核查，确认无有效未解决异常。此前C-10.03-01和D-10.03-02基于markdown版本删减的条件导致误读，已在本次清理中移除。

1. **ID 格式**：`<分类>-<章节号>-<序号>`（如 C-10.03-01 表示章节 10.03 的第 1 个 C 类异常）
2. **严重性标记**：
   - ⭐⭐⭐ HIGH：严重影响语言规范一致性
   - ⭐⭐ MEDIUM：影响部分场景，有绕过方案
   - ⭐ LOW：影响边缘场景，绕过容易
3. **跨语言对比**：每个异常必须提供 ArkTS + Java + Swift 的对比分析
