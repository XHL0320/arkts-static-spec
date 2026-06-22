# 05 Generics Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C-5.01-01 | GEN_05_01_03_006, GEN_05_01_03_008 | 变体检查未递归到回调函数类型内部 | compile-time error | 编译通过 | C类-编译器未实现 |
| D-5.01-02 | GEN_05_01_023 | keyof 约束错误信息仅显示第一个 key | 完整错误信息 | 仅显示第一个 key | D类-Spec不一致 |
| D-5.02-01 | GEN_05_02_001 | 内部类型名 `Double` 暴露给用户 | 显示 `number` 或 `double` | 显示 `Double` | D类-Spec不一致 |
| D-5.02-02 | GEN_05_02_002 | 推断失败错误信息冗余 | 简洁错误信息 | 冗余信息 | D类-Spec不一致 |

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

**D-5.01-02** ⭐ LOW — keyof 约束错误信息仅显示第一个 key

- **问题描述：** 约束为 `extends keyof A`（A 有 f1/f2/f3 三个字段），但错误信息 `'"f0"' should be a subtype of '"f1"' constraint` 只显示 `"f1"` 而非 `"f1"|"f2"|"f3"`。
- **Spec 依据：** §5.1 Type Parameters - 错误信息应完整
- **复现用例 ID：** GEN_05_01_023
- **实测结果：**
  ```typescript
  interface A { f1: string; f2: number; f3: boolean }
  function f<T extends keyof A>(x: T) {}
  f("f0")  // 错误信息：'"f0"' should be a subtype of '"f1"' constraint
  // 应显示：'"f0"' should be a subtype of '"f1"|"f2"|"f3"' constraint
  ```
- **跨语言对比：**

| 语言 | keyof 约束错误信息 | 说明 |
|------|-------------------|------|
| ArkTS | 仅显示首个 key | 待优化 |
| Java | 不支持 keyof 约束 | N/A |
| Swift | 无等效 keyof | N/A |
| TypeScript | 显示完整联合类型 | 更友好 |

- **建议：** 错误信息应显示完整的 keyof 展开结果（如 `"f1"|"f2"|"f3"`）。
- **分类：** D 类（Spec 与实现不一致 - 错误信息不完整）

---

**D-5.02-01** ⭐ LOW — 内部类型名 `Double` 暴露给用户

- **问题描述：** 类型推断失败时错误信息显示内部类型名 `Double`（应为 `number` 或 `double`）。
- **Spec 依据：** §5.2 Type Arguments - 错误信息应使用用户可见类型名
- **复现用例 ID：** GEN_05_02_001
- **跨语言对比：**

| 语言 | 错误信息类型名 | 说明 |
|------|---------------|------|
| ArkTS | 显示 `Double` | 内部类型名暴露 |
| Java | 显示 `Integer`、`Double` | 使用公开类型名 |
| Swift | 显示 `Int`、`Double` | 使用公开类型名 |
| TypeScript | 显示 `number` | 使用公开类型名 |

- **建议：** 错误信息应将内部类型名 `Double` 转换为用户可见的 `number` 或 `double`。
- **分类：** D 类（Spec 与实现不一致 - 错误信息不准确）

---

**D-5.02-02** ⭐ LOW — 推断失败错误信息冗余

- **问题描述：** 泛型推断失败时错误信息存在冗余，影响可读性。
- **Spec 依据：** §5.2.3 Implicit Generic Instantiations - 错误信息应简洁
- **复现用例 ID：** GEN_05_02_002
- **建议：** 简化泛型推断失败的错误信息，移除冗余内容。
- **分类：** D 类（Spec 与实现不一致 - 错误信息冗余）

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
