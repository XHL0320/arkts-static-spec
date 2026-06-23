/**
 * @id STM_08_15_027_FAIL_TRY_EMPTY
 * @expect compile-fail
 * @section 8.15
 * @design try 语句缺少 catch 和 finally 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testTryEmptyFail(): void {
  try { let x: int = 0 }
  console.log("bad")
}
