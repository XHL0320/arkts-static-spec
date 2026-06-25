/**
 * @id STM_08_01_023_PASS_THROW_IN_FUNC
 * @expect compile-pass
 * @section 8.1
 * @design throw 语句导致异常完成
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testAbruptThrowFail(): void {
  throw new Error("abrupt completion demo")
  let x: int = 1
  console.log(x.toString())
}
