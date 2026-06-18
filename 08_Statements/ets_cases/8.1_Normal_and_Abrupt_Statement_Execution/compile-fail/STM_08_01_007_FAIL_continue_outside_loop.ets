/**
 * @id STM_08_01_007_FAIL_continue_outside_loop
 * @expect compile-fail
 * @section 8.1
 * @design 验证 continue 语句在循环外部使用导致编译错误：continue 的跳转语义要求在循环作用域内
 * @note continue 必须在 for/while/do-while 循环体内使用，否则编译错误
 */
function testContinueOutsideLoop(): void {
    let x: int = 0;
    if (x > 0) {
        continue;
    }
}
