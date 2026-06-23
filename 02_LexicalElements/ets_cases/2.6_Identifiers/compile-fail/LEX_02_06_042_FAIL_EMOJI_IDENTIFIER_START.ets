/**
 * @id LEX_02_06_042_FAIL_EMOJI_IDENTIFIER_START
 * @expect compile-fail
 * @section 2.6
 * @design 补充测试因子：合法 Unicode 码点但非 ID_Start 的 emoji 不能作为标识符起始
 * @note 反向用例：\u{1F600} 是合法码点但不是 IdentifierStart
 */
function testEmojiIdentifierStart(): void {
  let \u{1F600}x: int = 1
}
