# ArkTS 静态语言规范测试流程指南（v4）

**适用范围：** ArkTS Static Language Specification 测试用例的设计、生成、执行、报告全流程
**最后更新：** 2026-06-11

---

## 一、概述

本指南规范了 ArkTS 静态语言规范（spec）测试用例的标准化生产流程。每个章节的子章节都按统一的 **6 步流程**执行，所有产出文件、命名规范、报告模板均已固化。

### 核心原则

1. **测试规范本身**：用例验证 ArkTS 实现是否符合 spec，而非业务逻辑
2. **三类测试覆盖**：compile-pass / compile-fail / runtime 三类各自独立
3. **真实运行验证**：runtime 用例必须 ark VM 实际执行 + assert 断言
4. **跨语言对比**：每发现一个异常都对比 Java/Swift 行为
5. **设计问题挖掘**：用例执行的最终目的是发现 ArkTS 语言设计问题

---

## 二、章节生成 6 步流程

### Step 1：思维导图设计 ⭐【必选】

**目的：** 作为后续用例生成的依据和覆盖度核对的标尺。

**输出：** `<子章节>/test_design_mindmap_3.X.md`

**内容必须包含：**
- 章节定义（参考 ArkTS Static Spec 原文）
- 子类型/子规则的完整枚举
- 每个子类型的三类测试点（compile-pass / compile-fail / runtime）
- 边界值、异常场景列举
- 文件命名规范说明

**示例骨架：**
```markdown
# 3.X <章节名> - 测试设计思维导图

## 概述
<本章节的语言规范定义>

## 子类型覆盖
### 1. <子类型 A>
- 正向编译: <测试点>
- 反向编译: <测试点>
- 运行时: <测试点>

### 2. <子类型 B>
...

## 分类说明
- compile-pass / compile-fail / runtime

## 文件命名规范
- TYP_03_XX_YYY_{CATEGORY}_{DESCRIPTION}.ets
```

---

### Step 2：用例代码生成 ⭐【必选】

**目录结构：**
```
<子章节>/
├── compile-pass/
│   └── TYP_03_XX_001_PASS_xxx.ets
├── compile-fail/
│   └── TYP_03_XX_010_FAIL_xxx.ets
└── runtime/
    └── TYP_03_XX_020_RUNTIME_xxx.ets
```

**文件命名规范：** `TYP_03_XX_YYY_{CATEGORY}_{DESCRIPTION}.ets`

| 字段 | 含义 | 示例 |
|------|------|------|
| `TYP_` | 第 03 章前缀（Types） | 固定 |
| `03` | 主章节号 | 03 |
| `XX` | 子章节号 | 01, 02, ..., 22 |
| `YYY` | 章节内连续编号 | 001, 002, ... |
| `CATEGORY` | 分类 | PASS / FAIL / RUNTIME |
| `DESCRIPTION` | 用例描述（大写下划线） | INT_BASIC_OPS |

> **⚠️ 不同章节用不同前缀**：
> - 03_Types → `TYP_`
> - 09_Classes → `CLS_`
> - 15_Semantic_Rules → `SEM_`
> - 等等

**编号顺序：** PASS（001~）→ FAIL（接续）→ RUNTIME（接续）

**注释模板（5 个 tag 全部必填）：**

```typescript
/**
 * @id TYP_03_XX_YYY_{CATEGORY}_{DESCRIPTION}
 * @expect compile-pass | compile-fail | runtime
 * @section 3.X
 * @design <中文设计描述>
 * @note 正向用例：验证该特性编译通过的正确用法
 *       或：反向用例：验证该场景应产生编译时错误
 *       或：运行时用例：验证该场景的运行时行为
 */
```

**runtime 用例特殊要求：**

```typescript
/**
 * @id TYP_03_XX_YYY_RUNTIME_xxx
 * @expect runtime
 * @section 3.X
 * @design <说明>
 * @runtime-throws=ArithmeticError    // 仅当期望抛异常时使用
 * @note 运行时用例：实际执行验证 xxx
 */
function main(): void {
  // 测试代码
  if (actualResult != expectedResult) {
    throw new Error("assertion failed: " + actualResult)
  }
  console.log("verified")
}
```

**ArkTS 静态限制（已踩坑总结）：**
- ❌ 禁止嵌套函数 → 提到顶层
- ❌ 禁止局部类 → 提到顶层
- ❌ 禁止局部 type alias → 提到顶层
- ❌ `int`/`double`/`char`/`byte` 等是关键字，不能做变量名
- ❌ `pop()` 返回 `T | undefined`
- ❌ stdlib 已含 `Box` 等常见类名
- ❌ 不支持数字/布尔字面量类型（仅支持字符串字面量）

---

### Step 3：WSL 真实执行验证 ⭐【必选】

**运行脚本：** `<主章节>/run_<topic>_cases_wsl.sh`

**标准命令：**
```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.X_xxx" bash run_types_cases_wsl.sh
```

**三类用例验证逻辑：**

| 类型 | 通过条件 |
|------|---------|
| compile-pass | 编译输出无 `Syntax error` 和 `Semantic error` |
| compile-fail | 编译输出**有** `Syntax error` 或 `Semantic error` |
| runtime | 编译成功 + ark VM 实际运行 + 退出码 0（除非 `@runtime-throws` 期望异常）|

**目标：100% 通过。** 不通过则进入"异常处理工作流"（见第三节）。

**编译器/运行时配置：**

| 项 | 路径 |
|----|------|
| 编译器 | `~/arkcompiler/runtime_core/static_core/out/bin/es2panda` |
| 运行时 | `~/arkcompiler/runtime_core/static_core/out/bin/ark` |
| boot panda | `~/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc` |
| boot ets | `~/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc` |

**真实执行命令模板（脚本内部）：**
```bash
es2panda --extension=ets --output=test.abc test.ets
ark --load-runtimes=ets \
    --boot-panda-files=$BOOT_PANDA:$BOOT_ETS \
    test.abc test.ETSGLOBAL::main
```

---

### Step 4：测试执行报告 ⭐【必选】

**输出：** `<子章节>/test_report_3.X.md`

**模板：**
```markdown
# 3.X <章节名> - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | N1 | N1 | 0 | 100% |
| compile-fail | N2 | N2 | 0 | 100% |
| runtime（真实执行） | N3 | N3 | 0 | 100% |
| **总计** | **N** | **N** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |

## 执行过程异常修复记录
（如有）

## 后续运行命令
```

---

### Step 5：跨语言对比报告 ⭐【必选】

**输出：** `<子章节>/comparison_report_arkts_java_swift.md`

**必含章节：**
1. 概览（三语言定位）
2. 章节对应关系（ArkTS / Java / Swift）
3. 关键差异矩阵
4. 用例 1:1 对照（关键用例的三语言代码对比）
5. 综合评分（多维度打星）
6. 核心结论
7. ArkTS 设计建议

**对比的语言规范来源：**
| 语言 | 规范 |
|------|------|
| ArkTS | ArkTS Static Language Specification |
| Java | JLS SE21 |
| Swift | The Swift Programming Language (Swift 5.x) |

---

### Step 6：设计问题报告 + 异常记录 ⭐【必选】

#### 6.1 设计问题报告（章节级，永久档案）

**输出：** `<子章节>/design_issues_report_3.X.md`

**作用：** 记录在执行用例过程中发现的 ArkTS 语言设计问题，**不论是否已通过修改用例规避**。

**必含字段：**
- 问题描述
- 复现用例 ID
- 实测错误信息
- **跨语言对比表**（必填）
- 严重性等级（HIGH/MEDIUM/LOW）
- 改进建议

#### 6.2 当前未解决异常（项目根级，实时状态）

**输出：** `<主章节>/issue_report.md`

**作用：** **只记录当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

**初始状态（无未解决异常时）：**
```markdown
# 03 Types Issue Report

No confirmed implementation issues recorded yet.

| ID | Case | Symptom | Expected | Actual | Status |
|---|---|---|---|---|---|
```

---

## 三、异常处理工作流

执行 Step 3 时如果用例失败，进入此工作流：

```
异常发现
   │
   ├─→ 1. 跨语言对比分析（必填）
   │      ├── 同样代码在 Java 中行为？
   │      └── 同样代码在 Swift 中行为？
   │
   ├─→ 2. 归类异常性质
   │      ├── A 类: ArkTS 合理设计 → 修改用例适配
   │      ├── B 类: ArkTS 设计问题 → 修改用例 + 记入 design_issues_report
   │      ├── C 类: 编译器实现 bug → 临时绕过 + 记入 issue_report.md
   │      └── D 类: Spec 与实现不一致 → 修改用例 + 记入 design_issues 标记 SPEC
   │
   ├─→ 3. 处理决策
   │      ├── 可修复（A/B/D）→ 修改用例使其通过
   │      └── 不可修复（C）→ 在 issue_report.md 追加记录
   │
   └─→ 4. 同步更新报告
          ├── design_issues_report_3.X.md（B/D 类必填）
          ├── comparison_report_arkts_java_swift.md（B 类的设计洞察）
          └── issue_report.md（仅 C 类未解决问题）
```

### 异常类型枚举

| 类型 | 说明 |
|------|------|
| **PASS_FAILED** | compile-pass 用例编译失败 |
| **FAIL_PASSED** | compile-fail 用例编译通过 |
| **RUNTIME_COMPILE_FAIL** | runtime 用例编译失败 |
| **RUNTIME_THROW_MISMATCH** | runtime 期望抛某异常但未抛或抛错异常 |
| **RUNTIME_ASSERT_FAIL** | runtime 用例 assert 失败 |
| **RUNTIME_UNEXPECTED_THROW** | runtime 用例预期正常但抛异常 |

---

## 四、文件分工最终确认

| 文件 | 范围 | 内容 | 累积? | 何时清空 |
|------|------|------|-------|---------|
| `<主章节>/issue_report.md` | 主章节 | **当前未解决异常**（实时状态） | ❌ | 用例全通过时回到空白模板 |
| `<子章节>/test_design_mindmap_3.X.md` | 子章节 | 测试设计思维导图 | ❌ | 不变 |
| `<子章节>/test_report_3.X.md` | 子章节 | 测试通过率统计 | ❌ | 重新执行时更新 |
| `<子章节>/design_issues_report_3.X.md` | 子章节 | 设计问题分析（永久档案） | ❌ | 不删除，新发现追加 |
| `<子章节>/comparison_report_arkts_java_swift.md` | 子章节 | 跨语言对比 | ❌ | 不变 |

---

## 五、目录结构示例

```
ARKTS_STATIC_TEST/
├── 03_Types/                                       # 主章节目录
│   ├── issue_report.md                             # 当前未解决异常（实时）
│   ├── run_types_cases_wsl.sh                      # 运行脚本
│   ├── spec_original.md                            # 章节 spec 原文
│   ├── test_manifest.json                          # 子章节清单
│   └── ets_cases/
│       ├── 3.1_Predefined_Types/                   # 子章节
│       │   ├── test_design_mindmap_3.1.md
│       │   ├── test_report_3.1.md
│       │   ├── design_issues_report_3.1.md
│       │   ├── comparison_report_arkts_java_swift.md
│       │   ├── compile-pass/
│       │   │   └── TYP_03_01_001_PASS_xxx.ets
│       │   ├── compile-fail/
│       │   │   └── TYP_03_01_017_FAIL_xxx.ets
│       │   └── runtime/
│       │       └── TYP_03_01_029_RUNTIME_xxx.ets
│       └── 3.2_User_Defined_Types/
│           └── ...
├── 09_Classes/
│   └── ...
└── README.md
```

---

## 六、关键命名规范

### 文件名前缀（按章节）

| 章节 | 前缀 |
|------|------|
| 02_LexicalElements | LEX_ |
| 03_Types | TYP_ |
| 04_Names_Declarations_Scopes | NAM_ |
| 05_Generics | GEN_ |
| 06_Contexts_Conversions | CON_ |
| 07_Expressions | EXP_ |
| 08_Statements | STM_ |
| 09_Classes | CLS_ |
| 10_Interfaces | ITF_ |
| 11_Enumerations | ENM_ |
| 12_Error_Handling | ERR_ |
| 13_Namespaces_Modules | MOD_ |
| 14_Ambient_Declarations | AMB_ |
| 15_Semantic_Rules | SEM_ |
| 16_Concurrency | CCY_ |
| 17_Experimental_Features | EXP2_ |
| 18_Annotations | ANN_ |

### 类别后缀

| 后缀 | 对应分类 |
|------|---------|
| `_PASS_` | compile-pass |
| `_FAIL_` | compile-fail |
| `_RUNTIME_` | runtime |

### 编号规则
- 子章节内连续递增（001 起）
- 顺序：PASS → FAIL → RUNTIME
- 不重复使用，新增用例延续最大编号

---

## 七、跨语言对比要点

每次对比必须包含的语言：
- **ArkTS**（被测语言）
- **Java**（最相似的传统静态语言，规范成熟）
- **Swift**（现代严格静态语言）

对比的核心维度：
- 类型严格性
- 类型表达力
- null 安全
- 数值精确度
- 整数溢出安全

---

## 八、工具/环境配置（WSL）

| 项 | 路径/命令 |
|----|---------|
| 编译器 | `~/arkcompiler/runtime_core/static_core/out/bin/es2panda` |
| 运行时 | `~/arkcompiler/runtime_core/static_core/out/bin/ark` |
| boot panda | `~/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc` |
| boot ets | `~/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc` |
| 运行脚本 | `<章节>/run_<topic>_cases_wsl.sh` |
| 标准命令 | `cd /mnt/d/git/ARKTS_STATIC_TEST/<章节> && SECTIONS="3.X_xxx" bash run_types_cases_wsl.sh` |
| WSL 工作目录 | `/mnt/d/git/ARKTS_STATIC_TEST` |

---

## 九、已完成进度示例

| 章节 | 用例数 | 通过率 | 状态 |
|------|--------|--------|------|
| 3.1 Predefined Types | 49 | 100% | ✅ |
| 3.2 User-Defined Types | 30 | 100% | ✅ |
| 3.3 ~ 3.22 | - | - | 待执行 |

---

## 十、AI 助手协作提示词

如果需要 AI 助手按此流程执行任务，可以使用以下提示词：

```
请按照 TESTING_PROCESS_GUIDE.md 中定义的 6 步流程，处理 03_Types 章节的 3.X 子章节。

要求：
1. 严格遵守命名规范（TYP_ 前缀）
2. 注释 5 个 tag 全部填写
3. runtime 用例必须有 main 函数 + assert 断言
4. WSL 中真实执行验证（使用 run_types_cases_wsl.sh）
5. 任何执行异常必须做跨语言对比分析（Java/Swift）
6. issue_report.md 只在当前有未解决异常时记录
7. 设计问题记入 design_issues_report_3.X.md（永久档案）

参考已完成章节 3.1 和 3.2 作为模板。
```

---

## 十一、流程演进版本记录

| 版本 | 变更点 |
|------|-------|
| v1 | 仅有用例生成，无运行验证 |
| v2 | 增加 WSL 编译验证，但 runtime 仅编译不执行 |
| v3 | runtime 用例真实执行，含 assert |
| v4 | 增加跨语言对比作为异常处理必填项；issue_report.md 只记录未解决异常 |
| v4.1 | 文档化为 TESTING_PROCESS_GUIDE.md，可分享 |

---

**版权与声明：** 本流程指南基于实际项目实践沉淀，可自由使用、修改和分发。
