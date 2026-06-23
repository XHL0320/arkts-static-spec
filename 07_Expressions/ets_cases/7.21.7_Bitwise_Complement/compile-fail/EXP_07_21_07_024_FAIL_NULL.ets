/**
 * @id EXP_07_21_07_024_FAIL_NULL
 * @expect compile-fail
 * @section 7.21.7
 * @design 验证 ~null 应报编译时错误
 * @note 反向用例：null 类型不支持 ~
 */
function testNullComplement(): void {
    let r: int = ~null
}

function main(): void {
    testNullComplement()
    console.log("verified")
}
