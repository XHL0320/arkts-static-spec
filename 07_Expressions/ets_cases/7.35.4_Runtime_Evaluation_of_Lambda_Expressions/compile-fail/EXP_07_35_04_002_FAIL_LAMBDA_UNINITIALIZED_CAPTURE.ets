/**
 * @id EXP_07_35_04_002_FAIL_LAMBDA_UNINITIALIZED_CAPTURE
 * @expect compile-fail
 * @section 7.35.2
 * @design Lambda 捕获未初始化变量应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testLambdaUninitializedCaptureFail(): void {
  let x: int
  let f: () => int = () => x
  console.log("bad")
}
