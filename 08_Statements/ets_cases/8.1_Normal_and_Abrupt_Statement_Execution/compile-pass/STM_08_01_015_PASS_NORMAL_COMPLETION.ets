/**
 * @id STM_08_01_015_PASS_NORMAL_COMPLETION
 * @expect compile-pass
 * @section 8.1
 * @design 正常完成的语句执行（赋值语句正常完成）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testNormalCompletion(): void {
  let x: int = 0
  x = 42
  let y: int = x + 1
  console.log(y.toString())
}
