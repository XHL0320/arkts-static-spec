/**
 * @id EXP_07_21_05_024_FAIL_NULL
 * @expect compile-fail
 * @section 7.21.5
 * @design 验证 null 一元正号报编译时错误。
 *         null 不是数值类型或 bigint。
 * @note 反向用例：+null 应报编译时错误
 */
function test_null_unary_plus(): void {
    let x = +null;
}
