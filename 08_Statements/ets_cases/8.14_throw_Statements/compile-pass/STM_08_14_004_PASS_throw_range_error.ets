/**
 * @id STM_08_14_004_PASS_throw_range_error
 * @expect compile-pass
 * @section 8.14
 * @design 测试抛出RangeError标准Error子类，验证标准Error子类通过编译
 * @note RangeError是Error的内置子类，赋值兼容，应当编译通过
 */

function testThrowRangeError(): void {
    throw new RangeError("range error message");
}
