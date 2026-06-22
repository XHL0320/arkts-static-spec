/**
 * @id EXP_07_35_003_PASS_LAMBDA_SHORTEST
 * @expect compile-pass
 * @section 7.35
 * @design Lambda 最短形式（e => e）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLambdaShortest(): void {
  let f: (x: int) => int = e => e
  let result: int = f(42)
  console.log(result.toString())
}
