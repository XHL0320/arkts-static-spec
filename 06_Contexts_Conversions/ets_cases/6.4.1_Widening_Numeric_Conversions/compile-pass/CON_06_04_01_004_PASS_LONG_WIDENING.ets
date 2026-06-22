/**
 * @id CON_06_04_01_004_PASS_LONG_WIDENING
 * @expect compile-pass
 * @section 6.4.1
 * @design long→float/double widening
 * @note 正向用例：验证 long 的 2 种 widening 转换
 */
function testLongWidening(): void {
  let l: long = 100
  let f: float = l
  let d: double = l
}
