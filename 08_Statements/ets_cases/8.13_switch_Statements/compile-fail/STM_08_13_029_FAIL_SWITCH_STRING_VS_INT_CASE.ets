/**
 * @id STM_08_13_029_FAIL_SWITCH_STRING_VS_INT_CASE
 * @expect compile-fail
 * @section 8.13
 * @design switch string 与 int case 不匹配应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testSwitchStringVsIntFail(): void {
  let s: string = "hello"
  switch (s) { case 1: { console.log("bad") } default: {} }
}
