/**
 * @id ERR_12_01_011_RUNTIME_UNKNOWN_ERROR_WRAP
 * @expect runtime
 * @section 12.1
 * @design 未知 Error 被 UnknownError 包装并向外抛出
 * @note 运行时用例：覆盖 spec 中 UnknownError 包装未知错误场景
 */
class UnknownError extends Error {
  error: Error
  constructor(error: Error) {
    super()
    this.error = error
  }
}
function wrapUnknownError(): void {
  try {
    throw new Error()
  } catch (error) {
    if (error instanceof RangeError) {
      return
    }
    throw new UnknownError(error)
  }
}
function main(): void {
  let wrapped: boolean = false
  try {
    wrapUnknownError()
  } catch (error) {
    if (error instanceof UnknownError) {
      wrapped = true
    }
  }
  if (!wrapped) throw new Error("UnknownError should be caught")
  console.log("UnknownError wrapping verified")
}
