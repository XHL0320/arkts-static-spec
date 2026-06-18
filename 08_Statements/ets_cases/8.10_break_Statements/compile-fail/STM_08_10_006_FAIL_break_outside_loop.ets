/**
 * @id STM_08_10_006_FAIL_break_outside_loop
 * @expect compile-fail
 * @section 8.10
 * @design break语句出现在任何循环或switch语句外部，应产生编译错误
 * @note compile-time error: break used outside loopStatement or switchStatement
 */
function testBreakOutsideLoop(): void {
    if (true) {
        break;
    }
}
