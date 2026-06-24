# 三环境实测报告 — 15.5 Invariance, Covariance, Contravariance

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 13/13 ✅
- compile-fail: 9/9 ✅
- runtime: 2/2 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 泛型不变性: ✅
  - 返回类型协变 (covariant return): ✅
  - 参数逆变 (wildcard ? super): ✅
  - use-site variance (? extends / ? super): ✅ (Java 特有，ArkTS 不支持)

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 泛型不变性: ✅
  - 返回类型协变: ✅
  - 函数类型参数逆变: ✅
  - declaration-site 变型 (泛型 where 子句): ✅ (Swift 特有，ArkTS 不支持)
