/**
 * @id STM_08_14_006_FAIL_throw_null
 * @expect compile-fail
 * @section 8.14
 * @design 测试抛出null，验证null不允许抛出导致编译错误
 * @note null不能作为throw表达式，应产生编译时错误
 */

function testThrowNull(): void {
    throw null;
}
