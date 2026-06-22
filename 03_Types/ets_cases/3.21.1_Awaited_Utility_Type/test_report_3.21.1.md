# 3.21.1 Awaited Utility Type - 测试执行报告

**执行日期：** 2026-06-18

## 统计

| 分类 | 总数 | 通过 | 失败 |
|------|------|------|------|
| compile-pass | 8 | 8 | 0 |
| compile-fail | 0 | 0 | 0 |
| runtime | 2 | 2 | 0 |
| **总计** | **10** | **10** | **0** |

## 覆盖点

- `Awaited<Promise<string>>` → string ✅
- `Awaited<Promise<Promise<number>>>` → number ✅
- `Awaited<Promise<Promise<number>|Promise<string>>>` → union ✅
- `Awaited<boolean|Promise<number>>` → boolean|number ✅
- `Awaited<Object>` → Object ✅
- `Awaited<Promise<(p: Promise<string>)=>Promise<number>>>` → 函数类型 ✅
- `Awaited<Promise<Array<Promise<number>>>>` → Array<Promise<number>> ✅
- `Awaited<T>` 协变 ✅

## 跨语言实测

- Java：N/A（无 compile-time Awaited）
- Swift：N/A（无 compile-time Awaited）