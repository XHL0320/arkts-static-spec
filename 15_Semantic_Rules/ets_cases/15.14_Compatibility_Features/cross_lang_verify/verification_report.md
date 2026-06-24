# 三环境实测报告 — 15.14 Compatibility Features

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 28/28 ✅
- compile-fail: 2/2 ✅
- runtime: 14/14 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 条件上下文需 boolean (ArkTS 允许非布尔真值): ✅ (差异点)
  - &&/|| 返回 boolean (ArkTS 返回操作数): ✅ (差异点)
  - 三元表达式返回公共超类型: ✅
  - 真值表需显式比较: ✅

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 条件上下文需 Bool (ArkTS 允许非布尔真值): ✅ (差异点)
  - &&/|| 返回 Bool (ArkTS 返回操作数): ✅ (差异点)
  - 三元表达式两侧类型必须一致: ✅
  - 真值表需显式比较: ✅
