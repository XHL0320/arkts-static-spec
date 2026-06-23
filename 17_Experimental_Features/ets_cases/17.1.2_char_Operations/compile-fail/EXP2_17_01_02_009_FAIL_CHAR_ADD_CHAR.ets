/**
 * @id EXP2_17_01_02_009_FAIL_CHAR_ADD_CHAR
 * @expect compile-fail
 * @section 17.1.2
 * @design char + char 算术运算应产生编译时错误（char 不支持算术运算）
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testCharAddCharFail(): void {
  let c1: char = c'a'
  let c2: char = c'b'
  let result: char = c1 + c2
  console.log(result)
}
