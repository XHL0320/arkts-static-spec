/**
 * @id STM_08_15_3_026_FAIL_TRY_WITHOUT_BLOCK
 * @expect compile-fail
 * @section 8.15.3
 * @design try 无块体应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testTryWithoutBlockFail(): void {
  try throw new Error() catch (e) { console.log("bad") }
}
