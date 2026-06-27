# 13.2 Module Header - ArkTS与Java/Swift/TS行为差异及规范一致性报告

**报告日期：** 2026-06-27
**测试用例数：** 5（compile-pass: 3, compile-fail: 1, runtime: 1）
**目的：** 通过用例执行 + spec 对比，识别 ArkTS 模块头的设计问题

---

## 一、与业界静态语言的差异点

**无设计问题发现（D类）。** 唯一可验证的用例（003 FAIL）行为与 spec 一致。

---

## 二、符合ArkTS spec的语言设计差异（与规范一致）

| 行为 | 用例编号 | 状态 |
|------|---------|------|
| 非ambient的moduleHeader含declare → 编译错误 | NSM_13_02_003 | ✅ |

---

## 三、严重性等级总览

| 严重性 | 数量 | 问题列表 |
|-------|------|---------|
| 编译器待完善 | 0 | - |
| 编译器实现限制 | 4 | C类: es2panda不支持module header语法 |
| 语言差异 | 0 | - |
| 设计观察 | 0 | - |

---

## 四、编译规则正确性评估

| 规则 | spec 描述 | 实测 | 结论 |
|------|----------|------|------|
| 非ambient模块不可declare | moduleHeader含declare但非ambient → error | 编译拒绝 (NSM_13_02_003) | ✅ 一致 |
| export module语法 | `export module "name"` | C类(无法验证) | ⚠️ 待验证 |
| declare module语法 | `declare module "name"` | C类(无法验证) | ⚠️ 待验证 |

---

## 五、跨语言对比（WSL实测）

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| **模块头语法** | ✅ `export module "name"` | ❌ 无此概念 | ❌ 无此概念 |
| **模块名** | StringLiteral | — | — |
| **declare module** | ✅ ambient模块声明 | ❌ 无此概念 | ❌ 无此概念 |
| **非ambient禁止declare** | ✅ spec规定 | — | — |

**WSL实测结果：**
- Java: `package pkg132; public class ModuleHeaderTarget { VAL=42 }` → ✅ 编译+运行成功，`Java: package declaration works, VAL=42`
- Swift: 无moduleHeader概念，struct代替 → ✅ 编译成功，`Swift: no moduleHeader concept, val=42`

**结论：** 13.2 章节的 moduleHeader 是 ArkTS 独有的设计，Java 和 Swift 无对应概念。编译器需完善 module 关键字支持。

---

## 六、跨语言对比结论

| 维度 | 评价 |
|------|------|
| 与 spec 一致性 | ⭐⭐⭐⭐⭐（唯一可验证用例与spec一致） |
| 编译期检查完备性 | ⭐⭐⭐⭐（非ambient检查正确，module语法支持缺失） |
| 运行时正确性 | ⭐（无法验证） |
| 与 Java 兼容度 | ⭐（Java无模块头概念） |
| 与 Swift 兼容度 | ⭐⭐（SwiftPM有类似模块声明） |
| spec 完整度 | ⭐⭐⭐⭐⭐（moduleHeader规则完整） |
| 实现一致性 | ⭐⭐⭐⭐（可验证部分一致） |

---

## 七、改善建议

### 短期
1. 无 D类问题需修复

### 中期
2. 等待 es2panda 支持 module header 语法后验证 C类用例

### 长期
3. 持续跟踪 spec 变更，确保 module header 新特性可验证

---

## 八、附录：完整用例索引

| 用例 ID | 分类 | 测试内容 | 结果 |
|---------|------|---------|------|
| NSM_13_02_001 | compile-pass | export module声明 | ⚠️ C类 |
| NSM_13_02_002 | compile-pass | declare module声明 | ⚠️ C类 |
| NSM_13_02_003 | compile-fail | moduleHeader含declare但非ambient | ✅ 通过 |
| NSM_13_02_004 | compile-pass | 模块名为StringLiteral | ⚠️ C类 |
| NSM_13_02_005 | runtime | 模块头运行时 | ⚠️ C类 |
