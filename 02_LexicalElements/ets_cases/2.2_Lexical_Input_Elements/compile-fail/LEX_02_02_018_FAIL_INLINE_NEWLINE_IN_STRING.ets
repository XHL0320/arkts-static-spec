/**
 * @id LEX_02_02_018_FAIL_INLINE_NEWLINE_IN_STRING
 * @expect compile-fail
 * @section 2.2
 * @design 单引号字符串内包含未转义换行，应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testInlineNewlineInString(): void {
  let s: string = 'hello
world'
}
