/**
 * @id CON_06_05_007_PASS_ALL_CONVERSION_METHODS
 * @expect compile-pass
 * @section 6.5
 * @design 全部 .toXxx() 方法: byte→short→int→long→float→double 及反向
 * @note 正向用例：覆盖全部标准库转换方法
 */
function processInt(v: int): void {}

function testAllConversionMethods(): void {
  let b: byte = 10
  let s: short = b.toShort()
  let i1: int = b.toInt()
  let l1: long = b.toLong()
  let d1: double = b.toDouble()

  let i2: int = 42
  let l2: long = i2.toLong()
  let d2: double = i2.toDouble()

  let d3: double = 3.14
  let i3: int = d3.toInt()
  let l3: long = d3.toLong()

  processInt(d3.toInt())
}
