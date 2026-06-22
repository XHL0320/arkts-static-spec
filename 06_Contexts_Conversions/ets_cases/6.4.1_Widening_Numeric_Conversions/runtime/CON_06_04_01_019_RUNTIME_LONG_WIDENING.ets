/**
 * @id CON_06_04_01_019_RUNTIME_LONG_WIDENING
 * @expect runtime
 * @section 6.4.1
 * @design long→float/double 运行时值保留
 * @note 运行时用例：实际执行验证 long widening
 */
function main(): void {
  let l: long = 5000
  let f: float = l
  if (f != 5000) { throw new Error("long→float") }
  let d: double = l
  if (d != 5000.0) { throw new Error("long→double") }
  console.log("Long widening verified")
}
