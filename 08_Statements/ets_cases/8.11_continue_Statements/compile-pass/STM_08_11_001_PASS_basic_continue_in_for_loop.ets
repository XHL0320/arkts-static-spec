/**
 * @id STM_08_11_001_PASS_basic_continue_in_for_loop
 * @expect compile-pass
 * @section 8.11
 * @design 验证无标签的continue语句在for循环中的基本用法，跳过偶数次迭代
 * @note continue without label in for loop should compile successfully
 */
function testBasicContinueInForLoop(): void {
    let sum: number = 0;
    for (let i: number = 0; i < 10; i++) {
        if (i % 2 == 0) {
            continue;
        }
        sum += i;
    }
}
