/**
 * @id EXP_07_21_08_002_PASS_VARIABLE
 * @expect compile-pass
 * @section 7.21.8
 * @design 验证 !boolean 变量编译通过
 * @note 正向用例：!boolean 变量
 */
function testVariable(): void {
    let x: boolean = true
    let r: boolean = !x
}

function main(): void {
    testVariable()
    console.log("verified")
}
