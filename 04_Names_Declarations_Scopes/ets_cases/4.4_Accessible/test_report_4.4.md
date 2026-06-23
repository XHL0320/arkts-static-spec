# 4.4 Accessible - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 7 | 7 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_04_001_PASS_type_accessible | 类型名可访问用于声明 | PASS |
| 2 | NAM_04_04_002_PASS_func_accessible | 函数名可访问用于调用 | PASS |
| 3 | NAM_04_04_003_PASS_var_accessible | 变量名可访问用于读写 | PASS |
| 4 | NAM_04_04_004_PASS_module_access | 模块名可访问 | PASS |
| 5 | NAM_04_04_005_PASS_type_name_for_field | 类型名可用于字段声明 | PASS |
| 6 | NAM_04_04_006_PASS_method_name_call | 方法名可用于调用 | PASS |
| 7 | NAM_04_04_007_PASS_namespace_export_qualified | namespace 导出实体限定名访问 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_04_100_FAIL_out_of_block_scope | 块作用域外访问块内变量 | PASS |
| 2 | NAM_04_04_101_FAIL_out_of_func_scope | 函数外引用函数内局部变量 | PASS |
| 3 | NAM_04_04_102_FAIL_use_before_declare | 函数体内声明前引用变量 | PASS |
| 4 | NAM_04_04_103_FAIL_cross_func_access | 跨函数作用域访问局部变量 | PASS |
| 5 | NAM_04_04_104_FAIL_if_block_leak | if块内变量在块外不可访问 | PASS |
| 6 | NAM_04_04_105_FAIL_loop_var_leak | 循环块内变量循环外不可访问 | PASS |
| 7 | NAM_04_04_106_FAIL_namespace_export_unqualified | namespace 导出实体不能简单名访问 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | NAM_04_04_200_RUNTIME_scope_chain | 嵌套作用域链变量查找 | 2 | PASS |
| 2 | NAM_04_04_201_RUNTIME_nested_shadow | 内层同名变量遮蔽外层 | 2 | PASS |

## 执行过程
- **执行日期：** 2026-06-18（compile-pass）；2026-06-20（全部执行完毕）
- **环境：** WSL2 (Linux 5.15.153.1)
- **异常修复：** 无
- **补充日期：** 2026-06-19（新增 compile-fail ×6 + runtime ×2）
- **补充日期：** 2026-06-22（新增 compile-pass ×1、compile-fail ×1：namespace export 限定名访问规则；ArkTS 验证通过，Java/Swift 标记 N/A 并实测占位通过）
- **执行命令：** `SECTIONS="4.4_Accessible" bash run_names_cases_wsl.sh`
