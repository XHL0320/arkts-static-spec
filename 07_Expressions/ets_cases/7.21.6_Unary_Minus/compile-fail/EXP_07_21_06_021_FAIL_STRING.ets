/**
 * @id EXP_07_21_06_021_FAIL_STRING
 * @expect compile-fail
 * @section 7.21.6
 * @design 验证 string 类型一元负号报编译时错误。
 * @note 反向用例：-string 应报编译时错误
 */
function test_string_unary_minus(): void {
    let s: string = "hello";
    let x = -s;
}
