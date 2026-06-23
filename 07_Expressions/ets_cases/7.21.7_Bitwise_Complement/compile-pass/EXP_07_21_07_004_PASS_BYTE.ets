/**
 * @id EXP_07_21_07_004_PASS_BYTE
 * @expect compile-pass
 * @section 7.21.7
 * @design 验证 ~byte 拓宽为 int，结果类型为 int
 * @note 正向用例：~byte → int 拓宽
 */
function testByteComplement(): void {
    let x: byte = 2
    let r: int = ~x
}

function main(): void {
    testByteComplement()
    console.log("verified")
}
