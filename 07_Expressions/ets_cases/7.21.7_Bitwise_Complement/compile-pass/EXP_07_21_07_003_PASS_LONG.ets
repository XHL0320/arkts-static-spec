/**
 * @id EXP_07_21_07_003_PASS_LONG
 * @expect compile-pass
 * @section 7.21.7
 * @design 验证 ~long 保持 long 类型
 * @note 正向用例：~long → long
 */
function testLongComplement(): void {
    let x: long = 10000000000
    let r: long = ~x
}

function main(): void {
    testLongComplement()
    console.log("verified")
}
