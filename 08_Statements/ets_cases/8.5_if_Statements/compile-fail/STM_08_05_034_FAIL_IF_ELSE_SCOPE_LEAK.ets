/**
 * @id STM_08_05_034_FAIL_IF_ELSE_SCOPE_LEAK
 * @expect compile-fail
 * @section 8.5
 * @design if 分支声明的变量泄漏到外部应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testIfScopeLeakFail(): void {
  if (true) { let inner: int = 5 }
  console.log(inner.toString())
}
