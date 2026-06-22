/**
 * @id STM_08_15_028_FAIL_CATCH_WITH_TYPE_ANNOTATION
 * @expect compile-fail
 * @section 8.15
 * @design catch (e: Error) 类型标注已弃用应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCatchWithTypeAnnotationFail(): void {
  try { throw new Error() } catch (e: Error) { console.log("bad") }
}
