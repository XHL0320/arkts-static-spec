/**
 * @id LEX_02_07_040_PASS_SOFT_KW_FINALLY
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字: finally 在 try-catch-finally 中
 * @note 正向用例：finally 子句
 */
function test040(): void {
  let cleaned: boolean = false
  try {
    let x: int = 1
  } catch (e) {
    let msg: string = "caught"
  } finally {
    cleaned = true
  }
}
