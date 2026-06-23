/**
 * @id EXP_07_21_08_001_PASS_BASIC
 * @expect compile-pass
 * @section 7.21.8
 * @design 验证 !true / !false 编译通过，结果类型 boolean
 * @note 正向用例：!boolean 字面量
 */
function testBasic(): void {
    let a: boolean = !true
    let b: boolean = !false
}

function main(): void {
    testBasic()
    console.log("verified")
}
