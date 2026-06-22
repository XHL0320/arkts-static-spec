/**
 * @id EXP_07_35_004_PASS_LAMBDA_ANNOTATION
 * @expect compile-pass
 * @section 7.35
 * @design Lambda 参数类型标注
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLambdaAnnotation(): void {
  let f: (a: int, b: int) => int = (a: int, b: int): int => a + b
  let result: int = f(3, 4)
  console.log(result.toString())
}
