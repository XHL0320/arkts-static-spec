/**
 * @id STM_08_07_002_PASS_while_empty_body
 * @expect compile-pass
 * @section 8.7
 * @design while 循环使用空语句体(分号) 和 空块语句，验证空循环体合法
 * @note while 的循环体可以是空语句(;) 或 空块({})
 */
function testWhileEmptyBody(): void {
    let x: int = 0;
    let y: int = 0;
    // empty block body
    while (x < 0) {}
    // empty statement body
    while (y > 10);
}
