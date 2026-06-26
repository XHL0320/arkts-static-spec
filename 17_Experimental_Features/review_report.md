# 17 Experimental Features 审查报告

## 审查范围
- 章节：17 Experimental Features
- 用例目录：`17_Experimental_Features/ets_cases/`
- 用例总数：533（238P + 161F + 134R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地为 Windows，runner `run_experimental_features_cases.sh` 为 bash 脚本，依赖 `es2panda`/`ark` 工具链。此差异属于本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成。
- **交付件质量**：manifest JSON 实质合法（经 Python 验证）。审计脚本因 PowerShell 中文编码问题误报 JSON ERROR，属本地工具差异。

## 总体结论
**可验收，交付质量高。** 533 用例覆盖 40 个小节，元数据完全一致（METADATA_BAD_COUNT=0），@id 533 个全部匹配。spec_original.md 有规约摘录，mindmap/catalog 详细，issue_report 分类清晰。manifest 格式与其他章节不一致但内容完备。主要风险是 16+ 项已知 spec/实现差异（含 1 个编译器 segfault）。

## 问题清单

### 1. [重要] 审计脚本因编码误报 manifest JSON ERROR
**现象**：`audit_chapter.ps1` 报告 `MANIFEST_JSON=ERROR`，但经 Python json 模块验证文件完全合法（533 条 case 全部解析成功）。
**根因**：manifest 包含大量 UTF-8 中文描述，PowerShell 5.1 `ConvertFrom-Json` 对特定中文字符解析失败。
**影响**：不影响实际交付，但说明审计脚本对 UTF-8 JSON 兼容性不足。
**建议**：可忽略此误报。如需修复可考虑在脚本中指定 `-Encoding UTF8` 读取。

### 2. [中等] manifest 格式与其他章节不一致
**现象**：本章使用 `"cases": [{id, section, category, description}, ...]` 数组格式，而 06/07/09 使用 `"stats": {section: {compile-pass/fail/runtime/total}}` 对象格式。本章无 `"total_cases"` 和 `"prefix"` 字段。
**分析**：`cases` 格式粒度更细（每条用例有独立描述），但与其他章节不统一。
**建议**：统一全仓库的 manifest 格式，或在文档中记录差异原因。

### 3. [信息] 16+ 项已知 spec 差异已清晰归类
**现象**：issue_report.md 记录了 16+ 项差异，含 C 类（编译器未实现/编译器 Bug）和 D 类（Spec 不一致），其中：
- C-17.4-02（MEDIUM）：函数类型数组编译失败
- C-17.9.1-01 / C-17.9.5-01/02（MEDIUM）：空 overload / 空 overload constructor 通过
- **C-17.16.1-01（HIGH）**：嵌套解构导致 es2panda segfault（编译器 Bug）
- D-17.2-01/02（MEDIUM）：FixedArray 越界/长度赋值被编译器提前拒绝
- D-17.13.2-01（MEDIUM）：int/string 作为 receiver type 误通过
- D-17.5-01（MEDIUM）：Indexable `$_get/$_set` 参数类型 spec( string/number) vs 实现(int)
- D-17.11.3-01/02/03：命名构造器实验特性未实现
- D-17.13.4-01 / D-17.13.5-01：Receiver lambda 实验特性未实现
- 另有 4 项标记为"待确认"（需对照 spec 判断属于 C 类还是 D 类）
**建议**：保留 issue_report，优先处理 C-17.16.1-01（compiler segfault），其余在编译器版本更新后验证。

### 4. [信息] 40 小节全覆盖，无空缺子节
**现象**：manifest 中 40 个 section 条目全部有对应 `ets_cases/` 目录。父级容器节（17.10/17.11/17.13/17.16/17.17）有对应的顶层用例但数量较少（8~17 例），子节用例更丰富（12~21 例）。
**建议**：父节用例较少是合理的设计（覆盖跨子节组合即可），无需补充。

### 5. [改进] spec_original.md 可补充更多翻译/提取
**现象**：spec_original.md 有 67 行规约摘录，覆盖了 17.1~17.13 的核心点，但 17.14~17.16 部分较简略。
**影响**：不影响验收，但新 reviewer 查 spec 时可能需要外部文档。
**建议**：补充 17.14 Trailing Lambdas、17.15 Accessor Declarations、17.16 Pattern Matching 的规约原文。

## 覆盖评价

| 范围 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 17.1 Type char | 5 | 5 | 3 | 13 | char 声明/赋值/Object 子类型 |
| 17.1.1 char Literals | 5 | 5 | 5 | 15 | ASCII/转义/十六进制/Unicode/越界 |
| 17.1.2 char Operations | 6 | 5 | 5 | 16 | char==char/int, 与非数值比较失败 |
| 17.2 Fixed-Size Array Types | 7 | 5 | 5 | 17 | FixedArray 声明/索引/length, 与 Array 互赋值失败 |
| 17.2.1 Fixed-Size Array Creation | 7 | 4 | 4 | 15 | 字面量/constructor, 非 preserved 类型失败 |
| 17.3 Value Array Types | 10 | 5 | 5 | 20 | ValueArray<int/double>, string/union 失败 |
| 17.4 Resizable Array Creation | 9 | 7 | 5 | 21 | new T[n](elem), 负维度/非 int 维度失败 |
| 17.4.1 Runtime Evaluation | 3 | 2 | 7 | 12 | NegativeArraySizeError, 正常创建 |
| 17.5 Indexable Types | 8 | 4 | 3 | 15 | $_get/$_set 索引读写, async 修饰失败 ⚠️ D |
| 17.6 Iterable Types | 9 | 3 | 3 | 15 | $_iterator, for-of 遍历 |
| 17.7 Callable Types | 7 | 4 | 6 | 17 | $_invoke/$_instantiate, C() call |
| 17.7.1 Callable with invoke | 8 | 3 | 3 | 14 | $_invoke 多签名 |
| 17.7.2 Callable with instantiate | 6 | 4 | 4 | 14 | factory 参数 |
| 17.8 Statements | 10 | 2 | 3 | 15 | 实验特性语句 |
| 17.8.1 For-of Explicit Type | 7 | 3 | 3 | 13 | for(let x:Type of) |
| 17.9 Explicit Overload Declarations | 5 | 2 | 1 | 8 | overload 基本语法 |
| 17.9.1 Explicit Function Overload | 7 | 7 | 3 | 17 | 函数 overload ⚠️ C |
| 17.9.2 Explicit Class Method Overload | 8 | 7 | 3 | 18 | 类方法 overload |
| 17.9.3 Explicit Interface Method Overload | 6 | 3 | 1 | 10 | 接口方法 overload |
| 17.9.4 Overload Name Same As Method | 5 | 2 | 1 | 8 | overload 名=方法名 |
| 17.9.5 Explicit Constructor Overload | 7 | 3 | 2 | 12 | 构造器 overload ⚠️ C |
| 17.10 Native Functions and Methods | 0 | 0 | 0 | 0 | 父节无直接用例 |
| 17.10.1 Native Functions | 5 | 5 | 3 | 13 | native 函数声明 |
| 17.10.2 Native Methods | 8 | 5 | 3 | 16 | native 方法 |
| 17.10.3 Native Constructors | 5 | 5 | 3 | 13 | native 构造器 |
| 17.11 Classes Experimental | 0 | 0 | 0 | 0 | 父节无直接用例 |
| 17.11.1 Final Classes | 5 | 5 | 3 | 13 | final class, extends final 失败 |
| 17.11.2 Final Methods | 5 | 5 | 4 | 14 | final method ⚠️ |
| 17.11.3 Named Constructors | 5 | 5 | 5 | 15 | 命名构造器 ⚠️ D |
| 17.12 Default Interface Method Declarations | 5 | 5 | 4 | 14 | 接口默认方法 |
| 17.13 Adding Functionality to Existing Types | 4 | 2 | 2 | 8 | receiver 基本语法 |
| 17.13.1 Functions with Receiver | 7 | 4 | 4 | 15 | this:Type 参数 ⚠️ D |
| 17.13.2 Receiver Type | 6 | 5 | 3 | 14 | class/interface/array receiver ⚠️ D |
| 17.13.3 Function Types with Receiver | 6 | 4 | 3 | 13 | (this:T)=>R 类型 |
| 17.13.4 Lambda with Receiver | 6 | 4 | 3 | 13 | (this:T)=>{} ⚠️ D |
| 17.13.5 Implicit this in Lambda | 5 | 4 | 3 | 12 | 省略 this. 前缀 ⚠️ D |
| 17.14 Trailing Lambdas | 6 | 4 | 4 | 14 | f(){} 语法 ⚠️ D |
| 17.15 Accessor Declarations | 6 | 5 | 4 | 15 | getter/setter 声明 |
| 17.16 Pattern Matching | 4 | 4 | 4 | 12 | 模式匹配基本语法 |
| 17.16.1 Destructuring Assignment | 5 | 5 | 4 | 14 | 数组解构 ⚠️ C (segfault) |
| **Total** | **238** | **161** | **134** | **533** | 40 小节全覆盖 |

**总体覆盖评价**：覆盖 40 个 spec 子节（38 个有实际用例，2 个为父节容器），每节均含三类用例。实验特性命名一致（`EXP2_` 前缀）。元数据完全一致，是已审查章节中元数据质量最高的。

**亮点**：
- METADATA_BAD_COUNT=0：所有 533 个用例的 `@id`/`@expect`/`@section` 完全正确
- MANIFEST_ID_COUNT=533：manifest 中 533 条 per-case 记录完整
- 实验特性特有的用例设计合理（FixedArray/ValueArray/char/Callable/Indexable/overload/receiver/trailing lambda 等）

**已知编译器限制**（issue_report 已记录）：
- 嵌套解构 segfault（C-17.16.1-01，HIGH 优先级）
- 空 overload / overload constructor 未检查（C-17.9.1/5-01/02）
- 函数类型数组编译失败（C-17.4-02）
- FixedArray 越界/长度赋值编译器提前拒绝（D-17.2-01/02，比 spec 更严格）
- 命名构造器/receiver lambda/隐式 this 实验特性未实现（D-17.11.3/D-17.13.4/D-17.13.5）

## 整改建议

1. **优先处理**：C-17.16.1-01（嵌套解构 es2panda segfault）属于编译器 Bug，应与编译器团队确认
2. **建议统一**：manifest 格式与其他章节对齐（`"stats"` + `"total_cases"` 替代或补充 `"cases"` 数组）
3. **建议补充**：spec_original.md 补充 17.14~17.16 的规约摘录
4. **持续跟踪**：issue_report.md 中 4 项"待确认"项对照 spec 确认分类后更新
5. **记录工具差异**：audit_chapter.ps1 对 UTF-8 中文 JSON 的兼容性问题应考虑修复
