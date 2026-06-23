/**
 * @id STM_08_10_006_PASS_break_deep_nested_unlabeled
 * @expect compile-pass
 * @section 8.10
 * @design 在三层嵌套for循环中使用无标签break，应跳出最内层循环
 * @note break without label exits the innermost enclosing loop at 3+ levels deep
 */
function testBreakDeepNestedUnlabeled(): void {
    let i: int = 0;
    let j: int = 0;
    let k: int = 0;
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            for (k = 0; k < 3; k++) {
                if (k == 1) {
                    break;
                }
            }
        }
    }
}
