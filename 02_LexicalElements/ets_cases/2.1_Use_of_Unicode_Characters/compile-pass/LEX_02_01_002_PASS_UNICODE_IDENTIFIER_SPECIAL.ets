/**
 * @id LEX_02_01_002_PASS_UNICODE_IDENTIFIER_SPECIAL
 * @expect compile-pass
 * @section 2.1
 * @design 特殊Unicode字符作为标识符: $开头、_开头、ZWJ(U+200D)、ZWNJ(U+200C) * @note 正向用例：验证该特性编译通过的正确用法

 */
function testUnicodeIdentifierSpecial(): void {
  let $value: number = 10
  let _private: string = "internal"
  let a\u200Db: number = 5
  let a\u200Cb: number = 7
}
