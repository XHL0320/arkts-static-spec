/**
 * @id EXP_07_17_1_101_FAIL_CAST_TO_NEVER
 * @expect compile-fail
 * @section 7.17.1
 * @design 转型到 never 类型导致编译时错误
 * @note spec: compile-time error if target type is never
 */
function test(): void {
    let x: int = 1 as never
}
