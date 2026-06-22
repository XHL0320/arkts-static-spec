/**
 * @id ERR_12_01_001_PASS_THROW_ERROR
 * @expect compile-pass
 * @section 12.1
 * @design throw Error 子类合法
 * @note 正向用例
 */
class MyError extends Error {
  error: Error
  constructor(error: Error) {
    super()
    this.error = error
  }
}

function testThrowError(): void {
  throw new Error("test")
}