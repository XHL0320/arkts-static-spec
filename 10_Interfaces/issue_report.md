# 10 Interfaces Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C-10.03-01 | ITF_10_03_005_FAIL_OBJECT_METHOD_CLASH_RETURN_GAP | 接口中 `toString(): string` 返回值冲突未被拒绝 | compile-time error | 编译通过 | C类-编译器未实现 |
| D-10.03-01 | ITF_10_03_003_PASS_OBJECT_METHOD_CLASH | 接口中 `toString(p: number): void` 参数形式冲突被接受 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-10.03-02 | ITF_10_03_003, ITF_10_03_005 | Object 方法冲突规范描述不完整 | Spec 明确规则 | Spec 未明确边界情况 | D类-Spec不一致 |

---

### 异常详情

**C-10.03-01** ⭐⭐⭐ HIGH — 接口中 `toString(): string` 返回值冲突未被拒绝

- **问题描述：** Spec §10.3 规定接口中与 Object 公有方法同名的声明应报编译错误。编译器未拒绝返回值冲突的声明 `toString(): string`（Spec 示例明确标注为 compile-time error）。
- **Spec 依据：** §10.3 Interface Members - "A compile-time error occurs if the method explicitly declared by the interface has the same name as the Object's public method"
- **复现用例 ID：** ITF_10_03_005_FAIL_OBJECT_METHOD_CLASH_RETURN_GAP
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

**D-10.03-01** ⭐⭐ MEDIUM — 接口中 `toString(p: number): void` 参数形式冲突被接受

- **问题描述：** 编译器接受参数不同的 `toString(p: number): void`（Spec 要求报错），用例保留在 compile-pass 中以供追踪。
- **Spec 依据：** §10.3 Interface Members - 同名方法应报编译错误
- **复现用例 ID：** ITF_10_03_003_PASS_OBJECT_METHOD_CLASH
- **当前状态：** 追踪中（待 Spec 或编译器明确规则）
- **跨语言对比：**

| 语言 | 参数不同的同名方法 | 说明 |
|------|-------------------|------|
| ArkTS | 被接受（应被拒绝） | Spec 要求报错 |
| Java | 视为重载，不报错 | 不同语义 |
| Swift | 产生警告 | 部分检测 |
| TypeScript | 声明合并 | 不同设计 |

- **建议：** Spec 应明确参数不同的同名方法是否应被拒绝。
- **分类：** D 类（Spec 与实现不一致 - 边界情况未明确）

---

**D-10.03-02** ⭐⭐ MEDIUM — Object 方法冲突规范描述不完整

- **问题描述：** Spec §10.3 要求接口中与 Object 公有方法同名的声明应报编译错误，但未明确说明参数不同、返回值不同等边界情况的处理。
- **Spec 依据：** §10.3 Interface Members - 应明确边界情况
- **涉及案例：**
  - `ITF_10_03_003_PASS_OBJECT_METHOD_CLASH.ets`：参数不同的同名方法，编译器未拒绝（D-10.03-01）
  - `ITF_10_03_005_FAIL_OBJECT_METHOD_CLASH_RETURN_GAP.ets`：返回值冲突，编译器未拒绝（C-10.03-01）
- **跨语言对比：**

| 语言 | Object 方法冲突规则 | 边界情况处理 |
|------|-------------------|-------------|
| ArkTS Spec | 同名声明应报编译错误 | 未明确不同参数/返回值的处理 |
| Java | 不禁止（子类实现时自然覆写） | 参数不同为重载，返回值不同报错 |
| Swift | NSObjectProtocol 同名声明警告 | 部分兼容 |
| TypeScript | 声明合并 | 所有情况合并处理 |

- **建议：** Spec 应明确接口 Object 方法冲突的完整规则，包括参数列表、返回值等不同场景。
- **分类：** D 类（Spec 与实现不一致 - Spec 文档不完整）

---

### 说明

1. **C 类异常**：编译器实现 bug，指编译器未实现 Spec 要求的功能
2. **D 类异常**：Spec 与实现不一致，指 Spec 要求的行为与编译器实际行为不符
3. **ID 格式**：`<分类>-<章节号>-<序号>`（如 C-10.03-01 表示章节 10.03 的第 1 个 C 类异常）
4. **严重性标记**：
   - ⭐⭐⭐ HIGH：严重影响语言规范一致性
   - ⭐⭐ MEDIUM：影响部分场景，有绕过方案
   - ⭐ LOW：影响边缘场景，绕过容易
5. **跨语言对比**：每个异常必须提供 ArkTS + Java + Swift 的对比分析
