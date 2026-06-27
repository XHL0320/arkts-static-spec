# 13 命名空间与模块 审查报告

## 审查范围

- **章节：** §13.1 – §13.11（Namespaces and Modules）
- **用例目录：** `13_Namespaces_Modules/ets_cases/`（21 个子话题目录）
- **用例总数：** 106 个 `.ets` 文件
  - compile-pass: 51
  - compile-fail: 38
  - runtime: 17
- **交付件：** `test_manifest.json`、`test_case_catalog.md`、`test_design_mindmap.md`、`issue_report.md`、`spec_original.md`、runner 脚本 2 个
- **审查日期：** 2026-06-27
- **整改日期：** 2026-06-27

---

## 执行结果

### Runner 与环境

- 章节自带 WSL runner: `run_namespaces_modules_cases_wsl.sh`（4.73 KB）、`run_cross_language_comparison_wsl.sh`（45.77 KB）
- 本地为 Windows 环境，runner 需 WSL 执行，本次审查使用 PowerShell 审计脚本做静态审计

### 审计脚本统计

| 子章节 | pass | fail | runtime | 合计 |
|-------|:---:|:---:|:---:|:---:|
| 13.1 Module Declarations | 4 | 1 | 1 | 6 |
| 13.2 Module Header | 3 | 1 | 1 | 5 |
| 13.3 Namespace Declarations | 8 | 5 | 2 | 15 |
| 13.4 Import Directives | 1 | 3 | 1 | 5 |
| 13.4.1 Bind All with Qualified Access | 2 | 0 | 1 | 3 |
| 13.4.2 Default Import Binding | 2 | 1 | 0 | 3 |
| 13.4.3 Selective Binding | 2 | 1 | 0 | 3 |
| 13.4.4 Import Type Directive | 2 | 1 | 0 | 3 |
| 13.4.5 Import Path | 1 | 1 | 1 | 3 |
| 13.4.6 Several Bindings for One Import Path | 1 | 1 | 0 | 2 |
| 13.5 Top-Level Declarations | 3 | 0 | 1 | 4 |
| 13.6 Exported Declarations | 4 | 10 | 1 | 15 |
| 13.7 Export Directives | 2 | 0 | 1 | 3 |
| 13.7.1 Selective Export Directive | 2 | 1 | 1 | 4 |
| 13.7.2 Single Export Directive | 4 | 2 | 1 | 7 |
| 13.7.3 Export Type Directive | 1 | 1 | 0 | 2 |
| 13.7.4 Re-Export Directive | 2 | 2 | 0 | 4 |
| 13.8 Top-Level Statements | 2 | 2 | 2 | 6 |
| 13.9 Multifile Module | 1 | 2 | 0 | 3 |
| 13.10 Standard Library Usage | 1 | 1 | 1 | 3 |
| 13.11 Program Entry Point | 3 | 2 | 2 | 7 |
| **总计** | **51** | **38** | **17** | **106** |

### 整改后审计结果（2026-06-27 复验）

- **ETS_COUNT=106** ✓
- **MANIFEST_ID_COUNT=106** ✓（整改前为 0）
- **METADATA_BAD_COUNT=0** ✓（整改前为 78）
- 所有 21 个子章节分布正确

---

## 总体结论

**✅ 可验收，P0/P1/P2 可整改项已全部完成，仅剩 D 类 Spec-实现不一致（需编译器团队处理）和 C 类覆盖缺口（需构建系统支持）。**

- 用例覆盖面较完整（21 个子章节全部有测试，106 个用例）
- **已整改：** `test_manifest.json` 已补全 106 个用例；78 个 `.ets` 文件元数据已统一为 `@id/@expect/@section` 新格式；`@expect 0` 已改为 `@expect runtime`；`test_case_catalog.md` 数量已与实际一致
- **仍存在：** 6 项 D 类 Spec-实现不一致（需编译器团队处理）
- **仍存在：** 25 个 C 类用例因 es2panda 单文件限制无法验证（属编译器实现限制，非交付问题）
- **仍存在：** 3 个 C 类覆盖缺口（需构建系统支持）

---

## 问题清单

### 1. ✅ [已整改] test_manifest.json cases 数组已补全

- **整改前：** `cases` 数组为空 `[]`
- **整改后：** 已填入全部 106 个用例的 id/expect/section/path
- **验证：** `MANIFEST_ID_COUNT=106`

### 2. ✅ [已整改] 78/106 个 .ets 元数据标注已统一

- **整改前：** 78 个文件使用旧格式（`Spec Section:` / `Constraint:` / `Type:`），6 个 `@id` 为短 ID，13 个 runtime 写 `@expect 0`
- **整改后：** 全部改为新格式（`@id` = 完整文件名、`@expect` = compile-pass/compile-fail/runtime、`@section` = 简短编号），旧格式行已移除，`@expect 0` 已改为 `@expect runtime`
- **验证：** `METADATA_BAD_COUNT=0`

### 3. ✅ [已整改] test_case_catalog.md 数量已与实际一致

- **整改前：** catalog 记录 96 用例，实际 106
- **整改后：** 已更新为 106（51 compile-pass + 38 compile-fail + 17 runtime），§13.7.2 用例数已修正为 7，执行统计表已更新

### 4. [未整改] 6 项 D 类 — Spec 与 es2panda 实现不一致

| # | 用例 ID | Spec 规则 | 实现行为 | 严重度 |
|---|---------|----------|---------|--------|
| D1 | NSM_13_10_002 | 标准库名重定义 → compile-time error | 编译通过 | ⭐⭐⭐ |
| D2 | NSM_13_03_011 | 合并 namespace 多初始化器 → compile-time error | 编译通过 | ⭐⭐⭐ |
| D3 | NSM_13_08_004 | 变量使用在声明前 → compile-time error | 编译通过 | ⭐⭐⭐ |
| D4 | NSM_13_07_3_002 | export type 引用非 type → compile-time error | 编译通过 | ⭐⭐ |
| D5 | NSM_13_01_004 | ambient 与非 ambient 混合 → compile-time error | 编译通过 | ⭐⭐ |
| D6 | NSM_13_07_2_007 | export default new A(A 未导出) → Spec 认为合法 | es2panda 要求 A 导出 | ⭐⭐ |

- **影响：** D1-D5 为"spec 要求报错但编译通过"，编译器缺失检查；D6 为"spec 认为合法但编译器报错"，编译器过度检查
- **建议：** 将 D1-D5 提交编译器团队补全检查逻辑；D6 需确认 spec intent

### 5. [未整改] 25 个 C 类用例 — es2panda 单文件/语法限制

- **现象：** 因 `Unresolved module` 或 `Cannot find name 'module'` 无法本地验证
- **建议：** 标注为"多文件构建测试项"，待构建系统环境可用后验证

### 6. [未整改] 3 个 C 类覆盖缺口

| # | 章节 | Spec 规则 | 原因 |
|---|------|----------|------|
| 1 | §13.4.2 | import * as 无法导入 default export → error | 需跨模块 |
| 2 | §13.4.3 | overloaded function 全部导入 | 需跨模块 |
| 3 | §13.7.4 | export * as alias / {default} / {default as name} from path | 需跨模块 |

- **建议：** 待构建系统环境就绪后补充

---

## 覆盖评价

| 子章节 | 覆盖状态 | 说明 |
|-------|---------|------|
| §13.1 Module Declarations | ✅ 完整 | 6 用例覆盖基本声明、import、export、ambient 混合、无 header、初始化 |
| §13.2 Module Header | ⚠️ 受限 | 5 用例但 4 个为 C 类（es2panda 不支持 module header 语法） |
| §13.3 Namespace Declarations | ✅ 完整 | 15 用例覆盖基本、导出、限定/非限定访问、嵌套、合并、简写、初始化器、static block、ambient |
| §13.4 Import Directives | ⚠️ 受限 | 5 用例但仅 3 个 fail 可验证；1 个 pass + 1 个 runtime 为 C 类 |
| §13.4.1-13.4.6 Import 细分 | ⚠️ 受限 | 大部分 pass/runtime 为 C 类；仅 fail 用例可验证 |
| §13.5 Top-Level Declarations | ✅ 完整 | 4 用例覆盖 class/function/variable 和执行顺序 |
| §13.6 Exported Declarations | ✅ 完整 | 15 用例覆盖 export class/function/variable/default，以及无显式类型/未导出类型/名重复/default 重复/extends 未导出/泛型约束未导出/type alias/overload/public field |
| §13.7 Export Directives | ✅ 完整 | 3 用例覆盖选择性/单名导出和运行时 |
| §13.7.1 Selective Export | ✅ 完整 | 4 用例含新增别名冲突 |
| §13.7.2 Single Export | ✅ 完整 | 7 用例含新增 {A as default}、export default expression |
| §13.7.3 Export Type | ⚠️ 部分 | 2 用例，1 个为 D 类 |
| §13.7.4 Re-Export | ⚠️ 受限 | 4 用例，2 个 pass 为 C 类；缺 export * as alias 等高级形式 |
| §13.8 Top-Level Statements | ✅ 完整 | 6 用例含新增 main() 后执行 |
| §13.9 Multifile Module | ⚠️ 受限 | 3 用例，1 个 pass 为 C 类 |
| §13.10 Standard Library Usage | ⚠️ 部分 | 3 用例，1 个为 D 类 |
| §13.11 Program Entry Point | ✅ 完整 | 7 用例含新增 FixedArray 参数、overload 禁止、推断返回类型 |

---

## 整改完成状态

| 优先级 | 问题 | 状态 |
|--------|------|------|
| P0 | 补全 `test_manifest.json`（106 cases） | ✅ 已完成 |
| P0 | 统一 .ets 元数据标注（78 个旧格式 → 新格式） | ✅ 已完成 |
| P0 | 统一 runtime `@expect`（`@expect 0` → `@expect runtime`） | ✅ 已完成 |
| P1 | 更新 `test_case_catalog.md` 数量 | ✅ 已完成 |
| P1 | 提交 D 类不一致给编译器团队 | ⏳ 待提交 |
| P2 | 补充 C 类覆盖缺口 | ⏳ 待构建系统就绪 |

**仅剩 2 项需外部依赖（编译器团队 + 构建系统），交付件本身已可验收。**
