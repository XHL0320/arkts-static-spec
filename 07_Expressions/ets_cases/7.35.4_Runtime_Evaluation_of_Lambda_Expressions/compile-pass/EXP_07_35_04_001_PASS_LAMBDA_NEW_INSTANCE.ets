/**
 * @id EXP_07_35_04_001_PASS_LAMBDA_NEW_INSTANCE
 * @expect compile-pass
 * @section 7.35.4
 * @design 每次 Lambda 求值创建新实例
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function createCounter(): () => int {
  let count: int = 0
  return () => { count++; return count }
}
function testLambdaNewInstance(): void {
  let c1: () => int = createCounter()
  let c2: () => int = createCounter()
  console.log(c1().toString(), c2().toString())
}
