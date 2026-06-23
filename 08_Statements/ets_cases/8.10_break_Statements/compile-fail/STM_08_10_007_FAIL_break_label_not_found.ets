/**
 * @id STM_08_10_007_FAIL_break_label_not_found
 * @expect compile-fail
 * @section 8.10
 * @design break的标签不匹配任何封闭语句的标签，产生编译错误
 * @note compile-time error: break label does not match any enclosing statement label
 */
function testBreakLabelNotFound(): void {
    let i: int = 0;
    while (i < 10) {
        break nonexistent_label;
    }
}
