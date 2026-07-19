/**
 * @id EXP_07_27_03_041_FAIL_INT_BOOL_REL_ERR
 * @expect compile-fail
 * @section 7.27.3
 * @design String_Relational_Operators中int+boolean关系运算类型不匹配
 * @note 对抗用例: String_Relational_Operators中int与boolean关系运算应被编译器拒绝
 */
function testGenericFail(): void {
  let a: int = 5; let b: boolean = true
  let r: boolean = a < b
  console.log(r.toString())
}




