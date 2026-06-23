# 7.32.1 Simple Assignment Operator - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 3 | 1 | 2（SPEC不一致） | 33% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **12** | **10** | **2** | **83%** |

> 注：2 个 compile-fail 用例未通过是因为 ArkTS 实现与 spec 不一致（D 类），并非用例设计问题。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_32_01_001_PASS_SIMPLE_VARIABLE_ASSIGN | int/long/float/double/string/boolean 六种类型变量赋值 | ✅ |
| 002 | EXP_07_32_01_002_PASS_FIELD_ACCESS_ASSIGN | 字段访问 e.f = value（int/string/boolean 字段） | ✅ |
| 003 | EXP_07_32_01_003_PASS_ARRAY_INDEX_ASSIGN | 数组索引 arr[idx] = value（字面量+变量索引） | ✅ |
| 004 | EXP_07_32_01_004_PASS_RECORD_INDEX_ASSIGN | 记录索引 rec[key] = value（Record 类型） | ✅ |
| 005 | EXP_07_32_01_005_PASS_WIDENING_ASSIGN | 隐式扩宽赋值（byte→int→long→float→double） | ✅ |
| 006 | EXP_07_32_01_006_PASS_SPEC_EXAMPLES | 规范 4 个示例 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 007 | EXP_07_32_01_007_FAIL_TYPE_MISMATCH | 类型不兼容（窄化+跨类型） | ✅ (expected error) | |
| 008 | EXP_07_32_01_008_FAIL_READONLY_ARRAY | readonly array = non-readonly array | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 009 | EXP_07_32_01_009_FAIL_READONLY_TUPLE | readonly tuple = non-readonly tuple | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | EXP_07_32_01_010_RUNTIME_SEMANTICS | 基本类型赋值6+字段3+数组3+记录2+链式3 | 17 | ✅ |
| 011 | EXP_07_32_01_011_RUNTIME_RANGEERROR_NEGATIVE | arr[negOne()]=99 → RangeError（函数返回值索引） | — | ✅ RangeError |
| 012 | EXP_07_32_01_012_RUNTIME_RANGEERROR_TOO_LARGE | arr[5]=99 (len=3) → RangeError | — | ✅ RangeError |

## 执行过程异常修复记录

1. **readonly array/tuple 保护未实现**：D 类问题，编译器允许 `readonly int[] = int[]` 和 `readonly tuple = non-readonly tuple` 通过，等待编译器修复。

## 后续运行命令

```bash
SECTIONS="7.32.1_Simple_Assignment_Operator" bash run_expressions_cases_wsl.sh
```
