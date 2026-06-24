# 三环境实测报告 — 15.12 Type Erasure

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 17/17 ✅
- compile-fail: 15/15 ✅
- runtime: 6/6 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 泛型擦除到 Object: ✅
  - 运行时泛型类型信息擦除: ✅
  - 数组保留运行时类型信息: ✅
  - instanceof 不能用于具体泛型类型: ✅

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 泛型 reified (无类型擦除): ✅ (与 ArkTS/Java 根本差异)
  - 运行时泛型类型信息保留: ✅ (type(of:) 可获取)
  - 数组保留完整泛型类型信息: ✅
