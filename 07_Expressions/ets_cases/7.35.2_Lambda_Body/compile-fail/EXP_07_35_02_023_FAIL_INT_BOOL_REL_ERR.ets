/**
 * @id EXP_07_35_02_023_FAIL_INT_BOOL_REL_ERR
 * @expect compile-fail
 * @section 7.35.2
 * @design Lambda_Body中int+boolean关系运算类型不匹配
 * @note 对抗用例: Lambda_Body中int与boolean关系运算应被编译器拒绝
 */
function testGenericFail(): void {
  let a: int = 5; let b: boolean = true
  let r: boolean = a < b
  console.log(r.toString())
}




