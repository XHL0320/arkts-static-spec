/**
 * @id EXP_07_21_01_004_PASS_BYTE
 * @expect compile-pass
 * @section 7.21.1
 * @design 验证 byte 类型后置递增编译通过。
 *         byte 是数值类型，支持 ++ 操作符，结果类型为 byte（不提升为 int）。
 * @note 正向用例：byte 后置递增编译通过
 */
function test_byte_increment(): void {
    let x: byte = 10;
    x++;
}
