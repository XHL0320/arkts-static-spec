/**
 * @id STM_08_01_028_RUNTIME_STMT_ORDER
 * @expect runtime
 * @section 8.1
 * @design 语句执行顺序验证

 * @note 运行时用例：实际执行验证语句顺序
 */
function main(): void {
  let log: string = ""
  log = log + "A"
  log = log + "B"
  log = log + "C"
  if (log != "ABC") { throw new Error("assertion: statements execute in order") }
  console.log("verified")
}
