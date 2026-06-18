/**
 * @id STM_08_11_006_FAIL_continue_outside_loop
 * @expect compile-fail
 * @section 8.11
 * @design 验证continue语句在循环语句外部使用时产生编译时错误
 * @note continue without any enclosing loop should be compile-time error
 */
function testContinueOutsideLoop(): void {
    let x: number = 0;
    x++;
    // compile-time error: continue outside any loop statement
    continue;
}
