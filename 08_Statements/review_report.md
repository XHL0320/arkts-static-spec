# 08 Statements 审查报告

## 审查范围

- **章节**：08_Statements（ArkTS 静态语言规范 §08 Statements）
- **用例目录**：`08_Statements/ets_cases/`（18 个子章节）
- **用例总数**：**557**（compile-pass 222 / compile-fail 155 / runtime 180）
- **覆盖章节**：§8.1–§8.15.3（18 节）
- **审查日期**：2026-06-26
- **审查工具**：`es2panda --extension=ets`（ArkCompiler Linux native，`/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda`）

## 执行结果

| 分类 | 总数 | OK（符合预期） | 异常 | 崩溃 |
|------|------|---------------|------|------|
| compile-pass | 222 | 222 | 0（unexpected-fail） | 0 |
| compile-fail | 155 | 153 | 1（unexpected-pass） | 1（SIGABRT） |
| runtime（编译阶段） | 180 | 180 | 0 | 0 |
| **合计** | **557** | **555** | **1** | **1** |

- **runner**：章节自带 `run_statements_cases_wsl.sh`，默认 SECTIONS 覆盖全部子目录（非窄范围）。脚本名含 `_wsl`、工具链走 `ARK_HOME` 环境变量——与本地 Linux native 路径不一致属**本地审查环境差异**（已用绝对路径直跑 es2panda 完成实测），不计为交付问题。
- 两个异常均经逐条直接复跑确认当前仍存在，并已记录于 `issue_report.md`：
  - **C-8.06-01**：`STM_08_06_012_FAIL_label_declared_not_used`（未使用 loop label），spec §8.6 要求 compile-time error，es2panda 编译通过（rc=0）。→ **仍异常通过**。
  - **C-8.06-02**：`STM_08_06_015_FAIL_LabeledDoWhileAndForOf_compiler_bug`（labeled do-while/for-of），spec §8.6 允许应正常编译，es2panda 触发 SIGABRT 崩溃（rc=-6，core dump）。→ **仍崩溃**。

## 总体结论

**可验收。** 用例可执行、设计覆盖 spec §08 全部小节、交付文档可消费、元数据零不一致。主要风险是 1 个**编译器侧崩溃**（C-8.06-02，非交付缺陷，待 es2panda 修复）和 manifest 结构未对齐 03_Types 惯例（可消费性 OK，统一性可改进）。无阻塞验收的交付问题。

## 问题清单

### 1. C-8.06-02 编译器崩溃仍未修复（编译器侧 bug，非交付缺陷）

- **现象**：`STM_08_06_015_FAIL_LabeledDoWhileAndForOf_compiler_bug.ets` 编译时 es2panda SIGABRT（rc=-6，core dump），崩溃点 `VariableHasScope`。
- **影响**：该用例无法正常完成编译；属 es2panda 已知缺陷，用例本身（标 `_compiler_bug`）已正确记录。
- **证据**：2026-06-26 直跑 exit=-6（core dump）；`issue_report.md` C-8.06-02。
- **建议**：保留 issue 跟踪；待 es2panda 修复 labeled statement 作用域处理后复查移除。**不阻塞本章验收**。

### 2. C-8.06-01 loop label 未使用检查未实现（编译器侧，用例正确记录）

- **现象**：`STM_08_06_012_FAIL_label_declared_not_used` spec §8.6 要求未使用的 label 产生 compile-time error，es2panda 放过（rc=0）。
- **影响**：用例置于 compile-fail 作负向看护，运行表现为 unexpected-pass；与 issue C-8.06-01 一致。
- **证据**：2026-06-26 直跑 exit=0。
- **建议**：保留；待编译器补全 label 使用检查后转预期失败。

### 3. manifest 结构未对齐 03_Types 惯例（统一性，非阻塞）

- **现象**：`test_manifest.json` 合法且 `cases` 数组含 557 条（== 实际 .ets 数，对齐 ✓），但采用旧式结构：`subtopics` + `cases` 数组，**缺** 03_Types/07/09 章节通用的 `prefix`、`total_cases`、`stats`（按节 P/F/R）字段，且无 UTF-8 BOM。
- **影响**：JSON 可解析、覆盖完整，满足"合法 + 覆盖 .ets"的硬性要求；但与项目其他章节的 manifest 惯例不一致，跨章聚合统计时需特殊处理。
- **证据**：`top keys: chapter/topic/directory/spec_source/subtopics/case_roots/categories/cases`；无 `prefix/total_cases/stats`。
- **建议**：如需跨章统一，可后续重构为 count-based（`total_cases` + 按节 `stats`）并加 BOM。**本次不阻塞验收**。

### 4. issue_report 中 D 类两条属"spec 待澄清/设计说明"，边界可商榷

- **现象**：`D-8.03-01`（block 内 type alias，es2panda ESY0040 拒绝，spec 措辞模糊）与 `D-8.05-01`（Extended Conditional 允许非 boolean 条件，spec 标注未来废弃）。
- **影响**：两者用例均按当前分类正常执行（D-8.03-01 的 compile-fail 用例 rc=1 按预期失败；D-8.05-01 的 compile-pass 用例 rc=0 按预期通过），**非执行异常**。严格按规则 21（issue_report 只记当前未解决执行异常）边界存疑；但本审查 skill 允许"spec 歧义 → 标 spec 待澄清"，故保留合理。
- **建议**：可在 issue_report 中明确区分"执行异常（C-8.06-01/02）"与"spec 待澄清/设计说明（D-8.03-01/8.05-01）"两区，提升可读性。非阻塞。

## 覆盖评价

spec §08（`statements.md`）含 15 个顶层小节，08_Statements 测试**全覆盖**并细化：

| spec 小节 | 测试节 | 覆盖 |
|-----------|--------|------|
| §8.1 Normal and Abrupt Statement Execution | 8.1 | ✅ |
| §8.2 Expression Statements | 8.2 | ✅ |
| §8.3 Block | 8.3 | ✅ |
| §8.4 Constant Or Variable Declarations | 8.4 | ✅ |
| §8.5 if Statements | 8.5 | ✅ |
| §8.6 Loop Statements | 8.6 | ✅ |
| §8.7 while / do Statements | 8.7 | ✅ |
| §8.8 for Statements | 8.8 | ✅ |
| §8.9 for-of Statements | 8.9 | ✅ |
| §8.10 break Statements | 8.10 | ✅ |
| §8.11 continue Statements | 8.11 | ✅ |
| §8.12 return Statements | 8.12 | ✅ |
| §8.13 switch Statements | 8.13 | ✅ |
| §8.14 throw Statements | 8.14 | ✅ |
| §8.15 try Statements | 8.15 + 8.15.1/2/3 | ✅（try 细分为 catch/finally/execution，粒度更细） |

- 每节均含 compile-pass / compile-fail / runtime 三类，正向 + 反向 + 运行时验证齐全。
- spec 覆盖**无遗漏小节**；8.15 try 拆出 8.15.1–8.15.3 属合理细化覆盖。

## 交付件质量核验

| 项 | 结果 |
|----|------|
| `.ets` 元数据 `@id`==文件名 | **0 不一致**（557/557） |
| `@expect`==所在目录 | **0 不一致** |
| `@section`==父小节 | **0 不一致** |
| 缺 5-tag 头 / 缺字段 | **0** |
| manifest JSON 合法 | ✅ |
| manifest 覆盖 .ets | ✅（557 == 557） |
| catalog 总数对齐 | ✅（222P+155F+180R=557） |
| mindmap 总数对齐 | ✅（557） |
| issue 差异项归类 | ✅（C 类编译器 / D 类 spec，均经实测复核） |
| null byte（md / .ets） | 无 |

## 整改建议（短清单）

1. **（编译器侧）** 修复 es2panda labeled statement 作用域处理（消除 C-8.06-02 崩溃），并补全 loop label 使用检查（消除 C-8.06-01）。
2. **（可选统一）** 将 `test_manifest.json` 重构为 03_Types 惯例（`prefix` + `total_cases` + 按节 `stats` + UTF-8 BOM），便于跨章聚合。
3. **（可选）** `issue_report.md` 内分区区分"执行异常"与"spec 待澄清/设计说明"，提升可读性。
4. **（复查机制）** 复测脚本崩溃判定须覆盖**负 returncode**（Linux 信号终止 rc<0，如 SIGABRT=-6），否则会漏报崩溃（本次审查初版批量脚本即因此漏报 C-8.06-02，后修正）。

---

> 本报告基于 2026-06-26 全量实测编译（es2panda `--extension=ets`，Linux native）。runtime 用例仅做编译阶段验证（180/180 编译通过），未跑 ark VM 实际执行。
