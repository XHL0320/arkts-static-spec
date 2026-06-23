/**
 * @id STM_08_10_004_PASS_break_for_of
 * @expect compile-pass
 * @section 8.10
 * @design 在for-of循环中使用无标签break，跳出for-of循环
 * @note break without label exits the innermost for-of loop
 */
function testBreakForOf(): void {
    let arr: int[] = [1, 2, 3, 4, 5];
    let sum: int = 0;
    for (let val of arr) {
        if (val == 3) {
            break;
        }
        sum += val;
    }
}
