# 05 Generics Issue Report

记录 05 Generics 章节下所有子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

### GEN-U-01：变体检查粒度止于成员签名表层，未递归检查回调函数类型内部 ⭐⭐⭐ HIGH

**用例：** GEN_05_02_014_FAIL_FUNC_PARAM_VARIANCE、GEN_05_02_025_FAIL_IN_CALLBACK_RETURN
**章节：** 5.2 Variance and Wildcard
**异常性质：** 编译器实现 bug（C 类）
**当前状态：** 待 ArkTS 团队修复

**问题描述：**
ArkTS 规范要求 `out`/`in` 类型参数约束覆盖嵌套 in/out-position（含回调函数类型参数内部），但编译器仅检查直接成员签名的参数/返回类型，未递归展开回调函数类型内部，导致嵌套变体违规未被检测。

**实测对比：**

```typescript
// 场景 A：out 直接出现在 in-position → 编译错误 ✅
class C<out T> {
  set(value: T): void { }   // ❌ ESY0333: out T in in-position
}

// 场景 B：out 出现在回调参数的参数位置（嵌套 in-position）→ 编译通过（bug） ⚠️
class C<out T> {
  forEach(cb: (item: T) => void): void { }  // ⚠️ T 在回调参数内，属于 in-position，应报错
}

// 场景 C：in 出现在回调返回值位置（嵌套 out-position）→ 编译通过（bug） ⚠️
class D<in T> {
  map(cb: () => T): void { }  // ⚠️ T 在回调返回值，属于 out-position，应报错
}
```

**🔴 跨语言对比：**

| 行为 | ArkTS 规范 | ArkTS 编译器 | Java | Swift |
|------|:---------:|:-----------:|:----:|:-----:|
| 直接 out 在 in-position | ❌ 报错 | ❌ 报错 ✅ | N/A | ❌ 报错 |
| 嵌套 out 在回调参数内 | ❌ 报错 | ✅ **通过（bug）** | N/A | ❌ 报错 |
| 嵌套 in 在回调返回值 | ❌ 报错 | ✅ **通过（bug）** | N/A | N/A |

**对比结论：**
- Java: 使用使用点变体，回调处由调用方标注，不存在此问题
- Swift: 编译器递归检查回调签名内部的变体违规
- **ArkTS 编译器：检查粒度止于直接成员签名，未递归**

**Spec 依据：**
Spec §5.1.3 对 `out`/`in` 的约束定义为类型参数的出现位置，未明确排除回调函数类型参数内部的嵌套位置。规范意图应为覆盖所有位置。

**影响：**
1. 回调高阶函数（`forEach`、`map`、`filter` 等）上的 `out`/`in` 变体保护失效
2. 用户可能在回调中意外违反变体约束而编译器不报错
3. 与 Swift 行为不一致

**建议修复方案：**
编译器增加递归变体检查：在检查成员签名时，对函数类型参数内部的参数/返回值类型递归应用同样的变体位置检查规则。

**相关用例：**
- 触发问题：`GEN_05_02_014_FAIL_FUNC_PARAM_VARIANCE.ets`、`GEN_05_02_025_FAIL_IN_CALLBACK_RETURN.ets`
- 对照参考：`GEN_05_02_010_FAIL_OUT_IN_IN_POSITION.ets`（直接 out 在 in-position，编译错误符合预期）

**重现命令：**
```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/05_Generics
SECTIONS="5.2_Variance_Wildcard" bash run_generics_cases_wsl.sh
```

---

## 历史已解决异常

无（所有其他异常均已通过修改用例解决）

---

## 章节最新执行统计

| 子章节 | 用例总数 | 通过 | 失败/GAP | 最近执行 |
|-------|---------|:----:|:--------:|---------|
| 5.1 Type Parameters | 29 | 29 | 0 | 2026-06-18 |
| 5.2 Variance and Wildcard | 23 | 21 | 2 GAP | 2026-06-20 |
| 5.3 Generic Instantiations | 21 | 21 | 0 | 2026-06-18 |

**累计 73 个测试用例，71 通过，2 GAP**

---

## 注

**其他 LOW 严重性问题**（错误信息格式等）已在各子章节的 `design_issues_report_5.X.md` 中记录，不属于"执行异常"，因此不在此文件中跟踪：
- 5.1: keyof 约束错误信息仅显示第一个 key（LOW）
- 5.3: 内部类型名 `Double` 暴露给用户（LOW）
- 5.3: 推断失败错误信息冗余（LOW）
