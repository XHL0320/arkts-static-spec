# 4.3 Scopes - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **19** | **19** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_03_001_PASS_MODULE_SCOPE | 模块级作用域 | PASS |
| 2 | NAM_04_03_002_PASS_CLASS_SCOPE_THIS | 类作用域-this访问 | PASS |
| 3 | NAM_04_03_003_PASS_CLASS_SCOPE_STATIC | 类作用域-静态成员 | PASS |
| 4 | NAM_04_03_004_PASS_BLOCK_SCOPE | 块作用域 | PASS |
| 5 | NAM_04_03_005_PASS_SHADOWING | 内层声明覆盖外层 | PASS |
| 6 | NAM_04_03_006_PASS_TYPE_PARAM_SCOPE | 类型参数作用域 | PASS |
| 7 | NAM_04_03_007_PASS_NESTED_BLOCK | 嵌套块作用域 | PASS |
| 8 | NAM_04_03_015_PASS_FUNC_REF_LET_AFTER_DECL | 函数hoisting引用后续let 🔀 | PASS |
| 9 | NAM_04_03_016_PASS_INTERFACE_SCOPE | 接口作用域 | PASS |
| 10 | NAM_04_03_017_PASS_FUNC_TYPE_PARAM_SCOPE | 函数类型参数作用域 | PASS |
| 11 | NAM_04_03_018_PASS_SUPER_ACCESS | super 访问父类成员 | PASS |
| 12 | NAM_04_03_019_PASS_NAMESPACE_SCOPE_EMBEDDED | namespace 嵌套作用域 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_03_010_FAIL_BEFORE_DECLARATION | 声明前引用 | PASS |
| 2 | NAM_04_03_011_FAIL_BLOCK_OUT_OF_SCOPE | 块外引用 | PASS |
| 3 | NAM_04_03_012_FAIL_INSTANCE_AS_STATIC | 实例成员通过类名访问 | PASS |
| 4 | NAM_04_03_013_FAIL_AMBIGUOUS_SCOPE | 不可区分同名声明 | PASS |
| 🆕 | NAM_04_03_014_FAIL_TYPE_PARAM_IN_STATIC | 静态成员引用类型参数 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | NAM_04_03_020_RUNTIME_MODULE_SCOPE | 模块作用域运行时 | 1 | PASS |
| 2 | NAM_04_03_021_RUNTIME_SHADOWING | 变量覆盖运行时 | 1 | PASS |

## 执行过程
- **执行日期：** 2026-06-18
- **环境：** WSL2 (Linux 5.15.153.1)
- **编译器：** es2panda (build 2026-06-11)
- **运行时：** ark VM
- **运行命令：** `SECTIONS="4.3_Scopes" bash run_names_cases_wsl.sh`
- **异常修复：** NAM_04_03_006 原用 `Box` 类名与 stdlib 保留名冲突，改为 `MyContainer`
- **补充日期：** 2026-06-19（新增 compile-fail ×1：静态成员引用类型参数；compile-pass ×1：函数 hoisting 引用后续 let）
- **补充日期：** 2026-06-22（新增 compile-pass ×1：namespace 嵌套作用域；ArkTS 验证通过，Java/Swift 标记 N/A 并实测占位通过）
- **Gap 分析：** NAM_04_03_015 原设为 compile-fail（函数引用后续 let），经测试编译器通过。分析确认这是正确行为——函数 hoisting 使函数体内可引用声明点之后的 let/const 变量（ECMAScript 标准行为，函数体在调用时才求值），已改为 compile-pass
- 🔀 **跨语言歧义：** NAM_04_03_015 标记为 `@cross-language AMBIGUITY`。在 C/C++/Rust 中函数引用后续声明的变量是非法的，而 ArkTS/Java 允许——C/C++/Rust 背景的开发者极易误判。详见用例注释中的跨语言对比表。
