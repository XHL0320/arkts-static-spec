/**
 * @id STM_08_07_004_PASS_do_while_empty_body
 * @expect compile-pass
 * @section 8.7
 * @design do-while 循环使用空块和空语句体，验证空循环体合法
 * @note do-while 的循环体可以为空块({}) 或 空语句(;)
 */
function testDoWhileEmptyBody(): void {
    let x: int = 0;
    let y: int = 0;
    // empty block body
    do {} while (x < 0);
    // empty statement body
    do ; while (y > 10);
}
