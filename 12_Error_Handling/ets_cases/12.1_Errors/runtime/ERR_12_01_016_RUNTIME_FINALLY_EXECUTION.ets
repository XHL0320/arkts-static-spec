/**
 * @id ERR_12_01_016_RUNTIME_FINALLY_EXECUTION
 * @expect runtime
 * @section 12.1
 * @design finally 块无论异常与否始终执行
 * @note 运行时用例
 */
function main(): void {
  let order: string = ""
  try {
    order += "try"
    throw new Error("test")
  } catch (x) {
    order += "catch"
  } finally {
    order += "finally"
  }
  if (order !== "trycatchfinally") {
    throw new Error("finally not executed: " + order)
  }
  console.log("finally execution verified")
}
