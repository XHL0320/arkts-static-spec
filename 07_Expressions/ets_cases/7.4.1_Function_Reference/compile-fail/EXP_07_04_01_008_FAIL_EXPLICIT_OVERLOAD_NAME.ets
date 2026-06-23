/**
 * @id EXP_07_04_01_008_FAIL_EXPLICIT_OVERLOAD_NAME
 * @expect compile-fail
 * @section 7.4.1
 * @design 显式重载名称引用：验证显式重载名称作为引用应产生编译时错误
 * @note 反向用例：foo 是显式重载名称，作为引用应报编译时错误
 */
function foo1(n: number): void {}
function foo2(s: string): void {}
overload foo { foo1, foo2 }

let x = foo  // Compile-time error: explicit overload name cannot be used as reference
