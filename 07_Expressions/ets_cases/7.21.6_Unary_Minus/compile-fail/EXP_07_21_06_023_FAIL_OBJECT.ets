/**
 * @id EXP_07_21_06_023_FAIL_OBJECT
 * @expect compile-fail
 * @section 7.21.6
 * @design 验证 Object 类型一元负号报编译时错误。
 * @note 反向用例：-Object 应报编译时错误
 */
function test_object_unary_minus(): void {
    let o: Object = "not a number";
    let x = -o;
}
