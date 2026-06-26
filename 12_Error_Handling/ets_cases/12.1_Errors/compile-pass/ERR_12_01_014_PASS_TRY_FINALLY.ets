/**
 * @id ERR_12_01_014_PASS_TRY_FINALLY
 * @expect compile-pass
 * @section 12.1
 * @design try-finally（无 catch）合法
 * @note 正向用例
 */
function testTryFinally(): void {
  try {
    let x: int = 1
  } finally {
    let cleanup: int = 0
  }
}
