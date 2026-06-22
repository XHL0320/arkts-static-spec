/**
 * @id STM_08_15_3_025_FAIL_CATCH_BLOCK_VAR_ESCAPE
 * @expect compile-fail
 * @section 8.15.3
 * @design catch 块变量逃逸应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCatchBlockVarEscapeFail(): void {
  try { throw new Error() } catch (e) { let inner: int = 5 }
  console.log(inner.toString())
}
