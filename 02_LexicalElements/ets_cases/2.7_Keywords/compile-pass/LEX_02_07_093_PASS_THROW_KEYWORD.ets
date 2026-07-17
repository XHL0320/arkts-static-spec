/**
 * @id LEX_02_07_093_PASS_THROW_KEYWORD
 * @expect compile-pass
 * @section 2.7
 * @design throw 关键字
 * @note compile-pass 用例：验证 throw 关键字
 */

// throw 关键字 - 必须抛出 Exception 或 Error 实例
function throwError(): void {
  throw new Error("test error")
}

function throwErrorMsg(): void {
  throw new Error("test error message")
}
