/**
 * @id LEX_02_01_016_FAIL_INVALID_EXTENDED_ESCAPE
 * @expect compile-fail
 * @section 2.1
 * @design \u{}中包含无效十六进制、空内容、或超出U+10FFFF范围，应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testInvalidExtendedEscape(): void {
  let s1: string = "\u{GGGG}"
  let s2: string = "\u{}"
  let s3: string = "\u{110000}"
}
