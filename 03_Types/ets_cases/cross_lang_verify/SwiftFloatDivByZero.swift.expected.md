// Swift 浮点除零 10 场景 - 静态验证（基于 Swift 5.x 文档）
// 注：未安装 Swift 编译器，下列为预期行为说明

/*
预期结果汇总（基于 IEEE 754）：

| 场景 | Swift 行为 |
|------|---------|
| f1: 5.0/0.0 | ✅ inf（可能 warning）|
| f2: -5.0/0.0 | ✅ -inf |
| f3: 0.0/0.0 | ✅ nan |
| f4: var a=0.0; 5.0/a | ✅ inf |
| f5: 函数内 let a=0.0 | ✅ inf（编译期可能 warning）|
| f6: 模块级 let a=0.0 | ✅ inf（编译期可能 warning）|
| f7: 5.0/(1.0-1.0) | ✅ inf（编译期可能 warning）|
| f8: 5.0.truncatingRemainder(dividingBy: 0.0) | ✅ nan |
| f9: Float32 5.0/0.0 | ✅ inf |
| f10: 10/0.0 → 必须显式 Double(10)/0.0 | ✅ inf |

注意：
1. Swift 浮点除零**不会**触发编译错误，最多 warning
2. 不会 fatal error / 陷阱（与整数除零相反）
3. 完全遵循 IEEE 754
4. truncatingRemainder 替代 % 操作符
*/

// Swift 浮点 % 不存在，使用 truncatingRemainder:
// let c = 5.0.truncatingRemainder(dividingBy: 0.0)   // nan