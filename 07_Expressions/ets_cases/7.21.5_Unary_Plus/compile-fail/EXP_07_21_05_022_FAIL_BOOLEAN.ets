/**
 * @id EXP_07_21_05_022_FAIL_BOOLEAN
 * @expect compile-fail
 * @section 7.21.5
 * @design 验证 boolean 类型一元正号报编译时错误。
 *         boolean 不可转换为数值类型。
 * @note 反向用例：+boolean 应报编译时错误
 */
function test_boolean_unary_plus(): void {
    let b: boolean = true;
    let x = +b;
}
