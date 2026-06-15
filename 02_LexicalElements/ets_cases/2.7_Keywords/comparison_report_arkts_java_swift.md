# 2.7 Keywords - ArkTS vs Java vs Swift vs TypeScript 对比报告

**生成日期：** 2026-06-15
**规范来源：** ArkTS Static Spec §2.7, Java JLS SE21 §3.9, Swift Language Reference (Keywords and Punctuation), ECMAScript 2023 §12.7
**测试基础：** 56 个用例（35 compile-pass + 16 compile-fail + 5 runtime 真实执行）

---

## 一、关键字总数对比

| 语言 | 硬关键字 | 类型关键字 | 软关键字 | 未来保留 | 总计 |
|------|---------|----------|---------|---------|------|
| ArkTS | 47 | 17 | 13 | 5 | **82** |
| Java | 51 | 0 (含 char 等) | 0 | 3 | 54 |
| Swift | ~50 | 0 (无类型关键字) | 30+ | 多 | ~80 |
| TypeScript | ~36 | 0 (内置类型不是关键字) | 30+ | 5 | ~70 |

**关键观察：**
- **ArkTS** 关键字数量最多（含独立的类型关键字表）
- **Java** 和 **ArkTS** 都强制保留类型名为关键字
- **TypeScript** 类型名（int 等）不是关键字 → ArkTS 与 TS 不兼容点

---

## 二、硬关键字保护对比

### 公共关键字（4 语言都禁止作标识符）

| 关键字 | ArkTS | Java | Swift | TypeScript |
|-------|-------|------|-------|-----------|
| class | ❌ | ❌ | ❌ | ❌ |
| const | ❌ | (Java 无 const，但有 final) | ❌ | ❌ |
| if/else/while/for | ❌ | ❌ | ❌ | ❌ |
| new | ❌ | ❌ | ❌ | ❌ |
| return/break/continue | ❌ | ❌ | ❌ | ❌ |
| try/catch/throw | ❌ | ❌ | ❌ | ❌ |
| this/super | ❌ | ❌ | (super 软关键字) | ❌ |
| true/false/null | ❌ | ❌ | ❌ | ❌ |
| instanceof | ❌ | ❌ | (Swift 用 `is`) | ❌ |
| typeof | ❌ | (Java 无) | (Swift 无) | ❌ |

---

## 三、类型关键字对比 ⭐⭐⭐

### 主要差异

| 类型关键字 | ArkTS | Java | Swift | TypeScript |
|----------|-------|------|-------|-----------|
| int / Int | ❌ 都保留 | int 保留，Int 普通 | Int 不保留（类型名）| 都可作标识符 |
| string / String | ❌ 都保留 | String 普通 | String 不保留 | 都可作标识符 |
| boolean / Boolean | ❌ 都保留 | boolean 保留 | Bool 不保留 | 都可作标识符 |
| byte / short / long / float / double | ❌ 主名+别名都保留 | 仅小写保留 | N/A | 都可作标识符 |
| Object / object | ❌ 都保留 | Object 普通 | Any 关键字 | object 内置 |
| char / Char | ❌ 都保留 | char 保留 | N/A | (TS 无 char) |
| bigint / BigInt | ❌ 都保留 | (无 bigint) | (无 bigint) | bigint 内置类型 |

**关键差异：** ArkTS 把类型名的**主名和别名都设为关键字**，而其他语言通常只保留小写形式。

### TypeScript 兼容性问题

```typescript
// TypeScript: 合法
let int: number = 1
let string: string = ""

// ArkTS: 编译失败
let int: int = 1     // ❌
let string: string = ""  // ❌
```

---

## 四、软关键字对比

| 软关键字 | ArkTS | Java | Swift | TypeScript |
|--------|-------|------|-------|-----------|
| catch | ✅ (硬+软重复) | 硬 | (try-catch 同) | ✅ |
| declare | ✅ | (Java 无) | (Swift 无) | ✅ |
| finally | ✅ | 硬 | 硬 | ✅ |
| from | ✅ (import) | (Java 无) | (Swift 无) | ✅ |
| get / set | ✅ | (Java 无 get/set) | ✅ | ✅ |
| keyof | ✅ | (Java 无) | (Swift 无) | ✅ |
| module | ✅ (deprecated) | (Java 用 module-info)| (Swift 用 import) | ✅ |
| namespace | ✅ | (Java 无) | (Swift 无) | ✅ |
| of | ✅ (for-of) | (Java 无 of) | (Swift for-in) | ✅ |
| out | ✅ (协变) | (Java 用 ?) | (Swift 协变) | ✅ |
| readonly | ✅ | (Java 用 final) | ✅ (let) | ✅ |
| type | ✅ (type alias) | (Java 无) | ✅ (typealias) | ✅ |

**评价：** ArkTS 软关键字完全继承 TypeScript，与 Java/Swift 差异较大。

---

## 五、独特设计 ⭐

### ArkTS 独有：catch 同时为硬+软关键字

**spec 表 1（硬关键字）和表 3（软关键字）都列出 `catch`**

**实测：** `catch` 仅在 try-catch 上下文使用，作为硬关键字保护。

**评价：** Spec 文档矛盾，需澄清。

### ArkTS 独有：未来保留 `var` ⭐⭐⭐

**ArkTS：** `var` 列为未来保留软关键字，但当前作变量声明会失败（用例 048）。

**对比：**
| 语言 | var |
|------|-----|
| ArkTS | ❌ 反向用例（沿袭 TS no-var 规则）|
| Java | ✅ Java 10+ |
| Swift | ✅ 可变变量声明 |
| TypeScript | ⚠️ 可用但建议 let/const |

**评价：** ArkTS 显著背离 Swift（var 是常用），与 TypeScript 一致禁用。

---

## 六、大小写敏感性对比

| 维度 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| 大小写敏感 | ✅ | ✅ | ✅ | ✅ |
| `Class` 可作标识符 | ✅ | ✅ | ✅ | ✅ |
| `LET` 可作标识符 | ✅ | ✅ | ✅ | ✅ |
| `Int` 可作标识符 | ❌ (是关键字) | ✅ | ✅ | ✅ |

---

## 七、综合评分

| 维度 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| 关键字数量 | ⭐⭐ (最多 82) | ⭐⭐⭐⭐ (54) | ⭐⭐ | ⭐⭐⭐ (~70) |
| 类型保护严格度 | ⭐⭐⭐⭐⭐ (主名+别名) | ⭐⭐⭐ (仅小写) | ⭐⭐⭐⭐ | ⭐⭐ (类型不是关键字) |
| 软关键字灵活度 | ⭐⭐⭐⭐⭐ (沿袭 TS) | ⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| TS 兼容性 | ⭐⭐ (类型关键字阻碍) | ⭐ | ⭐ | ⭐⭐⭐⭐⭐ |
| Spec 清晰度 | ⭐⭐⭐ (catch 矛盾) | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ |

---

## 八、核心结论

| 角度 | 结论 |
|------|------|
| **关键字数量** | ArkTS (82) > TS (70) > Java/Swift (~50) |
| **类型保护** | ArkTS 最严（主名+别名）|
| **TS 兼容** | ArkTS 类型关键字阻碍 TS 代码迁移 |
| **未来扩展** | ArkTS 准备：is/memo/struct/var/yield |

### 关键启示

1. **ArkTS 类型保护双重锁**：`int` 和 `Int` 都是关键字，TS 用户需重命名所有冲突变量
2. **软关键字完全 TS 化**：13 个软关键字与 TS 一致，便于 ArkUI/装饰器迁移
3. **var 设计冲突**：列为未来保留但当前用作 declaration 失败（用例 048）
4. **catch 文档冲突**：spec 表 1 和表 3 同时出现 catch，需统一

### ArkTS 设计建议

1. **修复 spec 矛盾**：catch 只应在硬关键字表
2. **类型关键字别名考虑放宽**：仅保留小写（int），允许大写（Int）作类型而非关键字（参考 Java 设计）
3. **var 关键字定位明确**：要么完全删除（不列在表 4），要么实现支持
4. **提供迁移工具**：自动重命名 `int`/`string`/`boolean` 等冲突变量

---

## 九、对应规范文档

| 语言 | 规范来源 |
|------|---------|
| ArkTS | ArkTS Static Language Specification, §2.7 Keywords |
| Java | Java Language Specification SE21, §3.9 Keywords |
| Swift | The Swift Programming Language (Swift 5.x), Lexical Structure - Keywords |
| TypeScript | ECMAScript 2023 Language Specification, §12.7 Keywords |
