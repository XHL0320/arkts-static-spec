/**
 * @id STM_08_07_035_RUNTIME_DO_AT_LEAST_ONCE
 * @expect runtime
 * @section 8.7
 * @design do-while 至少执行一次

 * @note 运行时用例：实际执行验证do-while一次
 */
function main(): void {
  let count: int = 0
  do { count++ } while (false)
  if (count != 1) { throw new Error("assertion: do-while should execute at least once") }
  console.log("verified")
}
