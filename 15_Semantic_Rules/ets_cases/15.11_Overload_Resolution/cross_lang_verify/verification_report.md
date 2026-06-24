# 三环境实测报告 — 15.11 Overload Resolution

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 30/30 ✅
- compile-fail: 17/17 ✅
- runtime: 39/39 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 按参数类型解析: ✅
  - 静态方法继承 (Java 继承到子类; ArkTS 不继承): ✅ (差异点)
  - 声明类型决定编译时解析: ✅
  - 覆盖方法 vtable 运行时派发: ✅
  - 等价签名 (Java 编译错误, ArkTS 警告 W2323): ✅ (差异点)

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 按静态类型编译时解析: ✅
  - 类方法继承: ✅
  - 覆盖方法 vtable 派发: ✅
