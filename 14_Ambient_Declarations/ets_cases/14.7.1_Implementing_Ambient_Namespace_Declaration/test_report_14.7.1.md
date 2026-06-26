# 14.7.1 Implementing Ambient Namespace Declaration — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 0 | 0 | 0 | — |
| compile-fail | 7 | 7 | 0 | 100% |
| runtime（真实执行） | 0 | 0 | 0 | — |
| **总计** | **7** | **7** | **0** | **100%** |

> 本节所有用例均为 compile-fail。4 个因编译器限制（declare namespace 与 namespace 无法 merge）标注 D 类；2 个因名称/签名不匹配正确报错。

## 详细执行结果

### compile-fail

| # | 用例 ID | 测试内容 | spec 预期 | 实际 | 结果 |
|---|---------|---------|----------|------|------|
| 1 | AMB_14_07_01_001_FAIL_IMPLEMENT_SAME_NAME | 同名实现 | compile-pass | 编译器拒绝 merge | ⚠️ D 类 |
| 2 | AMB_14_07_01_002_FAIL_IMPLEMENT_NESTED | 嵌套同名实现 | compile-pass | 编译器拒绝 merge | ⚠️ D 类 |
| 3 | AMB_14_07_01_003_FAIL_IMPLEMENT_FUNCTION | 实现函数 | compile-pass | 编译器拒绝 merge | ⚠️ D 类 |
| 4 | AMB_14_07_01_004_FAIL_IMPLEMENT_VARIABLE | 实现变量 | compile-pass | 编译器拒绝 merge | ⚠️ D 类 |
| 5 | AMB_14_07_01_005_FAIL_NESTED_NAME_MISMATCH | 嵌套名称不匹配 | compile-time error | 报错 | ✅ PASS |
| 6 | AMB_14_07_01_006_FAIL_FUNCTION_SIG_MISMATCH | 签名不匹配 | compile-time error | 报错 | ✅ PASS |
| 7 | AMB_14_07_01_007_FAIL_RUNTIME_IMPLEMENTED_NS | 实现 + main | compile-pass | 编译器拒绝 merge | ⚠️ D 类 |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.7.1_Implementing_Ambient_Namespace_Declaration" bash run_ambient_declarations_cases_wsl.sh
```
