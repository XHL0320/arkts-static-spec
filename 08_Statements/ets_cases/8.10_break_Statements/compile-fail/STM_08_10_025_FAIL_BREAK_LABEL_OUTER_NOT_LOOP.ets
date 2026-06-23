/**
 * @id STM_08_10_025_FAIL_BREAK_LABEL_OUTER_NOT_LOOP
 * @expect compile-fail
 * @section 8.10
 * @design break label 的目标不是循环应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBreakLabelOuterNotLoopFail(): void {
  myBlock: { let x: int = 0
    for (let i: int = 0; i < 3; i++) { break myBlock } }
}
