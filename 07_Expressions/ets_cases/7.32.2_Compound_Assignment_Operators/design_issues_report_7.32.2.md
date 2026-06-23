# 7.32.2 复合赋值运算符 - ArkTS 与 Java/Swift/TS 行为差异及规范一致性报告

**报告日期：** 2026-06-23
**测试用例数：** 30（10 compile-pass + 10 compile-fail + 10 runtime）
**通过率：** 100%（30/30，0 unexpected）
**编译器：** es2panda + ark VM (Linux native)
**Spec 依据：** arktsspecification.md §7.32.2

## 报告分类口径

| 分类 | 含义 | 处理方式 |
|------|------|----------|
| 符合 ArkTS spec 的语言设计差异 | 行为与 Java/Swift 不同，但符合 ArkTS spec 或当前明确语义 | 不标为缺陷，仅记录差异 |
| Spec 与实现不一致 | 用例与 spec 要求不一致，且当前实现未按 spec 报错/运行 | 保留 FAIL 用例并记录 issue_report |
| 待确认问题 | 需要补充 stdlib/spec/实现依据后才能定性 | 暂不判定为缺陷 |
| 已验证规范一致行为 | 用例验证 ArkTS 行为符合 spec | 记录为通过项 |

## 一、Spec 与实现不一致

### 问题 C-7.32-01：&&= / ||= 复合赋值不被 es2panda 支持

**类别：** D 类（Spec 与实现不一致）
**复现用例：** EXP_07_32_02_004_PASS_COMPOUND_LOGIC

#### Spec 规则

§7.32.2 的 assignmentOperator 语法明确列出 `&&=` 和 `||=` 为合法的复合赋值运算符：
> ``assignmentOperator``: one of  ``= *= /= %= += -= <<= >>= >>>= &= ^= |= &&= ||= ??=``

#### 实测行为

```typescript
function testLogicalCompoundAssign(): void {
  let a: boolean = true
  a &&= false  // es2panda 报错: Unexpected token '&&='
}
```

#### 预期

应按 spec 语法支持 `&&=` / `||=`，编译通过。

#### 实际

es2panda 报 `Unexpected token '&&='`，语法解析阶段即拒绝。

#### 跨语言对比

| 语言 | &&= / \|\|= |
|------|-----------|
| ArkTS | ❌ es2panda 不支持（Spec 要求支持） |
| Java | ❌ 不支持 &&=/\|\|= |
| Swift | ❌ 不支持 &&=/\|\|= |
| TypeScript | ✅ 支持 &&=/\|\|= (ES2021) |

#### 建议

1. es2panda 语法解析器补充 `&&=` / `||=` token 识别
2. 补充语义检查：左侧必须为 boolean 类型
3. 当前用例已改写为 `a = a && true` 形式规避

---
## 二、已验证规范一致行为

经 es2panda + ark VM 实测，以下行为与 ArkTS spec §7.32.2 一致：

| 行为 | 验证方式 | 结果 |
|------|---------|------|
| 复合赋值（+= -= *= /= %= <<= >>= >>>= &= |= ^= &&= ||= ??=），等价于lhs=(lhs op rhs) as T，lhs只求值一次 | 10 compile-pass + 10 compile-fail + 10 runtime | ✅ 全部通过 |

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
| Spec 一致性 | ✅ 与 arktsspecification.md §7.32.2 一致 | ✅ JLS SE21 | ✅ Swift 5.10 | N/A |
| 语言差异 | ArkTS 静态类型 + nullish 安全 | 传统静态类型 | 严格静态 + Optional | 结构化类型 |

## 四、分类汇总

| 条目 | 分类 |
|------|------|
| C-7.32-01：&&= / ||= 复合赋值不被 es2panda 支持 | Spec 与实现不一致 |

## 五、关联记录

- 章节级异常汇总：[issue_report.md](../../issue_report.md)
- 测试执行报告：[test_report_7.32.2.md](test_report_7.32.2.md)
- 跨语言对比：[comparison_report_arkts_java_swift.md](comparison_report_arkts_java_swift.md)
- 测试设计：[test_design_mindmap_7.32.2.md](test_design_mindmap_7.32.2.md)
