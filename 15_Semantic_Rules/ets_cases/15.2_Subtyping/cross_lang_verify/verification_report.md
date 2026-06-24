# 三环境实测报告 — 15.2 Subtyping

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 29/29 ✅
- compile-fail: 23/23 ✅
- runtime: 2/2 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 类继承子类型 Dog <: Animal: ✅
  - 泛型不变性: ✅
  - 函数类型子类型 (use-site variance ? super): ✅
  - 数组协变 (与 ArkTS FixedArray 一致): ✅

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 类继承子类型: ✅
  - 泛型不变性: ✅
  - 元组原生支持: ✅
  - 函数类型参数逆变: ✅
