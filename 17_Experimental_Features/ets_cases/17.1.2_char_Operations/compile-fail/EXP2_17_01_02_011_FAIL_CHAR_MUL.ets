/**
 * @id EXP2_17_01_02_011_FAIL_CHAR_MUL
 * @expect compile-fail
 * @section 17.1.2
 * @design char * int 乘法运算应产生编译时错误（char 不支持算术运算）
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testCharMulFail(): void {
  let c: char = c'1'
  let result: char = c * 2
  console.log(result)
}
