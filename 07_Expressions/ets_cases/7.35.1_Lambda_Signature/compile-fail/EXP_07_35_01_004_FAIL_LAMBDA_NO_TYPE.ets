/**
 * @id EXP_07_35_01_004_FAIL_LAMBDA_NO_TYPE
 * @expect compile-fail
 * @section 7.35.1
 * @design Lambda 无类型且无法推断应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testLambdaNoTypeFail(): void {
  let f = (x) => x
  console.log("bad")
}
