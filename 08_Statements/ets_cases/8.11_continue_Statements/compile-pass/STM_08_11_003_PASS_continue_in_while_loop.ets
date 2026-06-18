/**
 * @id STM_08_11_003_PASS_continue_in_while_loop
 * @expect compile-pass
 * @section 8.11
 * @design 验证无标签的continue语句在while循环中的基本用法，跳过特定条件迭代
 * @note continue without label in while loop should compile successfully
 */
function testContinueInWhileLoop(): void {
    let sum: number = 0;
    let i: number = 0;
    while (i < 10) {
        i++;
        if (i % 2 == 0) {
            continue;
        }
        sum += i;
    }
}
