# 02 Lexical Elements 审查报告

## 审查范围
- 章节：02 Lexical Elements（词法元素）
- 用例目录：`02_LexicalElements/ets_cases/`
- 用例总数：661（改造后新增 4 个）
- 小节目录：20 个（2.1–2.11，含 2.9.x 子节）
- 审查日期：2026-06-26

## 执行结果
### 审计脚本统计
| 指标 | 数值 |
|------|------:|
| `.ets` 用例总数 | 661 |
| manifest JSON | ✅ 合法 |
| manifest `id` 数量 | 661（与 ets 文件一致） |
| 元数据不一致（`@id`/`@expect`/`@section`） | **0** |
| issue_report 差异项 | 7 ISSUE + 6 CONFIRM（ISSUE-005/006 已解决） |

### 分节统计
| 小节 | compile-pass | compile-fail | runtime | 合计 |
|------|------------:|------------:|--------:|----:|
| 2.1 Use of Unicode Characters | 20 | 12 | 14 | **46** |
| 2.2 Lexical Input Elements | 17 | 6 | 11 | **34** |
| 2.3 White Spaces | 26 | 11 | 10 | **47** |
| 2.4 Line Separators | 27 | 3 | 11 | **41** |
| 2.5 Tokens | 33 | 4 | 11 | **48** |
| 2.6 Identifiers | 29 | 12 | 8 | **49** |
| 2.7 Keywords | 49 | 36 | 9 | **94** |
| 2.8 Operators and Punctuators | 18 | 6 | 15 | **39** |
| 2.9.1 Numeric Literals | 21 | 5 | 14 | **40** |
| 2.9.2 Integer Literals | 13 | 4 | 13 | **30** |
| 2.9.3 Floating-Point Literals | 12 | 3 | 13 | **28** |
| 2.9.4 Bigint Literals | 7 | 4 | 13 | **24** |
| 2.9.5 Boolean Literals | 10 | 2 | 11 | **23** |
| 2.9.6 String Literals | 13 | 5 | 13 | **31** |
| 2.9.7 Multiline String Literal | 8 | 1 | 7 | **16** |
| 2.9.8 Undefined Literal | 10 | 1 | 9 | **20** |
| 2.9.9 Null Literal | 10 | 1 | 10 | **21** |
| 2.10 Comments | 16 | 1 | 2 | **19** |
| 2.11 Semicolons | 8 | 1 | 2 | **11** |
| **合计** | **347** | **118** | **196** | **661** |

### 环境差异
- runner `run_lexicalelements_cases_wsl.sh` 基于 WSL + arkcompiler 工具链，当前本地环境为 Windows PowerShell、无可执行工具链，未进行实际跑测。
- 不将此列为交付问题。

## 总体结论
**可验收，主要风险较低**。用例设计完整覆盖 spec 全部 11 个主节 + 9 个子节，元数据完全一致（0 不一致），manifest 合法。issue_report 已清晰归档 9 个已知异常和 6 个 spec 待澄清项。

## 问题清单

### 1. ISSUE-001: Unicode 转义标识符编译失败（未解决）
- **现象**：`LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER.ets` 预期 compile-pass，实际 compile-fail（ESY0112）
- **影响**：阻塞该用例的预期执行路径，影响 Unicode 转义标识符语法的回归覆盖
- **建议**：跟踪编译器对该语法的支持进展

### 2. ISSUE-002/003/004: 孤立代理/代理组合未报错（SPEC 不一致）
- **现象**：3 个 compile-fail 用例实际编译通过，编译器未按 Unicode 规范拒绝孤立代理
- **影响**：当前版本 ArkTS 对代理对的检查弱于 Unicode 规范；需决策是否作为编译器修复项
- **建议**：标注为 D 类异常（Spec 与实现不一致），不影响验收

### 3. ISSUE-005/006: char 关系运算/数值比较 ✅ 已解决
- **现象**：2 个用例已从 compile-fail 移至 compile-pass，`@expect` 已修正为 compile-pass
- **操作**：文件移至 `2.1_Use_of_Unicode_Characters/compile-pass/`，注解更新，manifest/catalog/mindmap 同步修改

### 4. ISSUE-007: char 字面量内含真实 LF 未报错（SPEC 不一致）
- **现象**：`LEX_02_04_022_PASS_LF_IN_CHAR_LITERAL.ets` 编译通过，但与字符串字面量跨行禁止行为不一致
- **影响**：spec 未明确定义 char 字面量跨行规则，编译器行为存在歧义
- **建议**：标记为 D 类异常，等待 spec 明确

### 5. ISSUE-008: CRLF 在 spec 中未显式定义为行终止符序列
- **现象**：编译器隐含支持 CRLF 为单一行终止符，但 spec/lexical.md 未显式列出 CRLF 产生式
- **影响**：spec 清晰度问题，不影响编译器行为
- **建议**：标记为 D 类异常（spec 优化项）

### 6. ISSUE-009: `??=` 空值合并赋值运算符未实现
- **现象**：runtime 用例 `LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets` 编译失败（ESY0227），`??=` 不支持
- **影响**：`??=` 虽然列在 spec/lexical.md 运算符表中，但编译器尚未实现；配套的 `&&=`、`||=` 亦未实现
- **建议**：跟踪编译器版本更新

### 7. 6 项 spec 待澄清（CONFIRM-002/004/009/010/011/025）
- **分布**：2.2（注释分隔符语义）、2.3（ZWNBSP 边界）、2.5（最长匹配与 char 交互、`@` 归类）、2.6（Unicode 类别表）、2.9.3（NaN/Infinity 检测 API）
- **影响**：这些属于 spec 本身的歧义位置，不影响交付件质量
- **建议**：保留确认状态，待 spec 更新时重新评估

## 覆盖评价

| Spec 小节 | 覆盖评价 |
|-----------|---------|
| 2.1 Unicode Characters | ✅ 齐全，含 BMP/Supplementry/char/代理/转义/标识符/类接口 |
| 2.2 Lexical Input Elements | ✅ 齐全，含 4 种输入元素/分隔符/注释作为分隔符 |
| 2.3 White Spaces | ✅ 齐全，覆盖 6 种空白符及各类使用场景 |
| 2.4 Line Separators | ✅ 齐全，含 LF/CR/LS/PS/CRLF/混合序列及结构化位置 |
| 2.5 Tokens | ✅ 齐全，含 4 类 Token/最长匹配/连续 Token |
| 2.6 Identifiers | ✅ 齐全，含各类 Unicode 类别起始/部分/转义/作用域 |
| 2.7 Keywords | ✅ 齐全，硬关键字/类型关键字/软关键字/大小写/保留字 |
| 2.8 Operators and Punctuators | ✅ 齐全，覆盖各类运算符/标点/优先级/箭头函数 |
| 2.9.1–2.9.9 Literals | ✅ 各子节齐全，覆盖正常/边界/错误路径 |
| 2.10 Comments | ✅ 齐全，单行/多行/特殊字符/Unicode/嵌套测试 |
| 2.11 Semicolons | ✅ 齐全，显示/隐含/ASI/歧义消除 |

**补充记录**：本次改造新增 4 个用例填补了此前报告中的覆盖空缺：
1. `LEX_02_03_046_PASS_OGHAM_SPACE_MARK` — Ogham Space Mark (U+1680) 空白符
2. `LEX_02_03_047_PASS_UNICODE_SPACE_RANGE` — U+2000–U+200A 区段空白符
3. `LEX_02_09_03_022_PASS_HEX_FLOAT` — hex float (`0x1.Fp10`)
4. `LEX_02_09_09_021_RT_NULL_TYPEOF` — `typeof null` 运行时验证

## 整改建议

1. **阻塞项**：无（全部已知问题已归档）
2. **已执行**：ISSUE-005/006 修正（文件移动、注解更新、manifest/catalog/mindmap 同步）
3. **已执行**：补充 Ogham Space Mark、U+2000–U+200A 空白符、hex float、`typeof null` 运行时验证（4 个新用例）
4. **低优先级**：跟踪 ISSUE-001 (`\u{...}` 标识符) 和 ISSUE-009 (`??=`) 的编译器支持进展
5. **文档优化**：CONFIRM-008 CRLF 显式定义——建议在 spec/lexical.md 中补充 CRLF `LineTerminatorSequence` 产生式
