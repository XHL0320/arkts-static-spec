# ArkTS Static Spec 04 Names Declarations Scopes 测试审视报告

审视日期：2026-06-23  
审视对象：`04_Names_Declarations_Scopes`  
审视角色：ArkTS 静态语言高级测试工程师  
ArkTS 依据：`arkts-static-spec/spec/names.md`、`lexical.md`、`types.md`、`enums.md`

## 1. 总体结论

04 章节测试用例工程化基础较完整：本地共有 191 个 `.ets` 用例，覆盖 compile-pass、compile-fail、runtime 三类；已在 WSL 中使用 `/home/xhl/arkcompiler/runtime_core/static_core/out/bin/es2panda` 和 `ark` 执行验证，结果为 `Total: 191, Pass: 191, Fail: 0`。

但从高级测试审视角度看，当前提交还不适合作为最终归档版本。主要问题不在用例能否跑通，而在报告和 issue 定性：`issue_report.md` 中两个 D 类 issue 均与 ArkTS spec 事实不符；多个 `design_issues_report_*.md` 把“符合 ArkTS spec 的设计差异”写成 LOW/MEDIUM issue，导致缺陷信号被放大；Java/Swift 对比证据不足，只有 reserved name 方向存在可执行对照文件，不能支撑全章节跨语言结论。

## 2. 本地执行验证

执行环境：

- WSL 编译器：`/home/xhl/arkcompiler/runtime_core/static_core/out/bin/es2panda`
- WSL 运行时：`/home/xhl/arkcompiler/runtime_core/static_core/out/bin/ark`
- 执行脚本：`04_Names_Declarations_Scopes/run_names_cases_wsl.sh`

执行结论：

```text
Total: 191, Pass: 191, Fail: 0
```

注意：原脚本是 CRLF 行尾，在 WSL 中需要先转 LF；本次审视使用临时 LF 脚本执行。建议将 `run_names_cases_wsl.sh` 规范为 LF，避免后续测试人员在 WSL 中直接执行失败。

## 3. 用例规模与覆盖分布

| 章节 | pass | fail | runtime | 合计 |
|---|---:|---:|---:|---:|
| 4.1 Names | 8 | 6 | 2 | 16 |
| 4.2 Declarations | 4 | 8 | 1 | 13 |
| 4.2.1 Declaration Distinguishable by Signatures | 1 | 1 | 1 | 3 |
| 4.3 Scopes | 12 | 5 | 2 | 19 |
| 4.4 Accessible | 7 | 7 | 2 | 16 |
| 4.5 Type Declarations | 10 | 13 | 1 | 24 |
| 4.5.1 Type Alias Declaration | 7 | 1 | 3 | 11 |
| 4.6.1 Variable Declarations | 5 | 3 | 1 | 9 |
| 4.6.2 Constant Declarations | 3 | 3 | 1 | 7 |
| 4.6.3 Validity of Initializer | 1 | 2 | 1 | 4 |
| 4.6.4 Assignability with Initializer | 1 | 1 | 1 | 3 |
| 4.6.5 Type Inference from Initializer | 5 | 2 | 2 | 9 |
| 4.7 Function Declarations | 2 | 2 | 1 | 5 |
| 4.7.1 Signatures | 3 | 1 | 1 | 5 |
| 4.7.2 Parameter List | 1 | 1 | 1 | 3 |
| 4.7.3 Readonly Parameters | 1 | 2 | 2 | 5 |
| 4.7.4 Optional Parameters | 2 | 1 | 2 | 5 |
| 4.7.5 Rest Parameter | 4 | 6 | 5 | 15 |
| 4.7.6 Shadowing by Parameter | 2 | 1 | 2 | 5 |
| 4.7.7 Return Type | 8 | 5 | 1 | 14 |

`4.6_Variable_Constant_Declarations` 是父级汇总目录，当前没有 `.ets` 用例；报告中应明确其用例覆盖由 4.6.1 到 4.6.5 子章节承接。

## 4. 主要问题

### 4.1 `issue_report.md` 的两个 D 类 issue 不合理

当前 `issue_report.md` 记录：

- `D-4.01-01`：认为 spec 未完整列举保留名，编译器额外保留 `int`、`string` 等。
- `D-4.06-01`：认为 `int` 作为隐式推断类型未正式定义。

这两个结论不成立。

依据：

- `spec/lexical.md` 明确说明 predefined types 的名称和别名也是 hard keywords，不能作为 identifiers，并列出 `int`、`string`、`number`、`Object` 等。
- `spec/types.md` 明确定义 ArkTS predefined types，包含 `byte`、`short`、`int`、`long`、`float`、`double`、`number`、`boolean`、`char`、`string`、`bigint` 等，并给出别名表。
- `spec/names.md` 中 `number`、`String`、`Record`、`Object`、`Array` 是声明冲突示例，不是完整保留名清单。
- `spec/names.md` 的 Type Inference from Initializer 示例明确使用 `int`，且 `types.md` 已正式定义 `int`。

建议：

- 从 D 类 issue 中移除 `D-4.01-01` 和 `D-4.06-01`。
- 如需保留，可改为“文档导航/交叉引用建议”，严重性降为 LOW，不应归类为 Spec 与实现不一致。
- 同步修订 `4.1`、`4.2`、`4.6`、`4.6.5` 相关 design issue 报告中同源描述。

### 4.2 design issue 报告普遍把 spec-compliant 行为当成 issue

多个 `design_issues_report_*.md` 将 ArkTS 明确规定的静态约束写成 LOW/MEDIUM 问题，例如：

- `4.2.1`：声明签名可区分性检查严格。
- `4.2`：泛型擦除后重载不可区分。
- `4.6.1`：无类型注解且无初始值禁止声明。
- `4.6.2`：`const` 必须初始化。
- `4.6.3`：初始值合法性检查。
- `4.6.4`：initializer 可赋值性检查。
- `4.7.2` 到 `4.7.7`：参数列表、只读参数、可选参数、剩余参数、参数遮蔽、返回类型推断等规则。

这些内容可以作为“语言设计差异”或“已验证行为”，但不应进入 severity issue 表。否则会造成两个问题：一是 issue 数量虚高；二是真正的 spec/implementation mismatch 被淹没。

建议统一报告口径：

| 类型 | 记录位置 | 是否进入 issue_report |
|---|---|---|
| Spec 与实现不一致 | issue_report + design report | 是 |
| Spec 未明确，需要确认 | design report 的待确认区 | 否，除非确认后升级 |
| 符合 ArkTS spec，但不同于 Java/Swift | cross-language/design difference | 否 |
| 用例已验证行为 | test report / verified behavior | 否 |

### 4.3 Java/Swift 对比证据不足

当前 `ets_cases/cross_lang_verify` 只有：

- `Java_ReservedNameCheck.java`
- `Swift_ReservedNameCheck.swift`
- `cross_lang_verify_report.md`

这只能覆盖 reserved name 对比，不能支撑 4.2 到 4.7 全部章节中的 Java/Swift 结论。若各章节 comparison report 中写了 Java/Swift 行为，应配套可执行 Java/Swift 样例或明确标注为“资料对比，未本地编译验证”。

特别需要修订：

- 对 `N/A` 的场景不应写“实测占位通过”。`N/A` 只能说明语言模型不对应，不能证明行为通过。
- 泛型擦除、重载等 Java 对比需要 `javac` 可复现样例支撑；当前报告中的若干结论没有仓库内证据。
- Swift 参数标签、重载、标准库类型 shadow 等结论也应补充 `swiftc` 可复现样例或降低为参考分析。

### 4.4 `test_case_catalog.md` 目录统计与 ID 表达不规范

目录头部数量与实际行数存在不一致：

- `4.6.3 Validity of Initializer` 标注 3 cases，实际列 4 条。
- `4.6.5 Type Inference from Initializer` 标注 7 cases，实际列 9 条。
- `4.7.3 Readonly Parameters` 标注 4 cases，实际列 5 条。
- `4.7.4 Optional Parameters` 标注 4 cases，实际列 5 条。
- `4.7.5 Rest Parameter` 标注 9 cases，实际列 15 条。
- `4.7.6 Shadowing by Parameter` 标注 3 cases，实际列 5 条。
- `4.7.7 Return Type` 标注 9 cases，实际列 14 条。

此外，catalog 中不少 ID 只写到公共前缀，导致 PASS/FAIL/RUNTIME 行看起来重复，例如 `NAM_04_02_01_001`、`NAM_04_05_01_001`、`NAM_04_06_01_001` 等。实际 `.ets` 文件中的 `@id` 未发现重复，但 catalog 的展示方式会误导审阅者。建议 catalog 使用完整文件名级 ID 或直接展示完整 `@id`。

### 4.5 `const enum` 用例需要重新定性

`4.5_Type_Declarations` 中有 `NAM_04_05_028_FAIL_TYPE_DECL_CONST_ENUM_UNSUPPORTED.ets`。`spec/names.md` 的 type declaration grammar 包含 `constEnumDeclaration`，但 `spec/enums.md` 又说明 `const enum` 语义是 temporary，后续将补充。这里不宜直接定为实现缺陷，也不宜简单写成“unsupported 合理”。

建议将该点标为“待确认”：需要根据当前 OpenHarmony ArkTS 版本的 const enum 支持状态、experimental/implementation 说明和编译器目标版本确认预期。

## 5. 覆盖性评价

当前 04 章节用例覆盖了大部分主路径和负路径，尤其是名称冲突、作用域、可访问性、type alias、变量/常量初始化、函数参数和返回类型等核心规则。但仍有可补强点：

- 4.1 Names：可补 Unicode identifier、`$`/`_` 边界、hard keyword 与 soft keyword 的系统性矩阵。
- 4.2 Declarations：可补模块导入、namespace、top-level 与局部声明冲突的组合；方法/构造函数签名可区分性目前在 4.2.1 覆盖较薄。
- 4.3/4.4 Scopes/Accessible：可补 point of declaration、嵌套 namespace/module import、class/interface member accessible 的更多组合。
- 4.5 Type Declarations：递归 alias 覆盖较强，但 const enum、enum/class/interface/type alias 同名冲突、泛型约束相关声明仍可扩展。
- 4.6 Variables/Constants：initializer、assignability 和 inference 用例可补更多 union、literal、nullish、function expression、array/tuple/object literal 组合。
- 4.7 Functions：rest parameter 覆盖较好；readonly、optional、return type、signature 子章节可补 overload、generic constraint、`never`/`void`、lambda/function type 对齐等场景。

## 6. 建议修订清单

1. 修订 `issue_report.md`：移除或降级 `D-4.01-01`、`D-4.06-01`，避免错误归类为 D 类 spec 不一致。
2. 修订所有 `design_issues_report_*.md`：把 spec-compliant 行为从 severity issue 表中移出，改为“设计差异/已验证行为”。
3. 修订 `test_case_catalog.md`：更新错误 case 数量，使用完整 `@id` 或完整文件名避免重复 ID 观感。
4. 修订跨语言对比报告：为 Java/Swift 结论补充可执行样例和编译命令；无样例处标注“未本地验证”。
5. 将 `run_names_cases_wsl.sh` 转为 LF 行尾，避免 WSL 直接执行问题。
6. 对 `const enum` 用例单独建立待确认项，避免在 spec 语义 temporary 的情况下过早定性。
7. 将每节 test report 的“实际执行命令、编译器路径、运行时路径、执行日期”统一写入，便于复审可追溯。

## 7. 最终判定

用例执行质量：通过。191 个 ArkTS 用例均能在 WSL + es2panda/ark 环境下按预期通过。

测试设计质量：中等偏上。章节覆盖面较广，正/负/运行时用例结构清晰，但部分子章节覆盖仍偏薄。

报告与 issue 质量：需要修订。当前最严重问题是 issue 定性错误和跨语言证据不足。建议完成上述修订后再作为 04 章节正式验收材料。

## 8. 反馈给开发人员的补充修改要求

以下问题建议直接反馈给用例与报告开发人员，作为本轮修改闭环项。

### 8.1 必须修改项

| 编号 | 问题位置 | 当前问题 | 修改要求 | 验收标准 |
|---|---|---|---|---|
| R-04-001 | `issue_report.md` | `D-4.01-01` 将 predefined type hard keyword 误判为 spec 未完整列举保留名 | 删除该 D 类 issue，或降级为“文档交叉引用建议” | `issue_report.md` 中不再把 `int`、`string` 等 predefined type 名称列为实现额外保留 |
| R-04-002 | `issue_report.md` | `D-4.06-01` 将 `int` 误判为未正式定义 | 删除该 D 类 issue，或降级为“文档交叉引用建议” | 报告明确引用 `spec/types.md` 中 `int` 是 predefined integer type |
| R-04-003 | `4.1/4.2/4.6/4.6.5` design issue report | 复用了“保留名清单不完整”“int 未定义”等错误判断 | 同步修订相关 design issue 报告 | 相关章节不再把该行为归类为 Spec 与实现不一致 |
| R-04-004 | 全部 `design_issues_report_*.md` | 大量符合 ArkTS spec 的行为被写入 LOW/MEDIUM issue | 重新拆分为“Spec 不一致”“待确认”“语言设计差异”“已验证行为”四类 | severity 表只统计真实 issue，不统计 spec-compliant 设计差异 |
| R-04-005 | `test_case_catalog.md` | 多个章节标题 case 数与实际列表不一致 | 修正 4.6.3、4.6.5、4.7.3、4.7.4、4.7.5、4.7.6、4.7.7 的 case 数 | catalog 标题数量、manifest 数量、本地 `.ets` 数量三者一致 |
| R-04-006 | `test_case_catalog.md` | ID 列使用短前缀，导致 PASS/FAIL/RUNTIME 看起来重复 | 改为完整 `@id` 或完整文件名 ID | 审阅者能唯一定位每个测试用例 |
| R-04-007 | `cross_lang_verify` 和各章节 comparison report | Java/Swift 对比证据不足，只有 reserved name 可执行样例 | 为报告中声称“实测”的 Java/Swift 行为补充 `.java`/`.swift` 用例和编译命令；无法补充则标注“资料对比，未本地验证” | 每个跨语言结论都有可复现依据或明确证据等级 |
| R-04-008 | `run_names_cases_wsl.sh` | 脚本为 CRLF 行尾，WSL 直接执行存在风险 | 转为 LF 行尾 | WSL 中可直接 `bash run_names_cases_wsl.sh` 执行 |
| R-04-009 | `4.5_Type_Declarations` | `const enum unsupported` 用例定性过早 | 将该点标为待确认，并补充当前 ArkTS 版本/spec 依据 | 报告不将 temporary spec 区域简单定为实现缺陷或完全合理 |
| R-04-010 | `4.6_Variable_Constant_Declarations` | 父级目录无 `.ets` 用例但有报告，容易误读为漏测 | 报告中明确该目录是 4.6.1-4.6.5 汇总层 | 审阅者能看出 4.6 覆盖由子章节承担 |

### 8.2 建议补充用例项

| 编号 | 章节 | 建议补充内容 | 原因 |
|---|---|---|---|
| A-04-001 | 4.1 Names | Unicode identifier、`$`/`_` 边界、hard keyword 与 soft keyword 矩阵 | 当前名称词法边界覆盖不够系统 |
| A-04-002 | 4.2 Declarations | top-level、namespace、import、class/interface/type alias 同名冲突组合 | 当前声明冲突覆盖偏核心路径，组合场景不足 |
| A-04-003 | 4.2.1 Signatures | 构造函数、方法、泛型方法、返回值不参与签名区分的矩阵 | 当前 4.2.1 只有 3 个用例，覆盖偏薄 |
| A-04-004 | 4.3/4.4 Scopes/Accessible | point of declaration、嵌套 namespace、module import、class/interface member accessible 组合 | 作用域和可访问性是 04 章核心风险点，建议增加交叉场景 |
| A-04-005 | 4.5 Type Declarations | enum、const enum、type alias、interface、class 同名与递归组合 | 当前 alias 递归较强，但 type declaration 横向冲突仍可补强 |
| A-04-006 | 4.6 Variables/Constants | union、literal、nullish、array/tuple/object literal、lambda initializer 推断组合 | 类型推断与 initializer 是静态语言迁移高风险点 |
| A-04-007 | 4.7 Functions | overload、generic constraint、`void`/`never`、optional/rest/readonly 混合参数 | 函数签名和参数规则需要更多组合负例 |

### 8.3 开发人员修改后的回归要求

修改完成后，请开发人员至少提供以下回归证据：

1. WSL 环境执行结果：`Total: 191, Pass: 191, Fail: 0`，如新增用例则同步更新总数。
2. `test_manifest.json`、`test_case_catalog.md`、各节 `test_report_*.md` 的用例数量一致。
3. `issue_report.md` 只保留真实的 Spec 与实现不一致、实现缺陷或明确待确认 issue。
4. 每个跨语言 comparison report 标注证据来源：本地编译验证、官方资料对比、或未验证。
5. 所有新增或修订用例必须包含 `@id`、`@section`、`@design`、`@expect`、`@note` 元数据。
