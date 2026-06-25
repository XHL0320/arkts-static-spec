/**
 * @id STM_08_05_029_PASS_IF_UNREACHABLE
 * @expect compile-pass
 * @section 8.5
 * @design 恒真条件后的 unreachable else 分支
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testIfUnreachableElse(): void {
  if (true) { console.log("always") }
  else { let unreachable: int = 0 }
}
