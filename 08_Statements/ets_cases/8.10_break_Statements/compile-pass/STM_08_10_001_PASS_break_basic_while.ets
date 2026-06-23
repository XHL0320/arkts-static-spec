/**
 * @id STM_08_10_001_PASS_break_basic_while
 * @expect compile-pass
 * @section 8.10
 * @design 在while循环中使用无标签break，跳出最内层循环
 * @note break without label exits the innermost while loop
 */
function testBreakBasicWhile(): void {
    let i: int = 0;
    while (i < 10) {
        if (i == 5) {
            break;
        }
        i++;
    }
}
