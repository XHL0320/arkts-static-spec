/**
 * @id EXP_07_21_01_023_FAIL_ENUM
 * @expect compile-fail
 * @section 7.21.1
 * @design 验证 enum 类型后置递增报编译时错误。
 *         enum 类型虽然底层可能为 int，但不是数值类型，不可 ++。
 * @note 反向用例：enum ++ 应报编译时错误
 */
enum Color { RED, GREEN, BLUE }

function test_enum_increment(): void {
    let c: Color = Color.RED;
    c++;
}
