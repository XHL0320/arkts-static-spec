# 三环境实测报告 — 15.8 Smart Casts and Smart Types

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 37/37 ✅
- compile-fail: 21/21 ✅
- runtime: 5/5 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - instanceof 窄化需显式转型: ✅ (ArkTS 自动窄化)
  - null 检查: ✅
  - 控制流窄化: ✅
  - typeof 等价 (instanceof + 转型): ✅

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 可选绑定 as? 实现类型窄化: ✅ (ArkTS 自动窄化)
  - 可选绑定 nil 检查: ✅
  - 控制流窄化: ✅
