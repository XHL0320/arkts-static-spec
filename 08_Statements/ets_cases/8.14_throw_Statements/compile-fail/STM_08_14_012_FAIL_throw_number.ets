/**
 * @id STM_08_14_012_FAIL_throw_number
 * @expect compile-fail
 * @section 8.14
 * @design 测试抛出number字面量，验证非Error类型导致编译错误
 * @note number类型不可赋值给Error，应产生编译时错误
 */

function testThrowNumber(): void {
    throw 42;
}
