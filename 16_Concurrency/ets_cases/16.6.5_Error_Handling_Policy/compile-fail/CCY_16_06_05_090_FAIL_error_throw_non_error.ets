/**
 * @id CCY_16_06_05_090_FAIL_error_throw_non_error
 * @expect compile-fail
 * @section 16.6.5
 * @design 抛出非 Error 类型对象
 * @note 反向用例：验证 throw 非 Error 类型应编译报错
 */
function main(): void {
    throw 42;
}
