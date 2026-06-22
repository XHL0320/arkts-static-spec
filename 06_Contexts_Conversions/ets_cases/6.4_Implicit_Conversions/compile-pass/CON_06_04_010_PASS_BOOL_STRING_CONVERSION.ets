/**
 * @id CON_06_04_010_PASS_BOOL_STRING_CONVERSION
 * @expect compile-pass
 * @section 6.4
 * @design boolean 在 string 上下文中的隐式转换: true→"true", false→"false"
 * @note 正向用例：验证 boolean 的隐式 string 转换
 */
function testBoolStringConversion(): void {
  let s1: string = "flag: " + true
  let s2: string = false + " value"
}
