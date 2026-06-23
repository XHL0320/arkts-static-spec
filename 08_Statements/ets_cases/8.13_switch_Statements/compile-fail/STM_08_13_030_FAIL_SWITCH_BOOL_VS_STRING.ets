/**
 * @id STM_08_13_030_FAIL_SWITCH_BOOL_VS_STRING
 * @expect compile-fail
 * @section 8.13
 * @design switch boolean 与 string case 不匹配应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testSwitchBoolVsStringFail(): void {
  let b: boolean = true
  switch (b) { case "true": { console.log("bad") } default: {} }
}
