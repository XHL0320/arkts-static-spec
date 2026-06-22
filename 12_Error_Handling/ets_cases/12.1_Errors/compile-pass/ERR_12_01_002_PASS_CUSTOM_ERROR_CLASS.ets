/**
 * @id ERR_12_01_002_PASS_CUSTOM_ERROR_CLASS
 * @expect compile-pass
 * @section 12.1
 * @design 自定义 Error 子类（spec 原例 UnknownError）
 * @note 正向用例
 */
class UnknownError extends Error {
  error: Error
  constructor(error: Error) {
    super()
    this.error = error
  }
}