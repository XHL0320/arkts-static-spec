/**
 * @id EXP_07_04_01_007_FAIL_OVERLOADED_FUNC_NAME
 * @expect compile-fail
 * @section 7.4.1
 * @design 隐式重载函数名引用：验证隐式重载函数名作为引用应产生编译时错误
 * @note 反向用例：bar 是隐式重载函数名，作为引用应报编译时错误
 */
function bar(n: number): void {}
function bar(s: string): void {}

let b = bar  // Compile-time error: overloaded function name cannot be used as reference
