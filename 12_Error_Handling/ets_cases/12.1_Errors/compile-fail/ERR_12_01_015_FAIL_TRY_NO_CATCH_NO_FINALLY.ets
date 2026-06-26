/**
 * @id ERR_12_01_015_FAIL_TRY_NO_CATCH_NO_FINALLY
 * @expect compile-fail
 * @section 12.1
 * @design try 无 catch 且无 finally 应编译失败
 * @note 反向用例
 */
function testTryNoCatchNoFinallyFail(): void {
  try {
    let x: int = 1
  }
}
