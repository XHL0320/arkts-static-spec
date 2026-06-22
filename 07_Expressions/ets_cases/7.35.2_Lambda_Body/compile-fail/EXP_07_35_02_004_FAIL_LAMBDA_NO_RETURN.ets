/**
 * @id EXP_07_35_02_004_FAIL_LAMBDA_NO_RETURN
 * @expect compile-fail
 * @section 7.35.2
 * @design 非 void Lambda 无 return 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testLambdaNoReturnFail(): void {
  let f: () => int = () => { let x: int = 1 }
  console.log("bad")
}
