/**
 * @id EXP_07_21_07_022_FAIL_BOOLEAN
 * @expect compile-fail
 * @section 7.21.7
 * @design 验证 ~boolean 应报编译时错误
 * @note 反向用例：boolean 类型不支持 ~
 */
function testBooleanComplement(): void {
    let b: boolean = true
    let r: int = ~b
}

function main(): void {
    testBooleanComplement()
    console.log("verified")
}
