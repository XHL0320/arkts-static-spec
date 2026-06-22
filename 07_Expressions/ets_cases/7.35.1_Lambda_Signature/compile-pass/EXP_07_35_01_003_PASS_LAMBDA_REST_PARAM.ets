/**
 * @id EXP_07_35_01_003_PASS_LAMBDA_REST_PARAM
 * @expect compile-pass
 * @section 7.35.1
 * @design Lambda 剩余参数
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLambdaRestParam(): void {
  let f: (...args: int[]) => void = (...args: int[]): void => {
    console.log(args[0].toString())
  }
  f(1, 2, 3)
}
