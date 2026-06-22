/**
 * @id STM_08_13_031_FAIL_SWITCH_BREAK_WRONG_LABEL
 * @expect compile-fail
 * @section 8.13
 * @design switch 中 break label 引用不存在的 label 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testSwitchBreakWrongLabelFail(): void {
  let x: int = 1
  switchLabel: switch (x) { case 1: { break wrongLabel } default: {} }
}
