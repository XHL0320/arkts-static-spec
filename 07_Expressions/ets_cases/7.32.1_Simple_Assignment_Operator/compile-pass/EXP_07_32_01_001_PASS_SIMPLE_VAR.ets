/**
 * @id EXP_07_32_01_001_PASS_SIMPLE_VAR
 * @expect compile-pass
 * @section 7.32.1
 * @design 简单赋值变量
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testSimpleVar(): void {
  let x: int = 0; x = 10
  console.log(x.toString())
}
