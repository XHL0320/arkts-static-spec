# 三环境实测报告 — 15.6 Compatibility of Call Arguments

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 15/15 ✅
- compile-fail: 13/13 ✅
- runtime: 6/6 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 子类型参数传递: ✅
  - 参数类型不匹配编译拒绝: ✅
  - 参数数量不匹配编译拒绝: ✅

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 子类型参数传递: ✅
  - 参数类型不匹配编译拒绝: ✅
