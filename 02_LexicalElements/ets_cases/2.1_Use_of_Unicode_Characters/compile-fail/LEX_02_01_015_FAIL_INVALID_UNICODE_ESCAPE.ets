/**
 * @id LEX_02_01_015_FAIL_INVALID_UNICODE_ESCAPE
 * @expect compile-fail
 * @section 2.1
 * @design \u后跟非十六进制字符或位数不足，应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testInvalidUnicodeEscape(): void {
  let s1: string = "\uGGGG"
  let s2: string = "\u00"
}
