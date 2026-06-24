# 三环境实测报告 — 15.13 Static Initialization

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 9/9 ✅
- compile-fail: 6/6 ✅
- runtime: 12/12 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 静态字段初始化: ✅
  - 静态字段顺序初始化 (x=42, y=x+1=43): ✅

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 静态属性初始化 (static let): ✅
  - 静态属性顺序初始化: ✅
