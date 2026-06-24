# 05 Generics — 三环境实测报告

**实测日期：** 2026-06-24
**实测环境：** ArkTS (es2panda + ark) / Java (javac + java SE 21) / Swift (5.10, /opt/swift/usr/bin/swift)

## 实测结果

### Java (Java_VarianceNestedCheck.java)
- 编译运行: PASS ✅
- 验证: 使用点变体编译通过

### Swift (Swift_VarianceNestedCheck.swift)
- 编译运行: PASS ✅
- 验证: 嵌套变体位正确识别

## 跨语言对比

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 泛型变体 | out/in 声明点 | ? extends/? super 使用点 | 默认不变 |
| 嵌套回调变体检查 | ❌ 未实现 | N/A | ✅ 正确识别 |
| 编译检查 | es2panda | javac | swiftc |
