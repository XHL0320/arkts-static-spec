# 7.28 相等表达式 - ArkTS与Java/Swift/TS行为差异及规范一致性报告

**生成日期：** 2026-06-22
**执行日期：** 2026-06-22
**测试用例：** 30（10 compile-pass + 10 compile-fail + 10 runtime）
**通过率：** 100%（30/30，0 unexpected）
**编译器：** es2panda + ark VM (Linux native)
**Spec依据：** arktsspecification.md §7.28

---

## 一、与业界静态语言的差异点

本章节验证了 ArkTS §7.28 相等表达式 规范约束。以下为实测中发现的 **ArkTS与Java/Swift/TS行为差异**，按 C类（编译器实现待完善）/ D类（Spec与实现不一致）分类：

| ID | 差异描述 | 分类 |
|----|---------|------|
| — | 本章节所有30个测试用例均通过编译运行，无新增差异点 | 符合ArkTS spec的语言设计差异 |

---

## 二、符合ArkTS spec的语言设计差异

以下行为经 es2panda + ark VM 实测验证，**与 ArkTS Spec 一致**，属于 ArkTS 语言设计选择，非设计缺陷：

- **Spec规范约束**：相等表达式（== === != !==），交换律，同类型或兼容类型比较。常量相等警告，不同枚举类型警告
- **编译期行为**：10个compile-pass用例全部通过es2panda编译，10个compile-fail用例全部正确产生编译错误
- **运行时行为**：10个runtime用例全部通过ark VM执行（含assert断言），无异常抛出
- **跨语言定位**：ArkTS在此章节的设计与Java/Swift/TS存在合理差异（详见comparison_report_arkts_java_swift.md）

---

## 三、跨语言对比摘要

| 维度 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| 编译验证 | ✅ es2panda — 30/30通过 | ✅ javac | ✅ swiftc | ✅ tsc |
| 运行时验证 | ✅ ark VM — 10/10 runtime通过 | ✅ JVM | ✅ Swift runtime | ✅ Node.js |
| Spec一致性 | ✅ 与arktsspecification.md §7.28一致 | ✅ JLS SE21 | ✅ Swift 5.10 | N/A |
| 语言差异 | ArkTS静态类型+nullish安全 | 传统静态类型 | 严格静态+Optional | 结构化类型 |

---

## 四、章节执行统计

| 分类 | 数量 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime | 10 | 10 | 0 | 100% |
| **总计** | **30** | **30** | **0** | **100%** |

**结论：30个测试用例全部编译运行通过。本章节Spec约束与es2panda+ark VM行为一致。**

---

## 五、关联记录

- 章节级异常汇总：[issue_report.md](../../issue_report.md)
- 测试执行报告：[test_report_7.28.md](test_report_7.28.md)
- 跨语言对比：[comparison_report_arkts_java_swift.md](comparison_report_arkts_java_swift.md)
- 测试设计：[test_design_mindmap_7.28.md](test_design_mindmap_7.28.md)
