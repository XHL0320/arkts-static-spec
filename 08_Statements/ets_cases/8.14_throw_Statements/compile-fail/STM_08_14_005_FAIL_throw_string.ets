/**
 * @id STM_08_14_005_FAIL_throw_string
 * @expect compile-fail
 * @section 8.14
 * @design 测试抛出string类型表达式，验证非Error类型导致编译错误
 * @note 字符串类型不可赋值给Error，应产生编译时错误
 */

function testThrowString(): void {
    throw "this is a string, not an error";
}
