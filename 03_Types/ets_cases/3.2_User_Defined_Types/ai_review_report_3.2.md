# 3.2 User-Defined Types - AI 复核报告

## 复核范围

- 复核日期：2026-06-16
- 复核目录：`3.2_User_Defined_Types`
- 用例分类：`compile-pass`、`compile-fail`、`runtime`

## 执行结果

使用规范化后的 WSL 执行脚本运行：

```bash
SECTIONS="3.2_User_Defined_Types" bash run_types_cases_preserve_artifacts.sh
```

结果如下：

| 分类 | 总数 | 实际结果 |
|---|---:|---|
| compile-pass | 11 | 11 通过 |
| compile-fail | 11 | 11 通过 |
| runtime | 8 | 8 通过 |
| 合计 | 30 | 30 通过 |

3.2 小节提交的用例与当前预期一致。

## 发现的问题

| 严重级别 | 问题 | 影响 |
|---|---|---|
| 中 | 与 3.1 相同，原始 runner 使用 CRLF 换行，直接在 WSL 中执行会失败。 | 现有报告只有在脚本换行被规范化后才可复现。 |
| 中 | 负向用例只校验“存在任意编译错误”。 | `compile-fail` 用例可能因为无关语法错误或名称错误而误通过。应记录精确期望诊断。 |
| 低 | 本节混入了 tuple、union、function type、literal type 等后续专门小节的行为。 | 作为 user-defined type smoke 覆盖可以接受，但追溯矩阵应说明详细覆盖归属后续小节。 |
| 低 | 报告提到将局部函数、局部类、局部 type alias 移到顶层来修复用例。它们是 ArkTS 语法约束，不一定是实现缺陷。 | 报告表述应区分“用例适配 ArkTS 语法”和“语言设计问题”。 |

## 覆盖评价

覆盖较好的点：

- class、interface、enum 声明。
- function type alias、tuple type、union type。
- generic class 和 generic function。
- string literal type。
- type alias 使用、string enum。
- 运行时覆盖继承、enum 方法、接口分发、tuple 访问、泛型实例化、函数类型调用。

建议补充：

- 为抽象类实例化、接口方法缺失、非法枚举成员、泛型约束违反、递归 alias 等负向用例补充精确诊断。
- 增加从 spec 中每类 user-defined type 到用例 ID 的清晰追溯。
- 如后续小节没有覆盖，建议补充 generic interface type parameter、type parameter 作用域/遮蔽边界。

## 结论

3.2 用例整体可作为 user-defined types 的 smoke suite，当前全部通过。主要短板是负向 oracle 不够精确，以及报告中对 ArkTS 语法约束的描述需要更严谨。
