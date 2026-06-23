/**
 * @id EXP_07_21_02_023_FAIL_ENUM
 * @expect compile-fail
 * @section 7.21.2
 * @design 验证 enum 类型后置递减报编译时错误。
 *         enum 不是数值类型，不可 --。
 * @note 反向用例：enum -- 应报编译时错误
 */
enum Color { RED, GREEN, BLUE }

function test_enum_decrement(): void {
    let c: Color = Color.RED;
    c--;
}
