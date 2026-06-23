/**
 * @id EXP_07_35_03_001_PASS_LAMBDA_TYPE_FUNC
 * @expect compile-pass
 * @section 7.35.3
 * @design Lambda 类型为函数类型
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLambdaTypeFunc(): void {
  let f: (x: int) => int = (x: int) => x + 1
  let g: (x: int) => int = f
  console.log(g(5).toString())
}
