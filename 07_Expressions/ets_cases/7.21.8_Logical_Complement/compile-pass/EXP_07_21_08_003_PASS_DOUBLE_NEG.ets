/**
 * @id EXP_07_21_08_003_PASS_DOUBLE_NEG
 * @expect compile-pass
 * @section 7.21.8
 * @design 验证 !!expr 双重求反编译通过，结果 boolean
 * @note 正向用例：!!boolean 双重取反
 */
function testDoubleNeg(): void {
    let a: boolean = !!true
    let b: boolean = !!false
    let x: boolean = true
    let r: boolean = !!x
}

function main(): void {
    testDoubleNeg()
    console.log("verified")
}
