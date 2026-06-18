/**
 * @id STM_08_11_006_PASS_continue_with_label_in_do_while
 * @expect compile-pass
 * @section 8.11
 * @design 验证带标签的continue语句在do-while循环中正确编译，标签定位到外层do-while循环
 * @note continue outer with label targeting enclosing do-while loop, per spec example STATEMENTS.md line 358-368
 */
function testContinueWithLabelInDoWhile(): void {
    let a: number = 0;
    outer:
    do {
        for (a = 0; a < 10; a++) {
            if (a > 1) {
                continue outer;
            }
        }
    } while (false);
}
