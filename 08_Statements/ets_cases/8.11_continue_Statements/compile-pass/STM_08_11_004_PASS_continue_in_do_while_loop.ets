/**
 * @id STM_08_11_004_PASS_continue_in_do_while_loop
 * @expect compile-pass
 * @section 8.11
 * @design 验证无标签的continue语句在do-while循环中的基本用法，跳过特定条件迭代
 * @note continue without label in do-while loop should compile successfully
 */
function testContinueInDoWhileLoop(): void {
    let sum: number = 0;
    let i: number = 0;
    do {
        i++;
        if (i % 2 == 0) {
            continue;
        }
        sum += i;
    } while (i < 10);
}
