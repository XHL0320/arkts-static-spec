/**
 * @id LEX_02_06_032_FAIL_UESCAPE_DIGIT_START
 * @expect compile-fail
 * @section 2.6
 * @design \u 转义解码为数字字符（如 \u0030 = '0'）作为起始应失败
 * @note 反向用例：\u0030abc 实际等价于 0abc，非法
 */
function testUEscapeDigitStart(): void {
  let \u0030abc: int = 1
}
