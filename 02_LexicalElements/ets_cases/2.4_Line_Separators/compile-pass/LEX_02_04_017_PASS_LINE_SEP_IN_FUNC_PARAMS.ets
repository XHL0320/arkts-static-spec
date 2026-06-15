/**
 * @id LEX_02_04_017_PASS_LINE_SEP_IN_FUNC_PARAMS
 * @expect compile-pass
 * @section 2.4
 * @design 函数声明和调用的参数列表内允许换行
 * @note 正向用例：参数分多行
 */
function add(
  a: int,
  b: int,
  c: int
): int {
  return a + b + c
}
function testLineSepInFuncParams(): void {
  let r: int = add(
    1,
    2,
    3
  )
}
