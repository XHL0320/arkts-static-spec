/**
 * @id CON_06_04_01_021_RUNTIME_NEGATIVE_WIDENING
 * @expect runtime
 * @section 6.4.1
 * @design 负数 widening 运行时值保留: byte(-1)→int, int(-100)→long/double
 * @note 运行时用例：实际执行验证负数 widening 不改变符号
 */
function main(): void {
  let b: byte = -1
  let i: int = b
  if (i != -1) { throw new Error("byte(-1)→int") }
  let l: long = b
  if (l != -1) { throw new Error("byte(-1)→long") }

  let negInt: int = -100
  let negLong: long = negInt
  if (negLong != -100) { throw new Error("int(-100)→long") }
  let negDouble: double = negInt
  if (negDouble != -100.0) { throw new Error("int(-100)→double") }

  console.log("Negative widening verified")
}
