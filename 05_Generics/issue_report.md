# 05 Generics - Issue Report

记录 05 Generics 章节下所有子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

### GEN-U-01：变体检查粒度止于成员签名表层，未递归检查回调函数类型内部 ⭐⭐⭐ HIGH

**用例：** `GEN_05_01_03_006_FAIL_CALLBACK_VARIANCE_GAP.ets`、`GEN_05_01_03_008_FAIL_CALLBACK_RETURN_GAP.ets`
**章节：** 5.1.3 Type Parameter Variance
**异常性质：** 编译器实现 bug（C 类）
**当前状态：** 待 ArkTS 团队修复

**问题描述：**
ArkTS 规范要求 `out`/`in` 类型参数约束覆盖嵌套 in/out-position（含回调函数类型参数内部），但编译器仅检查直接成员签名的参数/返回类型，未递归展开回调函数类型内部，导致嵌套变体违规未被检测。

**实测对比：**
- 直接 out 在 in-position → 编译错误 ✅
- 嵌套 out 在回调参数内 → 编译通过 ⚠️（应报错）
- 嵌套 in 在回调返回值 → 编译通过 ⚠️（应报错）

---

## 历史已解决异常

无。

---

## 章节最新执行统计

| 子章节 | 用例总数 | 通过 | 失败 | 最近执行 |
|-------|:-------:|:----:|:----:|---------|
| 5.1 Type Parameters | 11 | 11 | 0 | 2026-06-21 |
| 5.1.1 Type Parameter Constraint | 12 | 12 | 0 | 2026-06-21 |
| 5.1.2 Type Parameter Default | 8 | 8 | 0 | 2026-06-21 |
| 5.1.3 Type Parameter Variance | 16 | 16 | 0 | 2026-06-21 |
| 5.1.4 Wildcard Type | 10 | 10 | 0 | 2026-06-21 |
| 5.2.1 Type Arguments | 7 | 7 | 0 | 2026-06-21 |
| 5.2.2 Explicit Generic Instantiations | 9 | 9 | 0 | 2026-06-21 |
| 5.2.3 Implicit Generic Instantiations | 7 | 7 | 0 | 2026-06-21 |

**累计 80 个测试用例，80 通过，0 意外失败，2 GAP（GEN-U-01）**

---

## 注

### 已知基础设施限制（已全部修复）

无。

### 其他 LOW 严重性问题

以下错误信息格式等问题已在各子章节的 `design_issues_report_5.X.md` 中记录，不属于"执行异常"，因此不在此文件中跟踪：
- 5.1: keyof 约束错误信息仅显示第一个 key（LOW）
- 5.3/5.2: 内部类型名 `Double` 暴露给用户（LOW）
- 5.3/5.2: 推断失败错误信息冗余（LOW）
