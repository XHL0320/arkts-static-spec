/**
 * @id CON_06_04_01_017_RUNTIME_SHORT_WIDENING
 * @expect runtime
 * @section 6.4.1
 * @design short→int/long/float/double 运行时值保留
 * @note 运行时用例：实际执行验证 short widening 不丢失值
 */
function main(): void {
  let s: short = 100
  let i: int = s
  if (i != 100) { throw new Error("short→int") }
  let l: long = s
  if (l != 100) { throw new Error("short→long") }
  let f: float = s
  if (f != 100) { throw new Error("short→float") }
  let d: double = s
  if (d != 100.0) { throw new Error("short→double") }
  console.log("Short widening verified")
}
