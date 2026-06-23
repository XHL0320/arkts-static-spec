/**
 * @id STM_08_10_002_PASS_break_labelled
 * @expect compile-pass
 * @section 8.10
 * @design 在嵌套循环中使用带标签的break，跳出外层标记的循环
 * @note break with label transfers control to enclosing labeled loop statement
 */
function testBreakLabelled(): void {
    let i: int = 0;
    let j: int = 0;
    outer: while (i < 10) {
        inner: while (j < 10) {
            if (j == 5) {
                break outer;
            }
            j++;
        }
        i++;
    }
}
