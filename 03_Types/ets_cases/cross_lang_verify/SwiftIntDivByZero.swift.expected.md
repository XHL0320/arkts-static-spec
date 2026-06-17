// Swift 整数除零 10 场景 - 静态验证（基于 Swift 5.x 文档 + 公开示例）
// 注：本目录未安装 Swift 编译器，下列代码为预期行为说明

// f1: 字面量除零
// let c = 10 / 0   // ❌ 编译错误: division by zero

// f2: let 变量除零（Swift 编译器对 let 做常量传播）
// let a = 0
// let c = 10 / a   // ❌ 编译错误: division by zero

// f3: var 变量除零
// var a = 0
// let c = 10 / a   // ✅ 编译通过，运行时 fatal error: Division by zero in /

// f4: 函数返回字面量除零
// func helper() -> Int {
//     return 10 / 0   // ❌ 编译错误
// }

// f5: 函数内 let 常量
// func test() {
//     let a = 0
//     let c = 10 / a   // ❌ 编译错误
// }

// f6: 模块级 let 常量
// let moduleA = 0
// func test() {
//     let c = 10 / moduleA   // ❌ 编译错误（Swift 一致检测）
// }

// f7: 常量表达式
// let c = 10 / (1 - 1)   // ❌ 编译错误

// f8: 取模
// let c = 10 % 0   // ❌ 编译错误

// f9: BigInt（Swift 标准库无 bigint，需 Foundation.Decimal 或第三方）
// 无对应原生支持

// f10: byte 除零
// let a: Int8 = 10
// let b: Int8 = 0
// let c = a / b   // ❌ 编译错误（let b 已知是 0）

/*
预期结果汇总：

| 场景 | Swift 行为 |
|------|---------|
| s1 字面量 10/0 | ❌ 编译错误 |
| s2 let a=0; 10/a | ❌ 编译错误 |
| s3 var a=0; 10/a | ✅ 通过，运行时陷阱（fatal error）|
| s4 函数内字面量 | ❌ 编译错误 |
| s5 函数内 let | ❌ 编译错误 |
| s6 模块级 let | ❌ 编译错误 |
| s7 常量表达式 (1-1) | ❌ 编译错误 |
| s8 10%0 | ❌ 编译错误 |
| s9 BigInt | N/A（无原生）|
| s10 Int8 | ❌ 编译错误 |

运行时陷阱无法被 try/catch 捕获，进程立即终止。
*/