/**
 * @id LEX_02_04_015_PASS_LINE_SEP_IN_PARENS
 * @expect compile-pass
 * @section 2.4
 * @design 括号 () 内允许换行
 * @note 正向用例：表达式分多行
 */
function testLineSepInParens(): void {
  let x: int = (
    1 +
    2 +
    3
  )
}
