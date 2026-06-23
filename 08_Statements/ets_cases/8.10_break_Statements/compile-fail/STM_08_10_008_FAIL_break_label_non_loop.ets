/**
 * @id STM_08_10_008_FAIL_break_label_non_loop
 * @expect compile-fail
 * @section 8.10
 * @design break标签指向一个非循环/switch语句的标签（如标记的块语句），产生编译错误
 * @note compile-time error: break with label pointing to a non-loop/non-switch labeled statement
 */
function testBreakLabelNonLoop(): void {
    lab: {
        break lab;
    }
}
