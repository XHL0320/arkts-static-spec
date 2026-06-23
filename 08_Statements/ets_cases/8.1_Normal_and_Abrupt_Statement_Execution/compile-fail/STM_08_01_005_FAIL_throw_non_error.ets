/**
 * @id STM_08_01_005_FAIL_throw_non_error
 * @expect compile-fail
 * @section 8.1
 * @design 验证抛出非 Error 类型的值导致编译错误：throw 语句异常完成时只能抛出 Error 或其子类
 * @note ArkTS 只允许 throw Error 类型或其子类型，throw 字面量/基本类型值应产生编译错误
 */
function testThrowNonError(): void {
    throw 42;
}
