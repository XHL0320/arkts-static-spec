/**
 * @id EXP_07_21_07_007_PASS_BIGINT
 * @expect compile-pass
 * @section 7.21.7
 * @design 验证 ~bigint 保持 bigint 类型
 * @note 正向用例：~bigint → bigint
 */
function testBigintComplement(): void {
    let x: bigint = 2n
    let r: bigint = ~x
}

function main(): void {
    testBigintComplement()
    console.log("verified")
}
