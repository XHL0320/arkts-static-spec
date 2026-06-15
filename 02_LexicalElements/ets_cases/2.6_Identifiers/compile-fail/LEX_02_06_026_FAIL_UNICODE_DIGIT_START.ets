/**
 * @id LEX_02_06_026_FAIL_UNICODE_DIGIT_START
 * @expect compile-fail
 * @section 2.6
 * @design Unicode Nd 类（如阿拉伯-印度数字 ٠ = ٠）不能作为标识符起始
 * @note 反向用例：Nd 字符开头应失败
 */
function testUnicodeDigitStart(): void {
  let ٠abc: int = 1
}
