# 16 Concurrency - 检查流程指南

> **文档目的**：记录 16 Concurrency 章节的检查工作流程，包括审计现有文件、识别结构问题、验证测试用例完整性、修订报告文件的分步流程。基于 15.x 工作流程指南（`workflow_guide_15.1.md`）的经验总结，针对 Chapter 16 的具体情况定制。

---

## 1. 工作概述

16 Concurrency 章节涵盖 ArkTS 并发编程的三大核心领域：
- **异步执行**（async/await/Promise）
- **并行执行**（launch/EAWorker/Taskpool）
- **同步原语**（locks/atomics）

本章测试用例以 `CCY_` 为前缀（Concurrency），分布在 28 个子章节中。

### 1.1 当前已知结构问题

根据审计，存在以下待解决问题：

| # | 问题 | 影响范围 |
|---|------|---------|
| 1 | 测试文件放置不一致：部分子章节文件在 `compile-pass/fail/runtime/` 目录内，部分直接放在子章节根目录（空目录残留） | 16.5.1~16.5.6, 16.6.1~16.6.5, 16.7.1, 16.7 |
| 2 | 缺少 runtime 测试用例（大量子章节为 0） | 16.3.1~16.3.5, 16.4.x, 16.5.x, 16.6.x |
| 3 | 缺少 compile-fail 测试用例（并行执行章节全部为 0） | 16.4.x |
| 4 | 缺少 4 个必填 md 报告文件 | 16.1, 16.2 |
| 5 | 16.7 子章节未纳入 `test_manifest.json` | 16.7 |
| 6 | `analysis_report.md` 用例计数过期 | 根级 |
| 7 | binary 产物未清理 | `cross_lang_verify/` |
| 8 | 子章节缺少 4 个必填报告文件（已修复） | 16.3.1~16.3.5, 16.4.1~16.4.4, 16.5.1~16.5.6, 16.6.1~16.6.5, 16.7.1 |

---

## 2. 检查流程（5 步）

### 步骤 1：审计现有文件和目录结构

**目的**：全面了解当前目录结构、文件分布、命名规范一致性。

**操作**：

1. **遍历目录**：列出 `ets_cases/` 下所有子章节目录
   ```bash
   ls -d ets_cases/*/
   ```

2. **检查目录结构模式**：每个子章节应包含 `compile-pass/`、`compile-fail/`、`runtime/` 三个子目录，测试用例文件应位于对应子目录内
   ```bash
   # 检查文件在根目录而非子目录中的章节
   for dir in ets_cases/*/; do
     files=$(find "$dir" -maxdepth 1 -name "*.ets" 2>/dev/null)
     if [ -n "$files" ]; then
       echo "WARNING: $dir has .ets files in root"
     fi
   done
   ```

3. **检查空目录**：找出空的 `compile-pass/`、`compile-fail/`、`runtime/` 目录
   ```bash
   find ets_cases -type d -empty -name "compile-*" -o -type d -empty -name "runtime"
   ```

4. **检查 4 个必填 md 文件是否存在（所有章节，含子章节）**

   **主要章节（16.1~16.7）**：
   ```bash
   for section in 16.1_Execution_Model 16.2_Overview_of_Concurrency_Features 16.3_Asynchronous_Execution 16.4_Parallel_Execution 16.5_Synchronization 16.6_API_Restrictions 16.7_Runtime_Implementation_Details; do
     for file in test_design_mindmap_${section%_*}.md test_report_${section%_*}.md design_issues_report_${section%_*}.md comparison_report_arkts_java_swift.md; do
       path="ets_cases/${section}/${file}"
       if [ ! -f "$path" ]; then echo "MISSING: $path"; fi
     done
   done
   ```

   **子章节（16.x.x，如 16.3.1、16.6.5 等）**：每个子章节也必须有 4 个报告文件，文件名使用其小节编号：
   ```bash
   for d in ets_cases/16.*.*/; do
     name=$(basename "$d")
     count=$(find "$d" -maxdepth 1 -name "*.md" ! -name "spec_original.md" 2>/dev/null | wc -l)
     if [ "$count" -lt 4 ]; then echo "MISSING: $name (solo $count)"; fi
   done
   ```

5. **检查占位符残留**
   ```bash
   grep -rn '\$p\|\$f\|\$r\|\$t\|\$pass\|gap_count\|YYYY-MM-DD\|XX\.X' ets_cases --include="*.md"
   ```

6. **检查 `test_manifest.json` 完整性**：确认所有有测试用例的子章节都在清单中

**输出**：审计报告，按以下模板记录

| 检查项 | 状态 | 详情 |
|--------|------|------|
| 目录结构一致性 | ✅/❌ | 列出根目录有 .ets 文件的章节 |
| 空目录 | ✅/❌ | 列出空目录 |
| md 文件完整性 | ✅/❌ | 列出缺失文件 |
| 占位符残留 | ✅/❌ | 列出含占位符的文件 |
| manifest 完整性 | ✅/❌ | 列出缺失章节 |

---

### 步骤 2：统计测试用例

**目的**：统计各子章节的三类测试用例数量，确保与报告文件一致。

**操作**：

1. **按目录结构统计**（对 `compile-pass/fail/runtime` 目录中文件的章节）：

   | 子章节 | compile-pass | compile-fail | runtime | 总计 |
   |--------|-------------|-------------|--------|------|
   | 16.1_Execution_Model | `ls ets_cases/16.1_Execution_Model/compile-pass/*.ets \| wc -l` | ... | ... | ... |
   | 16.2_Overview_of_Concurrency_Features | 同上 | ... | ... | ... |
   | ... | | | | |

2. **按根目录文件统计**（对 .ets 文件在子章节根目录的章节）：

   | 子章节 | PASS | FAIL | RUNTIME | 总计 |
   |--------|------|------|---------|------|
   | 16.5.1_Asynchronous_Lock | `ls ets_cases/16.5.1_Asynchronous_Lock/*PASS*.ets \| wc -l` | ... | ... | ... |
   | ... | | | | |

3. **跨验证**：将统计结果与 `test_report_*.md` 中的数字对比，标记不一致项

**输出**：完整的测试用例统计表

**关键检查点**：
- [ ] compile-pass + compile-fail + runtime 总数是否与 test_report 一致
- [ ] 所有 `.ets` 文件是否被归类（无遗漏文件）
- [ ] 文件名是否遵循 `CCY_16_XX_YYY_CATEGORY_DESC.ets` 格式

---

### 步骤 3：检查测试用例内容规范

**目的**：验证每个测试用例的 JSDoc 注释完整性和代码规范。

**操作**：

1. **JSDoc 注释完整性**：每个 `.ets` 文件必须包含以下 5 个 tag：

   ```typescript
   /**
    * @id CCY_16_XX_YYY_CATEGORY_DESC
    * @expect compile-pass | compile-fail | runtime
    * @section 16.X
    * @design <中文设计描述>
    * @note 正向/反向/运行时用例说明
    */
   ```

   **检查命令**：
   ```bash
   # 检查是否缺少 @id
   grep -L '@id' ets_cases --include="*.ets" -r
   # 检查是否缺少 @expect
   grep -L '@expect' ets_cases --include="*.ets" -r
   # 检查是否缺少 @section
   grep -L '@section' ets_cases --include="*.ets" -r
   ```

2. **运行时用例特殊检查**：`@expect runtime` 的用例必须有 `main()` 函数和断言

   ```typescript
   function main(): void {
     // 测试逻辑
     if (condition) {
       throw new Error("assertion failed: ...")
     }
     console.log("verified")
   }
   ```

   **检查命令**：
   ```bash
   # 列出所有 runtime 用例，检查是否有 main 函数
   grep -rl '@expect runtime' ets_cases --include="*.ets" -r | while read f; do
     if ! grep -q 'function main' "$f"; then
       echo "MISSING main(): $f"
     fi
   done
   ```

3. **`@runtime-throws` 标注**：预期抛异常的 runtime 用例必须标注

   ```typescript
   /**
    * @runtime-throws=<ErrorType>
    */
   ```

4. **ArkTS 静态限制验证**：检查是否违反已知限制

   | 限制 | 检查方式 |
   |------|---------|
   | 禁止嵌套函数 | `grep -rn 'function.*{' ets_cases/*/*.ets \| grep -v 'main\|^[^:]*\bfunction\b.*{.*}'` |
   | 禁止局部类 | `grep -rn 'class\s' ets_cases/*.ets`（无缩进的 class 可，缩进内的不行） |
   | `int/double/char/byte` 不能做变量名 | `grep -rn '\bint\b\|\bdouble\b\|\bchar\b\|\bbyte\b' ets_cases --include="*.ets"`（在 let/const/var 声明中） |
   | 不支持数字/布尔字面量类型 | `grep -rn ':\s*42\b\|:\s*true\b\|:\s*false\b' ets_cases --include="*.ets"` |

**输出**：内容规范检查报告

| 检查项 | 通过数 | 失败数 | 详情 |
|--------|--------|--------|------|
| @id 完整性 | ... | ... | 列出缺失文件 |
| @expect 完整性 | ... | ... | 列出缺失文件 |
| @section 完整性 | ... | ... | 列出缺失文件 |
| runtime 用例含 main() | ... | ... | 列出缺失文件 |
| 嵌套函数违规 | ... | ... | 列出违规文件 |
| ... | ... | ... | ... |

---

### 步骤 4：修订/生成缺失文件

**目的**：根据模板补充缺失的报告文件，修复结构问题。

#### 4.1 目录结构修复

**问题：.ets 文件在子章节根目录而非 `compile-pass/fail/runtime/` 内**

**修复方法**：

```bash
# 对 16.5.1 ~ 16.5.6, 16.6.1 ~ 16.6.5
# 将根目录的 .ets 按文件名中的 PASS/FAIL/RUNTIME 移动到对应子目录
section="ets_cases/16.5.1_Asynchronous_Lock"
for f in "$section"/*PASS*.ets; do
  if [ -f "$f" ]; then
    mv "$f" "$section/compile-pass/"
  fi
done
for f in "$section"/*FAIL*.ets; do
  if [ -f "$f" ]; then
    mv "$f" "$section/compile-fail/"
  fi
done
for f in "$section"/*RUNTIME*.ets; do
  if [ -f "$f" ]; then
    mv "$f" "$section/runtime/"
  fi
done
```

#### 4.2 生成缺失的 4 个 md 文件

> **规则**：所有章节（包括父章节和子章节）都需要 4 个报告文件。父章节（16.1~16.7）的报告涵盖该章节的整体设计，子章节（16.3.1、16.6.5 等）的报告涵盖该子章节的特定测试点。

对于缺少报告文件的章节，按以下模板创建：

**`test_design_mindmap_X.md` 模板**：
```markdown
# 16.X 标题 - 测试设计思维导图

## 1. 测试范围
- 列出所有测试点

## 2. 测试用例设计
### 2.1 编号规划
| 编号前缀 | 含义 |
|---------|------|
| CCY_16_X_001~ | compile-pass 用例 |
| CCY_16_X_090~ | compile-fail 用例 |
| CCY_16_X_020~ | runtime 用例 |

### 2.2 文件命名规范
- `CCY_16_X_YYY_CATEGORY_DESC.ets`

## 3. 测试点分解
- 列出每个测试点

## 4. 覆盖情况
- 已覆盖/待覆盖统计
```

**`test_report_X.md` 模板**：
```markdown
# 16.X 标题 - 测试执行报告

## 总体统计
| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | N | N | 0 | 100% |
| compile-fail | N | N | 0 | 100% |
| runtime | N | N | 0 | 100% |
| **总计** | **N** | **N** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
```

**`design_issues_report_X.md` 模板**：
```markdown
# 16.X 标题 - 设计问题报告

## 1. 概述
- 报告范围、目的

## 2. 设计问题清单
| # | 问题类型 | 问题描述 | 影响范围 | 建议方案 | 优先级 |
|---|---------|---------|---------|---------|--------|

## 3. 详细分析

## 4. 改进建议

## 5. 跟踪记录
```

**`comparison_report_arkts_java_swift.md` 模板**（⭐ 重要）：
```markdown
# 16.X 标题 - 跨语言对比报告（ArkTS / Java / Swift）

## 1. 概览
| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|

## 2. 章节对应关系
| 测试点 | ArkTS | Java | Swift |
|--------|-------|------|-------|

## 3. 关键差异矩阵
| 差异维度 | ArkTS | Java | Swift |
|---------|-------|------|-------|

## 4. 用例 1:1 对照
### 4.1 测试点 1
| # | 用例 | ArkTS | Java | Swift |
|---|------|-------|------|-------|

**代码对照：**

ArkTS (compile-pass):
```typescript
// code
```

Java:
```java
// code
```

Swift:
```swift
// code
```

## 5. 综合评分
| 维度 | ArkTS | Java | Swift |
|------|:----:|:----:|:-----:|

## 6. 核心结论

## 7. ArkTS 设计建议

## 8. 三环境实测结果
```

#### 4.3 更新 `test_manifest.json`

确保 `test_manifest.json` 包含所有有测试用例的子章节：

```json
{
    "chapter": "16",
    "topic": "Concurrency",
    "subtopics": [
        "16.1_Execution_Model",
        "16.2_Overview_of_Concurrency_Features",
        "16.3_Asynchronous_execution",
        "16.3.1_Asynchronous_Functions",
        "16.3.2_Asynchronous_Lambdas",
        "16.3.3_Asynchronous_Methods",
        "16.3.4_await_expression",
        "16.3.5_Promise_class",
        "16.4_Parallel_Execution",
        "16.4.1_Parallel_execution_API",
        "16.4.2_launch_API",
        "16.4.3_EAWorker_API",
        "16.4.4_Taskpool_API",
        "16.5_Synchronization",
        "16.5.1_Asynchronous_lock",
        "16.5.2_Asynchronous_mutex",
        "16.5.3_Asynchronous_read_write_lock",
        "16.5.4_Asynchronous_condition_variable",
        "16.5.5_Atomic_operations",
        "16.5.6_Additional_entities_and_other_notes",
        "16.6_API_details_and_restrictions",
        "16.6.1_launch_API_details_and_restrictions",
        "16.6.2_Using_the_asynchronous_API",
        "16.6.3_Promise_class_API",
        "16.6.4_Unhandled_Rejected_Promises",
        "16.6.5_Error_handling_policy",
        "16.7_Runtime_implementation_details",
        "16.7.1_Scheduling_rules"
    ]
}
```

#### 4.4 更新 `analysis_report.md`

基于最新用例统计，更新 `analysis_report.md` 中的用例计数和状态。

---

### 步骤 5：验证修订结果

**目的**：确保所有修复和生成的文件正确无误。

**操作**：

1. **文件完整性验证**

   ```bash
   # 验证目录结构一致性——所有 .ets 文件在子目录中
   for section in ets_cases/*/; do
     root_files=$(find "$section" -maxdepth 1 -name "*.ets")
     if [ -n "$root_files" ]; then
       echo "❌ Root files remain in $section"
     fi
   done
   
   # 验证所有子章节都有 compile-pass/fail/runtime 目录
   for section in ets_cases/*/; do
     for sub in compile-pass compile-fail runtime; do
       if [ ! -d "$section/$sub" ]; then
         echo "❌ Missing $sub in $section"
       fi
     done
   done
   ```

2. **占位符检查**：确保无残留

   ```bash
   grep -rn '\$p\|\$f\|\$r\|\$t\|\$pass\|gap_count\|YYYY-MM-DD\|XX\.X' ets_cases --include="*.md"
   ```

3. **清单与文件一致性检查**

   ```bash
   # 检查 md 文件中引用的用例 ID 是否都有对应的 .ets 文件
   # 检查是否有 .ets 文件未被任何 md 文件引用
   ```

4. **`run_concurrency_cases_wsl.sh` 可执行性检查**

   确保脚本能正确识别所有子章节目录并执行三类用例。

**输出**：验证报告

| 验证项 | 结果 |
|--------|------|
| 所有 .ets 在子目录内 | ✅/❌ |
| 无空目录 | ✅/❌ |
| 所有 md 文件存在 | ✅/❌ |
| 无占位符残留 | ✅/❌ |
| manifest 完整 | ✅/❌ |
| analysis_report 计数准确 | ✅/❌ |
| `run_concurrency_cases_wsl.sh` 可执行 | ✅/❌ |

---

## 3. 检查清单

### 3.1 文件检查

- [ ] `ets_cases/` 下每个子章节都有 `compile-pass/`、`compile-fail/`、`runtime/` 目录
- [ ] 所有 `.ets` 文件在对应子目录内（无根目录残留）
- [ ] 无空目录
- [ ] 每个主要章节（16.1~16.7）都有 4 个必填 md 文件
- [ ] 每个子章节（16.x.x，如 16.3.1、16.6.5）也有 4 个必填 md 文件（文件名使用完整小节编号）
- [ ] `test_manifest.json` 包含所有子章节
- [ ] `analysis_report.md` 用例计数与实际一致
- [ ] `cross_lang_verify/` 无二进制产物（.class、可执行文件等）

### 3.2 格式检查

- [ ] md 文件标题格式正确（`# 16.X 标题 - 报告类型`）
- [ ] 表格格式正确（对齐、无多余空格）
- [ ] 代码块指定语言标记（`typescript`、`java`、`swift`）
- [ ] 无占位符（`$p`、`$f`、`$r`、`$t`、`$pass`、`gap_count`、`YYYY-MM-DD`、`XX.X`）
- [ ] JSDoc 注释包含全部 5 个 tag（`@id`、`@expect`、`@section`、`@design`、`@note`）

### 3.3 内容检查

- [ ] test_report 中的用例清单与实际文件一一对应
- [ ] runtime 用例都有 `main()` 函数和断言
- [ ] comparison_report 包含代码对照和关键差异说明
- [ ] `@runtime-throws` 标注（当用例期望抛异常时）
- [ ] 编号无冲突（CCY_16_XX_YYY 不重复）
- [ ] cross_lang_verify 的 Java/Swift 代码功能等价

### 3.4 一致性检查

- [ ] md 文件描述与实际测试用例行为一致
- [ ] test_report 统计数据与 git ls-files 计数一致
- [ ] `run_concurrency_cases_wsl.sh` 能匹配所有目录
- [ ] 用例文件名中的 CATEGORY 与实际放置目录匹配

---

## 4. 常见问题与解决方案

### Q1: 测试文件同时在根目录和子目录中

**A**: 将根目录的 `.ets` 文件按 `PASS/FAIL/RUNTIME` 分类移动到对应的子目录，然后删除空目录中的 `.gitkeep`。

### Q2: 报告文件的用例数量与实际不符

**A**: 重新统计实际 `.ets` 文件数量，更新 `test_report_X.md` 中的表格。确保 compile-pass、compile-fail、runtime 三类数字准确。

### Q3: 跨语言对比缺少 Java/Swift 等价代码

**A**: 根据 ArkTS 用例，手动编写功能等价的 Java 和 Swift 代码。对于 Java 中缺失的 async/await 语言级支持，使用 `CompletableFuture` 模拟。归档到 `cross_lang_verify/` 对应目录。

### Q4: runtime 用例无法在 ark VM 上执行

**A**: 在报告中标注"未实测，仅通过编译验证"，提供理论分析。在 `design_issues_report_X.md` 中记录。

### Q5: 发现编译器和 spec 行为不一致

**A**: 遵循异常处理流程：
1. 保留原始 FAIL 用例，标注 `⚠️ SPEC 不一致`
2. 在 `design_issues_report_X.md` 中记录
3. 在根级 `issue_report.md` 中追加（不覆盖）

### Q6: 测试文件命名不统一

**A**: 保持原文件名不变，只在 md 文件中正确引用。不要重命名已有文件，除非用户明确要求。

---

## 5. 工作流程图

```
步骤 1: 审计目录结构和文件完整性
    ↓
   确认审计报告
    ↓
步骤 2: 统计测试用例（按章节/类型）
    ↓
   确认统计表
    ↓
步骤 3: 检查测试用例内容规范
    ↓
   确认规范检查报告
    ↓
步骤 4: 修复结构问题 + 生成缺失文件
    ├── 4.1 移动根目录 .ets 到对应子目录
    ├── 4.2 生成缺失的 4 个 md 文件
    ├── 4.3 更新 test_manifest.json
    ├── 4.4 更新 analysis_report.md
    └── 4.5 清理 cross_lang_verify 二进制产物
    ↓
步骤 5: 验证修订结果
    ↓
   确认验证报告
    ↓
完成
```

### 关键原则

1. **禁止未确认的批量操作**：每一步修改前向用户展示变更计划
2. **先审计后修改**：不跳过审计步骤直接修改
3. **验证不可跳过**：所有修改完成后必须执行验证
4. **记录问题**：发现的问题记录到 `design_issues_report_X.md` 或 `issue_report.md`

---

## 6. 附录：检查命令速查

### 目录结构检查
```bash
# 列出所有子章节
ls -d ets_cases/*/

# 列出根目录有 .ets 文件的章节
for d in ets_cases/*/; do
  files=$(find "$d" -maxdepth 1 -name "*.ets")
  [ -n "$files" ] && echo "$d: $files"
done

# 列出空目录
find ets_cases -type d -empty
```

### 测试用例统计
```bash
# 按章节和类型统计
for section in ets_cases/*/; do
  name=$(basename "$section")
  pass=$(find "$section/compile-pass" -name "*.ets" 2>/dev/null | wc -l)
  fail=$(find "$section/compile-fail" -name "*.ets" 2>/dev/null | wc -l)
  runtime=$(find "$section/runtime" -name "*.ets" 2>/dev/null | wc -l)
  echo "$name | $pass | $fail | $runtime | $((pass+fail+runtime))"
done
```

### 占位符搜索
```bash
grep -rn '\$p\|\$f\|\$r\|\$t\|\$pass\|gap_count\|YYYY-MM-DD\|XX\.X' \
  ets_cases --include="*.md"
```

### 运行时用例 main 函数检查
```bash
grep -rl '@expect runtime' ets_cases --include="*.ets" | \
  while read f; do
    grep -q 'function main' "$f" || echo "MISSING main: $f"
  done
```

### 文件命名规范检查
```bash
# 检查文件名是否含 PASS/FAIL/RUNTIME
find ets_cases -name "*.ets" | \
  grep -v -E '(PASS|FAIL|RUNTIME)' | \
  while read f; do
    echo "NON-STANDARD: $f"
  done
```

---

## 7. 参考资料

- **模板参考**：`doc/03_Types/ets_cases/3.11_Type_void_or_undefined/` 目录下的 4 个 md 文件
- **工作流程参考**：`workflow_guide_15.1.md`
- **命名规范**：前缀 `CCY_`（16 Concurrency），编号 `16_XX_YYY`
- **规范原文**：`spec_original.md`（根级）和各子章节中的 `spec_original.md`
- **测试环境**：ArkTS static_core (es2panda + ark), Java SE 21, Swift 5.10
- **运行脚本**：`run_concurrency_cases_wsl.sh`

---

## 8. 修订记录

| 日期 | 修订人 | 修订内容 |
|------|--------|---------|
| 2026-06-23 | AI | 创建文档，基于 workflow_guide_15.1.md 模板和 16 Concurrency 审计结果 |
