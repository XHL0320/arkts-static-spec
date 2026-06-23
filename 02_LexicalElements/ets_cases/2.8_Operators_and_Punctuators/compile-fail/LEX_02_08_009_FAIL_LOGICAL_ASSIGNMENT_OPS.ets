/**
 * @id LEX_02_08_009_FAIL_LOGICAL_ASSIGNMENT_OPS
 * @expect compile-fail
 * @section 2.8
 * @design &&= 和 ||= 当前编译器不支持（spec 列出但实现缺失）
 * @note 反向用例：记录编译器与 spec 不一致
 */
function testLogicalAssignmentOps(): void {
  let a: boolean = true
  let b: boolean = false
  a &&= b
  a ||= true
}
