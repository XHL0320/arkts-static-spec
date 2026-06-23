/**
 * @id EXP_07_21_07_005_PASS_FLOAT
 * @expect compile-pass
 * @section 7.21.7
 * @design 验证 ~float 截断为 int，结果类型为 int
 * @note 正向用例：~float → int（float 先截断为 int）
 */
function testFloatComplement(): void {
    let x: float = 2.5 as float
    let r: int = ~x
}

function main(): void {
    testFloatComplement()
    console.log("verified")
}
