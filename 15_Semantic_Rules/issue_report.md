# 15 Semantic Rules Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| SEM-U-01 | SEM_15_08_01_100_FAIL_TYPEOF_GAP | typeof smart cast 未实现（ESE0318） | compile-time error | compile-error ✅ | C类-未实现 |
| — | SEM_15_08_00_004/005/008/014/016/017/018/019/020/022/024/025/027/028 | Smart Cast 流敏感收窄 14 场景未实现 | compile-pass | 编译失败 | C类-未实现 |
| — | SEM_15_11_07_001_PASS_OVERLOAD_WARNING | 重载警告 W2323 未实现 | compile-pass | 编译失败 | C类-未实现 |
| COM-15.14-01~06 | SEM_15_14_003/013/014/022/023/024 | Extended Conditional 6 场景未实现 | compile-pass | 编译失败 | C类-未实现 |
| — | SEM_15_14_00_204_RUNTIME_nan_false | NaN 真值判断编译失败 | runtime | 编译失败 | C类-未实现 |
| C-15.11-02~07 | SEM_15_11_00_218/220/222/224/226/231 | Overload 按实际类型而非声明类型派发 | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |

### 异常详情

**SEM-U-01** MEDIUM — typeof smart cast 未实现

`typeof x === "boolean"` 收窄后编译器未将 x 从 `int|boolean` 收窄为 `boolean`。编译器明确拒绝此模式（ESE0318）。等待编译器支持 typeof 类型收窄后改 compile-pass。
- 跨语言对比：

| 语言 | typeof 等效 | Smart Cast |
|------|------------|-----------|
| ArkTS | `typeof x === "boolean"` | ❌ 未实现 |
| Java | `x instanceof String` | ✅ 编译期收窄 |
| Swift | `x is String` | ✅ 编译期收窄 |
| TypeScript | `typeof x === "boolean"` | ✅ 编译期收窄 |

- 分类：C 类（编译器功能缺失）
- 涉及章节：15.8.1

---

**Smart Cast 流敏感收窄未完全实现（14 场景）** MEDIUM

typeof/CFG/union/nested/ternary/logical/switch/for/while/backedge/must-alias/intersection-diff/type-expr-simplify 等场景的流敏感收窄编译器未实现。
- 分类：C 类（编译器功能缺失）
- 涉及章节：15.8

---

**D-15.11-02~07** MEDIUM — Overload Resolution 运行时按实际类型派发

`let b: Base = new Derived(); b.pick(9)` — 运行时按实际类型 `Derived` 选择 `pickInt` 而非声明类型 `Base` 的 `pickNumber`。关联外部问题 AI-ARKTS-001。
- 分类：C 类（运行时偏差）
- 涉及章节：15.11

---

**COM-15.14-01~06** MEDIUM — Extended Conditional Expressions 未实现

编译器拒绝 truthiness 扩展语义（`&&`/`||` 返回操作数、非 boolean 三元条件、typeof/instanceof 真值检查等）。Spec 15.14.1 定义为可选 TS 兼容特性。Spec 原文：`spec_original.md` 第 3160 行起。
- 跨语言对比：

| 语言 | `0 && "x"` | 三元非 boolean 条件 |
|------|-----------|-------------------|
| ArkTS | `let r = 0 && "x"` → `number|string` | ❌ 编译器拒绝（未实现） |
| Java | `boolean r = true && false` | ❌ 必须 boolean |
| Swift | `let r = true && false` | ❌ 必须 Bool |

- 分类：C 类（编译器功能缺失）
- 涉及章节：15.14

---

### 历史已解决异常

| 问题 | 修复/处理 | 日期 |
|------|---------|------|
| FixedArray 不变性（D-15.2.7-01） | 确认 FixedArray 设计为协变，用例改 PASS | 2026-06-22 |
| int/number 子类型（D-15.2.3-01） | 确认 int→number 隐式拓宽符合 Spec，用例改 PASS | 2026-06-22 |
| union 子类型（旧 SEM-GAP-02） | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| FixedArray<Object>→<string> | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| Promise 类型擦除 | 编译器正确拒绝 ESE461884 | 2026-06-22 |
