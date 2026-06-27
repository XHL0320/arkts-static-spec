# 10 Interfaces Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C-10.03-01 | ITF_10_03_101_FAIL_OBJECT_METHOD_CLASH_RETURN_GAP | 接口中 `toString(): string` 返回值冲突未被拒绝 | compile-time error | 编译通过 | C类-编译器未实现 |

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

**C-10.03-01** ⭐⭐⭐ HIGH — 接口中 `toString(): string` 返回值冲突未被拒绝

- **问题描述：** Spec §10.3 规定接口中与 Object 公有方法同名的声明应报编译错误。编译器未拒绝返回值冲突的声明 `toString(): string`（Spec 示例明确标注为 compile-time error）。
- **Spec 依据：** §10.3 Interface Members - "A compile-time error occurs if the method explicitly declared by the interface has the same name as the Object's public method"
- **复现用例 ID：** ITF_10_03_101_FAIL_OBJECT_METHOD_CLASH_RETURN_GAP
- **实测结果：**
  ```typescript
  interface I {
    toString(): string  // ❌ 应被拒绝（与 Object.toString() 冲突）
  }
  // 当前编译器未检测到冲突，接受此声明
  ```
- **跨语言对比：**

| 语言 | Object 方法冲突检测 | 说明 |
|------|-------------------|------|
| ArkTS | ❌ 未拒绝返回值冲突 | Spec 要求报错但 es2panda 未实现 |
| Java | ✅ `toString(int p)` 不报错，有不同语义 | 不禁止接口中声明 Object 方法 |
| Swift | ✅ NSObjectProtocol 已有 `description`，重复声明有警告 | Protocol 中重复声明会产生警告 |
| TypeScript | ✅ 允许声明同名方法（声明合并） | 不同设计哲学 |

- **建议：** 编译器应实现 Object 公有方法名冲突检测，符合 Spec §10.3 要求。
- **分类：** C 类（编译器实现 bug - 未实现 Spec 要求）

---

### 待确认问题

以下问题为 Spec 文档未明确的边界情况，非直接 Spec/实现不一致，待 Spec 团队确认规则后重新评估。

**D-10.03-02** — Object 方法冲突规范描述不完整

- **问题描述：** Spec §10.3 要求接口中与 Object 公有方法同名的声明应报编译错误，但未明确说明参数不同、返回值不同等边界情况的处理。
- **涉及案例：**
  - `ITF_10_03_003_PASS_OBJECT_METHOD_CLASH.ets`：参数不同的同名方法，编译器未拒绝
  - `ITF_10_03_101_FAIL_OBJECT_METHOD_CLASH_RETURN_GAP.ets`：返回值冲突，编译器未拒绝（C-10.03-01）
- **跨语言对比：**

| 语言 | Object 方法冲突规则 | 边界情况处理 |
|------|-------------------|-------------|
| ArkTS Spec | 同名声明应报编译错误 | 未明确不同参数/返回值的处理 |
| Java | 不禁止（子类实现时自然覆写） | 参数不同为重载，返回值不同报错 |
| Swift | NSObjectProtocol 同名声明警告 | 部分兼容 |
| TypeScript | 声明合并 | 所有情况合并处理 |

---

### 说明

1. **C 类异常**：编译器实现 bug，指编译器未实现 Spec 要求的功能
2. **D 类异常**：Spec 待废弃特性/跨语言差异，当前不作为执行失败。D 类问题记录在 `design_issues_report_XX.md` 中，不在此文件追踪
3. **ID 格式**：`<分类>-<章节号>-<序号>`（如 C-10.03-01 表示章节 10.03 的第 1 个 C 类异常）
4. **严重性标记**：
   - ⭐⭐⭐ HIGH：严重影响语言规范一致性
   - ⭐⭐ MEDIUM：影响部分场景，有绕过方案
   - ⭐ LOW：影响边缘场景，绕过容易
5. **跨语言对比**：每个异常必须提供 ArkTS + Java + Swift 的对比分析
