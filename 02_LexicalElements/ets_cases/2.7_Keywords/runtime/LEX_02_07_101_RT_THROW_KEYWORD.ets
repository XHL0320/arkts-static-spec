/**
 * @id LEX_02_07_101_RT_THROW_KEYWORD
 * @expect runtime
 * @section 2.7
 * @design throw 关键字运行时验证
 * @note runtime 用例：验证 throw 关键字的运行时行为
 */

function throwError(): void {
  throw new Error("test error")
}

function main(): void {
  // throw 关键字
  let caught = false
  
  try {
    throwError()
  } catch (e) {
    caught = true
  }
  
  if (caught !== true) { throw new Error("throw failed, caught=" + caught) }
}
