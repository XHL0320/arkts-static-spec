/**
 * @id EXP_07_21_06_024_FAIL_NULL
 * @expect compile-fail
 * @section 7.21.6
 * @design 验证 null 一元负号报编译时错误。
 * @note 反向用例：-null 应报编译时错误
 */
function test_null_unary_minus(): void {
    let x = -null;
}
