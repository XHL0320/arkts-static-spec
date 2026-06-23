/**
 * @id EXP_07_01_01_008_PASS_ASSIGNMENT_RIGHT_ASSOC
 * @expect compile-pass
 * @section 7.1.1
 * @design 赋值 `=` 右结合，`a = b = 5` 等价 `a = (b = 5)`
 * @note 正向用例：验证赋值右结合性
 */
function testAssignmentRightAssoc(): void {
  let a: int = 0
  let b: int = 0
  let c: int = 0
  a = b = c = 5
}
