/**
 * @id EXP_07_21_06_022_FAIL_BOOLEAN
 * @expect compile-fail
 * @section 7.21.6
 * @design 验证 boolean 类型一元负号报编译时错误。
 * @note 反向用例：-boolean 应报编译时错误
 */
function test_boolean_unary_minus(): void {
    let b: boolean = true;
    let x = -b;
}
