/**
 * @id STM_08_14_028_RUNTIME_THROW_CUSTOM_ERROR
 * @expect runtime
 * @section 8.14
 * @design throw 自定义 Error 子类

 * @note 运行时用例：实际执行验证自定义Error
 */
class MyError extends Error {}
function main(): void {
  let caught: boolean = false
  try { throw new MyError() } catch (e) { caught = e instanceof MyError }
  if (!caught) { throw new Error("assertion: should be MyError") }
  console.log("verified")
}
