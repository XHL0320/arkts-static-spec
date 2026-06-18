/**
 * @id STM_08_14_007_FAIL_throw_undefined
 * @expect compile-fail
 * @section 8.14
 * @design 测试抛出undefined，验证undefined不允许抛出导致编译错误
 * @note undefined不能作为throw表达式，应产生编译时错误
 */

function testThrowUndefined(): void {
    throw undefined;
}
