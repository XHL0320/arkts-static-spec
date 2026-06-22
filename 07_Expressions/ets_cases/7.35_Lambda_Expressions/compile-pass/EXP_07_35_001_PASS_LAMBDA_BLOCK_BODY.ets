/**
 * @id EXP_07_35_001_PASS_LAMBDA_BLOCK_BODY
 * @expect compile-pass
 * @section 7.35
 * @design Lambda 表达式块体
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLambdaBlockBody(): void {
  let f: (x: int) => int = (x: int): int => { return x * 2 }
  let result: int = f(5)
  console.log(result.toString())
}
