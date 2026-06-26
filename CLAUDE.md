# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a comprehensive test suite for the **ArkTS static language specification** used by OpenHarmony. It validates the ArkTS compiler (`es2panda`) and runtime (`ark`) against the language spec. The repo has 17 chapter directories (02–18). All work follows the **6-step process** defined in `TESTING_PROCESS_GUIDE.md`.

## The 6-Step Process (必选流程)

Every chapter subsection must go through all 6 steps below.

### Step 1: 思维导图设计 (Mindmap Design)

**Output**: `<子章节>/test_design_mindmap_<section>.md`

Content must include:
- Section definition (from ArkTS Static Spec)
- Complete enumeration of subtypes/subrules
- Three test categories per subtype (compile-pass / compile-fail / runtime)
- Boundary values and edge cases
- File naming convention notes

**Template**:
```markdown
# <section> <Name> — 测试设计思维导图
## 概述
<规范定义>
## 子类型覆盖
### 1. <子类型 A>
- 正向编译: <测试点>
- 反向编译: <测试点>
- 运行时: <测试点>
## 分类说明
- compile-pass / compile-fail / runtime
## 文件命名规范
- <PREFIX>_<CHAP>_<SUB>_YYY_{CATEGORY}_{DESCRIPTION}.ets
```

### Step 2: 用例代码生成 (Test Case Generation)

**Directory structure per subtopic:**
```
<子章节>/
├── compile-pass/
│   └── <PREFIX>_<CHAP>_<SUB>_001_PASS_xxx.ets
├── compile-fail/
│   └── <PREFIX>_<CHAP>_<SUB>_010_FAIL_xxx.ets
└── runtime/
    └── <PREFIX>_<CHAP>_<SUB>_020_RUNTIME_xxx.ets
```

**File name format**: `<PREFIX>_<CHAP>_<SUB>_YYY_{CATEGORY}_{DESCRIPTION>.ets`

| Field | Meaning | Example |
|-------|---------|---------|
| `PREFIX` | Chapter prefix | `TYP_`, `CLS_`, `AMB_` (see prefix table below) |
| `CHAP` | Chapter number | `03` |
| `SUB` | Subsection number | `01`, `02` |
| `YYY` | Sequential ID within subsection | `001`, `002`, ... |
| `CATEGORY` | Test type | `PASS`, `FAIL`, `RUNTIME` |
| `DESCRIPTION` | Underscore uppercase description | `INT_BASIC_OPS` |

**ID rules**: Sequential within subsection: PASS (001~) → FAIL (next) → RUNTIME (next).

**Chapter Prefix Table**:

| Chapter | Prefix |
|---------|--------|
| 02_LexicalElements | `LEX_` |
| 03_Types | `TYP_` |
| 04_Names_Declarations_Scopes | `NAM_` |
| 05_Generics | `GEN_` |
| 06_Contexts_Conversions | `CON_` |
| 07_Expressions | `EXP_` |
| 08_Statements | `STM_` |
| 09_Classes | `CLS_` |
| 10_Interfaces | `ITF_` |
| 11_Enumerations | `ENM_` |
| 12_Error_Handling | `ERR_` |
| 13_Namespaces_Modules | `MOD_` |
| 14_Ambient_Declarations | `AMB_` |
| 15_Semantic_Rules | `SEM_` |
| 16_Concurrency | `CCY_` |
| 17_Experimental_Features | `EXP2_` |
| 18_Annotations | `ANN_` |

**Required JSDoc Template** (all 5 tags mandatory):

```typescript
/**
 * @id TYP_03_XX_YYY_CATEGORY_DESCRIPTION
 * @expect compile-pass | compile-fail | runtime
 * @section 3.X
 * @design <中文设计描述：验证什么特性，覆盖哪些场景>
 * @note 正向用例：验证该特性编译通过的正确用法
 *       或：反向用例：验证该场景应产生编译时错误
 *       或：运行时用例：实际执行验证 xxx
 */
```

**Runtime case special requirements**:

```typescript
/**
 * @id TYP_03_XX_YYY_RUNTIME_xxx
 * @expect runtime
 * @section 3.X
 * @design <说明>
 * @runtime-throws=ArithmeticError    // 仅当期望抛异常时使用
 * @note 运行时用例：实际执行验证 xxx
 */
function main(): void {
  // 测试代码
  if (actualResult != expectedResult) {
    throw new Error("assertion failed: " + actualResult)
  }
  console.log("verified")
}
```

Runtime pass conditions:
- Default: exit code 0 (normal completion)
- With `@runtime-throws=ErrorName`: runtime must throw the named exception
- Must have `function main(): void` entry point

**Spec Inconsistency Handling** (v4.3 规则):

When a `compile-fail` case actually compiles successfully (spec mandates error but implementation allows it):
- **DO NOT** rename or delete the FAIL case
- **DO NOT** change it to PASS
- Keep the original FAIL file with `⚠️ SPEC 不一致` annotation
- JSDoc template for inconsistency:
  ```typescript
  /**
   * @id TYP_03_XX_YYY_FAIL_XXX
   * @expect compile-fail
   * @section 3.X
   * @design <spec rule description>
   * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过
   *       ⚠️ SPEC 不一致：spec 要求 <具体规则>，实现允许通过
   *       分类：D 类（Spec 与实现不一致）
   */
  ```
- Record in both `design_issues_report_<section>.md` and chapter `issue_report.md`

**ArkTS Static Constraints** (known pain points from prior work):
- ❌ No nested functions → hoist to top level
- ❌ No local classes → hoist to top level
- ❌ No local `type` aliases → hoist to top level
- ❌ `int`/`double`/`char`/`byte` are keywords, cannot be used as identifiers
- ❌ `pop()` returns `T | undefined`
- ❌ `Box` is already in stdlib (cannot redeclare)
- ❌ No number/boolean literal types (only string literal types supported)

## Known Spec-Compiler Inconsistencies (Discovered During Testing)

Verified D-class (spec says compile-time error, compiler allows) and S-class (spec self-contradiction) issues found across chapters. **Do NOT delete or rename FAIL cases** covering these — they are watchdogs for future compiler fixes.

### Chapter 14 — Ambient Declarations (14.1)

⚠️ **已解决（2026-06-26 确认）：** 以下两个约束编译器先前未强制执行，当前版本已正确校验。保留历史记录供参考。

1. ~~**No initializer**: `declare let v = 1`, `declare const c = 1` — spec says compile-time error, compiles OK~~
   → 当前编译器报 ESE125125: "Initializers are not allowed in ambient contexts"
2. ~~**Explicit type annotation required**: `declare let v`, `declare const c` — spec says compile-time error, compiles OK~~
   → 当前编译器报 ESE1111: "Missing type annotation for the 'v'"

Relevant cases: `AMB_14_01_015_FAIL_*` through `AMB_14_01_024_FAIL_*` — now correctly produce compile-time errors.
All related reports updated to reflect the fix. See `14_Ambient_Declarations/issue_report.md`.

### Chapter 03 — Types (confirmed from prior work)

| ID | Issue | Spec Expects | Actual Behavior |
|----|-------|-------------|-----------------|
| D-3.08-01 | Any field access | compile-time error | compiles OK |
| D-3.18-01 | Union function type without parens | compile-time error | compiles OK |
| D-3.18-02/03 | Function type direct call | compile-time error | compiles OK |
| D-3.19-01/02 | Union same-name different-type fields | compile-time error | compiles OK |
| D-3.19-03 | keyof non-class/interface | compile-time error | compiles OK |
| D-3.19.1-01 | readonly union write after normalization | compile-time error | compiles OK |
| D-3.21.3/4/5-01 | Utility types on non-class types | compile-time error | compiles OK |
| S-3.14-01/02 | bigint mixed relational ops | spec self-contradictory | pending spec clarification |

### Step 3: WSL 真实执行验证 (Real Execution Verification)

**Runner script per chapter**: `run_<topic>_cases_wsl.sh`

**Three category pass/fail logic**:

| Type | Pass Condition |
|------|---------------|
| compile-pass | Compiler output has NO `Syntax error` or `Semantic error` |
| compile-fail | Compiler output HAS `Syntax error` or `Semantic error` |
| runtime | Compile success + `ark` VM execution + exit code 0 (unless `@runtime-throws` expects exception) |

**Standard command**:
```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/<chapter>
SECTIONS="<subtopic>" bash run_<topic>_cases_wsl.sh
```

Example:
```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.1_Predefined_Types 3.2_User_Defined_Types" bash run_types_cases_wsl.sh
```

**WSL Environment Setup** (export these before running any tests):

```bash
export DEV_HOME=/home/cyh/arkcompiler
export PANDA_BUILD=$DEV_HOME/runtime_core/static_core/out
export ARKCOMPILER_RUNTIME_CORE_PATH=$DEV_HOME/runtime_core
export ARKCOMPILER_ETS_FRONTEND_PATH=$DEV_HOME/ets_frontend
export PATH=$PANDA_BUILD/bin:$PATH

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/opt/swift/usr/bin:$PATH
```

**Toolchain**:

| Component | WSL Path |
|-----------|----------|
| Compiler | `$PANDA_BUILD/bin/es2panda` |
| Runtime | `$PANDA_BUILD/bin/ark` |
| boot panda stdlib | `$PANDA_BUILD/pandastdlib/arkstdlib.abc` |
| boot ets stdlib | `$PANDA_BUILD/plugins/ets/etsstdlib.abc` |
| Java | `$JAVA_HOME/bin/javac`, `$JAVA_HOME/bin/java` (OpenJDK 17) |
| Swift | `/opt/swift/usr/bin/swift`, `/opt/swift/usr/bin/swiftc` (Swift 5.10) |

**Real execution command template** (inside runner script):
```bash
es2panda --extension=ets --output=test.abc test.ets
ark --load-runtimes=ets \
    --boot-panda-files=$BOOT_PANDA:$BOOT_ETS \
    test.abc test.ETSGLOBAL::main
```

Goal: **100% pass**. If not, enter the Exception Handling Workflow.

### Step 4: 测试执行报告 (Test Execution Report)

**Output**: `<子章节>/test_report_<section>.md`

**必须以 14.1 的完整报告为样本**，严格保持以下格式：

```markdown
# 14.1 Ambient Constant or Variable Declarations — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 14 | 14 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **26** | **26** | **0** | **100%** |

> 注：本节所有用例已完成验收，编译器已正确实施 ambient 校验。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_01_001_PASS_LET_INT | declare let int 类型 | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_01_015_FAIL_LET_WITH_INIT | let 有初始化器 | ✅ PASS（ESE125125 报错） |
| 2 | AMB_14_01_016_FAIL_CONST_WITH_INIT | const 有初始化器 | ✅ PASS（ESE125125 报错） |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_01_025_RUNTIME_AMBIENT_CONTEXT | ambient 声明与 main 共存 | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.1_Ambient_Constant_or_Variable_Declarations" bash run_ambient_declarations_cases_wsl.sh
```
```

### Step 5: 三环境实测 + 跨语言对比报告 (Three-Environment / Cross-Language Comparison)

**Mandatory for every subsection** — cannot be skipped.

**Output**: `<子章节>/comparison_report_arkts_java_swift.md`
**Test code archived in**: `<子章节>/cross_lang_verify/`
**Test output archived in**: `<子章节>/cross_lang_verify/verification_report.md`

**必须以 14.1 的完整报告为样本**，严格保持 8 节格式：

```markdown
# 14.1 Ambient Constant or Variable Declarations — 跨语言对比报告

## 1. 概览

| 语言 | 定位 | Ambient 支持 |
|------|------|-------------|
| ArkTS | 声明在别处定义的实体类型信息 | ✅ `declare let` / `declare const` |
| Java | 所有声明必须包含实现或初始值 | ❌ 无直接等价概念 |
| Swift | 所有声明必须有具体实现或初始值 | ❌ 无直接等价概念 |

## 2. 章节对应关系

| ArkTS 14.1 | Java | Swift |
|-----------|------|-------|
| `declare let v: type` | ❌ 无对应。`public static T v` 必须初始化 | ❌ 无对应。`var v: T` 必须初始化 |
| `declare const v: type` | ❌ 无对应。`public static final T V = val` 必须初始化 | ❌ 无对应。`let v: T = val` 必须初始化 |
| 禁止初始化器 | ❌ Java 无法声明无初始值的变量 | ❌ Swift 无法声明无初始值的变量 |
| 禁止无类型注解 | ❌ Java 要求显式类型 | ❌ Swift 要求显式类型 |

## 3. 关键差异矩阵

| 特性 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 声明外部实体类型 | ✅ `declare let/const` | ❌ 借助 JNI/接口 | ❌ 借助 protocol/extern |
| 变量不初始化 | ✅ | ❌ 必须有初始值或默认值 | ❌ 必须有初始值 |
| 常量不初始化 | ✅ | ❌ 必须初始化 | ❌ 必须初始化 |
| 无类型推导 | ✅ (必须显式类型) | ✅ (变量必须显式类型) | ✅ (变量必须显式类型) |
| 多声明语法 | ✅ `let a: int, b: string` | ❌ 每行一个声明 | ❌ 每行一个声明 |

## 4. 三环境实测结果

| # | 用例 | ArkTS | Java | Swift |
|---|------|-------|------|-------|
| 001 | declare let int | ✅ compile-pass | N/A | N/A |
| 002 | declare let string | ✅ compile-pass | N/A | N/A |
| 015 | let with initializer | ⚠️ D 类不一致 | N/A | N/A |
| 025 | runtime ambient context | ✅ runtime | N/A | N/A |

## 5. 关键差异详解

### Ambient 声明概念：ArkTS 特有

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `declare let v: int` | ✅ 编译通过，声明外部实体类型 |
| Java | `static int v;` | ⚠️ 语义不同，Java 声明的同时创建了变量（有默认值0） |
| Swift | `var v: Int` | ⚠️ 语义不同，Swift 不允许未初始化变量 |

### 禁止初始化器

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `declare let v = 1` | ❌ 应产生 compile-time error |
| ArkTS (实际) | `declare let v = 1` | ⚠️ 当前编译器允许，与 spec 不一致 |
| Java | `final int V = 1;` | ✅ 常量的标准声明方式 |
| Swift | `let v = 1` | ✅ 常量的标准声明方式 |

## 6. 综合评分

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 外部实体类型声明 | ⭐⭐⭐ (有 declare 关键字) | ⭐ (无直接等价，需 JNI/接口) | ⭐ (无直接等价，需 protocol/extern) |
| 类型安全 | ⭐⭐⭐ (显式类型注解) | ⭐⭐⭐ (显式类型) | ⭐⭐⭐ (显式类型) |
| 声明简洁性 | ⭐⭐⭐ (多声明语法) | ⭐⭐ (每行一个) | ⭐⭐ (每行一个) |
| 规范一致性 | ⭐ (编译器未强制执行 spec 规则) | N/A | N/A |

## 7. 核心结论

1. Ambient constant/variable declarations 是 **ArkTS/TypeScript 特有概念**，Java 和 Swift 均无直接对应
2. ArkTS 的 `declare` 允许在不提供实现的情况下声明类型信息，适用于描述外部 API 签名
3. 当前编译器未按 spec 要求校验 "无初始化器" 和 "显式类型注解" 两条规则 — 见 design_issues_report
4. runtime 用例验证了 ambient 声明不干扰正常代码编译执行

## 8. ArkTS 设计建议

1. **修复强制校验**：编译器应强制执行 spec 对 ambient 声明的约束（无初始化器、显式类型注解）
2. **保持与 TypeScript 兼容**：ArkTS ambient 语法与 TypeScript 一致，编译时规则也应保持一致
3. **考虑文档更新**：如果编译器有意放宽 ambient 约束，应更新 spec 匹配实现
```

### <标题>

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `<code>` | <结果> |
| Java | `<code>` | <结果> |
| Swift | `<code>` | <结果> |

## 6. 综合评分

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| <维度> | ⭐⭐⭐ (<说明>) | ⭐⭐⭐ (<说明>) | ⭐⭐⭐ (<说明>) |

## 7. 核心结论

1. 结论1
2. 结论2

## 8. ArkTS 设计建议

1. 建议1
2. 建议2
```

**Key difference cases require a detailed sub-table**:
```markdown
### 关键差异详解

#### Case ID: Difference Title ⭐

| Language | Code | Behavior |
|----------|------|----------|
| ArkTS | `code` | result |
| Java | `code` | result |
| Swift | `code` | result |
```

**Language spec references**:
| Language | Spec |
|----------|------|
| ArkTS | ArkTS Static Language Specification |
| Java | JLS SE21 |
| Swift | The Swift Programming Language (Swift 5.x) |

### Step 6: 行为差异及规范一致性报告 + 异常记录

#### 6.1 Design Issues Report (章节级，永久档案)

**Output**: `<子章节>/design_issues_report_<section>.md`

**必须以 14.1 的完整报告为样本**，有差异时按此格式：

```markdown
# 14.1 Ambient Constant or Variable Declarations — 跨语言行为差异及规范一致性报告

## 总览

ArkTS 14.1 Ambient Constant or Variable Declarations 的核心规范：
1. Ambient 声明必须具有显式类型注解
2. Ambient 声明不能有初始化器
3. 违反任一规则 → compile-time error

## 已知差异

### D-14.3-01: Overload 重载等价签名检查缺失

**描述**：ArkTS spec 要求 `declare overload` 中两个函数的参数类型完全相同（overload-equivalent）时产生 compile-time error，但当前编译器仅给出警告。

**跨语言对比**：

| 语言 | 行为 |
|------|------|
| ArkTS (spec) | ❌ compile-time error |
| ArkTS (实际) | ⚠️ 仅警告（W2323），编译通过 |
| Java | ❌ 重载等价签名报错 |
| Swift | ❌ 重载等价签名报错 |

**严重性**：MEDIUM
**分类**：D 类（Spec 与实现不一致）

## 总结

| ID | 问题 | 严重性 | 分类 |
|----|------|--------|------|
| D-14.3-01 | Overload 重载等价签名检查缺失 | MEDIUM | D 类 |
```

**无差异时**用简洁格式：
```markdown
## 已知差异

**无。** 本节所有编译器行为与 spec 完全一致，无待解决问题。
```

#### 6.2 Issue Report (章节根级，实时状态)

**Output**: `<主章节>/issue_report.md`

**Only records currently unresolved execution anomalies** — remove entries once resolved. 如果无未解决问题，保持空表头即可。

**必须以 14.1 的完整报告为样本**：

```markdown
# 14 Ambient Declarations Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| D-14.3-01 | AMB_14_03_008 | Overload 重载等价签名检查缺失 | compile-time error | 编译通过（仅警告） | D类-Spec不一致 |

### 异常详情

**D-14.3-01** MEDIUM — Overload 重载等价签名检查缺失

- **问题描述：** ArkTS spec 要求 `declare overload` 中两个函数的参数类型完全相同（overload-equivalent）时产生 compile-time error，但当前编译器仅给出警告。
- **复现用例 ID：** AMB_14_03_008_FAIL_OVERLOAD_DUPLICATE_SIG
- **严重性：** MEDIUM
- **分类：** D 类（Spec 与实现不一致）

## 整改建议

1. 编译器后续版本应修复 spec 与实现的不一致
```

Key rules:
1. **Append**, never overwrite — new entries go at bottom of table
2. Keep existing entries even if from earlier subsections
3. Remove rows only when anomaly is resolved

## Exception Handling Workflow (异常处理工作流)

When Step 3 execution fails, follow this workflow:

```
异常发现
   │
   ├─→ 1. 跨语言对比分析（必填）
   │      ├── 同样代码在 Java 中行为？
   │      └── 同样代码在 Swift 中行为？
   │
   ├─→ 2. 归类异常性质
   │      ├── A 类: ArkTS 合理设计 → 修改用例适配
   │      ├── B 类: ArkTS 设计问题 → 修改用例 + 记入 design_issues_report
   │      ├── C 类: 编译器实现 bug → 临时绕过 + 记入 issue_report.md
   │      └── D 类: Spec 与实现不一致 → 保留原始 FAIL 用例（标注⚠️SPEC不一致） + 记入 design_issues + 记入 issue_report
   │
   ├─→ 3. 处理决策
   │      ├── 可修复（A/B/D）→ 修改用例使其通过
   │      └── 不可修复（C）→ 在 issue_report.md 追加记录
   │
   └─→ 4. 同步更新报告
           ├── design_issues_report_<section>.md（B/D 类必填）
           ├── comparison_report_arkts_java_swift.md（B 类的设计洞察）
           └── issue_report.md（C 类和 D 类未解决问题，追加不覆盖）
```

### Exception Type Enumeration

| Type | Description |
|------|-------------|
| PASS_FAILED | compile-pass case fails to compile |
| FAIL_PASSED | compile-fail case compiles successfully |
| RUNTIME_COMPILE_FAIL | runtime case fails to compile |
| RUNTIME_THROW_MISMATCH | runtime expects specific exception but none/wrong thrown |
| RUNTIME_ASSERT_FAIL | runtime case assertion fails |
| RUNTIME_UNEXPECTED_THROW | runtime case unexpectedly throws |

### Issue Classification

| Class | Description | Action |
|-------|-------------|--------|
| A | ArkTS reasonable design | Modify test to adapt |
| B | ArkTS design issue | Modify test + record in design_issues_report |
| C | Compiler implementation bug | Workaround + record in issue_report |
| D | Spec-implementation mismatch | Keep FAIL case (annotated ⚠️ SPEC 不一致) + record in both reports |
| S | Spec document self-contradiction | Await spec team clarification |

## ⚠️ 重要：不要执行 review

`review_report.md` 不由测试流程生成。章节 review 由 `/arkts-spec-chapter-review` skill 独立完成，测试流程的 6 个步骤中**不要创建、修改或覆盖** `review_report.md`。

## File Responsibility Matrix

| File | Scope | Content | Cumulative? | When cleared |
|------|-------|---------|-------------|--------------|
| `<chapter>/issue_report.md` | Chapter | Currently unresolved anomalies (live status) | ❌ No | Back to blank template when all pass |
| `<subsection>/test_design_mindmap_<section>.md` | Subsection | Test design mindmap | ❌ No | Never changes |
| `<subsection>/test_report_<section>.md` | Subsection | Test pass rate statistics | ❌ No | Updated on re-execution |
| `<subsection>/design_issues_report_<section>.md` | Subsection | ArkTS vs Java/Swift/TS behavior diff & spec consistency (permanent archive) | ❌ No | Never deleted, append on new discovery |
| `<subsection>/comparison_report_arkts_java_swift.md` | Subsection | Three-environment + cross-language comparison | ❌ No | Never changes |
| `<subsection>/cross_lang_verify/verification_report.md` | Subsection | Real ArkTS/Java/Swift test output | ❌ No | Updated on re-execution |

## Per-Chapter File Inventory

Each chapter directory (`02_LexicalElements/`, `03_Types/`, etc.) contains:
- **`test_manifest.json`** — Subtopics list, case counts per section/category; canonical source of truth
- **`spec_original.md`** — Spec text extract for the chapter
- **`test_design_mindmap.md`** — High-level test design
- **`test_case_catalog.md`** — Full case table with section-wise totals
- **`*_Examples.md`** — Minimal ArkTS examples illustrating normative rules
- **`issue_report.md`** — Live unresolved anomalies only
- **`review_report.md`** — Static audit report
- **`run_<topic>_cases_wsl.sh`** — WSL runner

## Commands

### Run tests in WSL

```bash
# Single subsection
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.1_Predefined_Types" bash run_types_cases_wsl.sh

# Multiple subsections
SECTIONS="3.1_Predefined_Types 3.2_User_Defined_Types 3.3_Using_Types" bash run_types_cases_wsl.sh
```

### Metadata audit

To verify `.ets` file counts match `test_manifest.json` stats, run the PowerShell audit script `audit_chapter.ps1` (located at repo root or chapter root).
