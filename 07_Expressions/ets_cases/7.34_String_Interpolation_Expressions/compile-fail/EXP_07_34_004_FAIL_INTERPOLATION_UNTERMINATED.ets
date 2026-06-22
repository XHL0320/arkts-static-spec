/**
 * @id EXP_07_34_004_FAIL_INTERPOLATION_UNTERMINATED
 * @expect compile-fail
 * @section 7.34
 * @design 未闭合的字符串插值应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testInterpolationUnterminatedFail(): void {
  let msg: string = `unclosed ${1
  console.log(msg)
}
