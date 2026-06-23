/**
 * @id NAM_04_07_06_100_FAIL_LOCAL_SHADOWS_PARAM
 * @expect compile-fail
 * @section 4.7.6
 * @design 局部变量与参数同名，应产生编译错误
 * @note 反向用例：函数体内不能声明与参数同名的变量
 */
function foo(x: int): void {
    let x: int = 1;
}
