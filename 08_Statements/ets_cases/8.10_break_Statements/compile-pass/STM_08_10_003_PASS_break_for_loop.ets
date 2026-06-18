/**
 * @id STM_08_10_003_PASS_break_for_loop
 * @expect compile-pass
 * @section 8.10
 * @design 在for循环中使用无标签break，跳出for循环
 * @note break without label exits the innermost for loop
 */
function testBreakForLoop(): void {
    let sum: int = 0;
    for (let i: int = 0; i < 10; i++) {
        if (i == 5) {
            break;
        }
        sum += i;
    }
}
