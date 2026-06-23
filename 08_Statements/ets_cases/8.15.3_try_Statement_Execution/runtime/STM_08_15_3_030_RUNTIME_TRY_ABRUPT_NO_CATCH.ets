/**
 * @id STM_08_15_3_030_RUNTIME_TRY_ABRUPT_NO_CATCH
 * @expect runtime
 * @section 8.15.3
 * @design try-finally 无 catch 异常向外传播
 * @runtime-throws=Error
 * @note 运行时用例：实际执行验证无catch传播
 */
function main(): void {
  try { throw new Error("inner") } finally { console.log("finally runs") }
  console.log("never reached")
}
