/**
 * @id LEX_02_06_024_FAIL_DIGIT_START
 * @expect compile-fail
 * @section 2.6
 * @design 标识符不能以 ASCII 数字 0-9 开头
 * @note 反向用例：1var 非法
 */
function testDigitStart(): void {
  let 1var: int = 1
}
