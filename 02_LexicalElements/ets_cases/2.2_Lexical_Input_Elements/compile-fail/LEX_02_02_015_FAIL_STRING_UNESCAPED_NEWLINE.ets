/**
 * @id LEX_02_02_015_FAIL_STRING_UNESCAPED_NEWLINE
 * @expect compile-fail
 * @section 2.2
 * @design 字符串字面量内包含未转义换行符，应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testStringUnescapedNewline(): void {
  let s: string = "line1
line2"
}
