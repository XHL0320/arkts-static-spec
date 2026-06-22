/**
 * @id CON_06_04_01_016_RUNTIME_BYTE_WIDENING
 * @expect runtime
 * @section 6.4.1
 * @design byte→short/int/long/float/double 运行时值保留
 * @note 运行时用例：实际执行验证 byte widening 不丢失值
 */
function main(): void {
  let b: byte = 42
  let s: short = b
  if (s != 42) { throw new Error("byte→short: " + s) }
  let i: int = b
  if (i != 42) { throw new Error("byte→int: " + i) }
  let l: long = b
  if (l != 42) { throw new Error("byte→long: " + l) }
  let f: float = b
  if (f != 42) { throw new Error("byte→float: " + f) }
  let d: double = b
  if (d != 42.0) { throw new Error("byte→double: " + d) }
  console.log("Byte widening verified")
}
