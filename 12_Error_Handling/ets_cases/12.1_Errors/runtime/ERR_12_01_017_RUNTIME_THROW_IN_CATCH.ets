/**
 * @id ERR_12_01_017_RUNTIME_THROW_IN_CATCH
 * @expect runtime
 * @section 12.1
 * @design catch 块中重新抛出错误被外层 try 捕获
 * @note 运行时用例
 */
function main(): void {
  let caught: boolean = false
  try {
    try {
      throw new Error("inner")
    } catch (x) {
      throw x
    }
  } catch (outer) {
    caught = true
  }
  if (!caught) {
    throw new Error("re-throw not caught by outer try")
  }
  console.log("rethrow in catch verified")
}
