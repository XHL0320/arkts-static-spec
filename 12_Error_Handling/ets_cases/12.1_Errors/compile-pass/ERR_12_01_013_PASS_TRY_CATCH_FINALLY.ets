/**
 * @id ERR_12_01_013_PASS_TRY_CATCH_FINALLY
 * @expect compile-pass
 * @section 12.1
 * @design try-catch-finally 三段式合法
 * @note 正向用例
 */
function testTryCatchFinally(): void {
  try {
    throw new Error("err")
  } catch (x) {
    let msg: string = x.message
  } finally {
    let cleanup: int = 0
  }
}
