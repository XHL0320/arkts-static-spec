# 三环境实测报告 — 15.1 Semantic Essentials

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 16/16 ✅
- compile-fail: 8/8 ✅
- runtime: 2/2 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 数值拓宽 int→double: ✅ (Java 隐式转换)
  - 字符串拼接: ✅
  - 赋值上下文子类型: ✅

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 数值拓宽: ✅ (需显式 Double(i))
  - 字符串插值: ✅
  - 赋值上下文: ✅
