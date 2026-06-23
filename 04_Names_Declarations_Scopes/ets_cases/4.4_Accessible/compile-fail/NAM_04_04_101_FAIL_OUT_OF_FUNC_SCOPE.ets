/**
 * @id NAM_04_04_101_FAIL_OUT_OF_FUNC_SCOPE
 * @expect compile-fail
 * @section 4.4
 * @design 函数作用域外访问
 * @note 反向用例：验证函数外引用函数内局部变量导致编译错误（函数体作用域边界）
 */
function foo(): void {
    let localVar: number = 42;
}
let globalRef: number = localVar;
