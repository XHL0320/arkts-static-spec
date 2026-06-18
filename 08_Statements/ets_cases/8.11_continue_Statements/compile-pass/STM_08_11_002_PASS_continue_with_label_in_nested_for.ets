/**
 * @id STM_08_11_002_PASS_continue_with_label_in_nested_for
 * @expect compile-pass
 * @section 8.11
 * @design 验证带标签的continue语句在嵌套for循环中跳转到外层循环的下一次迭代
 * @note continue with label in nested for loop should compile successfully
 */
function testContinueWithLabelInNestedFor(): void {
    let result: number = 0;
    outer: for (let i: number = 0; i < 3; i++) {
        for (let j: number = 0; j < 3; j++) {
            if (j == 1) {
                continue outer;
            }
            result++;
        }
    }
}
