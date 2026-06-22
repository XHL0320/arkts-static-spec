# 4.1 Names - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_01_001_PASS_SIMPLE_NAME | 简单名称声明和引用 | PASS |
| 2 | NAM_04_01_002_PASS_QUALIFIED_NAME_MODULE | 限定名-模块成员访问 | PASS |
| 3 | NAM_04_01_003_PASS_QUALIFIED_NAME_CLASS | 限定名-类静态成员 | PASS |
| 4 | NAM_04_01_004_PASS_QUALIFIED_NAME_INSTANCE | 限定名-实例成员 | PASS |
| 5 | NAM_04_01_005_PASS_IDENTIFIER_UNDERSCORE | 下划线开头标识符 | PASS |
| 6 | NAM_04_01_006_PASS_IDENTIFIER_DOLLAR | $开头标识符 | PASS |
| 7 | NAM_04_01_007_PASS_MULTIPLE_DOTS | 多层限定名 | PASS |
| 8 | NAM_04_01_008_PASS_QUALIFIED_NAME_INTERFACE_INSTANCE | 接口类型变量限定名访问实例成员 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_01_010_FAIL_EMPTY_NAME | 空名称非法 | PASS |
| 2 | NAM_04_01_011_FAIL_DIGIT_START | 数字开头标识符 | PASS |
| 3 | NAM_04_01_012_FAIL_KEYWORD_AS_NAME | 关键字作为名称 | PASS |
| 4 | NAM_04_01_013_FAIL_DOT_ONLY | 仅有点的限定名 | PASS |
| 5 | NAM_04_01_014_FAIL_SPECIAL_CHARS | 特殊字符标识符 | PASS |
| 6 | NAM_04_01_015_FAIL_TYPE_KEYWORD | 内置类型名作为变量名 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | NAM_04_01_020_RUNTIME_SIMPLE_REF | 简单名运行时引用 | 1 | PASS |
| 2 | NAM_04_01_021_RUNTIME_QUALIFIED_REF | 限定名运行时访问 | 2 | PASS |

> 注：NAM_04_01_020 此前因 ABC 入口问题标记为失败，现环境已修复，通过 ✅

## 执行过程
- **执行日期：** 2026-06-18；2026-06-22（新增用例验证）
- **环境：** WSL2 (Linux 5.15.153.1)
- **编译器：** es2panda (build 2026-06-11)
- **运行时：** ark VM
- **运行命令：** `SECTIONS="4.1_Names" bash run_names_cases_wsl.sh`
- **异常修复：** 无
- **补充日期：** 2026-06-22（新增 compile-pass ×1：接口类型变量限定名访问实例成员；ArkTS/Java/Swift 三环境验证通过）
