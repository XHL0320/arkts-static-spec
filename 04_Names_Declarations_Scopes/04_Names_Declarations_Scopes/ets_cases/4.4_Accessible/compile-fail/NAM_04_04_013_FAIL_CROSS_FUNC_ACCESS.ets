/**
 * @id NAM_04_04_013_FAIL_CROSS_FUNC_ACCESS
 * @expect compile-fail
 * @section 4.4
 * @design 跨函数作用域访问
 * @note 反向用例：验证一个函数引用另一个函数内局部变量导致编译错误（函数隔离）
 */
function first(): void {
    let secret: number = 99;
}
function second(): void {
    let leaked: number = secret;
}
