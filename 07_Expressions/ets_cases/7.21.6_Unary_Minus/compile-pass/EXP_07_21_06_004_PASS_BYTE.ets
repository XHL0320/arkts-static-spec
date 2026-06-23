/**
 * @id EXP_07_21_06_004_PASS_BYTE
 * @expect compile-pass
 * @section 7.21.6
 * @design 验证 byte 类型一元负号编译通过。byte 结果拓宽为 int。
 * @note 正向用例：-byte → int 拓宽
 */
function test_byte_unary_minus(): void {
    let x: byte = 10;
    let y: int = -x;
}
