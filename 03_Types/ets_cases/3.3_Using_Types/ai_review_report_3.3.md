# 3.3 Using Types - AI 复核报告

## 复核范围

- 复核日期：2026-06-16
- 复核目录：`3.3_Using_Types`
- 用例分类：`compile-pass`、`compile-fail`、`runtime`

## 执行结果

使用规范化后的 WSL 执行脚本运行：

```bash
SECTIONS="3.3_Using_Types" bash run_types_cases_preserve_artifacts.sh
```

结果如下：

| 分类 | 总数 | 实际结果 |
|---|---:|---|
| compile-pass | 12 | 12 通过 |
| compile-fail | 10 | 10 通过 |
| runtime | 5 | 5 通过 |
| 合计 | 27 | 27 通过 |

3.3 小节提交的用例与当前预期一致。

## 发现的问题

| 严重级别 | 问题 | 影响 |
|---|---|---|
| 中 | 原始 WSL runner 因 CRLF 换行无法直接运行。 | 报告中的运行命令不可直接复现。 |
| 中 | `compile-fail` 用例没有校验目标诊断。 | 对注解括号、类型优先级这类语法敏感场景，非目标 parse error 也可能导致误通过。 |
| 中 | spec 的 `Using Types` 列表包含 `Function Types with Receiver`，当前未发现 receiver function type 用例。 | 这是 3.3 的真实覆盖缺口。 |
| 低 | 报告把“注解前置类型必须使用括号”归为设计问题。spec 已明确该规则用于避免歧义。 | 建议归类为严格语法规则或设计观察，而不是测试发现的缺陷。 |

## 覆盖评价

覆盖较好的点：

- predefined/user/generic/alias 类型引用。
- in-place array、tuple、function、union、string literal 类型。
- `keyof`。
- array/function/union/nullish 组合下的括号优先级。
- 注解前置类型缺少括号的负向用例。
- 括号优先级、alias 透明性、tuple 访问、`keyof`、函数调用的运行时验证。

建议补充：

- 增加 function types with receiver 的正向/负向用例。
- 为所有负向用例补充精确诊断。
- 为“注解前置类型必须加括号”单独建立追溯点。

## 结论

3.3 用例整体较好，基本对准本节主题。主要缺口是 function type with receiver；报告中也应避免把 spec 已明确规定的语法规则描述为缺陷。
