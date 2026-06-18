/**
 * @id STM_08_14_013_FAIL_throw_boolean
 * @expect compile-fail
 * @section 8.14
 * @design 测试抛出boolean字面量，验证非Error类型导致编译错误
 * @note boolean类型不可赋值给Error，应产生编译时错误
 */

function testThrowBoolean(): void {
    throw true;
}
