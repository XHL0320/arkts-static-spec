/**
 * @id STM_08_13_027_FAIL_SWITCH_CASE_TYPE_MISMATCH
 * @expect compile-fail
 * @section 8.13
 * @design switch case 类型不匹配应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testSwitchCaseTypeMismatchFail(): void {
  let x: int = 5
  switch (x) { case "five": { console.log("bad") } default: {} }
}
