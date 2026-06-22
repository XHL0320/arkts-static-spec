/**
 * @id CON_06_05_008_PASS_CHAINED_CONVERSIONS
 * @expect compile-pass
 * @section 6.5
 * @design 链式转换: double.toInt().toLong().toDouble()
 * @note 正向用例
 */
function testChainedConversions(): void {
  let d: double = 3.14
  let i: int = d.toInt()
  let l: long = i.toLong()
  let d2: double = l.toDouble()
}
