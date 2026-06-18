/**
 * @id STM_08_10_011_FAIL_break_deep_nested_outside
 * @expect compile-fail
 * @section 8.10
 * @design 在深层嵌套的if/else块中使用break语句（不在任何循环或switch内） — 应产生编译错误
 * @note break outside loopStatement or switchStatement in deep nested blocks → compile-time error
 */
function testBreakDeepNestedOutside(): void {
    let x: int = 0;
    if (x >= 0) {
        if (x == 0) {
            let y: int = 1;
            if (y > 0) {
                break;
            }
        }
    }
}
