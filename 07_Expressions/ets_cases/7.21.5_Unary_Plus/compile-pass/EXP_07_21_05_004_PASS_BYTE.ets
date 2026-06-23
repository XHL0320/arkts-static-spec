/**
 * @id EXP_07_21_05_004_PASS_BYTE
 * @expect compile-pass
 * @section 7.21.5
 * @design 验证 byte 类型一元正号编译通过。
 *         byte 结果拓宽为 int，可赋值给 int 变量。
 * @note 正向用例：+byte → int 拓宽
 */
function test_byte_unary_plus(): void {
    let x: byte = 10;
    let y: int = +x;  // byte → int widening
}
