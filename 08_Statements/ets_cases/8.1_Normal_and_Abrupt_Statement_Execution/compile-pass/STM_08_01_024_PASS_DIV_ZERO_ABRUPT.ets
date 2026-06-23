/**
 * @id STM_08_01_024_FAIL_DIV_BY_ZERO_ABRUPT
 * @expect compile-pass
 * @section 8.1
 * @design 除零导致异常完成
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testDivByZeroAbrupt(): void {
  let a: int = 1
  let b: int = 0
  let c: int = a / b
  console.log(c.toString())
}
