# 10 Interfaces - Issue Report

记录 10 Interfaces 章节下所有子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

### ISS-10-02：接口中与 Object 方法 `toString(): string` 返回值冲突未被拒绝 ⭐⭐ MEDIUM

**用例：** `ITF_10_03_012_FAIL_OBJECT_METHOD_CLASH_RETURN_GAP.ets`
**章节：** 10.3 Interface Members
**异常性质：** 编译器实现 bug（C 类）
**当前状态：** 待 ArkTS 团队修复

规范 §10.3 要求接口中与 Object 公有方法同名的声明应报编译错误。编译器未拒绝返回值冲突的声明。

### ISS-10-01：接口中与 Object 方法 `toString(p: number): void` 参数形式冲突

**说明：** 编译器未拒绝不同签名的 Object 方法冲突，用例 `ITF_10_03_011_PASS_OBJECT_METHOD_CLASH.ets` 保留为 compile-pass 追踪。

---

## 历史已解决异常

无。

---

## 章节最新执行统计

| 子章节 | 用例总数 | 通过 | 失败 | 最近执行 |
|-------|:-------:|:----:|:----:|---------|
| 10.1 Interface Declarations | 7 | 7 | 0 | 2026-06-21 |
| 10.2 Superinterfaces & Subinterfaces | 8 | 8 | 0 | 2026-06-21 |
| 10.3 Interface Members | 6 | 5 | 0 | 2026-06-21 |
| 10.4 Interface Properties | 4 | 4 | 0 | 2026-06-21 |
| 10.4.1 Required Interface Properties | 8 | 8 | 0 | 2026-06-21 |
| 10.4.2 Optional Interface Properties | 6 | 6 | 0 | 2026-06-21 |
| 10.5 Interface Method Declarations | 10 | 10 | 0 | 2026-06-21 |
| 10.6 Interface Inheritance | 8 | 8 | 0 | 2026-06-21 |

**累计 57 个测试用例，56 通过，1 GAP（ISS-10-02），0 意外失败 ⚠️**

---

## 注

### Spec 文档问题（非执行异常）

#### 1. 接口 Object 方法冲突规范描述不完整

**问题描述：** Spec §10.3 要求接口中与 Object 公有方法同名的声明应报编译错误，但未明确说明参数不同、返回值不同等边界情况的处理。

**严重性：** MEDIUM

**证据：**
- `ITF_10_03_011_PASS_OBJECT_METHOD_CLASH.ets`：参数不同的同名方法，编译器未拒绝（保留为 GAP）
- `ITF_10_03_012_FAIL_OBJECT_METHOD_CLASH_RETURN_GAP.ets`：返回值冲突，编译器未拒绝（ISS-10-02）

**建议：** Spec 应明确接口 Object 方法冲突的完整规则，包括参数列表、返回值等不同场景。
