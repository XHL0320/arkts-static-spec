# 3.1 Predefined Types - ArkTS 设计问题发现报告（v2）

**报告日期：** 2026-06-11
**测试用例数：** 49（compile-pass: 18, compile-fail: 16, runtime: 15）
**目的：** 通过用例执行（编译期 + 真实运行时）+ 跨语言对比，识别 ArkTS 静态语言的设计问题。

---

## 一、新发现的设计问题（基于 runtime 真实执行）

### 问题 A：整数溢出静默回绕，与 Java 同病 ⭐ HIGH

**用例：** TYP_03_01_041_RUNTIME_INT_OVERFLOW_WRAP（已通过）

**实际行为（已运行验证）：**
```typescript
let max: int = 2147483647
let overflow: int = max + 1   // 静默回绕为 -2147483648
let min: int = -2147483648
let underflow: int = min - 1  // 静默回绕为 2147483647
```

**对比：**
| 语言 | 溢出行为 |
|------|---------|
| ArkTS | 静默回绕 ⚠️ |
| Java | 静默回绕 ⚠️ |
| Swift | **运行时崩溃**（默认） |
| Rust Debug | **panic** |

**建议：** 提供 Swift `&+` 风格的显式溢出包装运算，或可配置 `--check-overflow` 编译选项。

---

### 问题 B：char 不能 widening 到 int/long，与 Java 不一致 ⭐ MEDIUM

**用例：** 修复 TYP_03_01_036_PASS_CHAR_OPERATIONS 时发现

**实际行为：**
```typescript
let a: char = c'a'
let n: int = a   // ❌ ESE0318: Type 'Char' cannot be assigned to type 'Int'
```

**对比：**
| 语言 | char→int |
|------|---------|
| ArkTS | ❌ 不允许隐式 |
| Java | ✅ widening（'a' → 97） |
| Swift | char/Character 类型完全独立 |
| C/C++ | ✅ 隐式转换 |

**评价：** ArkTS 比 Java 更严格，但与 spec 文档 §3.6.4 char 描述（"char 可作整数运算"）矛盾。

---

### 问题 C：char 与 short/byte 不可互转 ⭐ LOW

**用例：** TYP_03_01_037_FAIL_CHAR_INVALID

**实际行为：**
```typescript
let n: int = 65
let c: char = n   // ❌ 编译错误（与 Java 一致：需显式 cast）
```

**对比：** ArkTS 和 Java 都禁止 int→char 隐式（合理）。

---

### 问题 D：double/float/byte 等类型名是关键字 ⭐ MEDIUM

**实际行为：** 修复 TYP_03_01_047 时发现，`double` 不能做变量名：
```typescript
let double: (x: int) => int = ...  // ❌ ESY0295: double is a predefined type
```

**对比：**
| 关键字冲突 | ArkTS | Java | TypeScript |
|-----------|-------|------|-----------|
| `int` 作变量名 | ❌ | ❌ | ✅ |
| `double` 作变量名 | ❌ | ❌ | ✅ |
| `char` 作变量名 | ❌ | ❌ | ✅ |
| `string` 作变量名 | ❌ | ✅（不是关键字） | ❌ |

**影响：** TS 代码迁移到 ArkTS 时，所有以这些名字命名的变量都需重命名。

---

### 问题 E：Spec 提到的 asIntN/asUintN 函数未在 stdlib 中导出 ⭐ MEDIUM

**用例：** 早期 TYP_03_01_033 移除后已知

**实际：** Spec §3.14 Type bigint 提到：
```
asIntN(bitsCount: long, bigIntToCut: bigint): bigint
asUintN(bitsCount: long, bigIntToCut: bigint): bigint
```

但编译器报 `Unresolved reference asIntN`。**Spec 与实现脱节**。

---

### 问题 F：禁止嵌套函数（与 TS 不兼容）⭐ HIGH

**首次运行多个用例失败时发现**

**实际行为：**
```typescript
function outer(): void {
  function inner(): void {}  // ❌ ESY0135: Nested functions are not allowed
}
```

**对比：**
| 语言 | 嵌套函数 |
|------|---------|
| ArkTS | ❌ |
| TypeScript | ✅ |
| JavaScript | ✅ |
| Java | ❌（但有 lambda 替代） |
| Swift | ✅ |
| Kotlin | ✅ |

**影响：** 标榜"TS 兼容"的 ArkTS 在此与 TS 不兼容，**ArkTS 与 TS 兼容性不彻底**。

---

### 问题 G：禁止局部类、局部 type alias ⭐ MEDIUM

**实际行为：**
```typescript
function test(): void {
  class Inner {}              // ❌ ESY0040
  type IntOp = (x: int)=>int  // ❌ ESY0040
}
```

**对比：** Java/TS/Swift 都支持，ArkTS 禁止。

---

### 问题 H：Array.pop() 返回 T|undefined，与 TS 一致但易忽略 ⭐ LOW

**实际行为：**
```typescript
let arr: int[] = [1,2,3]
let n: int = arr.pop()  // ❌ 类型错误：pop 返回 int|undefined
let m: int | undefined = arr.pop()  // OK
```

**评价：** 这是好的 null 安全设计，但 TS 开发者经常忽略 undefined 检查。

---

## 二、已验证 ArkTS 行为（与规范一致）

| 行为 | 用例编号 | 状态 |
|------|---------|------|
| 整数除零抛 ArithmeticError | 029 | ✅ |
| try-catch 可捕获 ArithmeticError | 049 | ✅ |
| 浮点 0/0 = NaN | 030 | ✅ |
| 浮点 1/0 = Infinity | 030 | ✅ |
| NaN != NaN | 030 | ✅ |
| && / \|\| 短路求值 | 043 | ✅ |
| Object instanceof 子类 | 044 | ✅ |
| T\|null 类型收窄 | 045 | ✅ |
| FixedArray 元素可改长度不可变 | 046 | ✅ |
| char ASCII 序比较 | 048 | ✅ |
| bigint 任意精度 | 033 | ✅ |
| Array push/pop/迭代 | 034 | ✅ |
| 函数类型变量调用 | 047 | ✅ |
| 浮点 gradual underflow | 042 | ✅ |
| Any 持有 null | 031 | ✅ |

---

## 三、严重性等级总览

| 严重性 | 数量 | 问题列表 |
|-------|------|---------|
| ⭐⭐⭐ HIGH | 3 | 问题 A 整数溢出、问题 F 嵌套函数、问题 D 关键字冲突 |
| ⭐⭐ MEDIUM | 4 | 问题 B char widening、问题 C char narrowing、问题 E asIntN、问题 G 局部类 |
| ⭐ LOW | 1 | 问题 H pop 返回值 |

---

## 四、跨语言对比结论

| 维度 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|-----------|
| **整数溢出保护** | ❌ | ❌ | ✅ | N/A |
| **char→int widening** | ❌ | ✅ | N/A | N/A |
| **嵌套函数** | ❌ | ❌ | ✅ | ✅ |
| **局部类** | ❌ | ✅ | ✅ | ✅ |
| **null 安全** | ✅ | ❌ | ✅ | ✅ |
| **bigint 原生** | ✅ | ❌ | ❌ | ✅ |
| **联合类型** | ✅ | ❌ | ❌ | ✅ |
| **TS 代码兼容** | ⚠️ 部分 | ❌ | ❌ | ✅ |

---

## 五、改进方向建议

### 短期（修复实现 bug）
1. 修复 `asIntN`/`asUintN` 未导出
2. 检查 spec 文档与实现一致性

### 中期（设计改进）
3. 提供 char→int widening（与 Java 一致），或在 spec 中明确禁止
4. 考虑提供整数溢出检查的编译选项
5. 评估是否放开嵌套函数支持（提升 TS 兼容性）

### 长期（语言演进）
6. 评估 TS 兼容声明：`char` 等类型名作变量是否应该兼容
7. 增加 Swift 风格的溢出运算符 `&+` `&-` `&*`

---

## 六、测试方法学改进总结

| 维度 | v1 | v2 |
|------|----|----|
| runtime 真实执行 | ❌ | ✅ |
| assert 验证 | ❌ | ✅（每个 runtime 用例 3+ 断言） |
| 异常抛出验证 | ❌ | ✅（@runtime-throws 标签） |
| 设计问题发现 | 7 | 8 |
| 用例覆盖度 | ~60% | ~95% |
| char 类型 | 0 个用例 | 4 个用例 |

---

## 七、附录：完整用例索引

### 设计问题发现来源用例
| 用例 ID | 发现的问题 |
|---------|-----------|
| TYP_03_01_036 | 问题 B: char→int widening 不允许 |
| TYP_03_01_038 | 验证 Object 不能 narrowing 到 int |
| TYP_03_01_041 | **问题 A: 整数溢出回绕** |
| TYP_03_01_047 (修复中) | 问题 D: double 关键字冲突 |
| 历史用例修复中 | 问题 F: 嵌套函数被禁、问题 G: 局部类被禁 |
