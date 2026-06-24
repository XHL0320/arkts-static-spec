# 三环境实测报告 — 15.4 Assignability

**实测日期：** 2026-06-24
**实测环境：**
- ArkTS: es2panda + ark (static_core)
- Java: javac + java (SE 21)
- Swift: /opt/swift/usr/bin/swift (5.10)

## 实测结果

### ArkTS
- compile-pass: 17/17 ✅
- compile-fail: 11/11 ✅
- runtime: 2/2 ✅

### Java
- 编译运行: PASS ✅
- 关键验证:
  - 子类型赋值兼容: ✅
  - 数值拓宽 int→long→double: ✅
  - null 可赋值性 (引用类型): ✅
  - 接口实现赋值: ✅

### Swift
- 编译运行: PASS ✅
- 关键验证:
  - 子类型赋值: ✅
  - 数值转换需显式 (Int64(i)): ✅
  - nil 可赋值性 (Optional): ✅
