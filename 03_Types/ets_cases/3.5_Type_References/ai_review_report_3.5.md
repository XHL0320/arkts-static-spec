# 3.5 Type References - AI 复核报告

## 复核范围

- 复核日期：2026-06-16
- 复核目录：`3.5_Type_References`
- 用例分类：`compile-pass`、`compile-fail`、`runtime`

## 执行结果

使用规范化后的 WSL 执行脚本运行：

```bash
SECTIONS="3.5_Type_References" bash run_types_cases_preserve_artifacts.sh
```

结果如下：

| 分类 | 总数 | 实际结果 |
|---|---:|---|
| compile-pass | 10 | 10 通过 |
| compile-fail | 5 | 5 通过 |
| runtime | 4 | 4 通过 |
| 合计 | 19 | 19 通过 |

3.5 小节提交的用例与当前预期一致。

## 发现的问题

| 严重级别 | 问题 | 影响 |
|---|---|---|
| 中 | runner 的 CRLF 换行影响复现。 | WSL 中直接运行报告命令会失败，需要先规范化换行。 |
| 中 | compile-fail 用例只要求出现任意错误。 | wrong arity、constraint violation、variable-as-type、undefined qualified name、direct recursive alias 都应校验具体诊断。 |
| 低 | `PASS_TYPE_ALIAS_RECURSIVE` 文件名包含 recursive，但实际覆盖的是链式 alias 替换 `A -> B -> C`，不是递归 alias。 | 建议改名或改注释为“alias chain replacement”，避免和负向 direct recursion 混淆。 |
| 低 | 泛型默认类型参数与 type references 相关，但也属于 generics 范围。 | 用例可保留，但建议在追溯中标注跨章节归属。 |

## 覆盖评价

覆盖较好的点：

- simple 和 qualified type name。
- nested qualified name。
- 显式 generic type arguments。
- 嵌套 generic references。
- 默认 type arguments。
- alias replacement 和 generic aliases。
- 泛型声明内部的 type parameter reference。
- arity、constraint、变量名当类型、未定义限定名、直接递归 alias 等负向场景。

建议补充：

- 增加精确诊断期望。
- 如果本节后续覆盖模块限定类型引用，应增加 import/export 场景，并使用 `ark_link` 做运行验证。
- 将链式 alias 用例改名或改注释，避免与非法直接递归 alias 混淆。

## 结论

3.5 用例有效且当前全部通过。主要改进点是诊断精度，以及 recursive/chain alias 的命名清晰度。
