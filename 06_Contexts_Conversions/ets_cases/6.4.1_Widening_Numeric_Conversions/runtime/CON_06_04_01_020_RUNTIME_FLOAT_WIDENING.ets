/**
 * @id CON_06_04_01_020_RUNTIME_FLOAT_WIDENING
 * @expect runtime
 * @section 6.4.1
 * @design float→double 运行时值保留
 * @note 运行时用例：实际执行验证 float widening
 */
function main(): void {
  let i: int = 27
  let f: float = i
  let d: double = f
  if (d != 27.0) { throw new Error("float→double, expected 27.0") }
  console.log("Float widening verified")
}
