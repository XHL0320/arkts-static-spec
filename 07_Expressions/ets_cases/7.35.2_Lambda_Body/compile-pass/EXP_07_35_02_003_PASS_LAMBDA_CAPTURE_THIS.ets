/**
 * @id EXP_07_35_02_003_PASS_LAMBDA_CAPTURE_THIS
 * @expect compile-pass
 * @section 7.35.2
 * @design Lambda 捕获 this
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
class Counter { value: int = 0; getReporter(): () => int { return () => this.value } }
function testLambdaCaptureThis(): void {
  let c: Counter = new Counter()
  let r: () => int = c.getReporter()
  console.log(r().toString())
}
