/**
 * @id EXP_07_35_01_002_PASS_LAMBDA_INFERRED
 * @expect compile-pass
 * @section 7.35.1
 * @design Lambda 签名类型推断（省略类型）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLambdaInferred(): void {
  let f: (x: int) => int = e => e
  console.log(f(10).toString())
}
