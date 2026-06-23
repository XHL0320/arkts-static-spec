/**
 * @id STM_08_13_028_FAIL_SWITCH_DUPLICATE_DEFAULT
 * @expect compile-fail
 * @section 8.13
 * @design switch 多个 default 子句应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testSwitchDuplicateDefaultFail(): void {
  let x: int = 1
  switch (x) { default: { console.log("a") } default: { console.log("b") } }
}
