# 10 Interfaces Issue Report

记录 10 Interfaces 章节下所有子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

### ISS-10-01/02：接口中与 Object 公有方法同名的声明未被拒绝 ⭐⭐ MEDIUM

**用例：** ITF_10_03_011_PASS_OBJECT_METHOD_CLASH、ITF_10_03_012_FAIL_OBJECT_METHOD_CLASH_RETURN
**章节：** 10.3 Interface Members
**异常性质：** 编译器实现 bug（C 类）

规范 §10.3 要求接口中与 Object 公有方法（如 `toString`）同名的声明应报编译错误。编译器未拒绝参数形式或返回值冲突的声明。

```typescript
interface I {
  toString(p: number): void;  // ⚠️ GAP：应与 Object.toString 冲突
}
```

**🔴 跨语言对比：**

| 行为 | ArkTS 规范 | ArkTS 编译器 | Java | Swift |
|------|:---------:|:-----------:|:----:|:-----:|
| 接口中声明 Object 方法 | ❌ 编译错误 | ✅ **通过（GAP）** | ❌ 编译错误 | N/A（无 Object 基类）|

**影响：** 使用者在接口中可能意外声明与 Object 方法签名冲突的方法，编译器无法及时发现。

**建议修复方案：** 编译器应检查接口成员是否与 Object 的公有方法（toString/equals/hashCode 等）冲突。

---

## 章节最新执行统计

| 子章节 | 用例总数 | 通过 | 失败/GAP | 最近执行 |
|-------|:-------:|:----:|:--------:|---------|
| 10.1 Interface Declarations | 4 | 4 | 0 | 2026-06-18 |
| 10.2 Superinterfaces | 7 | 7 | 0 | 2026-06-18 |
| 10.3 Interface Members | 5 | 3 | 2 GAP | 2026-06-18 |
| 10.4 Interface Properties | 9 | 9 | 0 | 2026-06-18 |
| 10.5 Interface Methods | 10 | 10 | 0 | 2026-06-18 |
| 10.6 Interface Inheritance | 6 | 6 | 0 | 2026-06-18 |

**累计 41 个测试用例，39 通过，2 GAP（编译器侧未修复）**
