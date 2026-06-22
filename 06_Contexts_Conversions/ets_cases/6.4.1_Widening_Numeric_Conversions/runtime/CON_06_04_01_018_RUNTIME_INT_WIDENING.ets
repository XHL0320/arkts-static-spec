/**
 * @id CON_06_04_01_018_RUNTIME_INT_WIDENING
 * @expect runtime
 * @section 6.4.1
 * @design int→long/float/double 运行时值保留
 * @note 运行时用例：实际执行验证 int widening 不丢失值
 */
function main(): void {
  let i: int = 999
  let l: long = i
  if (l != 999) { throw new Error("int→long") }
  let f: float = i
  if (f != 999) { throw new Error("int→float") }
  let d: double = i
  if (d != 999.0) { throw new Error("int→double") }
  console.log("Int widening verified")
}
