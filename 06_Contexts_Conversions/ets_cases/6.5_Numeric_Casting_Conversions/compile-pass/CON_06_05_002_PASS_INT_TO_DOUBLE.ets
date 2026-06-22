/**
 * @id CON_06_05_002_PASS_INT_TO_DOUBLE
 * @expect compile-pass
 * @section 6.5
 * @design int.toDouble() 转换
 * @note 正向用例
 */
function testIntToDouble(): void {
  let i: int = 42
  let d: double = i.toDouble()
}
