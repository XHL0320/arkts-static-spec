/**
 * @id STM_08_04_007_FAIL_reassign_const
 * @expect compile-fail
 * @section 8.4
 * @design 测试const常量重新赋值编译错误
 * @note const声明的常量不可重新赋值，否则产生编译错误
 */
function testReassignConst(): void {
    const maxValue: int = 100;
    maxValue = 200;
}
