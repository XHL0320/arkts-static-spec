/**
 * @id EXP_07_35_02_002_PASS_LAMBDA_CAPTURE_LOCAL
 * @expect compile-pass
 * @section 7.35.2
 * @design Lambda 捕获外部局部变量
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLambdaCaptureLocal(): void {
  let base: int = 10
  let f: (x: int) => int = (x: int) => base + x
  let result: int = f(5)
  console.log(result.toString())
}
