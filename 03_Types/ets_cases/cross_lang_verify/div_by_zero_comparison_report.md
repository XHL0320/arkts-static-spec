# 除以 0 跨语言实测对比报告（v3 - 含 Java 真实执行）

**报告日期：** 2026-06-11
**测试范围：** ArkTS + Java + Swift（Swift 基于文档预期）
**实测环境：**
- ArkTS：es2panda + ark VM（WSL 实测）
- Java：OpenJDK 1.8.0_492（WSL 实测）
- Swift：未安装，基于 Swift 5.x 文档预期

---

## 一、ArkTS 整数除零 vs Java 实测对比

### 1.1 ArkTS 实测结果（10 场景）

| # | 场景 | ArkTS 编译期 | ArkTS 运行期 |
|---|------|-----------|-----------|
| 1 | `let c: int = 10 / 0`（字面量） | ❌ **编译错误 ESY0273** | - |
| 2 | `let a: int = 0; 10 / a` | ✅ 通过 | ❌ ArithmeticError |
| 3 | 函数返回 `10 / 0` | ❌ 编译错误 | - |
| 4 | 函数内 `const a = 0; 10/a` | ❌ 编译错误 | - |
| 5 | 模块级 `const a = 0; 10/a` | ✅ **通过（bug）** | ❌ ArithmeticError |
| 6 | `10 / (1-1)` 常量表达式 | ❌ 编译错误 | - |
| 7 | `10 % 0` 取模 | ❌ 编译错误 | - |
| 8 | bigint `10n / 0n` | ❌ ESY206401 | - |
| 9 | long 除零（变量）| ✅ 通过 | ❌ ArithmeticError |
| 10 | byte 除零（变量）| ✅ 通过 | ❌ ArithmeticError |

### 1.2 Java 实测结果（WSL 真实执行）

| # | 场景 | Java 编译期 | Java 运行期 |
|---|------|-----------|-----------|
| s1 | `int c = 10 / 0`（字面量） | ✅ **编译通过** | ❌ ArithmeticException: / by zero |
| s2 | `int a = 0; int c = 10/a` | ✅ 通过 | ❌ ArithmeticException |
| s3 | 函数返回 `10 / 0` | ✅ 通过 | ❌ ArithmeticException |
| s4 | 函数内 `final int a = 0; 10/a` | ✅ **通过** | ❌ ArithmeticException |
| s5 | 类 static `final int A = 0; 10/A` | ✅ **通过** | ❌ ArithmeticException |
| s6 | `10 / (1-1)` 常量表达式 | ✅ **通过** | ❌ ArithmeticException |
| s7 | `10 % 0` 取模 | ✅ **通过** | ❌ ArithmeticException |
| s8 | `long / 0L` | ✅ 通过 | ❌ ArithmeticException |
| s9 | BigInteger.ZERO.divide() | ✅ 通过 | ❌ ArithmeticException: BigInteger divide by zero |
| s10 | byte 除零（变量）| ✅ 通过 | ❌ ArithmeticException |

**Java 关键观察：**
- 🎯 **所有 10 个场景全部编译通过**
- 🎯 **运行时全部抛 ArithmeticException**（包括字面量 `10/0`）
- ✅ 完全符合 JLS §15.7.2（编译器不允许提前报错改变副作用顺序）
- ✅ 内部行为完全一致（无论 final/局部/常量表达式）

---

## 二、ArkTS 浮点除零 vs Java 实测对比

### 2.1 ArkTS 浮点除零实测（10 场景）

| # | 场景 | ArkTS 编译 | ArkTS 运行 |
|---|------|---------|---------|
| f1 | `5.0 / 0.0` | ✅ | `Infinity` |
| f2 | `-5.0 / 0.0` | ✅ | `-Infinity` |
| f3 | `0.0 / 0.0` | ✅ | `NaN` |
| f4 | `let a = 0.0; 5.0/a` | ✅ | `Infinity` |
| f5 | 函数内 `const a = 0.0` | ✅ | `Infinity` |
| f6 | 模块级 `const a = 0.0` | ✅ | `Infinity` |
| f7 | `5.0 / (1.0-1.0)` | ✅ | `Infinity` |
| f8 | `5.0 % 0.0` | ✅ | `NaN` |
| f9 | `5.0f / 0.0f` | ✅ | `Infinity` |
| f10 | `10 / 0.0` 混合 | ✅ | `Infinity` |

### 2.2 Java 浮点除零实测（WSL 真实执行）

| # | 场景 | Java 编译 | Java 运行 |
|---|------|---------|---------|
| f1 | `double c = 5.0 / 0.0` | ✅ | `Infinity` |
| f2 | `-5.0 / 0.0` | ✅ | `-Infinity` |
| f3 | `0.0 / 0.0` | ✅ | `NaN` |
| f4 | `double a = 0.0; 5.0/a` | ✅ | `Infinity` |
| f5 | 函数内 `final double A = 0.0` | ✅ | `Infinity` |
| f6 | 类 static `final double A = 0.0` | ✅ | `Infinity` |
| f7 | `5.0 / (1.0-1.0)` | ✅ | `Infinity` |
| f8 | `5.0 % 0.0` | ✅ | `NaN` |
| f9 | `float c = 5.0f / 0.0f` | ✅ | `Infinity` |
| f10 | `double c = 10 / 0.0` | ✅ | `Infinity` |

**关键观察：**
- 🎯 **ArkTS 与 Java 浮点除零行为 100% 一致**
- ✅ 都遵循 IEEE 754
- ✅ 都不做编译期检测
- ✅ 都不抛异常

---

## 三、三语言完整对比表

### 3.1 整数除零

| # | 场景 | ArkTS | Java（实测）| Swift（文档预期）|
|---|------|-------|----------|---------|
| 1 | 字面量 `10/0` | ❌ 编译错误 | ✅ 通过，运行时抛 | ❌ 编译错误 |
| 2 | `let a = 0; 10/a` | ✅ 通过，运行时抛 | ✅ 通过，运行时抛 | ❌ 编译错误（let 常量传播）|
| 3 | `var a = 0; 10/a` | N/A | ✅ 通过，运行时抛 | ✅ 通过，**陷阱（不可 catch）** |
| 4 | 函数内 `const/final a=0` | ❌ 编译错误 | ✅ 通过，运行时抛 | ❌ 编译错误 |
| 5 | **模块级 `const/final a=0`** | ✅ **通过（bug）** | ✅ 通过，运行时抛 | ❌ 编译错误 |
| 6 | 常量表达式 `(1-1)` | ❌ 编译错误 | ✅ 通过，运行时抛 | ❌ 编译错误 |
| 7 | `10 % 0` | ❌ 编译错误 | ✅ 通过，运行时抛 | ❌ 编译错误 |
| 8 | bigint `0n` | ❌ 编译错误 | BigInteger 抛 | N/A |
| 9 | 运行时异常类型 | ArithmeticError | ArithmeticException | **fatal error**（陷阱）|
| 10 | 可 try/catch | ✅ | ✅ | **❌ 不可** |

### 3.2 浮点除零（三语言一致）

| 场景 | ArkTS | Java | Swift |
|------|-------|------|-------|
| `5.0 / 0.0` | `Infinity` | `Infinity` | `inf` |
| `-5.0 / 0.0` | `-Infinity` | `-Infinity` | `-inf` |
| `0.0 / 0.0` | `NaN` | `NaN` | `nan` |
| `5.0 % 0.0` | `NaN` | `NaN` | `nan`（需 truncatingRemainder）|
| 编译期检测 | ❌ | ❌ | ⚠️ warning（可能）|
| 抛异常 | ❌ | ❌ | ❌ |

---

## 四、设计哲学三语言对比

### 4.1 编译期检测严格度

```
最严格                                     最宽松
─────────────────────────────────────────►
Swift              ArkTS              Java
所有 let/const     仅函数内 const + 字面量    完全不做
统一行为           内部不一致（bug）      统一行为
```

### 4.2 运行时安全性

```
最安全（可恢复）                          最严格（崩溃）
────────────────────────────────────────────►
Java = ArkTS                              Swift
ArithmeticException/Error                  fatal error
可 try/catch                              不可恢复
```

### 4.3 内部一致性

| 语言 | 整数除零内部一致 | 浮点除零内部一致 |
|------|---------------|---------------|
| **Java** | ✅ 全部运行时 | ✅ 全部 IEEE 754 |
| **Swift** | ✅ 全部编译错误或陷阱 | ✅ 全部 IEEE 754 |
| **ArkTS** | ❌ **模块级 const 不一致** | ✅ 全部 IEEE 754 |

---

## 五、关键发现确认

### 5.1 Java 实测确认的设计

✅ **Java JLS §15.7.2 的精神在实测中验证：**
> "no part of the division operation, including signaling of a divide-by-zero exception, may appear to occur before [operands evaluation]"

- 即使 `final int A = 0`，Java 编译器**也不**优化为编译错误
- 与 ArkTS 的"detected during compilation"策略完全不同
- 即使 `10 / 0` 字面量，Java 也允许编译通过（这与 ArkTS 形成鲜明对比）

### 5.2 ArkTS 设计 bug 确认

✅ **TYP-U 问题再次确认：**

| ArkTS 行为 | 与 Java 对比 | 与 Swift 对比 |
|----------|------------|------------|
| 字面量 `10/0` 编译错误 | 不同（Java 通过） | 相同（Swift 也错）|
| 函数内 const 编译错误 | 不同（Java 通过） | 相同（Swift 也错）|
| **模块级 const 编译通过** | 相同（Java 通过） | **不同（Swift 错）**|

**结论：ArkTS 的不一致明显** — 模块级 const 表现得像 Java，而函数内 const 表现得像 Swift。

---

## 六、Java 实测产物

### 6.1 Java 整数除零实测输出
```
===== Java Integer Division by Zero =====
s1: ArithmeticException - / by zero
s2: ArithmeticException - / by zero
s3: ArithmeticException - / by zero
s4: ArithmeticException - / by zero
s5: ArithmeticException - / by zero
s6: ArithmeticException - / by zero
s7: ArithmeticException - / by zero
s8: ArithmeticException - / by zero
s9: ArithmeticException - BigInteger divide by zero
s10: ArithmeticException - / by zero
```

### 6.2 Java 浮点除零实测输出
```
===== Java Floating-Point Division by Zero =====
f1: Infinity
f2: -Infinity
f3: NaN
f4: Infinity
f5: Infinity
f6: Infinity
f7: Infinity
f8: NaN
f9: Infinity
f10: Infinity
```

---

## 七、源代码位置

| 文件 | 用途 |
|------|------|
| `JavaIntDivByZero.java` | Java 整数除零 10 场景源码（已验证）|
| `JavaFloatDivByZero.java` | Java 浮点除零 10 场景源码（已验证）|
| `SwiftIntDivByZero.swift.expected.md` | Swift 整数除零预期行为（基于文档）|
| `SwiftFloatDivByZero.swift.expected.md` | Swift 浮点除零预期行为（基于文档）|

---

## 八、综合评分（基于实测）

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| **整数除零编译期检测** | ⭐⭐⭐（不一致）| ⭐ | ⭐⭐⭐⭐⭐ |
| **整数除零运行时安全** | ⭐⭐⭐⭐（可 catch）| ⭐⭐⭐⭐⭐（可 catch）| ⭐⭐（崩溃）|
| **浮点除零** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **内部一致性** | ⭐⭐（bug）| ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **spec 完整性** | ⭐⭐⭐（未明确传播范围）| ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |

---

## 九、ArkTS 改进建议（基于实测对比）

### 强烈建议

1. **修复模块级 const 检测漏洞**（TYP-U）
   - 当前不一致是明显的实现 bug
   - 推荐方案：与 Swift 一致（所有 const 都做检测）
   - 备选方案：与 Java 一致（完全不做检测）

2. **明确 spec §15.17.2 "detected during compilation" 范围**
   - 当前 spec 模糊，导致实现不一致
   - 应明确列出哪些情况触发编译期检测

### 一般建议

3. 考虑借鉴 Swift `&+` `&-` `&*` 显式溢出运算符
4. 文档化整数 vs 浮点除零行为差异

---

## 十、版本历史

| 版本 | 内容 |
|------|------|
| v1 | ArkTS 实测 + Spec 描述对比 |
| v2 | 三语言对比表（基于 spec） |
| **v3** | **Java 真实执行验证 + Swift 文档补充** |
