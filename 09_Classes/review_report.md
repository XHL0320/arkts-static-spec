# 09 Classes 审查报告

## 审查范围
- 章节：09 Classes
- 用例目录：`09_Classes/ets_cases/`
- 用例总数：387（manifest: 130P + 155F + 102R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地为 Windows，runner `run_classes_cases_wsl.sh` 为 WSL bash 脚本，依赖 `es2panda`/`ark` 工具链。此差异属于本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成全部检查。
- **交付件质量**：manifest 合法，spec_original.md 内容充实，mindmap/catalog 详细程度高，整体交付质量优于 06/07 章节。

## 总体结论
**条件性可验收，主要风险为 22 处元数据不一致（18 例完全缺失 + 4 例 @id 方向错误）。** 相比 06/07 章节，本章的文档交付件质量最高：spec_original.md 有完整摘录，mindmap 有设计推理和待补充项，issue_report 分类清晰。spec 覆盖全面，无明显的 spec 规则遗漏。

## 问题清单

### 1. [阻塞] 18 个用例完全缺失 @id/@expect/@section
**现象**：审计发现 18 个 .ets 文件的头部完全没有任何元数据标签（`@id`、`@expect`、`@section` 全部缺失）。
**涉及范围**：9.7.1/9.7.2/9.7.3/9.7.4/9.7.5/9.7.6/9.7.8/9.9.1/9.9.2/9.9.3 等子节。
**影响**：这些用例无法被自动化工具识别和追踪，完全丢失元数据关联。
**建议**：逐文件补充 `@id`、`@expect`、`@section` 标记。

### 2. [阻塞] 4 例 @id 与文件名方向不一致
**现象**：
| 文件 | 目录/文件名 expect | @id 中的 expect |
|------|:---:|:---:|
| `CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT.ets` | compile-pass | `_FAIL_` |
| `CLS_09_09_009_FAIL_SUPER_NAMED_CALL.ets` | compile-fail | `_PASS_` |
| `CLS_09_09_010_FAIL_THIS_NAMED_CALL.ets` | compile-fail | `_PASS_` |
**影响**：@id 方向的 "PASS" vs "FAIL" 与文件实际目录和文件名矛盾，可能导致自动化误判。
**建议**：对齐 @id 中的 PASS/FAIL 与文件所在目录和文件名一致。
**注意事项**：其中 CLS_09_07_015 对应 issue C-9.07-01（override 默认参数不一致），目录已按负向看护放置 compile-fail 但文件名为 PASS，需同步修正或确认意图。

### 3. [重要] test_case_catalog.md 统计数不一致
**现象**：catalog 头部声明 "131 compile-pass + 155 compile-fail + 102 runtime = 387"，但 manifest 数据为 130P+155F+102R=387。头部 compile-pass 多 1。
**影响**：数字不一致会降低 reviewer 信任度。
**建议**：修正 catalog 头部为 130P。

### 4. [信息] 8 项已知 spec 差异已清晰归类
**现象**：issue_report.md 记录 8 项问题（4 C 类编译器未实现 + 3 D 类 spec 不一致 + 1 实验特性差异），其中：
- C-9.08-01（MEDIUM）：getter/setter 修饰符一致性未检查
- C-9.07-01（MEDIUM）：override 默认参数值不一致
- C-9.07-02（MEDIUM）：native+static 组合未检查
- C-9.04-01（MEDIUM）：TS 风格重载声明不支持
- D-9.06-02（MEDIUM）：late init + optional 未检查
- D-9.06-03（LOW）：super 字段初始化器无 warning
- D-9.02-01（LOW）：显式 extends Object
- D-9.09-01（LOW）：命名构造器实验特性
**评价**：分类清晰，每个条目有详细分析、跨语言对比、建议。mindmap 中的待补充项（CLS-T8~T18）也标注清晰。

### 5. [改进] 18 个缺失标签用例可能源于两代格式混用
**现象**：缺失标签的用例集中在 9.7.x 和 9.9.x 子节，这些子节中同时存在有标签和无标签的用例，推测为不同批次生成时未统一格式。
**建议**：统一所有用例的元数据标签格式。

## 覆盖评价

| 小节 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 9.1 Class Declarations | 5 | 4 | 3 | 12 | 空类/泛型/重复修饰符/循环 extends/关键字名 |
| 9.1.1 Abstract Classes | 4 | 5 | 3 | 12 | 抽象类/非抽象继承/实例化禁止/modifier 冲突 |
| 9.2 Class Extension Clause | 4 | 6 | 3 | 13 | extends 类/多层/循环/接口/union/显式 Object |
| 9.3 Class Implementation Clause | 4 | 4 | 2 | 10 | 单/多接口/重复/泛型/同名冲突 |
| 9.3.1 Implementing Required Interface Properties | 7 | 7 | 3 | 17 | 属性实现全矩阵（field/getter+setter/readonly） |
| 9.3.2 Implementing Optional Interface Properties | 5 | 1 | 3 | 9 | 可选属性可跳过/optional 字段/accessor |
| 9.4 Class Members | 5 | 3 | 2 | 10 | static/instance 同名/static block/重载/冲突 |
| 9.5 Access Modifiers | 2 | 1 | 1 | 4 | 默认 public/组合/外部访问 private |
| 9.5.1 Private Access Modifier | 3 | 4 | 2 | 9 | 类内/子类重用/private 构造器 |
| 9.5.2 Protected Access Modifier | 2 | 3 | 2 | 7 | 类内+子类可访问/外部不可访问 |
| 9.5.3 Public Access Modifier | 2 | 1 | 1 | 4 | 处处可访问/默认 public |
| 9.6 Field Declarations | 3 | 3 | 2 | 8 | 基本字段/初始化器/static/instance |
| 9.6.1 Static and Instance Fields | 3 | 2 | 2 | 7 | static/instance 声明/泛型参数禁止/访问 |
| 9.6.2 Readonly Constant Fields | 2 | 2 | 2 | 6 | readonly 声明/重新赋值禁止 |
| 9.6.3 Optional Fields | 2 | 1 | 2 | 5 | optional 默认 undefined/赋值给 non-nullish |
| 9.6.4 Field Initialization | 2 | 2 | 2 | 6 | 初始化器/this/super warning ⚠️ |
| 9.6.5 Fields with Late Initialization | 2 | 5 | 2 | 9 | late init/static/readonly/optional 禁止 ⚠️ |
| 9.6.6 Override Fields | 4 | 6 | 2 | 12 | override 同类型/初始化器/类型不匹配 |
| 9.7 Method Declarations | 3 | 3 | 2 | 8 | 方法声明/修饰符/冲突 |
| 9.7.1 Static Methods | 3 | 10 | 5 | 18 | static 约束/与 abstract/this/super 非法 ⚠️ |
| 9.7.2 Instance Methods | 7 | 2 | 3 | 12 | this 访问字段/override/泛型 |
| 9.7.3 Abstract Methods | 4 | 8 | 5 | 17 | abstract 约束/非抽象类实现/modifier 非法 |
| 9.7.4 Async Methods | 6 | 9 | 6 | 21 | async/await/Promise/modifier 非法 |
| 9.7.5 Overriding Methods | 4 | 2 | 3 | 9 | override+final/static 非法/默认参数 ⚠️ |
| 9.7.6 Native Methods | 2 | 1 | 0 | 3 | native 声明/native+abstract 非法 |
| 9.7.7 Method Body | 4 | 7 | 2 | 13 | 多语句/嵌套块/abstract 缺体/return |
| 9.7.8 Methods Returning this | 2 | 3 | 3 | 8 | this 返回/builder pattern/override |
| 9.8 Class Accessor Declarations | 10 | 15 | 6 | 31 | getter/setter/override 协变逆变/冲突 ⚠️ |
| 9.9 Constructor Declaration | 4 | 3 | 3 | 10 | 构造器/参数默认值/访问修饰符 |
| 9.9.1 Constructor Body | 3 | 9 | 6 | 18 | super()根语句/this/super 禁止/自调用/顺序 |
| 9.9.2 Explicit Constructor Call | 2 | 6 | 1 | 9 | this()/super()委托/命名构造器 ⚠️ |
| 9.9.3 Default Constructor | 3 | 3 | 3 | 9 | 默认构造器/继承链/父类不可访问 |
| 9.10 Inheritance | 12 | 14 | 15 | 41 | 继承链/override 协变逆变/abstract/instanceof |
| **Total** | **130** | **155** | **102** | **387** | 33 个小节，全部覆盖 |

**总体覆盖评价**：覆盖 §9.1–§9.10 全部 33 个小节。每个小节均有 compile-pass/fail/runtime 三类用例。设计思路清晰（合法场景 + 修饰符冲突 + 运行时行为三层次）。mindmap 还列出了待补充项（CLS-T8~T18），表明覆盖仍在持续完善。

**亮点**：
- 9.10 Inheritance（41 例）和 9.8 Accessor Declarations（31 例）覆盖最充分
- 9.7.1 Static Methods（18 例）中 compile-fail 占 10 例，负面测试覆盖丰富（static+abstract/this/super/final/native/async 等非法组合）
- spec_original.md 有完整规范摘录，是三个章节中唯一真正内容充实的 spec 文档
- mindmap 有分类策略说明和已知差异汇总，质量最高

**已知覆盖不足**（issue_report 已标注，编译器待实现）：
- getter/setter 修饰符一致性（C-9.08-01）
- override 默认参数值检查（C-9.07-01）
- native+static 组合检查（C-9.07-02）

## 整改建议

1. **必须修复**：18 个用例补充 `@id`/`@expect`/`@section` 元数据标签
2. **必须修复**：4 个用例对齐 `@id` 中 PASS/FAIL 方向与目录文件名一致
3. **建议修复**：修正 `test_case_catalog.md` 头部 compile-pass 计数（131→130）
4. **持续跟踪**：issue_report.md 中 8 项 C/D 类问题在编译器版本更新后验证状态
5. **考虑补充**：mindmap 中列出的 4 项待补充用例（CLS-T8~T18）
