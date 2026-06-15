# 3.7 Reference Types - 设计问题报告

**测试用例：** 11

## 一、新发现问题

**无。**

## 二、验证 spec 一致性

- 14 种引用类型声明 ✅
- 多引用共享对象状态 ✅
- 数组引用语义 ✅
- 值 vs 引用对比 ✅

## 三、设计观察

### 观察：ArkTS 引用类型种类最丰富

ArkTS 包含 14 种引用类型，远多于 Java（约 5 种）和 Swift（约 8 种）。

| 维度 | ArkTS 独有 |
|------|----------|
| FixedArray 与 Array 区分 | ✅ |
| Union Type 一等 | ✅ |
| String Literal Type | ✅ |
| bigint 引用类型 | ✅ |

## 四、严重性

| 严重性 | 数量 |
|-------|------|
| HIGH | 0 |
| MEDIUM | 0 |
| LOW | 0 |
| 设计观察 | 1 |
