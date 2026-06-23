/**
 * @id LEX_02_01_002_PASS_UNICODE_IDENTIFIER_SPECIAL
 * @expect compile-pass
 * @section 2.1
 * @design 特殊Unicode字符作为标识符开头: $开头、_开头、ZWJ(U+200D)、ZWNJ(U+200C)
 * @note 正向用例：验证特殊字符作为标识符开头能够正确编译
 */
function testUnicodeIdentifierSpecial(): void {
  let $变量: number = 1
  let _underscore: string = "hello"
  let text\u200D文本: number = 42
  let text\u200C文本: boolean = true
}
