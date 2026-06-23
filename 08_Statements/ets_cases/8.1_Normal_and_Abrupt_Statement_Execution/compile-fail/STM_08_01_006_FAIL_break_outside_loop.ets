/**
 * @id STM_08_01_006_FAIL_break_outside_loop
 * @expect compile-fail
 * @section 8.1
 * @design 验证 break 语句在循环或switch外部使用导致编译错误：break 的异常完成语义要求在循环/switch作用域内
 * @note break 必须在 for/while/do-while/switch 语句体内使用，否则编译错误
 */
function testBreakOutsideLoop(): void {
    let x: int = 0;
    if (x > 0) {
        break;
    }
}
