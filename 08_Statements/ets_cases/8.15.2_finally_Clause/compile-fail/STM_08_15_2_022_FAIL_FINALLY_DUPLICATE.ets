/**
 * @id STM_08_15_2_022_FAIL_FINALLY_DUPLICATE
 * @expect compile-fail
 * @section 8.15.2
 * @design 同一 try 多个 finally 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testFinallyDuplicateFail(): void {
  try { console.log("try") } finally { console.log("f1") } finally { console.log("f2") }
}
