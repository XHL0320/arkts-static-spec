/**
 * @id EXP_07_35_03_002_PASS_LAMBDA_RETURN_INFERRED
 * @expect compile-pass
 * @section 7.35.3
 * @design Lambda 返回类型从体推断
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLambdaReturnInferred(): void {
  let f: () => int = () => { return 123 }
  let result: int = f()
  console.log(result.toString())
}
