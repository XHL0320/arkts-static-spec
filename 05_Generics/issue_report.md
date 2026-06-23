# 05 Generics Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C-5.01-01 | GEN_05_01_03_006, GEN_05_01_03_008 | 变体检查未递归到回调函数类型内部 | compile-time error | 编译通过 | C类-编译器未实现 |

---

### 异常详情

**C-5.01-01** ⭐⭐⭐ HIGH — 变体检查粒度止于成员签名表层，未递归检查回调函数类型内部

- **问题描述：** ArkTS 规范要求 `out`/`in` 类型参数约束覆盖嵌套 in/out-position（含回调函数类型参数内部），但编译器仅检查直接成员签名的参数/返回类型，未递归展开回调函数类型内部，导致嵌套变体违规未被检测。
- **Spec 依据：** §5.1.3 Type Parameter Variance - 变体检查应递归到嵌套类型
- **复现用例 ID：** GEN_05_01_03_006 (callback variance GAP)、GEN_05_01_03_008 (callback return GAP)
- **实测结果：**
  ```typescript
  interface Producer<out T> {
    produce(): T
  }
  interface Consumer<in T> {
    consume(x: T): void
  }
  // 嵌套回调函数的变体检查未被递归检测
  ```
- **跨语言对比：**

| 语言 | 嵌套变体检查 | 说明 |
|------|-------------|------|
| ArkTS | ❌ 未递归检查回调内部 | Spec 要求检查但 es2panda 未实现 |
| Java | N/A（仅有 use-site `? extends`/`? super`） | 机制不同 |
| Swift | ✅ 正确识别嵌套变体位（已验证） | 与 ArkTS Spec 要求一致 |
| TypeScript | N/A（结构类型系统） | 不适用变体标注 |

- **建议：** 编译器应实现递归变体检查，符合 Spec §5.1.3 要求。
- **分类：** C 类（编译器实现 bug - 未实现 Spec 要求）

---

### 用例规模与覆盖分布

| 章节 | pass | fail | runtime | 合计 |
|---:|---:|---:|---:|---:|
| 5.1 Type Parameters | 5 | 4 | 2 | 11 |
| 5.1.1 Type Parameter Constraint | 6 | 5 | 1 | 12 |
| 5.1.2 Type Parameter Default | 4 | 2 | 2 | 8 |
| 5.1.3 Type Parameter Variance | 8 | 8 | 0 | 16 |
| 5.1.4 Wildcard Type | 2 | 8 | 0 | 10 |
| 5.2.1 Type Arguments | 5 | 1 | 1 | 7 |
| 5.2.2 Explicit Generic Instantiations | 5 | 3 | 1 | 9 |
| 5.2.3 Implicit Generic Instantiations | 3 | 3 | 1 | 7 |
| **合计** | **38** | **34** | **8** | **80** |

---

### 说明

1. **C 类异常**：编译器实现 bug，指编译器未实现 Spec 要求的功能
2. **D 类异常**：Spec 与实现不一致，指 Spec 要求的行为与编译器实际行为不符
3. **ID 格式**：`<分类>-<章节号>-<序号>`（如 C-5.01-01 表示章节 5.01 的第 1 个 C 类异常）
4. **严重性标记**：
   - ⭐⭐⭐ HIGH：严重影响语言规范一致性
   - ⭐⭐ MEDIUM：影响部分场景，有绕过方案
   - ⭐ LOW：影响边缘场景，绕过容易
5. **跨语言对比**：每个异常必须提供 ArkTS + Java + Swift 的对比分析
