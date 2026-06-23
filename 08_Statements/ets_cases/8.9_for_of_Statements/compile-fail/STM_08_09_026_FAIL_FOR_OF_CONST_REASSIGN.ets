/**
 * @id STM_08_09_026_FAIL_FOR_OF_CONST_REASSIGN
 * @expect compile-fail
 * @section 8.9
 * @design for-of 中 const 变量重新赋值应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testForOfConstReassignFail(): void {
  let arr: int[] = [1, 2, 3]
  for (const x of arr) { x = 99 }
}
