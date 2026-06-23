/**
 * @id EXP_07_21_07_023_FAIL_OBJECT
 * @expect compile-fail
 * @section 7.21.7
 * @design 验证 ~Object 应报编译时错误
 * @note 反向用例：Object 类型不支持 ~
 */
function testObjectComplement(): void {
    let o: Object = new Object()
    let r: int = ~o
}

function main(): void {
    testObjectComplement()
    console.log("verified")
}
