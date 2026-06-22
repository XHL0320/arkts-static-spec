/**
 * @id STM_08_04_026_RUNTIME_LET_MUTATION
 * @expect runtime
 * @section 8.4
 * @design let 变量可变性验证

 * @note 运行时用例：实际执行验证let可变
 */
function main(): void {
  let x: int = 10
  x = 20
  x = x + 5
  if (x != 25) { throw new Error("assertion: let mutation") }
  console.log("verified")
}
