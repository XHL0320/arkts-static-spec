/**
 * @id EXP2_17_01_010_FAIL_CHAR_AS_VAR_NAME
 * @expect compile-fail
 * @section 17.1
 * @design char 是关键字，不能用作变量名
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testCharAsVarNameFail(): void {
  let char: int = 65
  console.log(char)
}
