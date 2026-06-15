/**
 * @id LEX_02_07_015_PASS_HARD_KW_TRY_CATCH
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: try/catch/throw (注：catch 在 spec 中也列为软关键字)
 * @note 正向用例：异常处理
 */
function test015(): void {
  try {
    throw new Error("test")
  } catch (e) {
    let msg: string = "caught"
  }
}
