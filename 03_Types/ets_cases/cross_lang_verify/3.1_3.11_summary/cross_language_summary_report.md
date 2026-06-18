# 3.1~3.11 跨语言实测汇总报告

**日期：** 2026-06-17
**范围：** ArkTS 03_Types 章节 3.1~3.11 已完成子章节
**目标：** 对 ArkTS 用例中可在 Java/Swift 表达的关键语义进行跨语言实测对比

---

## 一、实测环境

| 语言 | 环境 | 状态 |
|------|------|------|
| ArkTS | es2panda + ark VM | ✅ 已按章节逐一执行 |
| Java | OpenJDK 1.8.0_492 | ✅ WSL 实测 |
| Swift | Swift 5.10 | ✅ WSL 实测 |

---

## 二、实测文件

| 文件 | 说明 |
|------|------|
| `JavaTypesSummaryTest.java` | Java 3.1~3.11 可比特性汇总实测 |
| `SwiftTypesSummaryTest.swift` | Swift 3.1~3.11 可比特性汇总实测 |
| `cross_language_summary_report.md` | 本报告 |

---

## 三、Java 实测结果

**命令：**
```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types/ets_cases/cross_lang_verify/3.1_3.11_summary
javac JavaTypesSummaryTest.java
java JavaTypesSummaryTest
```

**结果：**
```text
SUMMARY pass=32 fail=0
```

### Java 覆盖点

| 主题 | 验证结果 |
|------|---------|
| Numeric widening | ✅ |
| Integer bitwise/shift | ✅ |
| Integer overflow wrap | ✅ |
| Integer div zero throws ArithmeticException | ✅ |
| Floating NaN/Infinity | ✅ |
| Boolean operators | ✅ |
| Class/array reference shared | ✅ |
| Object.toString / boxed int | ✅ |
| Interface dispatch | ✅ |
| Enum values/valueOf | ✅ |
| Generic class | ✅ |
| Function<T,R> analog | ✅ |
| void only as return | ✅ |
| union/tuple/typealias/never/undefined/bigint literal | N/A（Java 无原生） |

---

## 四、Swift 实测结果

**命令：**
```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types/ets_cases/cross_lang_verify/3.1_3.11_summary
~/swift-5.10/usr/bin/swift SwiftTypesSummaryTest.swift
```

**结果：**
```text
SUMMARY pass=30 fail=0
```

### Swift 覆盖点

| 主题 | 验证结果 |
|------|---------|
| Numeric explicit widening | ✅ |
| Integer bitwise/shift | ✅ |
| Integer overflow only with &+ | ✅ |
| Floating NaN/Infinity | ✅ |
| Bool operators | ✅ |
| Class reference shared | ✅ |
| Array value semantics (COW) | ✅ |
| Any holds Int | ✅ |
| Protocol dispatch | ✅ |
| Enum allCases | ✅ |
| Generic struct | ✅ |
| Function type | ✅ |
| Void variable/generic/array | ✅ |
| Never exists | ✅ |
| union/bigint/undefined | N/A（Swift 无原生） |

---

## 五、三语言关键差异矩阵

| 特性 | ArkTS | Java 实测 | Swift 实测 |
|------|-------|----------|-----------|
| 整数 widening | ✅ 隐式 | ✅ 隐式 | ❌ 必须显式 |
| 整数溢出 | 静默回绕 | 静默回绕 | 默认 trap，`&+` 回绕 |
| 整数除零 | 编译期/运行时混合 | 运行时 ArithmeticException | 编译期/运行时 trap |
| 浮点除零 | Infinity/NaN | Infinity/NaN | inf/nan |
| bigint | ✅ 原生 | BigInteger 类 | 无原生 |
| boolean 与数值互转 | ❌ | ❌ | ❌ |
| Object/Any 顶类型 | Any/Object 分层 | Object | Any/AnyObject 分层 |
| Array 语义 | 引用语义 | 引用语义 | 值语义（COW） |
| Tuple | ✅ | ❌ | ✅ |
| Union | ✅ | ❌ | ❌ |
| Type alias | ✅ | ❌ | ✅ typealias |
| Function type | ✅ 原生 | Function<T,R> | ✅ 原生 |
| void 变量/泛型 | ✅ undefined | ❌ | ✅ () |
| never/Never | ✅ | ❌ | ✅ |

---

## 六、重要结论

1. **ArkTS 数值层次最接近 Java**：隐式 widening、整数回绕、位运算等基本一致
2. **Swift 数值系统最严格**：所有跨类型数值转换需显式，整数溢出默认 trap
3. **ArkTS 与 Swift 在现代类型表达上更接近**：tuple/function type/never/void as value
4. **Java 是传统 OOP 类型系统**：无 tuple/union/typealias/never/void-value
5. **ArkTS 的独特优势**：原生 bigint、union、string literal type、void=undefined
6. **ArkTS 的已知问题**：模块级 const 除零漏检、Any 字段访问与 spec 不一致

---

## 七、后续要求固化

从后续章节开始，每个章节除 ArkTS 自动化验证外，均需：

1. 为可对比特性生成 Java 实测代码
2. 为可对比特性生成 Swift 实测代码
3. 运行 Java/Swift 并记录输出
4. 在 comparison_report 中明确标注：
   - `✅ Java 实测`
   - `✅ Swift 实测`
   - 对无对应能力标注 `N/A`
