/**
 * @id EXP2_17_01_003_PASS_CHAR_FUNC_PARAM_RETURN
 * @expect compile-pass
 * @section 17.1
 * @design char 作为函数参数类型和返回类型：char 可以用于函数签名中
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function charIdentity(ch: char): char {
  return ch
}

function charToObject(ch: char): Object {
  return ch
}

function testCharFuncParamReturn(): void {
  let result: char = charIdentity(c'X')
  console.log(result)
  let obj: Object = charToObject(c'Y')
  console.log(obj)
}
