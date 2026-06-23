# 7.33 三元条件表达式 - ArkTS 与 Java/Swift/TS 行为差异及规范一致性报告

**报告日期：** 2026-06-23
**测试用例数：** 30（10 compile-pass + 10 compile-fail + 10 runtime）
**通过率：** 100%（30/30，0 unexpected）
**编译器：** es2panda + ark VM (Linux native)
**Spec 依据：** arktsspecification.md §7.33

## 报告分类口径

| 分类 | 含义 | 处理方式 |
|------|------|----------|
| 符合 ArkTS spec 的语言设计差异 | 行为与 Java/Swift 不同，但符合 ArkTS spec 或当前明确语义 | 不标为缺陷，仅记录差异 |
| Spec 与实现不一致 | 用例与 spec 要求不一致，且当前实现未按 spec 报错/运行 | 保留 FAIL 用例并记录 issue_report |
| 待确认问题 | 需要补充 stdlib/spec/实现依据后才能定性 | 暂不判定为缺陷 |
| 已验证规范一致行为 | 用例验证 ArkTS 行为符合 spec | 记录为通过项 |

## 一、符合 ArkTS spec 的语言设计差异

### 差异 A：三元条件接受非 boolean 类型（符合 Extended Conditional Expressions）

**分类：** 符合 ArkTS spec 的语言设计差异

#### Spec 依据

§8.5/§8.7/§8.8 Extended Conditional Expressions 明确允许 if/while/do/for/三元条件使用非 boolean 类型（int, string, float 等）作为条件。这是 ArkTS 的 **有文档支持的语言设计特性**，与 Java/Swift 的严格 boolean 条件不同。

#### 实测行为

```typescript
function testNonBoolTernary(): void {
  let x: int = 1
  let result: string = x ? "nonzero" : "zero"  // 编译通过
}
```

#### 跨语言对比

| 语言 | 非 boolean 三元条件 |
|------|-------------------|
| ArkTS | ✅ 允许（符合 §8.5/8.7/8.8 Extended Conditional Expressions） |
| Java | ❌ 必须 boolean |
| Swift | ❌ 必须 Bool |
| TypeScript | ❌ 必须 truthy-checkable（编译通过但语义不同） |

---
## 二、已验证规范一致行为

经 es2panda + ark VM 实测，以下行为与 ArkTS spec §7.33 一致：

| 行为 | 验证方式 | 结果 |
|------|---------|------|
| 三元条件（condition?whenTrue:whenFalse），右结合，编译期已知condition时类型收窄，未知时Union类型。运行时仅评估一个分支 | 10 compile-pass + 10 compile-fail + 10 runtime | ✅ 全部通过 |

| 分类 | 数量 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime | 10 | 10 | 0 | 100% |
| **总计** | **30** | **30** | **0** | **100%** |

**结论：30 个测试用例全部编译运行通过。本章节 Spec 约束与 es2panda + ark VM 行为一致。**

## 三、跨语言对比摘要

| 维度 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| 编译验证 | ✅ es2panda — 30/30 通过 | ✅ javac | ✅ swiftc | ✅ tsc |
| 运行时验证 | ✅ ark VM — 10/10 runtime 通过 | ✅ JVM | ✅ Swift runtime | ✅ Node.js |
| Spec 一致性 | ✅ 与 arktsspecification.md §7.33 一致 | ✅ JLS SE21 | ✅ Swift 5.10 | N/A |
| 语言差异 | ArkTS 静态类型 + nullish 安全 | 传统静态类型 | 严格静态 + Optional | 结构化类型 |

## 四、分类汇总

| 条目 | 分类 |
|------|------|
| 差异 A：三元条件接受非 boolean 类型（符合 Extended Conditional Expressions） | 符合 ArkTS spec 的语言设计差异 |

## 五、关联记录

- 章节级异常汇总：[issue_report.md](../../issue_report.md)
- 测试执行报告：[test_report_7.33.md](test_report_7.33.md)
- 跨语言对比：[comparison_report_arkts_java_swift.md](comparison_report_arkts_java_swift.md)
- 测试设计：[test_design_mindmap_7.33.md](test_design_mindmap_7.33.md)
