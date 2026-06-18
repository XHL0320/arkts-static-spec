/**
 * @id STM_08_11_007_PASS_continue_in_for_with_compound_update
 * @expect compile-fail
 * @section 8.11
 * @design 验证for循环中continue语句与复合（逗号分隔）forUpdate表达式一起正确编译
 * @note continue in for loop must still execute all parts of compound update expression before re-evaluating condition
 */
function testContinueInForWithCompoundUpdate(): void {
    let sum: number = 0;
    let updateTracker: number = 0;
    for (let i: number = 0; i < 10; (updateTracker++, i++)) {
        if (i % 2 == 0) {
            continue;
        }
        sum += i;
    }
}
