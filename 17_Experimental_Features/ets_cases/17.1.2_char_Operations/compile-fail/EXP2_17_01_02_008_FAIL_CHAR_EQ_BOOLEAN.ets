/**
 * @id EXP2_17_01_02_008_FAIL_CHAR_EQ_BOOLEAN
 * @expect compile-fail
 * @section 17.1.2
 * @design char 与 boolean 的比较应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testCharEqBooleanFail(): void {
  let c: char = c'X'
  let result: boolean = c == true
  console.log(result)
}
