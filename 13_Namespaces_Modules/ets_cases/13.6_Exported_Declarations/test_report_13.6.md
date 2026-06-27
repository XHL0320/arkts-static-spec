# 13.6 Exported Declarations - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime | 1 | 1 | 0 | 100% |
| **总计** | **15** | **15** | **0** | 100% |

---

## 详细执行结果

### compile-pass（4/4 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | NSM_13_06_001_PASS_EXPORT_CLASS | export class | PASS |
| 002 | NSM_13_06_002_PASS_EXPORT_FUNCTION | export function | PASS |
| 003 | NSM_13_06_003_PASS_EXPORT_VARIABLE | export let/const | PASS |
| 004 | NSM_13_06_004_PASS_EXPORT_DEFAULT | export default声明 | PASS |

### compile-fail（10/10 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 005 | NSM_13_06_005_FAIL_EXPORT_NO_EXPLICIT_TYPE | 导出无显式类型 | PASS |
| 006 | NSM_13_06_006_FAIL_EXPORT_NO_RETURN_TYPE | 导出函数无返回类型 | PASS |
| 007 | NSM_13_06_007_FAIL_EXPORT_UNEXPORTED_TYPE | 导出使用未导出类型 | PASS |
| 008 | NSM_13_06_008_FAIL_EXPORT_NAME_DUPLICATE | 导出名重复 | PASS |
| 009 | NSM_13_06_009_FAIL_EXPORT_DEFAULT_DUPLICATE | 多个default export | PASS |
| 010 | NSM_13_06_010_FAIL_EXPORT_UNEXPORTED_EXTENDS | extends未导出类 | PASS |
| 011 | NSM_13_06_011_FAIL_EXPORT_UNEXPORTED_GENERIC | 泛型约束未导出类型 | PASS |
| 013 | NSM_13_06_013_FAIL_EXPORT_TYPE_ALIAS_UNEXPORTED | export type alias引用未导出类型 | PASS |
| 015 | NSM_13_06_015_FAIL_EXPORT_OVERLOAD_UNEXPORTED | export overload含未导出实体 | PASS |
| 016 | NSM_13_06_016_FAIL_EXPORT_CLASS_PUBLIC_FIELD_UNEXPORTED | public field使用未导出类型 | PASS |

### runtime（1/1 通过）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 012 | NSM_13_06_012_RUNTIME_EXPORT_ACCESS | 导出实体运行时访问 | 1 | PASS |

---

## 执行过程异常

**无异常。** 所有 15 个用例全部通过。

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.6_Exported_Declarations" bash run_namespaces_modules_cases_wsl.sh
```
