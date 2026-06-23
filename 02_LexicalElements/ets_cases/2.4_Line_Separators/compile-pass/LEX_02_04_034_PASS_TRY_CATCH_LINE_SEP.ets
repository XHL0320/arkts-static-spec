/**
 * @id LEX_02_04_034_PASS_TRY_CATCH_LINE_SEP
 * @expect compile-pass
 * @section 2.4
 * @design try-catch 内换行
 * @note compile-pass 用例：验证 try-catch 语句中的换行符
 */

// try-catch 内换行
function test(): void {
  try {
    let x = 1
    let y = 2
  } catch (e) {
    let z = 3
  } finally {
    let w = 4
  }
}
