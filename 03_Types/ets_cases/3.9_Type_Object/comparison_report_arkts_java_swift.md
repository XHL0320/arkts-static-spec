# 3.9 Type Object - ArkTS vs Java vs Swift

## 一、Object 概念对比

| 维度 | ArkTS Object | Java Object | Swift AnyObject |
|------|-------------|-------------|------------------|
| 顶类型地位 | 除 nullish/never 外 | 所有引用类型 | 所有 class 类型 |
| 接受 null | ❌ | ✅ | ❌（需 AnyObject?） |
| 接受原始类型 | ✅（装箱）| ✅（装箱）| ❌（仅 class）|
| 内置方法 | toString 等 | toString/equals 等 | 无（class 自定义）|

## 二、关键差异

| 特性 | ArkTS | Java | Swift |
|------|-------|------|-------|
| Object 与 Any 区分 | ✅（Any > Object）| ❌（仅 Object）| ✅（Any > AnyObject）|
| 装箱透明 | ✅ | ✅（Java 5+）| ❌ |

## 三、综合评分

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 顶类型清晰度 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| null 安全 | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐⭐⭐ |
| 通用性 | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
