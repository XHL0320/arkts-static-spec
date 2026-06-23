/**
 * @id STM_08_15_3_027_FAIL_FINALLY_WITHOUT_BLOCK
 * @expect compile-fail
 * @section 8.15.3
 * @design finally 无块体应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testFinallyWithoutBlockFail(): void {
  try { console.log("try") } finally console.log("bad")
}
