# 3.11 Type void or undefined - 设计问题报告

**测试用例：** 20

## 一、本章节首次发现的设计问题

无。

## 二、验证 spec 一致性

- void 与 undefined 同一类型 ✅
- return undefined / return 空语句互通 ✅
- void/undefined 变量互赋值 ✅
- void 作为泛型实参 ✅
- void[] 数组 ✅
- 非 undefined 值拒绝 ✅

## 三、设计观察

### 观察：ArkTS void 比 Java void 表达力强

Java void 只能作为返回类型，ArkTS void 可作为普通类型、泛型实参、数组元素类型。

### 观察：ArkTS void 与 Swift Void 类似但值不同

| 语言 | Void 值 |
|------|--------|
| ArkTS | undefined |
| Swift | () 空元组 |

## 四、严重性

无问题。
