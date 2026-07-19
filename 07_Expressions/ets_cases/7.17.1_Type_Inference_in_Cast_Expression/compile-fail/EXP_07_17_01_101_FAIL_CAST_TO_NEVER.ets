/**
 * @id EXP_07_17_01_101_FAIL_CAST_TO_NEVER
 * @expect compile-fail
 * @section 7.17.1
 * @design Cast表达式中目标类型为never应产生编译时类型错误
 * @note 反向用例：验证Cast表达式目标类型为never时编译器应拒绝
 */
function test(): void {
    let x: int = 1 as never
}
