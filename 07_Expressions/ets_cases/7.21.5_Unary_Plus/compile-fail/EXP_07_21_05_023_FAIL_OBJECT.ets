/**
 * @id EXP_07_21_05_023_FAIL_OBJECT
 * @expect compile-fail
 * @section 7.21.5
 * @design 验证 Object 类型一元正号报编译时错误。
 *         Object 不可转换为数值类型。
 * @note 反向用例：+Object 应报编译时错误
 */
function test_object_unary_plus(): void {
    let o: Object = "not a number";
    let x = +o;
}
