# 10.3 Interface Members - 设计问题报告
## 🔴 发现：Object public 方法名冲突检测未实现

**问题描述：** Spec §10.3 规定 "A compile-time error occurs if the method explicitly declared by the interface has the same name as the Object's public method"（Spec 行 167）。编译器未实现此规则。

**复现用例：**
- ITF_10_03_011: `toString(p: number): void` — 被接受（应被拒绝）
- ITF_10_03_012: `toString(): string` — 被接受（应被拒绝，spec 示例明确标注为 compile-time error）

**严重性：** MEDIUM

**Gap 类型：** 类型5 — Parser/Checker 未实现规范明确要求的语义约束

**跨语言对比：**
- **Java：** 接口声明 `toString(int p)` 不报错，但类实现时会因 `Object.toString()` 签名不匹配产生问题
- **Swift：** NSObjectProtocol 已有 `description` 等属性，但 protocol 中重复声明会产生警告
- **ArkTS：** 规范比 Java 更严格（要求编译错误），但编译器实现比规范更宽松（当前不报错）
