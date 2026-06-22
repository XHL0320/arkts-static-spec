/**
 * @id EXP_07_35_01_001_PASS_LAMBDA_TYPED_PARAMS
 * @expect compile-pass
 * @section 7.35.1
 * @design Lambda 签名含完整类型标注
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLambdaTypedParams(): void {
  let f: (x: int) => int = (x: int): int => { return x + 1 }
  console.log(f(1).toString())
}
