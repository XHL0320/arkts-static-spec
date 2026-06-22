/**
 * @id CON_06_05_016_RUNTIME_CHAINED_CONVERSIONS
 * @expect runtime
 * @section 6.5
 * @design 链式转换: double→int→long→double 的往返行为
 * @note 运行时用例：验证链式转换的值变化
 */
function main(): void {
  let d1: double = 3.14
  let i: int = d1.toInt()
  if (i != 3) { throw new Error("3.14.toInt() should be 3") }

  let l: long = i.toLong()
  if (l != 3) { throw new Error("3.toLong() should be 3") }

  let d2: double = l.toDouble()
  if (d2 != 3.0) { throw new Error("3.toDouble() should be 3.0") }

  let d3: double = -7.8
  let d4: double = d3.toInt().toLong().toDouble()
  if (d4 != -7.0) { throw new Error("-7.8→int→long→double should be -7.0") }

  console.log("Chained conversions verified")
}
