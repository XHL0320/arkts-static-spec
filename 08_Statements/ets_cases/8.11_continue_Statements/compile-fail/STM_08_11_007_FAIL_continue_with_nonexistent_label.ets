/**
 * @id STM_08_11_007_FAIL_continue_with_nonexistent_label
 * @expect compile-fail
 * @section 8.11
 * @design 验证continue语句使用不存在的标签标注时产生编译时错误
 * @note continue with a label that does not match any enclosing loop should be compile-time error
 */
function testContinueWithNonexistentLabel(): void {
    let sum: number = 0;
    for (let i: number = 0; i < 10; i++) {
        // compile-time error: label 'nonexistent' does not match any enclosing loop
        continue nonexistent;
    }
}
