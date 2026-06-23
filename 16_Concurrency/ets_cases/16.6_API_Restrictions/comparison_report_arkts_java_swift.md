# 16.6 API Details and Restrictions - 跨语言对比报告

## 关键差异矩阵

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| Promise then/catch | Job-based | Thread-based | Continuation-based |
| 未处理拒绝 | Worker-thread scoped | UnhandledRejectionHandler | 全局处理 |
| 错误传播 | 向上传播 | 向上传播 | 向上传播 |

## 核心结论

三语言在 Promise 回调和错误处理上的行为总体一致。
