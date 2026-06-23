/**
 * @id EXP_07_21_02_004_PASS_BYTE
 * @expect compile-pass
 * @section 7.21.2
 * @design 验证 byte 类型后置递减编译通过。
 *         byte 结果类型保持为 byte（不提升为 int）。
 * @note 正向用例：byte 后置递减编译通过
 */
function test_byte_decrement(): void {
    let x: byte = 10;
    x--;
}
