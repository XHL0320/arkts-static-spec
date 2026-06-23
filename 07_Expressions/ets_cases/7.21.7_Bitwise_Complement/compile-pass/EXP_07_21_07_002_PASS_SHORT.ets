/**
 * @id EXP_07_21_07_002_PASS_SHORT
 * @expect compile-pass
 * @section 7.21.7
 * @design 验证 ~short 拓宽为 int，结果类型为 int
 * @note 正向用例：~short → int 拓宽
 */
function testShortComplement(): void {
    let x: short = 2
    let r: int = ~x
}

function main(): void {
    testShortComplement()
    console.log("verified")
}
