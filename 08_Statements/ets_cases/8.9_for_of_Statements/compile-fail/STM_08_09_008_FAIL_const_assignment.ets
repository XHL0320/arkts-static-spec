/**
 * @id STM_08_09_008_FAIL_const_assignment
 * @expect compile-fail
 * @section 8.9
 * @design 对const声明的forVariable赋值，应产生编译时错误
 * @note const修饰的变量禁止在循环体中赋值，编译时报错
 */
function testConstAssignment(): void {
    for (const x of [1, 2, 3]) {
        x = 42;
    }
}
