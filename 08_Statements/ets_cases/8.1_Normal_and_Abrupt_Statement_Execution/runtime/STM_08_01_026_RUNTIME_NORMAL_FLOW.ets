/**
 * @id STM_08_01_026_RUNTIME_NORMAL_FLOW
 * @expect runtime
 * @section 8.1
 * @design 正常执行流程验证

 * @note 运行时用例：实际执行验证正常执行
 */
function main(): void {
  let count: int = 0
  count = 1
  count = count + 2
  count = count * 3
  if (count != 9) { throw new Error("assertion: 1+2=3, 3*3=9") }
  console.log("verified")
}
