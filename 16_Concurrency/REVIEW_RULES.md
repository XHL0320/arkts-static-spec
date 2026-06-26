# 05 Generics — 测试交付物自查规则

本规则提炼自 AI 评审报告（`AI_REVIEW_REPORT_20260625.md`）的评审标准。每次提交测试交付物前，请逐项自查。

---

## R1. 用例归类规则

| # | 规则 | 正确做法 | 错误示例 |
|---|------|---------|---------|
| 1.1 | 用例的 pass/fail 归类必须严格依据 ArkTS static spec，不得凭主观直觉 | 查阅 spec 对应章节，逐条推导后再定类 | 凭"感觉应该是错的"把合法用例标为 compile-fail |
| 1.2 | 涉及函数类型中的 variance 时，必须逐层计算 in/out position interleaving | callback 是方法参数(in) + T 是 callback 参数(in) = out | 只看 T 在 callback 参数位置就判定为 in-position 报错 |
| 1.3 | compile-pass 目录存放编译器应接受的合法用例，compile-fail 存放应拒绝的非法用例 | 验证编译通过 / 失败后再定目录 | 将编译器行为与自己预期不符的用例放入 compile-fail |
| 1.4 | runtime 目录的用例必须同时具备 main 入口和可执行的断言逻辑 | 有 `@Entry`/`@Component` + 断言 | 仅有编译验证的用例放在 runtime 目录 |

## R2. 用例文件头注释规则

每个 `.ets` 文件头部必须包含以下字段：

```
@id        用例唯一 ID，与文件名保持一致
@expect    compile-pass / compile-fail / runtime
@section   所属规范章节号
@design    用例设计意图
@note      正向/反向说明，标注 spec 依据
```

**关键约束：`@section` 必须与文件所处的目录路径一致。**

| # | 规则 | 正确做法 | 错误示例 |
|---|------|---------|---------|
| 2.1 | `@section` 的值必须匹配目录层级 | 文件在 `5.1.3_Type_Parameter_Variance/` → `@section 5.1.3` | `@section 5.2` |
| 2.2 | 新建或复制文件后必须同步修正 `@section` | 复制 5.2.x 的模板到 5.1.3 后改 section | 复制粘贴后遗漏修改 |
| 2.3 | 批量审查时用脚本交叉核对 | `bash check_section_mismatch.sh ets_cases/` | 只看文件内容忽略头部 |

示例（正向用例）：
```
@id GEN_05_01_03_009_PASS_CALLBACK_PARAM_INTERLEAVING
@expect compile-pass
@section 5.1.3
@design out T 在回调函数参数位置经 variance interleaving 计算后合法
@note 正向用例：callback 为方法参数（in-position），T 为 callback 参数（in-position），in+in=out，符合 out T
```

示例（反向用例）：
```
@id GEN_05_01_03_100_FAIL_VARIANCE
@expect compile-fail
@section 5.1.3
@design out T 出现在非 out-position
@note 反向用例：out 类型参数出现在方法参数中（in-position），应编译报错
```

## R3. 文件命名规则

| # | 规则 | 正确做法 | 错误示例 |
|---|------|---------|---------|
| 3.1 | 文件名中的 `PASS`/`FAIL`/`RUNTIME` 必须与 `@expect` 一致 | @expect compile-pass → 文件名含 PASS | 文件在 compile-pass 目录但文件名含 FAIL |
| 3.2 | 文件名中的 DESCRIPTION 必须与实际测试意图一致 | 测试 variance interleaving → `_PASS_CALLBACK_PARAM_INTERLEAVING` | `_FAIL_CALLBACK_VARIANCE_GAP` 但实际编译通过 |
| 3.3 | ID 编号在章节内唯一且顺序递增 | 5.1.3 内已有 001-008，新增用 009 | 随意跳号或与已有 ID 冲突 |

## R4. issue_report 编写规则

| # | 规则 | 正确做法 | 错误示例 |
|---|------|---------|---------|
| 4.1 | issue 必须在充分理解 spec 后提交 | 查阅 spec 原文确认预期行为 | 凭主观理解将编译器正确行为报为 bug |
| 4.2 | issue 中引用的用例 ID 必须与实际复测失败的 ID 完全一致 | 写入实际的 105、107 | 写入不相关的 006、008 |
| 4.3 | 跨语言对比必须使用等价机制，且不能代替 spec 作为预期来源 | Java use-site / Swift 仅做辅助参考 | 以 Java/Swift 非等价行为推导 ArkTS 应为 bug |
| 4.4 | issue 提交前必须先执行复测，确认用例确实失败 | 实际执行编译验证 | 仅通过代码走读推断可能失败 |
| 4.5 | issue 被 AI review 指出不成立后，必须从 issue_report 中删除 | 删除整行记录 | 保留已关闭的错误记录 |

## R5. 跨语言对比报告规则

| # | 规则 | 正确做法 | 错误示例 |
|---|------|---------|---------|
| 5.1 | 报告中记录的实测环境版本必须与实际环境完全一致 | 记录 `WSL javac 1.8.0_492` / `WSL Swift 6.3.2` | 记录未验证的 `Java SE 21` / `Swift 5.10` |
| 5.2 | Java/Swift 仅作为辅助对比参考，不得作为 ArkTS 预期行为的来源 | 写明"Java/Swift 仅提供参考" | "Swift 正确识别，ArkTS 应为 bug" |
| 5.3 | 如果要证明其他语言能检查某场景，必须构造真实的负向样例 | 提供一个应编译失败的 Swift 样例并验证 | 仅在正向用例上运行通过就下结论 |
| 5.4 | 必须明确指出 ArkTS static spec 是唯一预期依据 | "ArkTS 预期以 ArkTS static spec 为准" | 遗漏此项声明 |

## R6. 数据一致性规则

所有统计类文档（test_report、test_manifest.json、test_case_catalog、test_design_mindmap）中的数据必须与实际目录中的文件严格一致。

### 6.1 自查步骤

```
1. 统计每个章节的 compile-pass / compile-fail / runtime 实际文件数
   → ls 5.1.3_*/compile-pass/*.ets | wc -l
   → ls 5.1.3_*/compile-fail/*.ets | wc -l
   → ls 5.1.3_*/runtime/*.ets | wc -l

2. 逐文档核对：
   [ ] test_report_5.1.X.md — Total Cases + 各类别数量
   [ ] test_manifest.json — 每个 section 的 pass/fail/runtime/total
   [ ] test_case_catalog.md — 条目数量与文件数量一致
   [ ] test_design_mindmap.md — 脑图分支与文件分类一致
```

### 6.2 常见不一致场景

| 不一致场景 | 检查方法 |
|-----------|---------|
| test_report 总数少于实际 | 新增用例后没更新报告 |
| runtime 目录有文件但报告写 runtime: 0 | 文件放错目录或统计遗漏 |
| compile-pass 数量不匹配 | catalog 中漏写了某一行的 PASS 条目 |
| 报告写 runtime: 1 但实际 runtime 目录为空 | catalog 引用了不存在的路径 |

## R7. test_case_catalog 路径准确性规则

| # | 规则 | 正确做法 | 错误示例 |
|---|------|---------|---------|
| 7.1 | catalog 中每条记录的文件路径必须真实存在 | 执行 `ls` 验证路径是否存在 | 写入不存在的 `runtime/GEN_05_01_03_200_RUNTIME_COVARIANT_OUT.ets` |
| 7.2 | catalog 中的"类型"列（PASS/FAIL/RUNTIME）必须与文件的实际目录一致 | compile-pass 目录 → PASS | compile-pass 目录下的文件标为 RUNTIME |
| 7.3 | 用例移动目录后必须同步更新 catalog 中的类型和路径 | compile-fail → compile-pass 后改类型为 PASS | 只移动文件不更新 catalog |

## R8. 同步更新规则

任何对用例的增、删、移、改，必须同步更新以下所有文档：

| 文档 | 修改要点 |
|------|---------|
| `issue_report.md` | 增删 issue 记录 |
| `test_report_5.1.X.md` | 总用例数、各类别数量、状态 |
| `test_manifest.json` | 对应 section 的 pass/fail/runtime/total |
| `test_case_catalog.md` | 条目增删、类型修正、路径修正 |
| `test_design_mindmap.md` | 对应分支的增删改 |
| 文件名 / `@expect` | 与新归类一致 |

**黄金法则**：修改一个用例后，至少检查以上 6 个文件是否需要同步。

## R9. 交付前最终检查清单

提交前逐项打勾：

```
[ ] R1  每个用例的归类正确（pass/fail/runtime 符合 spec）
[ ] R2  每个用例文件头注释完整（@id / @expect / @section / @design / @note）
[ ] R2.1 @section 与文件所在目录路径一致（`grep '@section'` 逐条核对）
[ ] R3  文件名中的 PASS/FAIL/RUNTIME 与 @expect 一致
[ ] R4  issue_report 中无已解决或误报的 issue
[ ] R5  跨语言报告中环境版本正确、结论收敛
[ ] R6  所有统计文档的数据与实际目录一致
[ ] R7  catalog 中所有路径真实存在、类型正确
[ ] R8  本次修改涉及的 6 类文档均已同步更新
[ ] R9  全部用例执行通过（Total = Pass）
```
