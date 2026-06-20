# 4.4 Accessible - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_04_001_PASS_TYPE_ACCESSIBLE | 类型名可访问用于声明 | PASS |
| 2 | NAM_04_04_002_PASS_FUNC_ACCESSIBLE | 函数名可访问用于调用 | PASS |
| 3 | NAM_04_04_003_PASS_VAR_ACCESSIBLE | 变量名可访问用于读写 | PASS |
| 4 | NAM_04_04_004_PASS_MODULE_ACCESS | 模块名可访问 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_04_010_FAIL_OUT_OF_BLOCK_SCOPE | 块作用域外访问块内变量 | PASS |
| 2 | NAM_04_04_011_FAIL_OUT_OF_FUNC_SCOPE | 函数外引用函数内局部变量 | PASS |
| 3 | NAM_04_04_012_FAIL_USE_BEFORE_DECLARE | 函数体内声明前引用变量 | PASS |
| 4 | NAM_04_04_013_FAIL_CROSS_FUNC_ACCESS | 跨函数作用域访问局部变量 | PASS |
| 5 | NAM_04_04_014_FAIL_IF_BLOCK_LEAK | if块内变量在块外不可访问 | PASS |
| 6 | NAM_04_04_015_FAIL_LOOP_VAR_LEAK | 循环块内变量循环外不可访问 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | NAM_04_04_020_RUNTIME_SCOPE_CHAIN | 嵌套作用域链变量查找 | 2 | PASS |
| 2 | NAM_04_04_021_RUNTIME_NESTED_SHADOW | 内层同名变量遮蔽外层 | 2 | PASS |

## 执行过程
- **执行日期：** 2026-06-18（compile-pass）；2026-06-20（全部执行完毕）
- **环境：** WSL2 (Linux 5.15.153.1)
- **异常修复：** 无
- **补充日期：** 2026-06-19（新增 compile-fail ×6 + runtime ×2）
- **执行命令：** `SECTIONS="4.4_Accessible" bash run_names_cases_wsl.sh`
