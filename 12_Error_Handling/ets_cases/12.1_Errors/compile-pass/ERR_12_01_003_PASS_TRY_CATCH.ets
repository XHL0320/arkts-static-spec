/**
 * @id ERR_12_01_003_PASS_TRY_CATCH
 * @expect compile-pass
 * @section 12.1
 * @design try-catch 基本写法合法
 * @note 正向用例
 */
function testTryCatch(): void {
  try {
    throw new Error("err")
  } catch (x) {
    let msg: string = x.message
  }
}