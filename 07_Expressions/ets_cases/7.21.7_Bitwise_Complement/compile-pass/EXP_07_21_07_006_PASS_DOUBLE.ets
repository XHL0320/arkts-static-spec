/**
 * @id EXP_07_21_07_006_PASS_DOUBLE
 * @expect compile-pass
 * @section 7.21.7
 * @design 验证 ~double 截断为 long，结果类型为 long
 * @note 正向用例：~double → long（double 先截断为 long）
 */
function testDoubleComplement(): void {
    let x: double = 2.5
    let r: long = ~x
}

function main(): void {
    testDoubleComplement()
    console.log("verified")
}
