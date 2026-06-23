/**
 * @id STM_08_02_007_FAIL_super_illegal
 * @expect compile-fail
 * @section 8.2
 * @design 测试super关键字在非法上下文中作为表达式语句应编译失败
 * @note super只能在派生类的方法或构造函数中使用，在普通函数中作为表达式语句应编译失败
 */
function testSuperIllegal(): void {
    let x: int = 0;
    x = super.prop;
}
