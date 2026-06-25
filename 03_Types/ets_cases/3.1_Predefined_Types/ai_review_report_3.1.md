# 3.1 Predefined Types - AI 复核报告

## 复核范围

- 复核日期：2026-06-16
- 复核目录：`3.1_Predefined_Types`
- 用例分类：`compile-pass`、`compile-fail`、`runtime`
- 复核目标：验证用例实际执行结果，并审视测试人员提交的用例和报告是否符合 ArkTS 静态规范。

## 执行结果

已将 `03_Types` 拷贝到 WSL 固定目录，并在规范化脚本换行后执行：

```bash
SECTIONS="3.1_Predefined_Types" bash run_types_cases_preserve_artifacts.sh
```

结果如下：

| 分类 | 总数 | 实际结果 |
|---|---:|---|
| compile-pass | 18 | 18 通过 |
| compile-fail | 16 | 16 通过 |
| runtime | 15 | 15 通过 |
| 合计 | 49 | 49 通过 |

3.1 小节提交的用例与当前预期一致，未发现实际执行失败项。

## 发现的问题

| 严重级别 | 问题 | 影响 |
|---|---|---|
| 中 | `run_types_cases_wsl.sh` 是 CRLF 换行，直接在 WSL 中运行会在 `set -eo pipefail` 处失败。 | 测试报告里的运行命令不可直接复现，必须先转 LF 或通过临时规范化脚本执行。 |
| 中 | `compile-fail` 只判断是否出现任意 Syntax/Semantic error，没有校验期望错误码或错误信息。 | 负向用例可能因为非目标错误而“误通过”。建议补充精确 `@expect-error` 或在 manifest 中记录期望诊断片段。 |
| 低 | 设计报告把部分符合 spec 的行为描述为“设计问题”，例如整数溢出回绕、`char` 转换限制、关键字冲突。 | 容易夸大语言缺陷。建议区分“spec 不一致”“实现 bug”“设计观察/跨语言差异”。 |
| 低 | 3.1 覆盖了很多后续子章节细节，例如数组、string、bigint、函数类型、`Any`、`Object`、`never`、`void`、`null`。 | 作为 smoke 用例有价值，但章节边界不清。详细行为仍应在对应小节继续覆盖。 |

## 覆盖评价

覆盖较好的点：

- value type 基础声明和数值运算。
- `Any`、`Object`、`never`、`void`/`undefined`、`null`、`string`、`bigint`。
- resizable/fixed/readonly array 的基础 smoke 场景。
- function type 的基础 smoke 场景。
- 除零、NaN/Infinity、bigint、数组操作、char 比较等运行时行为。

建议补充：

- 为 16 个 `compile-fail` 用例补充精确诊断校验。
- 保持 3.1 作为 predefined types smoke suite，但不要宣称覆盖了数组、函数、bigint、string、nullish 等后续小节的完整行为。
- 报告中涉及跨语言差异的部分，除非 spec 明确承诺不同结果，否则建议归类为“设计观察”。

## 结论

3.1 用例可执行，且当前全部通过。主要问题不在用例执行结果，而在测试 oracle 严谨性和报告表述：脚本换行需要修正，负向用例需要精确错误信息。
