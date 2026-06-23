/**
 * @id EXP_07_32_03_001_PASS_LHS_VARIABLE
 * @expect compile-pass
 * @section 7.32.3
 * @design 左值：变量
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testLhsVariable(): void {
  let x: int = 0; x = 5
  console.log(x.toString())
}
