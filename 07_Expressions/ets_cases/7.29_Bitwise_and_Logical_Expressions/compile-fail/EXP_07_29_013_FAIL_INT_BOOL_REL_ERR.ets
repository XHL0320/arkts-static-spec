/**
 * @id EXP_07_29_013_FAIL_INT_BOOL_REL_ERR
 * @expect compile-fail
 * @section 7.29
 * @design Bitwise_and_Logical_Expressions中int+boolean关系运算类型不匹配
 * @note 对抗用例: Bitwise_and_Logical_Expressions中int与boolean关系运算应被编译器拒绝
 */
function testGenericFail(): void {
  let a: int = 5; let b: boolean = true
  let r: boolean = a < b
  console.log(r.toString())
}






