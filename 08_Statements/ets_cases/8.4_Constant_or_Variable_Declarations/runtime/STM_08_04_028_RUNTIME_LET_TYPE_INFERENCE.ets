/**
 * @id STM_08_04_028_RUNTIME_LET_TYPE_INFERENCE
 * @expect runtime
 * @section 8.4
 * @design let 类型推断验证

 * @note 运行时用例：实际执行验证类型推断
 */
function main(): void {
  let a = 42
  let b = "hello"
  let c = true
  if (a + 0 != 42) { throw new Error("assertion: int inference") }
  console.log(b + c.toString())
  console.log("verified")
}
