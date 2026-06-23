/**
 * @id EXP_07_34_003_PASS_INTERPOLATION_NESTED
 * @expect compile-pass
 * @section 7.34
 * @design 嵌套多行字符串插值
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testInterpolationNested(): void {
  let inner: string = "world"
  let msg: string = `Hello ${`dear ${inner}`}`
  console.log(msg)
}
