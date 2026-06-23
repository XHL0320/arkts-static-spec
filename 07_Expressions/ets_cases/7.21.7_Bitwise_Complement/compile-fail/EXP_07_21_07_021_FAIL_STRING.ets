/**
 * @id EXP_07_21_07_021_FAIL_STRING
 * @expect compile-fail
 * @section 7.21.7
 * @design 验证 ~string 应报编译时错误
 * @note 反向用例：string 类型不支持 ~
 */
function testStringComplement(): void {
    let s: string = "hello"
    let r: int = ~s
}

function main(): void {
    testStringComplement()
    console.log("verified")
}
