# 3.4 Named Types - AI 复核报告

## 复核范围

- 复核日期：2026-06-16
- 复核目录：`3.4_Named_Types`
- 用例分类：`compile-pass`、`compile-fail`、`runtime`

## 执行结果

使用规范化后的 WSL 执行脚本运行：

```bash
SECTIONS="3.4_Named_Types" bash run_types_cases_preserve_artifacts.sh
```

结果如下：

| 分类 | 总数 | 实际结果 |
|---|---:|---|
| compile-pass | 10 | 10 通过 |
| compile-fail | 6 | 6 通过 |
| runtime | 4 | 4 通过 |
| 合计 | 20 | 20 通过 |

3.4 小节提交的用例与当前预期一致。

## 发现的问题

| 严重级别 | 问题 | 影响 |
|---|---|---|
| 中 | runner 的 CRLF 换行影响复现。 | WSL 中直接运行报告命令会失败，需要先规范化换行。 |
| 中 | compile-fail oracle 只校验任意错误。 | duplicate name、type parameter out of scope 等用例应校验具体名称/作用域诊断。 |
| 低 | 报告提到 built-in arrays 不属于 named types，并作为设计观察。该结论与 spec 一致。 | 应保持为观察，不应写成失败或缺陷。 |
| 低 | `PASS_ANONYMOUS_VS_NAMED` 验证的是 alias 透明替换，但注释中“same structure/同结构”等表达可能造成误解。 | 建议改为“type alias replacement/transparent assignability”，不要暗示结构化名义等价。 |

## 覆盖评价

覆盖较好的点：

- class/interface/enum/type alias/type parameter/predefined types 作为 named types。
- generic 和 non-generic named types。
- 带 type arguments 的 type references。
- duplicate named declarations 和 out-of-scope type parameter 负向场景。
- 实例化、泛型擦除、alias 透明性、接口分发的运行时验证。

建议补充：

- 为 compile-fail 用例补充精确诊断。
- 如果能找到可观察行为，可补一个 built-in arrays 不属于 named types 的负向或观察用例。
- 澄清 anonymous types 与 aliases 的报告表述。

## 结论

3.4 用例符合 spec，当前全部通过。报告整体可接受，但负向测试断言需要更严格。
