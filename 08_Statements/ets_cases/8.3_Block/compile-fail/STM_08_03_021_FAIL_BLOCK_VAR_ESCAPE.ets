/**
 * @id STM_08_03_021_FAIL_BLOCK_VAR_ESCAPE
 * @expect compile-fail
 * @section 8.3
 * @design 块内变量逃逸到外部应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBlockVarEscapeFail(): void {
  { let inner: int = 42 }
  console.log(inner.toString())
}
