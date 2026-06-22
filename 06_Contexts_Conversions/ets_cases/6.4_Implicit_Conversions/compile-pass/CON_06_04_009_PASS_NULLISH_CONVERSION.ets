/**
 * @id CON_06_04_009_PASS_NULLISH_CONVERSION
 * @expect compile-pass
 * @section 6.4
 * @design null/undefined 在 string 上下文中的隐式转换
 * @note 正向用例：验证 nullish 值的隐式 string 转换
 */
function testNullishConversion(): void {
  let s1: string = "" + null
  let s2: string = "" + undefined
  let s3: string = "val: " + null
}
