/**
 * @id EXP_07_21_03_023_FAIL_ENUM
 * @expect compile-fail
 * @section 7.21.3
 * @design 验证 enum 类型前置递增报编译时错误。
 * @note 反向用例：enum ++ 应报编译时错误
 */
enum Color { RED, GREEN, BLUE }

function test_enum_preinc(): void {
    let c: Color = Color.RED;
    ++c;
}
