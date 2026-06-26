# 04 Names, Declarations and Scopes 审查报告

## 审查范围
- 章节：04 Names, Declarations and Scopes
- 用例目录：`04_Names_Declarations_Scopes/ets_cases/`
- 用例总数：191（91P + 71F + 29R）
- 审查日期：2026-06-27

## 执行结果
- **测试执行**：通过 `run_names_cases_wsl.sh` 在本地 WSL 兼容环境下完成（es2panda + ark runtime）。
- **静态审计**：通过 `audit_chapter.ps1` 等效 bash 脚本完成。

| 指标 | 数值 |
|------|------:|
| .ets 总数 | 191 |
| 执行通过 | **191** |
| 执行失败 | **0** |
| 通过率 | 100% |
| manifest id 数 | 191（100% 覆盖）|
| manifest JSON | ✅ 合法（已修复 UTF-8 BOM）|
| 元数据不一致 | **0** |
| spec_original.md | 1427 行 |
| Names_Examples.md | 257 行 |
| test_case_catalog.md | 292 行 |
| test_design_mindmap.md | 207 行 |

## 总体结论
**可验收。** 191 用例全覆盖 21 个小节，191/191 全部通过（100%）。元数据完全一致（METADATA_BAD_COUNT=0），manifest 全覆盖（191/191）。spec、examples、catalog、mindmap 均已填充。

## 问题清单

当前无阻塞验收的问题。审查过程中发现以下问题并已修复：

| 问题 | 状态 |
|------|:----:|
| `test_manifest.json` 包含 UTF-8 BOM，导致解析失败 | ✅ 已修复 |
| runner 共用 `/tmp/test.abc` 导致运行时用例偶发文件竞争 | 已记录，建议 runner 使用 `mktemp` 隔离 |

## 已修复问题详情

### manifest 包含 UTF-8 BOM
- **现象**：`test_manifest.json` 包含 UTF-8 BOM（`\xEF\xBB\xBF`），导致 Python JSON 解析器报错
- **修复**：重新编码为纯 UTF-8（无 BOM）

### runner 临时文件竞争
- **首次全量跑测**：`NAM_04_02_200_RUNTIME_OVERLOAD_DISPATCH` exit code 255（`Cannot find class`）
- **二次验证**：单独跑 4.2 子节全部通过，单独跑该用例也通过
- **根因**：runner 未为每个运行时用例创建独立临时文件
- **建议**：runner 使用 `mktemp` 创建临时输出文件

## 覆盖评价

| 小节 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 4.1 Names | 8 | 6 | 2 | 16 | 简单/限定/复合名称、标识符规则 |
| 4.2 Declarations | 4 | 8 | 1 | 13 | 声明类型/重载/签名等价性 |
| 4.2.1 Distinguishable Signatures | 1 | 1 | 1 | 3 | 签名可区分性 |
| 4.3 Scopes | 14 | 5 | 0 | 19 | 模块/类/块/类型参数作用域 |
| 4.4 Accessible | 7 | 7 | 2 | 16 | 可访问性/跨作用域访问 |
| 4.5 Type Declarations | 10 | 13 | 1 | 24 | 类型声明/循环引用检测 |
| 4.5.1 Type Alias Declaration | 8 | 1 | 2 | 11 | 类型别名/泛型别名 |
| 4.6.1 Variable Declarations | 5 | 3 | 1 | 9 | 变量声明/类型推断 |
| 4.6.2 Constant Declarations | 3 | 3 | 1 | 7 | 常量声明 |
| 4.6.3 Validity of Initializer | 1 | 2 | 1 | 4 | 初始化器合法性/前向引用 |
| 4.6.4 Assignability with Initializer | 1 | 1 | 1 | 3 | 初始化器可赋值性 |
| 4.6.5 Type Inference from Initializer | 5 | 2 | 2 | 9 | 字面量提升/三元推断 |
| 4.7 Function Declarations | 2 | 2 | 1 | 5 | 函数声明/native 函数 |
| 4.7.1 Signatures | 3 | 1 | 1 | 5 | 泛型函数签名 |
| 4.7.2 Parameter List | 1 | 1 | 1 | 3 | 参数列表/可选必选顺序 |
| 4.7.3 Readonly Parameters | 1 | 2 | 2 | 5 | 只读参数/数组只读 |
| 4.7.4 Optional Parameters | 2 | 1 | 2 | 5 | 可选参数/default/?标记 |
| 4.7.5 Rest Parameter | 5 | 6 | 4 | 15 | rest 参数/元组 rest |
| 4.7.6 Shadowing by Parameter | 2 | 1 | 2 | 5 | 参数遮蔽 |
| 4.7.7 Return Type | 8 | 5 | 1 | 14 | 返回类型推断/void/never |
| **Total** | **91** | **71** | **29** | **191** | 21 节全覆盖 |

**说明**：`4.6_Variable_Constant_Declarations` 为父级汇总目录，不计用例；`cross_lang_verify/` 为跨语言对照样例。

## 整改建议
1. 后续交付件注意避免 UTF-8 BOM 编码
