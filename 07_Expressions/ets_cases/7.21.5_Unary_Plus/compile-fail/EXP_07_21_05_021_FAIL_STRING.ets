/**
 * @id EXP_07_21_05_021_FAIL_STRING
 * @expect compile-fail
 * @section 7.21.5
 * @design 验证 string 类型一元正号报编译时错误。
 *         string 不可转换为数值类型。
 * @note 反向用例：+string 应报编译时错误
 */
function test_string_unary_plus(): void {
    let s: string = "hello";
    let x = +s;
}
