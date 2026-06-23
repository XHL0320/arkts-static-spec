/**
 * @id EXP_07_21_03_004_PASS_BYTE
 * @expect compile-pass
 * @section 7.21.3
 * @design 验证 byte 类型前置递增编译通过。结果类型保持为 byte（不提升 int）。
 * @note 正向用例：byte 前置递增
 */
function test_byte_preinc(): void {
    let x: byte = 10;
    ++x;
}
