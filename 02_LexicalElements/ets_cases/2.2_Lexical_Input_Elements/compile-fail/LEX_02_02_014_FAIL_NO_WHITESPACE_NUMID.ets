/**
 * @id LEX_02_02_014_FAIL_NO_WHITESPACE_NUMID
 * @expect compile-fail
 * @section 2.2
 * @design 数字与标识符无空白导致合并为非法Token，应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testNoWhitespaceNumId(): void {
  let x: number = 123abc
}
