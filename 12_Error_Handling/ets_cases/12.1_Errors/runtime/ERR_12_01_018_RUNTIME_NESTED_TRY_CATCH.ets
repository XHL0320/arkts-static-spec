/**
 * @id ERR_12_01_018_RUNTIME_NESTED_TRY_CATCH
 * @expect runtime
 * @section 12.1
 * @design 嵌套 try-catch 各自处理错误互不干扰
 * @note 运行时用例
 */
function main(): void {
  let outerCaught: boolean = false
  let innerCaught: boolean = false
  try {
    try {
      throw new Error("inner")
    } catch (e) {
      innerCaught = true
    }
    throw new Error("outer")
  } catch (e) {
    outerCaught = true
  }
  if (!innerCaught) {
    throw new Error("inner catch not executed")
  }
  if (!outerCaught) {
    throw new Error("outer catch not executed")
  }
  console.log("nested try-catch verified")
}
