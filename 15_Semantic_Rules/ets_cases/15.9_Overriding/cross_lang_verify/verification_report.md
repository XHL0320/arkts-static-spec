# 三环境实测报告 — 15.9 Overriding

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 19/19 ✅
- compile-fail: 11/11 ✅
- runtime: 5/5 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 返回类型协变: ✅
  - @Override 注解: ✅
  - 接口方法覆盖: ✅
  - 多态分派 (vtable): ✅
  - 参数类型不变性 (override 中不变): ✅

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 返回类型协变: ✅
  - override 关键字: ✅
  - 协议方法覆盖: ✅
  - 多态分派: ✅
  - 参数类型不变性: ✅
