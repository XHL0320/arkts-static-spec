/**
 * @id STM_08_11_005_PASS_continue_with_label_deeply_nested
 * @expect compile-pass
 * @section 8.11
 * @design 验证带标签的continue语句在多层嵌套循环中跳转到中间层和外层标签的混合使用
 * @note continue with labels in deeply nested loops should compile successfully
 */
function testContinueWithLabelDeeplyNested(): void {
    let result: number = 0;
    outer: for (let i: number = 0; i < 5; i++) {
        middle: for (let j: number = 0; j < 5; j++) {
            for (let k: number = 0; k < 5; k++) {
                if (k == 2) {
                    continue middle;
                }
                if (j == 3) {
                    continue outer;
                }
                result++;
            }
        }
    }
}
