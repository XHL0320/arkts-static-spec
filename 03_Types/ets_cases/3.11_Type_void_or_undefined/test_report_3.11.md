# 3.11 Type void or undefined - 测试执行报告

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 10 | 10 |
| compile-fail | 5 | 5 |
| runtime | 5 | 5 |
| **总计** | **20** | **20** |

🎯 一次通过率 100%

## 覆盖点
- void ≡ undefined ✅
- void/undefined 函数返回 ✅
- void/undefined 变量互赋值 ✅
- void/undefined 作为泛型参数 ✅
- void[] / Array<void> ✅
- 非 undefined 值拒绝 ✅