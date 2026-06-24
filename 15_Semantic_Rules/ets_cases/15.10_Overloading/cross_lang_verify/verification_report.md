# 三环境实测报告 — 15.10 Overloading

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 22/22 ✅
- compile-fail: 22/22 ✅
- runtime: 5/5 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 按参数类型重载: ✅
  - 按参数数量重载: ✅
  - 构造函数重载: ✅
  - 仅返回类型不同不可重载: ✅

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 按参数类型重载: ✅
  - 按参数数量重载: ✅
  - 仅返回类型不同不可重载: ✅
