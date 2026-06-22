/**
 * @id STM_08_14_029_RUNTIME_THROW_UNCAUGHT
 * @expect runtime
 * @section 8.14
 * @design throw 未被 catch 导致 UncaughtExceptionError
 * @runtime-throws=Error
 * @note 运行时用例：实际执行验证未捕获throw
 */
function main(): void {
  throw new Error("uncaught")
  console.log("never")
}
