/**
 * @id CON_06_05_005_PASS_LONG_TO_INT
 * @expect compile-pass
 * @section 6.5
 * @design long.toInt() 截断转换
 * @note 正向用例
 */
function testLongToInt(): void {
  let l: long = 100
  let i: int = l.toInt()
}
