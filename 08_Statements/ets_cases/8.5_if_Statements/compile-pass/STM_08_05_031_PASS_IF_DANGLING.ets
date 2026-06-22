/**
 * @id STM_08_05_031_FAIL_IF_DANGLING_ELSE_AMBIGUITY
 * @expect compile-pass
 * @section 8.5
 * @design else 匹配最近 if — 验证歧义消除
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testIfDanglingElse(): void {
  let x: int = 0
  if (true) if (false) x = 1
  else x = 2
  if (x != 2) { console.log("unexpected") }
}
