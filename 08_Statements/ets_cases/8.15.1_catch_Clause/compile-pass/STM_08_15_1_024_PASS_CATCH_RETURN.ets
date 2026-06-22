/**
 * @id STM_08_15_1_024_FAIL_CATCH_RETURN_UNREACHABLE
 * @expect compile-pass
 * @section 8.15.1
 * @design catch 块外 unreachable 语句
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testCatchReturnUnreachable(): void {
  try { throw new Error() } catch (e) { return }
  let x: int = 5
  console.log(x.toString())
}
