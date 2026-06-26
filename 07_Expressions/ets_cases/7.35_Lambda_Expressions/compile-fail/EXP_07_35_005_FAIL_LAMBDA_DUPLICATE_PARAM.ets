/**
 * @id EXP_07_35_005_FAIL_LAMBDA_DUPLICATE_PARAM
 * @expect compile-fail
 * @section 7.35
 * @design Lambda 参数重名应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testLambdaDuplicateParamFail(): void {
  let f: (x: int) => int = (x: int, x: int) => x
  console.log("bad")
}
