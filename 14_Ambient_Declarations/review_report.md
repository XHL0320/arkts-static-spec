# 14 Ambient Declarations 审查报告

## 审查范围
- **章节**：14 Ambient Declarations（共 12 个小节）
- **用例目录**：`14_Ambient_Declarations/ets_cases/`
- **用例总数**：147（78P + 57F + 12R）
- **审查日期**：2026-06-26
- **审查类型**：静态审计 + 结构审查 + spec 对照

## 执行结果

### 静态审计

| 项目 | 结果 |
|------|:----:|
| manifest JSON 合法性 | ✅ 合法 |
| 实际 .ets 文件数 vs manifest 统计 | ✅ 完全一致（147） |
| @id 与文件名一致 | ✅ 0 处不匹配 |
| @expect 与目录一致 | ✅ 0 处不匹配 |
| @section/design/note 完整 | ✅ 全部存在（147/147） |
| 12 小节交付件完整性 | ✅ 全部完整 |

### Git 版本控制状态

| 项目 | 结果 |
|------|:----:|
| git HEAD 中 .ets 文件数 | **❌ 0 / 147** |
| 其他章节 .ets 追踪情况 | ✅ 全部已追踪（6800+ 文件） |
| cross_lang_verify 追踪情况 | ❌ 全量 gitignored（按设计 `cross_lang_verify/` 在 `.gitignore` 中） |
| 章节根文件状态 | ⚠️ 6 个文件有未提交修改 |

## 总体结论

**不可验收。** 存在 1 个阻塞性问题和 2 个重要问题。

## 问题清单

### 🔴 问题 1（阻塞）：147 个 .ets 测试用例文件全部未纳入版本控制

**现象：** 在本章 git HEAD 中，`ets_cases/` 目录下只有 `.gitkeep` 占位文件，**零个 `.ets` 文件被追踪**。对比之下，其他章节（02~17）的 `.ets` 用例全部已提交且可追踪（共 6800+ 文件）。

**证据：**
```
git ls-tree -r HEAD --name-only 14_Ambient_Declarations/ | grep '\.ets$'
→ （空输出）

git ls-tree -r HEAD --name-only 02_LexicalElements/ | grep '\.ets$' | wc -l
→ 668（正常追踪）
```

**影响：** 任何 `git clone` 该仓库的操作都只能获取到 manifest 中声称的 147 个用例的数字，实际用量为零。这是**交付件可消费性**的阻塞问题。

**建议：** 执行 `git add` 将所有 `.ets` 文件纳入版本控制后重新提交。

### ⚠️ 问题 2：Runner 默认只覆盖 14.1

**现象：** `run_ambient_declarations_cases_wsl.sh` 第 171 行默认 `SECTIONS` 只设了 14.1：
```
SECTIONS="${SECTIONS:-14.1_Ambient_Constant_or_Variable_Declarations}"
```
要跑完整 12 节需要手动设置环境变量。

**影响：** 新的审查者或维护者可能不知道需要 `SECTIONS="14.1 14.2 ... 14.8"` 才能全面跑测。

**建议：** 将默认值改为全部 12 节，或提供 `ALL` 关键字。

### ⚠️ 问题 3：`spec_original.md` 为空壳

**现象：** `spec_original.md` 仅列出小节目录（12 行），没有摘录任何规范原文。

**影响：** 审查者无法在该仓库内直接对照 spec 原文。

**建议：** 从 `arkts-static-spec/spec/ambients.md` 提取规范核心规则填充该文件。

### 📝 问题 4：章节根级 `test_design_mindmap.md` 过于简略

**现象：** 根级思维导图仅有一张汇总表和一个已知问题列表，缺少整体的设计思路说明和测试策略描述。

**建议：** 扩展该文件，补充各小节的测试设计策略说明。

### 📝 问题 5：`cross_lang_verify/` 全量 gitignored

**现象：** 项目根 `.gitignore` 排除了 `cross_lang_verify/`，因此 63 个跨语言验证文件（Java/Swift 源码、编译产物、verification_report）均不在版本控制中。

**分析：** 排除编译产物（`.class`）是合理的，但排除 Java/Swift 源码和 `verification_report.md` 会导致跨语言验证结果无法被其他审查者获取。建议区分对待：仅排除编译产物，保留源码和报告文件。

## 覆盖评价

### Spec 规则覆盖矩阵

| Spec 小节 | 规则 | 正/反向覆盖 | 状态 |
|-----------|------|:-----------:|:----:|
| 14.1 | declare let/const 必须显式类型、无初始化器 | 14P + 10F + 2R = 26 | 🔵 完整 |
| 14.2 | declare function 无体、无默认值、无 async、有返回类型 | 8P + 7F + 1R = 16 | 🔵 完整 |
| 14.3 | declare overload 声明、调用、非法引用 | 6P + 5F + 1R = 12 | 🔵 完整（3F 为 D 类）|
| 14.4 | declare class 字段/方法/构造器/访问器限制 | 11P + 9F + 1R = 21 | 🔵 完整 |
| 14.4.1 | ambient indexer 索引签名 | 6P + 3F + 1R = 10 | 🔵 完整 |
| 14.4.2 | ambient call signature 可调用类型 | 5P + 3F + 1R = 9 | 🔵 完整 |
| 14.4.3 | ambient iterable [Symbol.iterator] | 3P + 3F + 1R = 7 | 🔵 完整 |
| 14.5 | declare interface + default method | 8P + 3F + 1R = 12 | 🔵 完整 |
| 14.6 | declare enum 无初始化器、禁止 const | 4P + 3F + 1R = 8 | 🔵 完整（2F 为 D 类）|
| 14.7 | declare namespace 嵌套、export | 9P + 2F + 1R = 12 | 🔵 完整 |
| 14.7.1 | 实现 ambient namespace | 0P + 7F + 0R = 7 | 🔵 完整（全部 D 类）|
| 14.8 | declare get/set 访问器 | 4P + 2F + 1R = 7 | 🔵 完整 |

### 已知 D 类不一致（5 个，持续跟踪）

| ID | 问题 | 涉及小节 | 严重性 | 用例数 |
|----|------|:--------:|:------:|:------:|
| D-14.3-01 | overload 重载等价签名检查缺失 | 14.3 | MEDIUM | 1 |
| D-14.3-02 | overload 空重载集检查缺失 | 14.3 | LOW | 1 |
| D-14.3-03 | overload 引用非 declare 函数检查缺失 | 14.3 | MEDIUM | 1 |
| D-14.6-01 | ambient enum 成员初始化器检查缺失 | 14.6 | MEDIUM | 2 |
| D-14.7.1-01 | declare namespace 与 namespace 无法合并 | 14.7.1 | MEDIUM | 5 |

### 已解决不一致（14.1 初始化器/类型注解检查）

编译器已于近期版本修复 `declare let/const` 初始化器和类型注解校验。相关 FAIL 用例（AMB_14_01_015~024）目前正确报错。JSDoc 标注和 CLAUDE.md 已同步更新。

## 整改建议

1. **🔴 [阻塞] 立即提交所有 .ets 文件到 git** — `git add ets_cases/*/compile-*/*.ets` 等，确保 147 个用例可被 clone 获取
2. **修改 runner 默认值** — 将 `SECTIONS` 默认值改为覆盖全部 12 小节，或提供 `ALL` 模式
3. **填充 spec_original.md** — 从 `arkts-static-spec/spec/ambients.md` 摘录规范原文
4. **调整 .gitignore** — 区分对待 `cross_lang_verify/` 内的源码文件与编译产物，保留 Java/Swift 源码和 `verification_report.md`
5. **扩展根级思维导图** — 补充整体设计说明和测试策略
