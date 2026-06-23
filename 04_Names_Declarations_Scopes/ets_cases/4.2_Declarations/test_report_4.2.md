# 4.2 Declarations - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 8 | 8 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **13** | **13** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_02_001_PASS_diff_names | 不同名称声明共存 | PASS |
| 2 | NAM_04_02_002_PASS_overload_signature | 同名函数不同签名 | PASS |
| 3 | NAM_04_02_003_PASS_class_static_instance | 类静态和实例方法 | PASS |
| 4 | NAM_04_02_004_PASS_class_field_method | 类字段和方法不同名 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | NAM_04_02_100_FAIL_same_name_const_func | 常量和函数同名 | PASS |
| 2 | NAM_04_02_101_FAIL_same_name_class_var | 类和变量同名 | PASS |
| 3 | NAM_04_02_102_FAIL_class_field_method_same | 字段和方法同名 | PASS |
| 4 | NAM_04_02_103_FAIL_predefined_type_clash | 预定义类型名冲突 | PASS |
| 5 | NAM_04_02_104_FAIL_overload_equivalent | 重载等价签名 | PASS |
| 6 | NAM_04_02_105_FAIL_overload_type_erasure | 类型擦除等价 | PASS |
| 7 | NAM_04_02_106_FAIL_ambiguous_import | 导入冲突 | PASS |
| 8 | NAM_04_02_107_FAIL_import_duplicate | 导入重复 (declare+let 同名) | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | NAM_04_02_200_RUNTIME_overload_dispatch | 重载分派 | 2 | PASS |

## 执行过程
- **执行日期：** 2026-06-18
- **环境：** WSL2 (Linux 5.15.153.1)
- **编译器：** es2panda (build 2026-06-11)
- **运行时：** ark VM
- **运行命令：** `SECTIONS="4.2_Declarations" bash run_names_cases_wsl.sh`
- **异常修复：** NAM_04_02_016 原为 `function foo() {}` 无冲突场景，改为 `declare function foo(); function foo() {}` 实现真正的 ambient 冲突检测
- **补充日期：** 2026-06-20（新增 compile-fail ×1：NAM_04_02_017 导入重复检测）
- **已知局限：** spec 4.2.1 行225 "import 同名函数与本地声明冲突" 需要跨文件编译上下文，当前单文件编译框架无法测试，暂不覆盖
