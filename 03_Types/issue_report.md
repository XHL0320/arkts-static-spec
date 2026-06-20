# 03 Types Issue Report

记录 03 Types 章节下所有子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

### TYP-U：模块级 const 整数除零编译期检测漏洞 ⭐⭐⭐ HIGH

**用例：** TYP_03_06_02_028_RUNTIME_INT_DIV_MODULE_CONST_ZERO
**章节：** 3.6.2 Integer Types and Operations
**异常性质：** 编译器实现 bug + spec 描述不明确（C+D 类）
**当前状态：** 待 ArkTS 团队修复

**问题描述：**
ArkTS 编译器对**函数内 const = 0** 触发编译期除零检测（编译错误），但对**模块级 const = 0** 不做检测，导致同样的 const 声明因位置不同行为完全不同。

**实测对比：**

```typescript
// 场景 A：函数内 const → 编译错误 ✅
function fnA(): void {
  const a: int = 0
  let c: int = 10 / a   // ❌ ESY0273: Division by zero is not allowed
}

// 场景 B：模块级 const → 编译通过（bug） ⚠️
const moduleA: int = 0
function fnB(): void {
  let c: int = 10 / moduleA   // ⚠️ 编译通过！运行时才抛 ArithmeticError
}
```

**🔴 跨语言对比：**

| 行为 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 函数内 `const a = 0; 10/a` | ❌ 编译错误 | ✅ 通过（运行时抛）| ❌ 编译错误 |
| 模块级 `const a = 0; 10/a` | ✅ **通过（bug）** | ✅ 通过（运行时抛）| ❌ 编译错误 |
| **内部一致性** | ❌ **不一致** | ✅ 一致 | ✅ 一致 |

**对比结论：**
- Java：完全不做编译期检测（内部一致）
- Swift：所有 const/let 做编译期检测（内部一致）
- **ArkTS：部分做检测，仅函数内 const，模块级 const 漏检（内部不一致）**

**Spec 依据：**
spec §15.17.2 仅说"If the divisor value of integer division is **detected to be 0 during compilation**"，未明确"detected"的范围。

**影响：**
1. 同样的 `const a: int = 0` 因位置不同行为完全不同
2. 用户难以预测哪些情况会编译错误
3. 影响代码可移植性（将代码从函数内提取到模块级会编译通过但运行时崩溃）

**建议修复方案：**
1. **方案 A（推荐）**：模块级 const 也做检测，与函数内 const 一致 + 与 Swift 一致
2. **方案 B**：完全不做检测，与 Java 一致
3. **不推荐**：保持当前不一致状态

**相关用例：**
- 触发问题：`TYP_03_06_02_028_RUNTIME_INT_DIV_MODULE_CONST_ZERO.ets`
- 对照参考：`TYP_03_06_02_024_FAIL_INT_DIV_LOCAL_CONST_ZERO.ets`（函数内 const 编译错误，符合预期）

**重现命令：**
```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.6.2_Integer_Types_and_Operations" bash run_types_cases_wsl.sh
```

---

## 历史已解决异常

无（所有其他章节的异常均已通过修改用例解决）

---

## 章节最新执行统计

| 子章节 | 用例总数 | 通过 | 失败 | 最近执行 |
|-------|---------|------|------|---------|
| 3.1 Predefined Types | 49 | 49 | 0 | 2026-06-11 |
| 3.2 User-Defined Types | 30 | 30 | 0 | 2026-06-11 |
| 3.3 Using Types | 27 | 27 | 0 | 2026-06-11 |
| 3.4 Named Types | 20 | 20 | 0 | 2026-06-11 |
| 3.5 Type References | 19 | 19 | 0 | 2026-06-11 |
| 3.6.1 Numeric Types | 20 | 20 | 0 | 2026-06-11 |
| 3.6.2 Integer Types and Operations | 29 | 29 | 0 | 2026-06-11 |
| 3.6.3 Floating-Point Types and Operations | 30 | 30 | 0 | 2026-06-11 |
| 3.6.4 Type boolean | 15 | 15 | 0 | 2026-06-11 |
| 3.7 Reference Types | 11 | 11 | 0 | 2026-06-11 |
| 3.8 Type Any | 11 | 11 | 0 | 2026-06-11 |
| 3.9 Type Object | 10 | 10 | 0 | 2026-06-11 |
| 3.10 Type never | 10 | 10 | 0 | 2026-06-11 |
| 3.11 Type void or undefined | 0 | 0 | 0 | - |
| 3.12 Type null | 27 | 27 | 0 | 2026-06-20 |

**累计 308 个测试用例**

---

## 注

**所有用例当前都"通过"测试脚本**，但 TYP-U 是**用例通过 ≠ 行为正确**的情况：
- `TYP_03_06_02_028` 标记为 `@expect runtime`（预期运行时抛错）
- 实测确实运行时抛错（脚本判定 PASS）
- **但理论上应该编译期就报错**（与函数内 const 一致）
- 这是 spec/实现不一致问题，不是用例失败

记录到 issue_report.md 是为了追踪 ArkTS 团队是否修复此 bug。
