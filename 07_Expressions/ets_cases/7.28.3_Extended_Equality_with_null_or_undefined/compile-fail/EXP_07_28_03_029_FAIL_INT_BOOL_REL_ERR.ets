/**
 * @id EXP_07_28_03_029_FAIL_INT_BOOL_REL_ERR
 * @expect compile-fail
 * @section 7.28.3
 * @design Extended_Equality_with_null_or_undefined中int+boolean关系运算类型不匹配
 * @note 对抗用例: Extended_Equality_with_null_or_undefined中int与boolean关系运算应被编译器拒绝
 */
function testGenericFail(): void {
  let a: int = 5; let b: boolean = true
  let r: boolean = a < b
  console.log(r.toString())
}




