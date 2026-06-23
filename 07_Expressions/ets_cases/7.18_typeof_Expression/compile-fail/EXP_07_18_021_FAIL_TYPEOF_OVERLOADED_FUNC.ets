/**
 * @id EXP_07_18_021_FAIL_TYPEOF_OVERLOADED_FUNC
 * @expect compile-fail
 * @section 7.18
 * @design 验证 typeof 重载函数名产生编译时错误
 * @note 反向用例：typeof 重载函数或方法名 → compile-time error
 */
function foo(x: int): int;
function foo(x: string): string;
function foo(x: int | string): int | string {
    return x
}

function bar(): void {
    let t = typeof foo
}
