/**
 * @id EXP2_17_01_02_010_FAIL_CHAR_SUB_INT
 * @expect compile-fail
 * @section 17.1.2
 * @design char - int 算术运算应产生编译时错误（char 不支持算术运算）
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testCharSubIntFail(): void {
  let c: char = c'z'
  let result: char = c - 1
  console.log(result)
}
