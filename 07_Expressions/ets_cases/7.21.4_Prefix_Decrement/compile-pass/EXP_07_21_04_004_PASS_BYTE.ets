/**
 * @id EXP_07_21_04_004_PASS_BYTE
 * @expect compile-pass
 * @section 7.21.4
 * @design 验证 byte 类型前置递减编译通过。结果类型保持为 byte（不提升 int）。
 * @note 正向用例：byte 前置递减
 */
function test_byte_predec(): void {
    let x: byte = 10;
    --x;
}
