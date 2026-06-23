/**
 * @id STM_08_10_010_FAIL_break_label_not_found_deep
 * @expect compile-fail
 * @section 8.10
 * @design 在三层嵌套循环中使用带标签break，但标签不存在于任何外层循环 — 应产生编译错误
 * @note compile-time error: no enclosing labeled statement with label 'not_exist' in deep nesting
 */
function testBreakLabelNotFoundDeep(): void {
    let i: int = 0;
    let j: int = 0;
    let k: int = 0;
    outer: for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            for (k = 0; k < 3; k++) {
                if (k == 1) {
                    break not_exist;
                }
            }
        }
    }
}
